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
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #15891: origin
                    (Bc_survivorat_s_p1)

                    ; #19174: origin
                    (Ba_survivorat_s_p1)

                    ; #25154: <==closure== 76992 (pos)
                    (Pb_survivorat_s_p1)

                    ; #58784: <==closure== 19174 (pos)
                    (Pa_survivorat_s_p1)

                    ; #74304: <==closure== 15891 (pos)
                    (Pc_survivorat_s_p1)

                    ; #76992: origin
                    (Bb_survivorat_s_p1)

                    ; #44619: <==negation-removal== 74304 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79775: <==negation-removal== 76992 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #80821: <==negation-removal== 25154 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #83868: <==negation-removal== 15891 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #84626: <==negation-removal== 58784 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #90852: <==negation-removal== 19174 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #15891: origin
                    (Bc_survivorat_s_p1)

                    ; #19174: origin
                    (Ba_survivorat_s_p1)

                    ; #25154: <==closure== 76992 (pos)
                    (Pb_survivorat_s_p1)

                    ; #58784: <==closure== 19174 (pos)
                    (Pa_survivorat_s_p1)

                    ; #74304: <==closure== 15891 (pos)
                    (Pc_survivorat_s_p1)

                    ; #76992: origin
                    (Bb_survivorat_s_p1)

                    ; #44619: <==negation-removal== 74304 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79775: <==negation-removal== 76992 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #80821: <==negation-removal== 25154 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #83868: <==negation-removal== 15891 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #84626: <==negation-removal== 58784 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #90852: <==negation-removal== 19174 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #15891: origin
                    (Bc_survivorat_s_p1)

                    ; #19174: origin
                    (Ba_survivorat_s_p1)

                    ; #25154: <==closure== 76992 (pos)
                    (Pb_survivorat_s_p1)

                    ; #58784: <==closure== 19174 (pos)
                    (Pa_survivorat_s_p1)

                    ; #74304: <==closure== 15891 (pos)
                    (Pc_survivorat_s_p1)

                    ; #76992: origin
                    (Bb_survivorat_s_p1)

                    ; #44619: <==negation-removal== 74304 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #79775: <==negation-removal== 76992 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #80821: <==negation-removal== 25154 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #83868: <==negation-removal== 15891 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #84626: <==negation-removal== 58784 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #90852: <==negation-removal== 19174 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #15365: origin
                    (Bb_survivorat_s_p2)

                    ; #15971: origin
                    (Ba_survivorat_s_p2)

                    ; #17970: <==closure== 31131 (pos)
                    (Pc_survivorat_s_p2)

                    ; #21286: <==closure== 15365 (pos)
                    (Pb_survivorat_s_p2)

                    ; #22828: <==closure== 15971 (pos)
                    (Pa_survivorat_s_p2)

                    ; #31131: origin
                    (Bc_survivorat_s_p2)

                    ; #52446: <==negation-removal== 21286 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #54041: <==negation-removal== 15365 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #58194: <==negation-removal== 17970 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68701: <==negation-removal== 15971 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #73240: <==negation-removal== 31131 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #76095: <==negation-removal== 22828 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #15365: origin
                    (Bb_survivorat_s_p2)

                    ; #15971: origin
                    (Ba_survivorat_s_p2)

                    ; #17970: <==closure== 31131 (pos)
                    (Pc_survivorat_s_p2)

                    ; #21286: <==closure== 15365 (pos)
                    (Pb_survivorat_s_p2)

                    ; #22828: <==closure== 15971 (pos)
                    (Pa_survivorat_s_p2)

                    ; #31131: origin
                    (Bc_survivorat_s_p2)

                    ; #52446: <==negation-removal== 21286 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #54041: <==negation-removal== 15365 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #58194: <==negation-removal== 17970 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68701: <==negation-removal== 15971 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #73240: <==negation-removal== 31131 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #76095: <==negation-removal== 22828 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #15365: origin
                    (Bb_survivorat_s_p2)

                    ; #15971: origin
                    (Ba_survivorat_s_p2)

                    ; #17970: <==closure== 31131 (pos)
                    (Pc_survivorat_s_p2)

                    ; #21286: <==closure== 15365 (pos)
                    (Pb_survivorat_s_p2)

                    ; #22828: <==closure== 15971 (pos)
                    (Pa_survivorat_s_p2)

                    ; #31131: origin
                    (Bc_survivorat_s_p2)

                    ; #52446: <==negation-removal== 21286 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #54041: <==negation-removal== 15365 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #58194: <==negation-removal== 17970 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68701: <==negation-removal== 15971 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #73240: <==negation-removal== 31131 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #76095: <==negation-removal== 22828 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #11693: <==closure== 70006 (pos)
                    (Pa_survivorat_s_p3)

                    ; #11970: <==closure== 24467 (pos)
                    (Pc_survivorat_s_p3)

                    ; #24467: origin
                    (Bc_survivorat_s_p3)

                    ; #37494: <==closure== 70699 (pos)
                    (Pb_survivorat_s_p3)

                    ; #70006: origin
                    (Ba_survivorat_s_p3)

                    ; #70699: origin
                    (Bb_survivorat_s_p3)

                    ; #12838: <==negation-removal== 11970 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #55005: <==negation-removal== 37494 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #55879: <==negation-removal== 11693 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #72493: <==negation-removal== 70006 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86729: <==negation-removal== 70699 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #88012: <==negation-removal== 24467 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #11693: <==closure== 70006 (pos)
                    (Pa_survivorat_s_p3)

                    ; #11970: <==closure== 24467 (pos)
                    (Pc_survivorat_s_p3)

                    ; #24467: origin
                    (Bc_survivorat_s_p3)

                    ; #37494: <==closure== 70699 (pos)
                    (Pb_survivorat_s_p3)

                    ; #70006: origin
                    (Ba_survivorat_s_p3)

                    ; #70699: origin
                    (Bb_survivorat_s_p3)

                    ; #12838: <==negation-removal== 11970 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #55005: <==negation-removal== 37494 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #55879: <==negation-removal== 11693 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #72493: <==negation-removal== 70006 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86729: <==negation-removal== 70699 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #88012: <==negation-removal== 24467 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #11693: <==closure== 70006 (pos)
                    (Pa_survivorat_s_p3)

                    ; #11970: <==closure== 24467 (pos)
                    (Pc_survivorat_s_p3)

                    ; #24467: origin
                    (Bc_survivorat_s_p3)

                    ; #37494: <==closure== 70699 (pos)
                    (Pb_survivorat_s_p3)

                    ; #70006: origin
                    (Ba_survivorat_s_p3)

                    ; #70699: origin
                    (Bb_survivorat_s_p3)

                    ; #12838: <==negation-removal== 11970 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #55005: <==negation-removal== 37494 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #55879: <==negation-removal== 11693 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #72493: <==negation-removal== 70006 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86729: <==negation-removal== 70699 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #88012: <==negation-removal== 24467 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #45064: origin
                    (Bb_survivorat_s_p4)

                    ; #52002: <==closure== 45064 (pos)
                    (Pb_survivorat_s_p4)

                    ; #62033: origin
                    (Ba_survivorat_s_p4)

                    ; #70676: origin
                    (Bc_survivorat_s_p4)

                    ; #76337: <==closure== 70676 (pos)
                    (Pc_survivorat_s_p4)

                    ; #86304: <==closure== 62033 (pos)
                    (Pa_survivorat_s_p4)

                    ; #13733: <==negation-removal== 76337 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #17863: <==negation-removal== 52002 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #26135: <==negation-removal== 45064 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #65569: <==negation-removal== 62033 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #72734: <==negation-removal== 86304 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #75082: <==negation-removal== 70676 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #45064: origin
                    (Bb_survivorat_s_p4)

                    ; #52002: <==closure== 45064 (pos)
                    (Pb_survivorat_s_p4)

                    ; #62033: origin
                    (Ba_survivorat_s_p4)

                    ; #70676: origin
                    (Bc_survivorat_s_p4)

                    ; #76337: <==closure== 70676 (pos)
                    (Pc_survivorat_s_p4)

                    ; #86304: <==closure== 62033 (pos)
                    (Pa_survivorat_s_p4)

                    ; #13733: <==negation-removal== 76337 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #17863: <==negation-removal== 52002 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #26135: <==negation-removal== 45064 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #65569: <==negation-removal== 62033 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #72734: <==negation-removal== 86304 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #75082: <==negation-removal== 70676 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #45064: origin
                    (Bb_survivorat_s_p4)

                    ; #52002: <==closure== 45064 (pos)
                    (Pb_survivorat_s_p4)

                    ; #62033: origin
                    (Ba_survivorat_s_p4)

                    ; #70676: origin
                    (Bc_survivorat_s_p4)

                    ; #76337: <==closure== 70676 (pos)
                    (Pc_survivorat_s_p4)

                    ; #86304: <==closure== 62033 (pos)
                    (Pa_survivorat_s_p4)

                    ; #13733: <==negation-removal== 76337 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #17863: <==negation-removal== 52002 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #26135: <==negation-removal== 45064 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #65569: <==negation-removal== 62033 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #72734: <==negation-removal== 86304 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #75082: <==negation-removal== 70676 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #14856: <==closure== 87348 (pos)
                    (Pc_survivorat_s_p5)

                    ; #31389: origin
                    (Ba_survivorat_s_p5)

                    ; #34836: <==closure== 31389 (pos)
                    (Pa_survivorat_s_p5)

                    ; #66067: origin
                    (Bb_survivorat_s_p5)

                    ; #66275: <==closure== 66067 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87348: origin
                    (Bc_survivorat_s_p5)

                    ; #40946: <==negation-removal== 34836 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #51611: <==negation-removal== 31389 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #57617: <==negation-removal== 66067 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #64382: <==negation-removal== 66275 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #65045: <==negation-removal== 87348 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #81406: <==negation-removal== 14856 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #14856: <==closure== 87348 (pos)
                    (Pc_survivorat_s_p5)

                    ; #31389: origin
                    (Ba_survivorat_s_p5)

                    ; #34836: <==closure== 31389 (pos)
                    (Pa_survivorat_s_p5)

                    ; #66067: origin
                    (Bb_survivorat_s_p5)

                    ; #66275: <==closure== 66067 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87348: origin
                    (Bc_survivorat_s_p5)

                    ; #40946: <==negation-removal== 34836 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #51611: <==negation-removal== 31389 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #57617: <==negation-removal== 66067 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #64382: <==negation-removal== 66275 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #65045: <==negation-removal== 87348 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #81406: <==negation-removal== 14856 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #14856: <==closure== 87348 (pos)
                    (Pc_survivorat_s_p5)

                    ; #31389: origin
                    (Ba_survivorat_s_p5)

                    ; #34836: <==closure== 31389 (pos)
                    (Pa_survivorat_s_p5)

                    ; #66067: origin
                    (Bb_survivorat_s_p5)

                    ; #66275: <==closure== 66067 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87348: origin
                    (Bc_survivorat_s_p5)

                    ; #40946: <==negation-removal== 34836 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #51611: <==negation-removal== 31389 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #57617: <==negation-removal== 66067 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #64382: <==negation-removal== 66275 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #65045: <==negation-removal== 87348 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #81406: <==negation-removal== 14856 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #31180: origin
                    (Bc_survivorat_s_p6)

                    ; #35623: <==closure== 61494 (pos)
                    (Pa_survivorat_s_p6)

                    ; #61494: origin
                    (Ba_survivorat_s_p6)

                    ; #63385: <==closure== 86684 (pos)
                    (Pb_survivorat_s_p6)

                    ; #86483: <==closure== 31180 (pos)
                    (Pc_survivorat_s_p6)

                    ; #86684: origin
                    (Bb_survivorat_s_p6)

                    ; #14590: <==negation-removal== 61494 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #22239: <==negation-removal== 63385 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31490: <==negation-removal== 31180 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #32580: <==negation-removal== 86684 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #58448: <==negation-removal== 86483 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #85668: <==negation-removal== 35623 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #31180: origin
                    (Bc_survivorat_s_p6)

                    ; #35623: <==closure== 61494 (pos)
                    (Pa_survivorat_s_p6)

                    ; #61494: origin
                    (Ba_survivorat_s_p6)

                    ; #63385: <==closure== 86684 (pos)
                    (Pb_survivorat_s_p6)

                    ; #86483: <==closure== 31180 (pos)
                    (Pc_survivorat_s_p6)

                    ; #86684: origin
                    (Bb_survivorat_s_p6)

                    ; #14590: <==negation-removal== 61494 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #22239: <==negation-removal== 63385 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31490: <==negation-removal== 31180 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #32580: <==negation-removal== 86684 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #58448: <==negation-removal== 86483 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #85668: <==negation-removal== 35623 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #31180: origin
                    (Bc_survivorat_s_p6)

                    ; #35623: <==closure== 61494 (pos)
                    (Pa_survivorat_s_p6)

                    ; #61494: origin
                    (Ba_survivorat_s_p6)

                    ; #63385: <==closure== 86684 (pos)
                    (Pb_survivorat_s_p6)

                    ; #86483: <==closure== 31180 (pos)
                    (Pc_survivorat_s_p6)

                    ; #86684: origin
                    (Bb_survivorat_s_p6)

                    ; #14590: <==negation-removal== 61494 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #22239: <==negation-removal== 63385 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31490: <==negation-removal== 31180 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #32580: <==negation-removal== 86684 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #58448: <==negation-removal== 86483 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #85668: <==negation-removal== 35623 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #16744: origin
                    (Ba_survivorat_s_p7)

                    ; #43672: origin
                    (Bc_survivorat_s_p7)

                    ; #44936: <==closure== 16744 (pos)
                    (Pa_survivorat_s_p7)

                    ; #53983: <==closure== 43672 (pos)
                    (Pc_survivorat_s_p7)

                    ; #68613: <==closure== 80404 (pos)
                    (Pb_survivorat_s_p7)

                    ; #80404: origin
                    (Bb_survivorat_s_p7)

                    ; #21030: <==negation-removal== 43672 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #38684: <==negation-removal== 53983 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #40778: <==negation-removal== 44936 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45225: <==negation-removal== 80404 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #46885: <==negation-removal== 68613 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54951: <==negation-removal== 16744 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #16744: origin
                    (Ba_survivorat_s_p7)

                    ; #43672: origin
                    (Bc_survivorat_s_p7)

                    ; #44936: <==closure== 16744 (pos)
                    (Pa_survivorat_s_p7)

                    ; #53983: <==closure== 43672 (pos)
                    (Pc_survivorat_s_p7)

                    ; #68613: <==closure== 80404 (pos)
                    (Pb_survivorat_s_p7)

                    ; #80404: origin
                    (Bb_survivorat_s_p7)

                    ; #21030: <==negation-removal== 43672 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #38684: <==negation-removal== 53983 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #40778: <==negation-removal== 44936 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45225: <==negation-removal== 80404 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #46885: <==negation-removal== 68613 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54951: <==negation-removal== 16744 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #16744: origin
                    (Ba_survivorat_s_p7)

                    ; #43672: origin
                    (Bc_survivorat_s_p7)

                    ; #44936: <==closure== 16744 (pos)
                    (Pa_survivorat_s_p7)

                    ; #53983: <==closure== 43672 (pos)
                    (Pc_survivorat_s_p7)

                    ; #68613: <==closure== 80404 (pos)
                    (Pb_survivorat_s_p7)

                    ; #80404: origin
                    (Bb_survivorat_s_p7)

                    ; #21030: <==negation-removal== 43672 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #38684: <==negation-removal== 53983 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #40778: <==negation-removal== 44936 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45225: <==negation-removal== 80404 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #46885: <==negation-removal== 68613 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54951: <==negation-removal== 16744 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #17283: <==closure== 90957 (pos)
                    (Pa_survivorat_s_p8)

                    ; #21894: origin
                    (Bb_survivorat_s_p8)

                    ; #39523: <==closure== 56548 (pos)
                    (Pc_survivorat_s_p8)

                    ; #56548: origin
                    (Bc_survivorat_s_p8)

                    ; #75855: <==closure== 21894 (pos)
                    (Pb_survivorat_s_p8)

                    ; #90957: origin
                    (Ba_survivorat_s_p8)

                    ; #26791: <==negation-removal== 39523 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #51434: <==negation-removal== 75855 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #55660: <==negation-removal== 56548 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #56213: <==negation-removal== 90957 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69099: <==negation-removal== 17283 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #90210: <==negation-removal== 21894 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #17283: <==closure== 90957 (pos)
                    (Pa_survivorat_s_p8)

                    ; #21894: origin
                    (Bb_survivorat_s_p8)

                    ; #39523: <==closure== 56548 (pos)
                    (Pc_survivorat_s_p8)

                    ; #56548: origin
                    (Bc_survivorat_s_p8)

                    ; #75855: <==closure== 21894 (pos)
                    (Pb_survivorat_s_p8)

                    ; #90957: origin
                    (Ba_survivorat_s_p8)

                    ; #26791: <==negation-removal== 39523 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #51434: <==negation-removal== 75855 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #55660: <==negation-removal== 56548 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #56213: <==negation-removal== 90957 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69099: <==negation-removal== 17283 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #90210: <==negation-removal== 21894 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #17283: <==closure== 90957 (pos)
                    (Pa_survivorat_s_p8)

                    ; #21894: origin
                    (Bb_survivorat_s_p8)

                    ; #39523: <==closure== 56548 (pos)
                    (Pc_survivorat_s_p8)

                    ; #56548: origin
                    (Bc_survivorat_s_p8)

                    ; #75855: <==closure== 21894 (pos)
                    (Pb_survivorat_s_p8)

                    ; #90957: origin
                    (Ba_survivorat_s_p8)

                    ; #26791: <==negation-removal== 39523 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #51434: <==negation-removal== 75855 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #55660: <==negation-removal== 56548 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #56213: <==negation-removal== 90957 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69099: <==negation-removal== 17283 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #90210: <==negation-removal== 21894 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #11042: origin
                    (Bc_survivorat_s_p9)

                    ; #23151: origin
                    (Bb_survivorat_s_p9)

                    ; #32080: <==closure== 33987 (pos)
                    (Pa_survivorat_s_p9)

                    ; #33987: origin
                    (Ba_survivorat_s_p9)

                    ; #52025: <==closure== 23151 (pos)
                    (Pb_survivorat_s_p9)

                    ; #73734: <==closure== 11042 (pos)
                    (Pc_survivorat_s_p9)

                    ; #12601: <==negation-removal== 52025 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #19189: <==negation-removal== 32080 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #30100: <==negation-removal== 11042 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #43488: <==negation-removal== 33987 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #50229: <==negation-removal== 73734 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #73998: <==negation-removal== 23151 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #11042: origin
                    (Bc_survivorat_s_p9)

                    ; #23151: origin
                    (Bb_survivorat_s_p9)

                    ; #32080: <==closure== 33987 (pos)
                    (Pa_survivorat_s_p9)

                    ; #33987: origin
                    (Ba_survivorat_s_p9)

                    ; #52025: <==closure== 23151 (pos)
                    (Pb_survivorat_s_p9)

                    ; #73734: <==closure== 11042 (pos)
                    (Pc_survivorat_s_p9)

                    ; #12601: <==negation-removal== 52025 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #19189: <==negation-removal== 32080 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #30100: <==negation-removal== 11042 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #43488: <==negation-removal== 33987 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #50229: <==negation-removal== 73734 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #73998: <==negation-removal== 23151 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #11042: origin
                    (Bc_survivorat_s_p9)

                    ; #23151: origin
                    (Bb_survivorat_s_p9)

                    ; #32080: <==closure== 33987 (pos)
                    (Pa_survivorat_s_p9)

                    ; #33987: origin
                    (Ba_survivorat_s_p9)

                    ; #52025: <==closure== 23151 (pos)
                    (Pb_survivorat_s_p9)

                    ; #73734: <==closure== 11042 (pos)
                    (Pc_survivorat_s_p9)

                    ; #12601: <==negation-removal== 52025 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #19189: <==negation-removal== 32080 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #30100: <==negation-removal== 11042 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #43488: <==negation-removal== 33987 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #50229: <==negation-removal== 73734 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #73998: <==negation-removal== 23151 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #28825: origin
                    (not_at_a_p1)

                    ; #63345: origin
                    (at_a_p1)

                    ; #28825: <==negation-removal== 63345 (pos)
                    (not (not_at_a_p1))

                    ; #63345: <==negation-removal== 28825 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #28825: origin
                    (not_at_a_p1)

                    ; #41862: origin
                    (at_a_p2)

                    ; #63345: <==negation-removal== 28825 (pos)
                    (not (at_a_p1))

                    ; #70655: <==negation-removal== 41862 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #28825: origin
                    (not_at_a_p1)

                    ; #79411: origin
                    (at_a_p3)

                    ; #63345: <==negation-removal== 28825 (pos)
                    (not (at_a_p1))

                    ; #68142: <==negation-removal== 79411 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #28825: origin
                    (not_at_a_p1)

                    ; #40810: origin
                    (at_a_p4)

                    ; #63345: <==negation-removal== 28825 (pos)
                    (not (at_a_p1))

                    ; #77134: <==negation-removal== 40810 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #17498: origin
                    (at_a_p5)

                    ; #28825: origin
                    (not_at_a_p1)

                    ; #63345: <==negation-removal== 28825 (pos)
                    (not (at_a_p1))

                    ; #85594: <==negation-removal== 17498 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #28825: origin
                    (not_at_a_p1)

                    ; #68760: origin
                    (at_a_p6)

                    ; #60164: <==negation-removal== 68760 (pos)
                    (not (not_at_a_p6))

                    ; #63345: <==negation-removal== 28825 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #28825: origin
                    (not_at_a_p1)

                    ; #52757: origin
                    (at_a_p7)

                    ; #63345: <==negation-removal== 28825 (pos)
                    (not (at_a_p1))

                    ; #68295: <==negation-removal== 52757 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #28825: origin
                    (not_at_a_p1)

                    ; #79813: origin
                    (at_a_p8)

                    ; #59272: <==negation-removal== 79813 (pos)
                    (not (not_at_a_p8))

                    ; #63345: <==negation-removal== 28825 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #28825: origin
                    (not_at_a_p1)

                    ; #45489: origin
                    (at_a_p9)

                    ; #63345: <==negation-removal== 28825 (pos)
                    (not (at_a_p1))

                    ; #90837: <==negation-removal== 45489 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #63345: origin
                    (at_a_p1)

                    ; #70655: origin
                    (not_at_a_p2)

                    ; #28825: <==negation-removal== 63345 (pos)
                    (not (not_at_a_p1))

                    ; #41862: <==negation-removal== 70655 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #41862: origin
                    (at_a_p2)

                    ; #70655: origin
                    (not_at_a_p2)

                    ; #41862: <==negation-removal== 70655 (pos)
                    (not (at_a_p2))

                    ; #70655: <==negation-removal== 41862 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #70655: origin
                    (not_at_a_p2)

                    ; #79411: origin
                    (at_a_p3)

                    ; #41862: <==negation-removal== 70655 (pos)
                    (not (at_a_p2))

                    ; #68142: <==negation-removal== 79411 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #40810: origin
                    (at_a_p4)

                    ; #70655: origin
                    (not_at_a_p2)

                    ; #41862: <==negation-removal== 70655 (pos)
                    (not (at_a_p2))

                    ; #77134: <==negation-removal== 40810 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #17498: origin
                    (at_a_p5)

                    ; #70655: origin
                    (not_at_a_p2)

                    ; #41862: <==negation-removal== 70655 (pos)
                    (not (at_a_p2))

                    ; #85594: <==negation-removal== 17498 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #68760: origin
                    (at_a_p6)

                    ; #70655: origin
                    (not_at_a_p2)

                    ; #41862: <==negation-removal== 70655 (pos)
                    (not (at_a_p2))

                    ; #60164: <==negation-removal== 68760 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #52757: origin
                    (at_a_p7)

                    ; #70655: origin
                    (not_at_a_p2)

                    ; #41862: <==negation-removal== 70655 (pos)
                    (not (at_a_p2))

                    ; #68295: <==negation-removal== 52757 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #70655: origin
                    (not_at_a_p2)

                    ; #79813: origin
                    (at_a_p8)

                    ; #41862: <==negation-removal== 70655 (pos)
                    (not (at_a_p2))

                    ; #59272: <==negation-removal== 79813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #45489: origin
                    (at_a_p9)

                    ; #70655: origin
                    (not_at_a_p2)

                    ; #41862: <==negation-removal== 70655 (pos)
                    (not (at_a_p2))

                    ; #90837: <==negation-removal== 45489 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #63345: origin
                    (at_a_p1)

                    ; #68142: origin
                    (not_at_a_p3)

                    ; #28825: <==negation-removal== 63345 (pos)
                    (not (not_at_a_p1))

                    ; #79411: <==negation-removal== 68142 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #41862: origin
                    (at_a_p2)

                    ; #68142: origin
                    (not_at_a_p3)

                    ; #70655: <==negation-removal== 41862 (pos)
                    (not (not_at_a_p2))

                    ; #79411: <==negation-removal== 68142 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #68142: origin
                    (not_at_a_p3)

                    ; #79411: origin
                    (at_a_p3)

                    ; #68142: <==negation-removal== 79411 (pos)
                    (not (not_at_a_p3))

                    ; #79411: <==negation-removal== 68142 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #40810: origin
                    (at_a_p4)

                    ; #68142: origin
                    (not_at_a_p3)

                    ; #77134: <==negation-removal== 40810 (pos)
                    (not (not_at_a_p4))

                    ; #79411: <==negation-removal== 68142 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #17498: origin
                    (at_a_p5)

                    ; #68142: origin
                    (not_at_a_p3)

                    ; #79411: <==negation-removal== 68142 (pos)
                    (not (at_a_p3))

                    ; #85594: <==negation-removal== 17498 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #68142: origin
                    (not_at_a_p3)

                    ; #68760: origin
                    (at_a_p6)

                    ; #60164: <==negation-removal== 68760 (pos)
                    (not (not_at_a_p6))

                    ; #79411: <==negation-removal== 68142 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #52757: origin
                    (at_a_p7)

                    ; #68142: origin
                    (not_at_a_p3)

                    ; #68295: <==negation-removal== 52757 (pos)
                    (not (not_at_a_p7))

                    ; #79411: <==negation-removal== 68142 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #68142: origin
                    (not_at_a_p3)

                    ; #79813: origin
                    (at_a_p8)

                    ; #59272: <==negation-removal== 79813 (pos)
                    (not (not_at_a_p8))

                    ; #79411: <==negation-removal== 68142 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #45489: origin
                    (at_a_p9)

                    ; #68142: origin
                    (not_at_a_p3)

                    ; #79411: <==negation-removal== 68142 (pos)
                    (not (at_a_p3))

                    ; #90837: <==negation-removal== 45489 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #63345: origin
                    (at_a_p1)

                    ; #77134: origin
                    (not_at_a_p4)

                    ; #28825: <==negation-removal== 63345 (pos)
                    (not (not_at_a_p1))

                    ; #40810: <==negation-removal== 77134 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #41862: origin
                    (at_a_p2)

                    ; #77134: origin
                    (not_at_a_p4)

                    ; #40810: <==negation-removal== 77134 (pos)
                    (not (at_a_p4))

                    ; #70655: <==negation-removal== 41862 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #77134: origin
                    (not_at_a_p4)

                    ; #79411: origin
                    (at_a_p3)

                    ; #40810: <==negation-removal== 77134 (pos)
                    (not (at_a_p4))

                    ; #68142: <==negation-removal== 79411 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #40810: origin
                    (at_a_p4)

                    ; #77134: origin
                    (not_at_a_p4)

                    ; #40810: <==negation-removal== 77134 (pos)
                    (not (at_a_p4))

                    ; #77134: <==negation-removal== 40810 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #17498: origin
                    (at_a_p5)

                    ; #77134: origin
                    (not_at_a_p4)

                    ; #40810: <==negation-removal== 77134 (pos)
                    (not (at_a_p4))

                    ; #85594: <==negation-removal== 17498 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #68760: origin
                    (at_a_p6)

                    ; #77134: origin
                    (not_at_a_p4)

                    ; #40810: <==negation-removal== 77134 (pos)
                    (not (at_a_p4))

                    ; #60164: <==negation-removal== 68760 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #52757: origin
                    (at_a_p7)

                    ; #77134: origin
                    (not_at_a_p4)

                    ; #40810: <==negation-removal== 77134 (pos)
                    (not (at_a_p4))

                    ; #68295: <==negation-removal== 52757 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #77134: origin
                    (not_at_a_p4)

                    ; #79813: origin
                    (at_a_p8)

                    ; #40810: <==negation-removal== 77134 (pos)
                    (not (at_a_p4))

                    ; #59272: <==negation-removal== 79813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #45489: origin
                    (at_a_p9)

                    ; #77134: origin
                    (not_at_a_p4)

                    ; #40810: <==negation-removal== 77134 (pos)
                    (not (at_a_p4))

                    ; #90837: <==negation-removal== 45489 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #63345: origin
                    (at_a_p1)

                    ; #85594: origin
                    (not_at_a_p5)

                    ; #17498: <==negation-removal== 85594 (pos)
                    (not (at_a_p5))

                    ; #28825: <==negation-removal== 63345 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #41862: origin
                    (at_a_p2)

                    ; #85594: origin
                    (not_at_a_p5)

                    ; #17498: <==negation-removal== 85594 (pos)
                    (not (at_a_p5))

                    ; #70655: <==negation-removal== 41862 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #79411: origin
                    (at_a_p3)

                    ; #85594: origin
                    (not_at_a_p5)

                    ; #17498: <==negation-removal== 85594 (pos)
                    (not (at_a_p5))

                    ; #68142: <==negation-removal== 79411 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #40810: origin
                    (at_a_p4)

                    ; #85594: origin
                    (not_at_a_p5)

                    ; #17498: <==negation-removal== 85594 (pos)
                    (not (at_a_p5))

                    ; #77134: <==negation-removal== 40810 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #17498: origin
                    (at_a_p5)

                    ; #85594: origin
                    (not_at_a_p5)

                    ; #17498: <==negation-removal== 85594 (pos)
                    (not (at_a_p5))

                    ; #85594: <==negation-removal== 17498 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #68760: origin
                    (at_a_p6)

                    ; #85594: origin
                    (not_at_a_p5)

                    ; #17498: <==negation-removal== 85594 (pos)
                    (not (at_a_p5))

                    ; #60164: <==negation-removal== 68760 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #52757: origin
                    (at_a_p7)

                    ; #85594: origin
                    (not_at_a_p5)

                    ; #17498: <==negation-removal== 85594 (pos)
                    (not (at_a_p5))

                    ; #68295: <==negation-removal== 52757 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #79813: origin
                    (at_a_p8)

                    ; #85594: origin
                    (not_at_a_p5)

                    ; #17498: <==negation-removal== 85594 (pos)
                    (not (at_a_p5))

                    ; #59272: <==negation-removal== 79813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #45489: origin
                    (at_a_p9)

                    ; #85594: origin
                    (not_at_a_p5)

                    ; #17498: <==negation-removal== 85594 (pos)
                    (not (at_a_p5))

                    ; #90837: <==negation-removal== 45489 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #60164: origin
                    (not_at_a_p6)

                    ; #63345: origin
                    (at_a_p1)

                    ; #28825: <==negation-removal== 63345 (pos)
                    (not (not_at_a_p1))

                    ; #68760: <==negation-removal== 60164 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #41862: origin
                    (at_a_p2)

                    ; #60164: origin
                    (not_at_a_p6)

                    ; #68760: <==negation-removal== 60164 (pos)
                    (not (at_a_p6))

                    ; #70655: <==negation-removal== 41862 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #60164: origin
                    (not_at_a_p6)

                    ; #79411: origin
                    (at_a_p3)

                    ; #68142: <==negation-removal== 79411 (pos)
                    (not (not_at_a_p3))

                    ; #68760: <==negation-removal== 60164 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #40810: origin
                    (at_a_p4)

                    ; #60164: origin
                    (not_at_a_p6)

                    ; #68760: <==negation-removal== 60164 (pos)
                    (not (at_a_p6))

                    ; #77134: <==negation-removal== 40810 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #17498: origin
                    (at_a_p5)

                    ; #60164: origin
                    (not_at_a_p6)

                    ; #68760: <==negation-removal== 60164 (pos)
                    (not (at_a_p6))

                    ; #85594: <==negation-removal== 17498 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #60164: origin
                    (not_at_a_p6)

                    ; #68760: origin
                    (at_a_p6)

                    ; #60164: <==negation-removal== 68760 (pos)
                    (not (not_at_a_p6))

                    ; #68760: <==negation-removal== 60164 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #52757: origin
                    (at_a_p7)

                    ; #60164: origin
                    (not_at_a_p6)

                    ; #68295: <==negation-removal== 52757 (pos)
                    (not (not_at_a_p7))

                    ; #68760: <==negation-removal== 60164 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #60164: origin
                    (not_at_a_p6)

                    ; #79813: origin
                    (at_a_p8)

                    ; #59272: <==negation-removal== 79813 (pos)
                    (not (not_at_a_p8))

                    ; #68760: <==negation-removal== 60164 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #45489: origin
                    (at_a_p9)

                    ; #60164: origin
                    (not_at_a_p6)

                    ; #68760: <==negation-removal== 60164 (pos)
                    (not (at_a_p6))

                    ; #90837: <==negation-removal== 45489 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #63345: origin
                    (at_a_p1)

                    ; #68295: origin
                    (not_at_a_p7)

                    ; #28825: <==negation-removal== 63345 (pos)
                    (not (not_at_a_p1))

                    ; #52757: <==negation-removal== 68295 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #41862: origin
                    (at_a_p2)

                    ; #68295: origin
                    (not_at_a_p7)

                    ; #52757: <==negation-removal== 68295 (pos)
                    (not (at_a_p7))

                    ; #70655: <==negation-removal== 41862 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #68295: origin
                    (not_at_a_p7)

                    ; #79411: origin
                    (at_a_p3)

                    ; #52757: <==negation-removal== 68295 (pos)
                    (not (at_a_p7))

                    ; #68142: <==negation-removal== 79411 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #40810: origin
                    (at_a_p4)

                    ; #68295: origin
                    (not_at_a_p7)

                    ; #52757: <==negation-removal== 68295 (pos)
                    (not (at_a_p7))

                    ; #77134: <==negation-removal== 40810 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #17498: origin
                    (at_a_p5)

                    ; #68295: origin
                    (not_at_a_p7)

                    ; #52757: <==negation-removal== 68295 (pos)
                    (not (at_a_p7))

                    ; #85594: <==negation-removal== 17498 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #68295: origin
                    (not_at_a_p7)

                    ; #68760: origin
                    (at_a_p6)

                    ; #52757: <==negation-removal== 68295 (pos)
                    (not (at_a_p7))

                    ; #60164: <==negation-removal== 68760 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #52757: origin
                    (at_a_p7)

                    ; #68295: origin
                    (not_at_a_p7)

                    ; #52757: <==negation-removal== 68295 (pos)
                    (not (at_a_p7))

                    ; #68295: <==negation-removal== 52757 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #68295: origin
                    (not_at_a_p7)

                    ; #79813: origin
                    (at_a_p8)

                    ; #52757: <==negation-removal== 68295 (pos)
                    (not (at_a_p7))

                    ; #59272: <==negation-removal== 79813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #45489: origin
                    (at_a_p9)

                    ; #68295: origin
                    (not_at_a_p7)

                    ; #52757: <==negation-removal== 68295 (pos)
                    (not (at_a_p7))

                    ; #90837: <==negation-removal== 45489 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #59272: origin
                    (not_at_a_p8)

                    ; #63345: origin
                    (at_a_p1)

                    ; #28825: <==negation-removal== 63345 (pos)
                    (not (not_at_a_p1))

                    ; #79813: <==negation-removal== 59272 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #41862: origin
                    (at_a_p2)

                    ; #59272: origin
                    (not_at_a_p8)

                    ; #70655: <==negation-removal== 41862 (pos)
                    (not (not_at_a_p2))

                    ; #79813: <==negation-removal== 59272 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #59272: origin
                    (not_at_a_p8)

                    ; #79411: origin
                    (at_a_p3)

                    ; #68142: <==negation-removal== 79411 (pos)
                    (not (not_at_a_p3))

                    ; #79813: <==negation-removal== 59272 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #40810: origin
                    (at_a_p4)

                    ; #59272: origin
                    (not_at_a_p8)

                    ; #77134: <==negation-removal== 40810 (pos)
                    (not (not_at_a_p4))

                    ; #79813: <==negation-removal== 59272 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #17498: origin
                    (at_a_p5)

                    ; #59272: origin
                    (not_at_a_p8)

                    ; #79813: <==negation-removal== 59272 (pos)
                    (not (at_a_p8))

                    ; #85594: <==negation-removal== 17498 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #59272: origin
                    (not_at_a_p8)

                    ; #68760: origin
                    (at_a_p6)

                    ; #60164: <==negation-removal== 68760 (pos)
                    (not (not_at_a_p6))

                    ; #79813: <==negation-removal== 59272 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #52757: origin
                    (at_a_p7)

                    ; #59272: origin
                    (not_at_a_p8)

                    ; #68295: <==negation-removal== 52757 (pos)
                    (not (not_at_a_p7))

                    ; #79813: <==negation-removal== 59272 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #59272: origin
                    (not_at_a_p8)

                    ; #79813: origin
                    (at_a_p8)

                    ; #59272: <==negation-removal== 79813 (pos)
                    (not (not_at_a_p8))

                    ; #79813: <==negation-removal== 59272 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #45489: origin
                    (at_a_p9)

                    ; #59272: origin
                    (not_at_a_p8)

                    ; #79813: <==negation-removal== 59272 (pos)
                    (not (at_a_p8))

                    ; #90837: <==negation-removal== 45489 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #63345: origin
                    (at_a_p1)

                    ; #90837: origin
                    (not_at_a_p9)

                    ; #28825: <==negation-removal== 63345 (pos)
                    (not (not_at_a_p1))

                    ; #45489: <==negation-removal== 90837 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #41862: origin
                    (at_a_p2)

                    ; #90837: origin
                    (not_at_a_p9)

                    ; #45489: <==negation-removal== 90837 (pos)
                    (not (at_a_p9))

                    ; #70655: <==negation-removal== 41862 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #79411: origin
                    (at_a_p3)

                    ; #90837: origin
                    (not_at_a_p9)

                    ; #45489: <==negation-removal== 90837 (pos)
                    (not (at_a_p9))

                    ; #68142: <==negation-removal== 79411 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #40810: origin
                    (at_a_p4)

                    ; #90837: origin
                    (not_at_a_p9)

                    ; #45489: <==negation-removal== 90837 (pos)
                    (not (at_a_p9))

                    ; #77134: <==negation-removal== 40810 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #17498: origin
                    (at_a_p5)

                    ; #90837: origin
                    (not_at_a_p9)

                    ; #45489: <==negation-removal== 90837 (pos)
                    (not (at_a_p9))

                    ; #85594: <==negation-removal== 17498 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #68760: origin
                    (at_a_p6)

                    ; #90837: origin
                    (not_at_a_p9)

                    ; #45489: <==negation-removal== 90837 (pos)
                    (not (at_a_p9))

                    ; #60164: <==negation-removal== 68760 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #52757: origin
                    (at_a_p7)

                    ; #90837: origin
                    (not_at_a_p9)

                    ; #45489: <==negation-removal== 90837 (pos)
                    (not (at_a_p9))

                    ; #68295: <==negation-removal== 52757 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #79813: origin
                    (at_a_p8)

                    ; #90837: origin
                    (not_at_a_p9)

                    ; #45489: <==negation-removal== 90837 (pos)
                    (not (at_a_p9))

                    ; #59272: <==negation-removal== 79813 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #45489: origin
                    (at_a_p9)

                    ; #90837: origin
                    (not_at_a_p9)

                    ; #45489: <==negation-removal== 90837 (pos)
                    (not (at_a_p9))

                    ; #90837: <==negation-removal== 45489 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #60623: origin
                    (not_at_b_p1)

                    ; #69976: origin
                    (at_b_p1)

                    ; #60623: <==negation-removal== 69976 (pos)
                    (not (not_at_b_p1))

                    ; #69976: <==negation-removal== 60623 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #60623: origin
                    (not_at_b_p1)

                    ; #70995: origin
                    (at_b_p2)

                    ; #60383: <==negation-removal== 70995 (pos)
                    (not (not_at_b_p2))

                    ; #69976: <==negation-removal== 60623 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #60623: origin
                    (not_at_b_p1)

                    ; #61977: origin
                    (at_b_p3)

                    ; #68294: <==negation-removal== 61977 (pos)
                    (not (not_at_b_p3))

                    ; #69976: <==negation-removal== 60623 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #60623: origin
                    (not_at_b_p1)

                    ; #81234: origin
                    (at_b_p4)

                    ; #69976: <==negation-removal== 60623 (pos)
                    (not (at_b_p1))

                    ; #86375: <==negation-removal== 81234 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #54594: origin
                    (at_b_p5)

                    ; #60623: origin
                    (not_at_b_p1)

                    ; #68524: <==negation-removal== 54594 (pos)
                    (not (not_at_b_p5))

                    ; #69976: <==negation-removal== 60623 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #60623: origin
                    (not_at_b_p1)

                    ; #75670: origin
                    (at_b_p6)

                    ; #54686: <==negation-removal== 75670 (pos)
                    (not (not_at_b_p6))

                    ; #69976: <==negation-removal== 60623 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #41669: origin
                    (at_b_p7)

                    ; #60623: origin
                    (not_at_b_p1)

                    ; #14744: <==negation-removal== 41669 (pos)
                    (not (not_at_b_p7))

                    ; #69976: <==negation-removal== 60623 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #49027: origin
                    (at_b_p8)

                    ; #60623: origin
                    (not_at_b_p1)

                    ; #69784: <==negation-removal== 49027 (pos)
                    (not (not_at_b_p8))

                    ; #69976: <==negation-removal== 60623 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #60623: origin
                    (not_at_b_p1)

                    ; #89800: origin
                    (at_b_p9)

                    ; #10042: <==negation-removal== 89800 (pos)
                    (not (not_at_b_p9))

                    ; #69976: <==negation-removal== 60623 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #60383: origin
                    (not_at_b_p2)

                    ; #69976: origin
                    (at_b_p1)

                    ; #60623: <==negation-removal== 69976 (pos)
                    (not (not_at_b_p1))

                    ; #70995: <==negation-removal== 60383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #60383: origin
                    (not_at_b_p2)

                    ; #70995: origin
                    (at_b_p2)

                    ; #60383: <==negation-removal== 70995 (pos)
                    (not (not_at_b_p2))

                    ; #70995: <==negation-removal== 60383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #60383: origin
                    (not_at_b_p2)

                    ; #61977: origin
                    (at_b_p3)

                    ; #68294: <==negation-removal== 61977 (pos)
                    (not (not_at_b_p3))

                    ; #70995: <==negation-removal== 60383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #60383: origin
                    (not_at_b_p2)

                    ; #81234: origin
                    (at_b_p4)

                    ; #70995: <==negation-removal== 60383 (pos)
                    (not (at_b_p2))

                    ; #86375: <==negation-removal== 81234 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #54594: origin
                    (at_b_p5)

                    ; #60383: origin
                    (not_at_b_p2)

                    ; #68524: <==negation-removal== 54594 (pos)
                    (not (not_at_b_p5))

                    ; #70995: <==negation-removal== 60383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #60383: origin
                    (not_at_b_p2)

                    ; #75670: origin
                    (at_b_p6)

                    ; #54686: <==negation-removal== 75670 (pos)
                    (not (not_at_b_p6))

                    ; #70995: <==negation-removal== 60383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #41669: origin
                    (at_b_p7)

                    ; #60383: origin
                    (not_at_b_p2)

                    ; #14744: <==negation-removal== 41669 (pos)
                    (not (not_at_b_p7))

                    ; #70995: <==negation-removal== 60383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #49027: origin
                    (at_b_p8)

                    ; #60383: origin
                    (not_at_b_p2)

                    ; #69784: <==negation-removal== 49027 (pos)
                    (not (not_at_b_p8))

                    ; #70995: <==negation-removal== 60383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #60383: origin
                    (not_at_b_p2)

                    ; #89800: origin
                    (at_b_p9)

                    ; #10042: <==negation-removal== 89800 (pos)
                    (not (not_at_b_p9))

                    ; #70995: <==negation-removal== 60383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #68294: origin
                    (not_at_b_p3)

                    ; #69976: origin
                    (at_b_p1)

                    ; #60623: <==negation-removal== 69976 (pos)
                    (not (not_at_b_p1))

                    ; #61977: <==negation-removal== 68294 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #68294: origin
                    (not_at_b_p3)

                    ; #70995: origin
                    (at_b_p2)

                    ; #60383: <==negation-removal== 70995 (pos)
                    (not (not_at_b_p2))

                    ; #61977: <==negation-removal== 68294 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #61977: origin
                    (at_b_p3)

                    ; #68294: origin
                    (not_at_b_p3)

                    ; #61977: <==negation-removal== 68294 (pos)
                    (not (at_b_p3))

                    ; #68294: <==negation-removal== 61977 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #68294: origin
                    (not_at_b_p3)

                    ; #81234: origin
                    (at_b_p4)

                    ; #61977: <==negation-removal== 68294 (pos)
                    (not (at_b_p3))

                    ; #86375: <==negation-removal== 81234 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #54594: origin
                    (at_b_p5)

                    ; #68294: origin
                    (not_at_b_p3)

                    ; #61977: <==negation-removal== 68294 (pos)
                    (not (at_b_p3))

                    ; #68524: <==negation-removal== 54594 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #68294: origin
                    (not_at_b_p3)

                    ; #75670: origin
                    (at_b_p6)

                    ; #54686: <==negation-removal== 75670 (pos)
                    (not (not_at_b_p6))

                    ; #61977: <==negation-removal== 68294 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #41669: origin
                    (at_b_p7)

                    ; #68294: origin
                    (not_at_b_p3)

                    ; #14744: <==negation-removal== 41669 (pos)
                    (not (not_at_b_p7))

                    ; #61977: <==negation-removal== 68294 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #49027: origin
                    (at_b_p8)

                    ; #68294: origin
                    (not_at_b_p3)

                    ; #61977: <==negation-removal== 68294 (pos)
                    (not (at_b_p3))

                    ; #69784: <==negation-removal== 49027 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #68294: origin
                    (not_at_b_p3)

                    ; #89800: origin
                    (at_b_p9)

                    ; #10042: <==negation-removal== 89800 (pos)
                    (not (not_at_b_p9))

                    ; #61977: <==negation-removal== 68294 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #69976: origin
                    (at_b_p1)

                    ; #86375: origin
                    (not_at_b_p4)

                    ; #60623: <==negation-removal== 69976 (pos)
                    (not (not_at_b_p1))

                    ; #81234: <==negation-removal== 86375 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #70995: origin
                    (at_b_p2)

                    ; #86375: origin
                    (not_at_b_p4)

                    ; #60383: <==negation-removal== 70995 (pos)
                    (not (not_at_b_p2))

                    ; #81234: <==negation-removal== 86375 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #61977: origin
                    (at_b_p3)

                    ; #86375: origin
                    (not_at_b_p4)

                    ; #68294: <==negation-removal== 61977 (pos)
                    (not (not_at_b_p3))

                    ; #81234: <==negation-removal== 86375 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #81234: origin
                    (at_b_p4)

                    ; #86375: origin
                    (not_at_b_p4)

                    ; #81234: <==negation-removal== 86375 (pos)
                    (not (at_b_p4))

                    ; #86375: <==negation-removal== 81234 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #54594: origin
                    (at_b_p5)

                    ; #86375: origin
                    (not_at_b_p4)

                    ; #68524: <==negation-removal== 54594 (pos)
                    (not (not_at_b_p5))

                    ; #81234: <==negation-removal== 86375 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #75670: origin
                    (at_b_p6)

                    ; #86375: origin
                    (not_at_b_p4)

                    ; #54686: <==negation-removal== 75670 (pos)
                    (not (not_at_b_p6))

                    ; #81234: <==negation-removal== 86375 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #41669: origin
                    (at_b_p7)

                    ; #86375: origin
                    (not_at_b_p4)

                    ; #14744: <==negation-removal== 41669 (pos)
                    (not (not_at_b_p7))

                    ; #81234: <==negation-removal== 86375 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #49027: origin
                    (at_b_p8)

                    ; #86375: origin
                    (not_at_b_p4)

                    ; #69784: <==negation-removal== 49027 (pos)
                    (not (not_at_b_p8))

                    ; #81234: <==negation-removal== 86375 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #86375: origin
                    (not_at_b_p4)

                    ; #89800: origin
                    (at_b_p9)

                    ; #10042: <==negation-removal== 89800 (pos)
                    (not (not_at_b_p9))

                    ; #81234: <==negation-removal== 86375 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #68524: origin
                    (not_at_b_p5)

                    ; #69976: origin
                    (at_b_p1)

                    ; #54594: <==negation-removal== 68524 (pos)
                    (not (at_b_p5))

                    ; #60623: <==negation-removal== 69976 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #68524: origin
                    (not_at_b_p5)

                    ; #70995: origin
                    (at_b_p2)

                    ; #54594: <==negation-removal== 68524 (pos)
                    (not (at_b_p5))

                    ; #60383: <==negation-removal== 70995 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #61977: origin
                    (at_b_p3)

                    ; #68524: origin
                    (not_at_b_p5)

                    ; #54594: <==negation-removal== 68524 (pos)
                    (not (at_b_p5))

                    ; #68294: <==negation-removal== 61977 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #68524: origin
                    (not_at_b_p5)

                    ; #81234: origin
                    (at_b_p4)

                    ; #54594: <==negation-removal== 68524 (pos)
                    (not (at_b_p5))

                    ; #86375: <==negation-removal== 81234 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #54594: origin
                    (at_b_p5)

                    ; #68524: origin
                    (not_at_b_p5)

                    ; #54594: <==negation-removal== 68524 (pos)
                    (not (at_b_p5))

                    ; #68524: <==negation-removal== 54594 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #68524: origin
                    (not_at_b_p5)

                    ; #75670: origin
                    (at_b_p6)

                    ; #54594: <==negation-removal== 68524 (pos)
                    (not (at_b_p5))

                    ; #54686: <==negation-removal== 75670 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #41669: origin
                    (at_b_p7)

                    ; #68524: origin
                    (not_at_b_p5)

                    ; #14744: <==negation-removal== 41669 (pos)
                    (not (not_at_b_p7))

                    ; #54594: <==negation-removal== 68524 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #49027: origin
                    (at_b_p8)

                    ; #68524: origin
                    (not_at_b_p5)

                    ; #54594: <==negation-removal== 68524 (pos)
                    (not (at_b_p5))

                    ; #69784: <==negation-removal== 49027 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #68524: origin
                    (not_at_b_p5)

                    ; #89800: origin
                    (at_b_p9)

                    ; #10042: <==negation-removal== 89800 (pos)
                    (not (not_at_b_p9))

                    ; #54594: <==negation-removal== 68524 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #54686: origin
                    (not_at_b_p6)

                    ; #69976: origin
                    (at_b_p1)

                    ; #60623: <==negation-removal== 69976 (pos)
                    (not (not_at_b_p1))

                    ; #75670: <==negation-removal== 54686 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #54686: origin
                    (not_at_b_p6)

                    ; #70995: origin
                    (at_b_p2)

                    ; #60383: <==negation-removal== 70995 (pos)
                    (not (not_at_b_p2))

                    ; #75670: <==negation-removal== 54686 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #54686: origin
                    (not_at_b_p6)

                    ; #61977: origin
                    (at_b_p3)

                    ; #68294: <==negation-removal== 61977 (pos)
                    (not (not_at_b_p3))

                    ; #75670: <==negation-removal== 54686 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #54686: origin
                    (not_at_b_p6)

                    ; #81234: origin
                    (at_b_p4)

                    ; #75670: <==negation-removal== 54686 (pos)
                    (not (at_b_p6))

                    ; #86375: <==negation-removal== 81234 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #54594: origin
                    (at_b_p5)

                    ; #54686: origin
                    (not_at_b_p6)

                    ; #68524: <==negation-removal== 54594 (pos)
                    (not (not_at_b_p5))

                    ; #75670: <==negation-removal== 54686 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #54686: origin
                    (not_at_b_p6)

                    ; #75670: origin
                    (at_b_p6)

                    ; #54686: <==negation-removal== 75670 (pos)
                    (not (not_at_b_p6))

                    ; #75670: <==negation-removal== 54686 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #41669: origin
                    (at_b_p7)

                    ; #54686: origin
                    (not_at_b_p6)

                    ; #14744: <==negation-removal== 41669 (pos)
                    (not (not_at_b_p7))

                    ; #75670: <==negation-removal== 54686 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #49027: origin
                    (at_b_p8)

                    ; #54686: origin
                    (not_at_b_p6)

                    ; #69784: <==negation-removal== 49027 (pos)
                    (not (not_at_b_p8))

                    ; #75670: <==negation-removal== 54686 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #54686: origin
                    (not_at_b_p6)

                    ; #89800: origin
                    (at_b_p9)

                    ; #10042: <==negation-removal== 89800 (pos)
                    (not (not_at_b_p9))

                    ; #75670: <==negation-removal== 54686 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #14744: origin
                    (not_at_b_p7)

                    ; #69976: origin
                    (at_b_p1)

                    ; #41669: <==negation-removal== 14744 (pos)
                    (not (at_b_p7))

                    ; #60623: <==negation-removal== 69976 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #14744: origin
                    (not_at_b_p7)

                    ; #70995: origin
                    (at_b_p2)

                    ; #41669: <==negation-removal== 14744 (pos)
                    (not (at_b_p7))

                    ; #60383: <==negation-removal== 70995 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #14744: origin
                    (not_at_b_p7)

                    ; #61977: origin
                    (at_b_p3)

                    ; #41669: <==negation-removal== 14744 (pos)
                    (not (at_b_p7))

                    ; #68294: <==negation-removal== 61977 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #14744: origin
                    (not_at_b_p7)

                    ; #81234: origin
                    (at_b_p4)

                    ; #41669: <==negation-removal== 14744 (pos)
                    (not (at_b_p7))

                    ; #86375: <==negation-removal== 81234 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #14744: origin
                    (not_at_b_p7)

                    ; #54594: origin
                    (at_b_p5)

                    ; #41669: <==negation-removal== 14744 (pos)
                    (not (at_b_p7))

                    ; #68524: <==negation-removal== 54594 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #14744: origin
                    (not_at_b_p7)

                    ; #75670: origin
                    (at_b_p6)

                    ; #41669: <==negation-removal== 14744 (pos)
                    (not (at_b_p7))

                    ; #54686: <==negation-removal== 75670 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #14744: origin
                    (not_at_b_p7)

                    ; #41669: origin
                    (at_b_p7)

                    ; #14744: <==negation-removal== 41669 (pos)
                    (not (not_at_b_p7))

                    ; #41669: <==negation-removal== 14744 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #14744: origin
                    (not_at_b_p7)

                    ; #49027: origin
                    (at_b_p8)

                    ; #41669: <==negation-removal== 14744 (pos)
                    (not (at_b_p7))

                    ; #69784: <==negation-removal== 49027 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #14744: origin
                    (not_at_b_p7)

                    ; #89800: origin
                    (at_b_p9)

                    ; #10042: <==negation-removal== 89800 (pos)
                    (not (not_at_b_p9))

                    ; #41669: <==negation-removal== 14744 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #69784: origin
                    (not_at_b_p8)

                    ; #69976: origin
                    (at_b_p1)

                    ; #49027: <==negation-removal== 69784 (pos)
                    (not (at_b_p8))

                    ; #60623: <==negation-removal== 69976 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #69784: origin
                    (not_at_b_p8)

                    ; #70995: origin
                    (at_b_p2)

                    ; #49027: <==negation-removal== 69784 (pos)
                    (not (at_b_p8))

                    ; #60383: <==negation-removal== 70995 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #61977: origin
                    (at_b_p3)

                    ; #69784: origin
                    (not_at_b_p8)

                    ; #49027: <==negation-removal== 69784 (pos)
                    (not (at_b_p8))

                    ; #68294: <==negation-removal== 61977 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #69784: origin
                    (not_at_b_p8)

                    ; #81234: origin
                    (at_b_p4)

                    ; #49027: <==negation-removal== 69784 (pos)
                    (not (at_b_p8))

                    ; #86375: <==negation-removal== 81234 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #54594: origin
                    (at_b_p5)

                    ; #69784: origin
                    (not_at_b_p8)

                    ; #49027: <==negation-removal== 69784 (pos)
                    (not (at_b_p8))

                    ; #68524: <==negation-removal== 54594 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #69784: origin
                    (not_at_b_p8)

                    ; #75670: origin
                    (at_b_p6)

                    ; #49027: <==negation-removal== 69784 (pos)
                    (not (at_b_p8))

                    ; #54686: <==negation-removal== 75670 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #41669: origin
                    (at_b_p7)

                    ; #69784: origin
                    (not_at_b_p8)

                    ; #14744: <==negation-removal== 41669 (pos)
                    (not (not_at_b_p7))

                    ; #49027: <==negation-removal== 69784 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #49027: origin
                    (at_b_p8)

                    ; #69784: origin
                    (not_at_b_p8)

                    ; #49027: <==negation-removal== 69784 (pos)
                    (not (at_b_p8))

                    ; #69784: <==negation-removal== 49027 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #69784: origin
                    (not_at_b_p8)

                    ; #89800: origin
                    (at_b_p9)

                    ; #10042: <==negation-removal== 89800 (pos)
                    (not (not_at_b_p9))

                    ; #49027: <==negation-removal== 69784 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #10042: origin
                    (not_at_b_p9)

                    ; #69976: origin
                    (at_b_p1)

                    ; #60623: <==negation-removal== 69976 (pos)
                    (not (not_at_b_p1))

                    ; #89800: <==negation-removal== 10042 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #10042: origin
                    (not_at_b_p9)

                    ; #70995: origin
                    (at_b_p2)

                    ; #60383: <==negation-removal== 70995 (pos)
                    (not (not_at_b_p2))

                    ; #89800: <==negation-removal== 10042 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #10042: origin
                    (not_at_b_p9)

                    ; #61977: origin
                    (at_b_p3)

                    ; #68294: <==negation-removal== 61977 (pos)
                    (not (not_at_b_p3))

                    ; #89800: <==negation-removal== 10042 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #10042: origin
                    (not_at_b_p9)

                    ; #81234: origin
                    (at_b_p4)

                    ; #86375: <==negation-removal== 81234 (pos)
                    (not (not_at_b_p4))

                    ; #89800: <==negation-removal== 10042 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #10042: origin
                    (not_at_b_p9)

                    ; #54594: origin
                    (at_b_p5)

                    ; #68524: <==negation-removal== 54594 (pos)
                    (not (not_at_b_p5))

                    ; #89800: <==negation-removal== 10042 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #10042: origin
                    (not_at_b_p9)

                    ; #75670: origin
                    (at_b_p6)

                    ; #54686: <==negation-removal== 75670 (pos)
                    (not (not_at_b_p6))

                    ; #89800: <==negation-removal== 10042 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #10042: origin
                    (not_at_b_p9)

                    ; #41669: origin
                    (at_b_p7)

                    ; #14744: <==negation-removal== 41669 (pos)
                    (not (not_at_b_p7))

                    ; #89800: <==negation-removal== 10042 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #10042: origin
                    (not_at_b_p9)

                    ; #49027: origin
                    (at_b_p8)

                    ; #69784: <==negation-removal== 49027 (pos)
                    (not (not_at_b_p8))

                    ; #89800: <==negation-removal== 10042 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #10042: origin
                    (not_at_b_p9)

                    ; #89800: origin
                    (at_b_p9)

                    ; #10042: <==negation-removal== 89800 (pos)
                    (not (not_at_b_p9))

                    ; #89800: <==negation-removal== 10042 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #52973: origin
                    (not_at_c_p1)

                    ; #96658: origin
                    (at_c_p1)

                    ; #52973: <==negation-removal== 96658 (pos)
                    (not (not_at_c_p1))

                    ; #96658: <==negation-removal== 52973 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #30791: origin
                    (at_c_p2)

                    ; #52973: origin
                    (not_at_c_p1)

                    ; #54376: <==negation-removal== 30791 (pos)
                    (not (not_at_c_p2))

                    ; #96658: <==negation-removal== 52973 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #52973: origin
                    (not_at_c_p1)

                    ; #87793: origin
                    (at_c_p3)

                    ; #24967: <==negation-removal== 87793 (pos)
                    (not (not_at_c_p3))

                    ; #96658: <==negation-removal== 52973 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #52973: origin
                    (not_at_c_p1)

                    ; #66574: origin
                    (at_c_p4)

                    ; #31204: <==negation-removal== 66574 (pos)
                    (not (not_at_c_p4))

                    ; #96658: <==negation-removal== 52973 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #22925: origin
                    (at_c_p5)

                    ; #52973: origin
                    (not_at_c_p1)

                    ; #73166: <==negation-removal== 22925 (pos)
                    (not (not_at_c_p5))

                    ; #96658: <==negation-removal== 52973 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #52973: origin
                    (not_at_c_p1)

                    ; #58211: origin
                    (at_c_p6)

                    ; #58359: <==negation-removal== 58211 (pos)
                    (not (not_at_c_p6))

                    ; #96658: <==negation-removal== 52973 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #25642: origin
                    (at_c_p7)

                    ; #52973: origin
                    (not_at_c_p1)

                    ; #37594: <==negation-removal== 25642 (pos)
                    (not (not_at_c_p7))

                    ; #96658: <==negation-removal== 52973 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #24917: origin
                    (at_c_p8)

                    ; #52973: origin
                    (not_at_c_p1)

                    ; #38614: <==negation-removal== 24917 (pos)
                    (not (not_at_c_p8))

                    ; #96658: <==negation-removal== 52973 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #29376: origin
                    (at_c_p9)

                    ; #52973: origin
                    (not_at_c_p1)

                    ; #46606: <==negation-removal== 29376 (pos)
                    (not (not_at_c_p9))

                    ; #96658: <==negation-removal== 52973 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #54376: origin
                    (not_at_c_p2)

                    ; #96658: origin
                    (at_c_p1)

                    ; #30791: <==negation-removal== 54376 (pos)
                    (not (at_c_p2))

                    ; #52973: <==negation-removal== 96658 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #30791: origin
                    (at_c_p2)

                    ; #54376: origin
                    (not_at_c_p2)

                    ; #30791: <==negation-removal== 54376 (pos)
                    (not (at_c_p2))

                    ; #54376: <==negation-removal== 30791 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #54376: origin
                    (not_at_c_p2)

                    ; #87793: origin
                    (at_c_p3)

                    ; #24967: <==negation-removal== 87793 (pos)
                    (not (not_at_c_p3))

                    ; #30791: <==negation-removal== 54376 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #54376: origin
                    (not_at_c_p2)

                    ; #66574: origin
                    (at_c_p4)

                    ; #30791: <==negation-removal== 54376 (pos)
                    (not (at_c_p2))

                    ; #31204: <==negation-removal== 66574 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #22925: origin
                    (at_c_p5)

                    ; #54376: origin
                    (not_at_c_p2)

                    ; #30791: <==negation-removal== 54376 (pos)
                    (not (at_c_p2))

                    ; #73166: <==negation-removal== 22925 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #54376: origin
                    (not_at_c_p2)

                    ; #58211: origin
                    (at_c_p6)

                    ; #30791: <==negation-removal== 54376 (pos)
                    (not (at_c_p2))

                    ; #58359: <==negation-removal== 58211 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #25642: origin
                    (at_c_p7)

                    ; #54376: origin
                    (not_at_c_p2)

                    ; #30791: <==negation-removal== 54376 (pos)
                    (not (at_c_p2))

                    ; #37594: <==negation-removal== 25642 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #24917: origin
                    (at_c_p8)

                    ; #54376: origin
                    (not_at_c_p2)

                    ; #30791: <==negation-removal== 54376 (pos)
                    (not (at_c_p2))

                    ; #38614: <==negation-removal== 24917 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #29376: origin
                    (at_c_p9)

                    ; #54376: origin
                    (not_at_c_p2)

                    ; #30791: <==negation-removal== 54376 (pos)
                    (not (at_c_p2))

                    ; #46606: <==negation-removal== 29376 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #24967: origin
                    (not_at_c_p3)

                    ; #96658: origin
                    (at_c_p1)

                    ; #52973: <==negation-removal== 96658 (pos)
                    (not (not_at_c_p1))

                    ; #87793: <==negation-removal== 24967 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #24967: origin
                    (not_at_c_p3)

                    ; #30791: origin
                    (at_c_p2)

                    ; #54376: <==negation-removal== 30791 (pos)
                    (not (not_at_c_p2))

                    ; #87793: <==negation-removal== 24967 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #24967: origin
                    (not_at_c_p3)

                    ; #87793: origin
                    (at_c_p3)

                    ; #24967: <==negation-removal== 87793 (pos)
                    (not (not_at_c_p3))

                    ; #87793: <==negation-removal== 24967 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #24967: origin
                    (not_at_c_p3)

                    ; #66574: origin
                    (at_c_p4)

                    ; #31204: <==negation-removal== 66574 (pos)
                    (not (not_at_c_p4))

                    ; #87793: <==negation-removal== 24967 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #22925: origin
                    (at_c_p5)

                    ; #24967: origin
                    (not_at_c_p3)

                    ; #73166: <==negation-removal== 22925 (pos)
                    (not (not_at_c_p5))

                    ; #87793: <==negation-removal== 24967 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #24967: origin
                    (not_at_c_p3)

                    ; #58211: origin
                    (at_c_p6)

                    ; #58359: <==negation-removal== 58211 (pos)
                    (not (not_at_c_p6))

                    ; #87793: <==negation-removal== 24967 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #24967: origin
                    (not_at_c_p3)

                    ; #25642: origin
                    (at_c_p7)

                    ; #37594: <==negation-removal== 25642 (pos)
                    (not (not_at_c_p7))

                    ; #87793: <==negation-removal== 24967 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #24917: origin
                    (at_c_p8)

                    ; #24967: origin
                    (not_at_c_p3)

                    ; #38614: <==negation-removal== 24917 (pos)
                    (not (not_at_c_p8))

                    ; #87793: <==negation-removal== 24967 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #24967: origin
                    (not_at_c_p3)

                    ; #29376: origin
                    (at_c_p9)

                    ; #46606: <==negation-removal== 29376 (pos)
                    (not (not_at_c_p9))

                    ; #87793: <==negation-removal== 24967 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #31204: origin
                    (not_at_c_p4)

                    ; #96658: origin
                    (at_c_p1)

                    ; #52973: <==negation-removal== 96658 (pos)
                    (not (not_at_c_p1))

                    ; #66574: <==negation-removal== 31204 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #30791: origin
                    (at_c_p2)

                    ; #31204: origin
                    (not_at_c_p4)

                    ; #54376: <==negation-removal== 30791 (pos)
                    (not (not_at_c_p2))

                    ; #66574: <==negation-removal== 31204 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #31204: origin
                    (not_at_c_p4)

                    ; #87793: origin
                    (at_c_p3)

                    ; #24967: <==negation-removal== 87793 (pos)
                    (not (not_at_c_p3))

                    ; #66574: <==negation-removal== 31204 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #31204: origin
                    (not_at_c_p4)

                    ; #66574: origin
                    (at_c_p4)

                    ; #31204: <==negation-removal== 66574 (pos)
                    (not (not_at_c_p4))

                    ; #66574: <==negation-removal== 31204 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #22925: origin
                    (at_c_p5)

                    ; #31204: origin
                    (not_at_c_p4)

                    ; #66574: <==negation-removal== 31204 (pos)
                    (not (at_c_p4))

                    ; #73166: <==negation-removal== 22925 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #31204: origin
                    (not_at_c_p4)

                    ; #58211: origin
                    (at_c_p6)

                    ; #58359: <==negation-removal== 58211 (pos)
                    (not (not_at_c_p6))

                    ; #66574: <==negation-removal== 31204 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #25642: origin
                    (at_c_p7)

                    ; #31204: origin
                    (not_at_c_p4)

                    ; #37594: <==negation-removal== 25642 (pos)
                    (not (not_at_c_p7))

                    ; #66574: <==negation-removal== 31204 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #24917: origin
                    (at_c_p8)

                    ; #31204: origin
                    (not_at_c_p4)

                    ; #38614: <==negation-removal== 24917 (pos)
                    (not (not_at_c_p8))

                    ; #66574: <==negation-removal== 31204 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #29376: origin
                    (at_c_p9)

                    ; #31204: origin
                    (not_at_c_p4)

                    ; #46606: <==negation-removal== 29376 (pos)
                    (not (not_at_c_p9))

                    ; #66574: <==negation-removal== 31204 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #73166: origin
                    (not_at_c_p5)

                    ; #96658: origin
                    (at_c_p1)

                    ; #22925: <==negation-removal== 73166 (pos)
                    (not (at_c_p5))

                    ; #52973: <==negation-removal== 96658 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #30791: origin
                    (at_c_p2)

                    ; #73166: origin
                    (not_at_c_p5)

                    ; #22925: <==negation-removal== 73166 (pos)
                    (not (at_c_p5))

                    ; #54376: <==negation-removal== 30791 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #73166: origin
                    (not_at_c_p5)

                    ; #87793: origin
                    (at_c_p3)

                    ; #22925: <==negation-removal== 73166 (pos)
                    (not (at_c_p5))

                    ; #24967: <==negation-removal== 87793 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #66574: origin
                    (at_c_p4)

                    ; #73166: origin
                    (not_at_c_p5)

                    ; #22925: <==negation-removal== 73166 (pos)
                    (not (at_c_p5))

                    ; #31204: <==negation-removal== 66574 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #22925: origin
                    (at_c_p5)

                    ; #73166: origin
                    (not_at_c_p5)

                    ; #22925: <==negation-removal== 73166 (pos)
                    (not (at_c_p5))

                    ; #73166: <==negation-removal== 22925 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #58211: origin
                    (at_c_p6)

                    ; #73166: origin
                    (not_at_c_p5)

                    ; #22925: <==negation-removal== 73166 (pos)
                    (not (at_c_p5))

                    ; #58359: <==negation-removal== 58211 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #25642: origin
                    (at_c_p7)

                    ; #73166: origin
                    (not_at_c_p5)

                    ; #22925: <==negation-removal== 73166 (pos)
                    (not (at_c_p5))

                    ; #37594: <==negation-removal== 25642 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #24917: origin
                    (at_c_p8)

                    ; #73166: origin
                    (not_at_c_p5)

                    ; #22925: <==negation-removal== 73166 (pos)
                    (not (at_c_p5))

                    ; #38614: <==negation-removal== 24917 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #29376: origin
                    (at_c_p9)

                    ; #73166: origin
                    (not_at_c_p5)

                    ; #22925: <==negation-removal== 73166 (pos)
                    (not (at_c_p5))

                    ; #46606: <==negation-removal== 29376 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #58359: origin
                    (not_at_c_p6)

                    ; #96658: origin
                    (at_c_p1)

                    ; #52973: <==negation-removal== 96658 (pos)
                    (not (not_at_c_p1))

                    ; #58211: <==negation-removal== 58359 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #30791: origin
                    (at_c_p2)

                    ; #58359: origin
                    (not_at_c_p6)

                    ; #54376: <==negation-removal== 30791 (pos)
                    (not (not_at_c_p2))

                    ; #58211: <==negation-removal== 58359 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #58359: origin
                    (not_at_c_p6)

                    ; #87793: origin
                    (at_c_p3)

                    ; #24967: <==negation-removal== 87793 (pos)
                    (not (not_at_c_p3))

                    ; #58211: <==negation-removal== 58359 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #58359: origin
                    (not_at_c_p6)

                    ; #66574: origin
                    (at_c_p4)

                    ; #31204: <==negation-removal== 66574 (pos)
                    (not (not_at_c_p4))

                    ; #58211: <==negation-removal== 58359 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #22925: origin
                    (at_c_p5)

                    ; #58359: origin
                    (not_at_c_p6)

                    ; #58211: <==negation-removal== 58359 (pos)
                    (not (at_c_p6))

                    ; #73166: <==negation-removal== 22925 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #58211: origin
                    (at_c_p6)

                    ; #58359: origin
                    (not_at_c_p6)

                    ; #58211: <==negation-removal== 58359 (pos)
                    (not (at_c_p6))

                    ; #58359: <==negation-removal== 58211 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #25642: origin
                    (at_c_p7)

                    ; #58359: origin
                    (not_at_c_p6)

                    ; #37594: <==negation-removal== 25642 (pos)
                    (not (not_at_c_p7))

                    ; #58211: <==negation-removal== 58359 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #24917: origin
                    (at_c_p8)

                    ; #58359: origin
                    (not_at_c_p6)

                    ; #38614: <==negation-removal== 24917 (pos)
                    (not (not_at_c_p8))

                    ; #58211: <==negation-removal== 58359 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #29376: origin
                    (at_c_p9)

                    ; #58359: origin
                    (not_at_c_p6)

                    ; #46606: <==negation-removal== 29376 (pos)
                    (not (not_at_c_p9))

                    ; #58211: <==negation-removal== 58359 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #37594: origin
                    (not_at_c_p7)

                    ; #96658: origin
                    (at_c_p1)

                    ; #25642: <==negation-removal== 37594 (pos)
                    (not (at_c_p7))

                    ; #52973: <==negation-removal== 96658 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #30791: origin
                    (at_c_p2)

                    ; #37594: origin
                    (not_at_c_p7)

                    ; #25642: <==negation-removal== 37594 (pos)
                    (not (at_c_p7))

                    ; #54376: <==negation-removal== 30791 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #37594: origin
                    (not_at_c_p7)

                    ; #87793: origin
                    (at_c_p3)

                    ; #24967: <==negation-removal== 87793 (pos)
                    (not (not_at_c_p3))

                    ; #25642: <==negation-removal== 37594 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #37594: origin
                    (not_at_c_p7)

                    ; #66574: origin
                    (at_c_p4)

                    ; #25642: <==negation-removal== 37594 (pos)
                    (not (at_c_p7))

                    ; #31204: <==negation-removal== 66574 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #22925: origin
                    (at_c_p5)

                    ; #37594: origin
                    (not_at_c_p7)

                    ; #25642: <==negation-removal== 37594 (pos)
                    (not (at_c_p7))

                    ; #73166: <==negation-removal== 22925 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #37594: origin
                    (not_at_c_p7)

                    ; #58211: origin
                    (at_c_p6)

                    ; #25642: <==negation-removal== 37594 (pos)
                    (not (at_c_p7))

                    ; #58359: <==negation-removal== 58211 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #25642: origin
                    (at_c_p7)

                    ; #37594: origin
                    (not_at_c_p7)

                    ; #25642: <==negation-removal== 37594 (pos)
                    (not (at_c_p7))

                    ; #37594: <==negation-removal== 25642 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #24917: origin
                    (at_c_p8)

                    ; #37594: origin
                    (not_at_c_p7)

                    ; #25642: <==negation-removal== 37594 (pos)
                    (not (at_c_p7))

                    ; #38614: <==negation-removal== 24917 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #29376: origin
                    (at_c_p9)

                    ; #37594: origin
                    (not_at_c_p7)

                    ; #25642: <==negation-removal== 37594 (pos)
                    (not (at_c_p7))

                    ; #46606: <==negation-removal== 29376 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #38614: origin
                    (not_at_c_p8)

                    ; #96658: origin
                    (at_c_p1)

                    ; #24917: <==negation-removal== 38614 (pos)
                    (not (at_c_p8))

                    ; #52973: <==negation-removal== 96658 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #30791: origin
                    (at_c_p2)

                    ; #38614: origin
                    (not_at_c_p8)

                    ; #24917: <==negation-removal== 38614 (pos)
                    (not (at_c_p8))

                    ; #54376: <==negation-removal== 30791 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #38614: origin
                    (not_at_c_p8)

                    ; #87793: origin
                    (at_c_p3)

                    ; #24917: <==negation-removal== 38614 (pos)
                    (not (at_c_p8))

                    ; #24967: <==negation-removal== 87793 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #38614: origin
                    (not_at_c_p8)

                    ; #66574: origin
                    (at_c_p4)

                    ; #24917: <==negation-removal== 38614 (pos)
                    (not (at_c_p8))

                    ; #31204: <==negation-removal== 66574 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #22925: origin
                    (at_c_p5)

                    ; #38614: origin
                    (not_at_c_p8)

                    ; #24917: <==negation-removal== 38614 (pos)
                    (not (at_c_p8))

                    ; #73166: <==negation-removal== 22925 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #38614: origin
                    (not_at_c_p8)

                    ; #58211: origin
                    (at_c_p6)

                    ; #24917: <==negation-removal== 38614 (pos)
                    (not (at_c_p8))

                    ; #58359: <==negation-removal== 58211 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #25642: origin
                    (at_c_p7)

                    ; #38614: origin
                    (not_at_c_p8)

                    ; #24917: <==negation-removal== 38614 (pos)
                    (not (at_c_p8))

                    ; #37594: <==negation-removal== 25642 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #24917: origin
                    (at_c_p8)

                    ; #38614: origin
                    (not_at_c_p8)

                    ; #24917: <==negation-removal== 38614 (pos)
                    (not (at_c_p8))

                    ; #38614: <==negation-removal== 24917 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #29376: origin
                    (at_c_p9)

                    ; #38614: origin
                    (not_at_c_p8)

                    ; #24917: <==negation-removal== 38614 (pos)
                    (not (at_c_p8))

                    ; #46606: <==negation-removal== 29376 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #46606: origin
                    (not_at_c_p9)

                    ; #96658: origin
                    (at_c_p1)

                    ; #29376: <==negation-removal== 46606 (pos)
                    (not (at_c_p9))

                    ; #52973: <==negation-removal== 96658 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #30791: origin
                    (at_c_p2)

                    ; #46606: origin
                    (not_at_c_p9)

                    ; #29376: <==negation-removal== 46606 (pos)
                    (not (at_c_p9))

                    ; #54376: <==negation-removal== 30791 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #46606: origin
                    (not_at_c_p9)

                    ; #87793: origin
                    (at_c_p3)

                    ; #24967: <==negation-removal== 87793 (pos)
                    (not (not_at_c_p3))

                    ; #29376: <==negation-removal== 46606 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #46606: origin
                    (not_at_c_p9)

                    ; #66574: origin
                    (at_c_p4)

                    ; #29376: <==negation-removal== 46606 (pos)
                    (not (at_c_p9))

                    ; #31204: <==negation-removal== 66574 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #22925: origin
                    (at_c_p5)

                    ; #46606: origin
                    (not_at_c_p9)

                    ; #29376: <==negation-removal== 46606 (pos)
                    (not (at_c_p9))

                    ; #73166: <==negation-removal== 22925 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #46606: origin
                    (not_at_c_p9)

                    ; #58211: origin
                    (at_c_p6)

                    ; #29376: <==negation-removal== 46606 (pos)
                    (not (at_c_p9))

                    ; #58359: <==negation-removal== 58211 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #25642: origin
                    (at_c_p7)

                    ; #46606: origin
                    (not_at_c_p9)

                    ; #29376: <==negation-removal== 46606 (pos)
                    (not (at_c_p9))

                    ; #37594: <==negation-removal== 25642 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #24917: origin
                    (at_c_p8)

                    ; #46606: origin
                    (not_at_c_p9)

                    ; #29376: <==negation-removal== 46606 (pos)
                    (not (at_c_p9))

                    ; #38614: <==negation-removal== 24917 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #29376: origin
                    (at_c_p9)

                    ; #46606: origin
                    (not_at_c_p9)

                    ; #29376: <==negation-removal== 46606 (pos)
                    (not (at_c_p9))

                    ; #46606: <==negation-removal== 29376 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11721: <==commonly_known== 44757 (neg)
                    (Pc_checked_p1)

                    ; #26768: <==commonly_known== 69774 (pos)
                    (Ba_checked_p1)

                    ; #33820: <==closure== 84012 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #37893: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #49057: <==commonly_known== 44757 (neg)
                    (Pa_checked_p1)

                    ; #56188: <==commonly_known== 69774 (pos)
                    (Bb_checked_p1)

                    ; #69774: origin
                    (checked_p1)

                    ; #81570: <==closure== 37893 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #84012: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #87906: <==commonly_known== 69774 (pos)
                    (Bc_checked_p1)

                    ; #91216: <==commonly_known== 44757 (neg)
                    (Pb_checked_p1)

                    ; #16934: <==negation-removal== 81570 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #21877: <==negation-removal== 37893 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #36953: <==uncertain_firing== 84012 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #43074: <==negation-removal== 56188 (pos)
                    (not (Pb_not_checked_p1))

                    ; #44757: <==negation-removal== 69774 (pos)
                    (not (not_checked_p1))

                    ; #46602: <==negation-removal== 49057 (pos)
                    (not (Ba_not_checked_p1))

                    ; #50993: <==negation-removal== 84012 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #58974: <==negation-removal== 26768 (pos)
                    (not (Pa_not_checked_p1))

                    ; #59966: <==uncertain_firing== 33820 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #60314: <==uncertain_firing== 37893 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #63137: <==negation-removal== 33820 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #78483: <==uncertain_firing== 81570 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #83749: <==negation-removal== 87906 (pos)
                    (not (Pc_not_checked_p1))

                    ; #85664: <==negation-removal== 11721 (pos)
                    (not (Bc_not_checked_p1))

                    ; #86456: <==negation-removal== 91216 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16459: <==commonly_known== 20971 (neg)
                    (Pc_checked_p2)

                    ; #24657: <==commonly_known== 69103 (pos)
                    (Ba_checked_p2)

                    ; #39707: <==commonly_known== 69103 (pos)
                    (Bc_checked_p2)

                    ; #51920: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #54815: <==commonly_known== 20971 (neg)
                    (Pb_checked_p2)

                    ; #58447: <==commonly_known== 20971 (neg)
                    (Pa_checked_p2)

                    ; #64608: <==commonly_known== 69103 (pos)
                    (Bb_checked_p2)

                    ; #65736: <==closure== 80551 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #69103: origin
                    (checked_p2)

                    ; #78984: <==closure== 51920 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #80551: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #12602: <==negation-removal== 80551 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #19947: <==negation-removal== 58447 (pos)
                    (not (Ba_not_checked_p2))

                    ; #20971: <==negation-removal== 69103 (pos)
                    (not (not_checked_p2))

                    ; #22617: <==negation-removal== 24657 (pos)
                    (not (Pa_not_checked_p2))

                    ; #34638: <==negation-removal== 51920 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #43061: <==uncertain_firing== 80551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #45182: <==uncertain_firing== 65736 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #49622: <==negation-removal== 78984 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #57305: <==negation-removal== 64608 (pos)
                    (not (Pb_not_checked_p2))

                    ; #57631: <==uncertain_firing== 78984 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #59378: <==negation-removal== 65736 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #61597: <==negation-removal== 54815 (pos)
                    (not (Bb_not_checked_p2))

                    ; #67240: <==negation-removal== 39707 (pos)
                    (not (Pc_not_checked_p2))

                    ; #67398: <==uncertain_firing== 51920 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #79176: <==negation-removal== 16459 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #22921: <==commonly_known== 78648 (neg)
                    (Pc_checked_p3)

                    ; #30990: <==closure== 59872 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #34747: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #39386: <==commonly_known== 52155 (pos)
                    (Bb_checked_p3)

                    ; #48947: <==commonly_known== 78648 (neg)
                    (Pa_checked_p3)

                    ; #51342: <==commonly_known== 78648 (neg)
                    (Pb_checked_p3)

                    ; #52155: origin
                    (checked_p3)

                    ; #59872: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #61621: <==closure== 34747 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #63393: <==commonly_known== 52155 (pos)
                    (Bc_checked_p3)

                    ; #74540: <==commonly_known== 52155 (pos)
                    (Ba_checked_p3)

                    ; #13044: <==uncertain_firing== 61621 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #19250: <==negation-removal== 59872 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #25697: <==uncertain_firing== 34747 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #26052: <==negation-removal== 51342 (pos)
                    (not (Bb_not_checked_p3))

                    ; #34975: <==negation-removal== 63393 (pos)
                    (not (Pc_not_checked_p3))

                    ; #35226: <==negation-removal== 30990 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #42547: <==negation-removal== 22921 (pos)
                    (not (Bc_not_checked_p3))

                    ; #56083: <==negation-removal== 39386 (pos)
                    (not (Pb_not_checked_p3))

                    ; #58088: <==negation-removal== 61621 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #67744: <==uncertain_firing== 59872 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #76980: <==negation-removal== 48947 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78648: <==negation-removal== 52155 (pos)
                    (not (not_checked_p3))

                    ; #81913: <==negation-removal== 74540 (pos)
                    (not (Pa_not_checked_p3))

                    ; #84269: <==negation-removal== 34747 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #90828: <==uncertain_firing== 30990 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10455: <==closure== 22365 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #14625: <==commonly_known== 23526 (neg)
                    (Pb_checked_p4)

                    ; #18409: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #22365: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #29276: <==commonly_known== 23526 (neg)
                    (Pa_checked_p4)

                    ; #45678: <==commonly_known== 23526 (neg)
                    (Pc_checked_p4)

                    ; #53156: origin
                    (checked_p4)

                    ; #60882: <==commonly_known== 53156 (pos)
                    (Ba_checked_p4)

                    ; #67888: <==commonly_known== 53156 (pos)
                    (Bc_checked_p4)

                    ; #69922: <==commonly_known== 53156 (pos)
                    (Bb_checked_p4)

                    ; #79758: <==closure== 18409 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #14198: <==uncertain_firing== 18409 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #20213: <==uncertain_firing== 79758 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #23526: <==negation-removal== 53156 (pos)
                    (not (not_checked_p4))

                    ; #25494: <==negation-removal== 10455 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #33230: <==negation-removal== 69922 (pos)
                    (not (Pb_not_checked_p4))

                    ; #34901: <==negation-removal== 14625 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37300: <==negation-removal== 29276 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45477: <==negation-removal== 45678 (pos)
                    (not (Bc_not_checked_p4))

                    ; #61987: <==negation-removal== 60882 (pos)
                    (not (Pa_not_checked_p4))

                    ; #63242: <==uncertain_firing== 10455 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #68316: <==negation-removal== 22365 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #70106: <==uncertain_firing== 22365 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #77422: <==negation-removal== 79758 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #77774: <==negation-removal== 67888 (pos)
                    (not (Pc_not_checked_p4))

                    ; #89857: <==negation-removal== 18409 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #22623: <==commonly_known== 41217 (neg)
                    (Pb_checked_p5)

                    ; #24256: <==commonly_known== 29753 (pos)
                    (Bb_checked_p5)

                    ; #29753: origin
                    (checked_p5)

                    ; #33366: <==commonly_known== 41217 (neg)
                    (Pc_checked_p5)

                    ; #52456: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #57817: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #69571: <==commonly_known== 29753 (pos)
                    (Ba_checked_p5)

                    ; #71517: <==closure== 52456 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72222: <==commonly_known== 41217 (neg)
                    (Pa_checked_p5)

                    ; #79057: <==commonly_known== 29753 (pos)
                    (Bc_checked_p5)

                    ; #83533: <==closure== 57817 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #16929: <==uncertain_firing== 52456 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #17015: <==negation-removal== 22623 (pos)
                    (not (Bb_not_checked_p5))

                    ; #19372: <==negation-removal== 83533 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25840: <==negation-removal== 79057 (pos)
                    (not (Pc_not_checked_p5))

                    ; #28580: <==negation-removal== 69571 (pos)
                    (not (Pa_not_checked_p5))

                    ; #37088: <==uncertain_firing== 71517 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41217: <==negation-removal== 29753 (pos)
                    (not (not_checked_p5))

                    ; #49932: <==negation-removal== 33366 (pos)
                    (not (Bc_not_checked_p5))

                    ; #56422: <==negation-removal== 72222 (pos)
                    (not (Ba_not_checked_p5))

                    ; #62246: <==negation-removal== 71517 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #69155: <==negation-removal== 57817 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #71334: <==uncertain_firing== 57817 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #81846: <==negation-removal== 52456 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #84852: <==uncertain_firing== 83533 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #87634: <==negation-removal== 24256 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #33461: <==commonly_known== 57125 (pos)
                    (Bc_checked_p6)

                    ; #57125: origin
                    (checked_p6)

                    ; #57375: <==commonly_known== 57125 (pos)
                    (Ba_checked_p6)

                    ; #59275: <==commonly_known== 50003 (neg)
                    (Pc_checked_p6)

                    ; #62613: <==commonly_known== 57125 (pos)
                    (Bb_checked_p6)

                    ; #73871: <==commonly_known== 50003 (neg)
                    (Pa_checked_p6)

                    ; #74149: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #75238: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #75312: <==closure== 75238 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #87081: <==closure== 74149 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #89899: <==commonly_known== 50003 (neg)
                    (Pb_checked_p6)

                    ; #14852: <==negation-removal== 75238 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #18403: <==negation-removal== 57375 (pos)
                    (not (Pa_not_checked_p6))

                    ; #20595: <==negation-removal== 33461 (pos)
                    (not (Pc_not_checked_p6))

                    ; #21522: <==negation-removal== 62613 (pos)
                    (not (Pb_not_checked_p6))

                    ; #26502: <==uncertain_firing== 75238 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #40489: <==negation-removal== 74149 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #41122: <==negation-removal== 59275 (pos)
                    (not (Bc_not_checked_p6))

                    ; #50003: <==negation-removal== 57125 (pos)
                    (not (not_checked_p6))

                    ; #57449: <==negation-removal== 87081 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #62107: <==negation-removal== 89899 (pos)
                    (not (Bb_not_checked_p6))

                    ; #64253: <==negation-removal== 73871 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69457: <==uncertain_firing== 87081 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #73885: <==negation-removal== 75312 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #81188: <==uncertain_firing== 74149 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #90936: <==uncertain_firing== 75312 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11460: origin
                    (checked_p7)

                    ; #11566: <==closure== 21332 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #20895: <==commonly_known== 11460 (pos)
                    (Bc_checked_p7)

                    ; #21332: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #24572: <==commonly_known== 63589 (neg)
                    (Pa_checked_p7)

                    ; #26781: <==commonly_known== 11460 (pos)
                    (Bb_checked_p7)

                    ; #28115: <==closure== 76710 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #34059: <==commonly_known== 63589 (neg)
                    (Pb_checked_p7)

                    ; #76710: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79456: <==commonly_known== 11460 (pos)
                    (Ba_checked_p7)

                    ; #85643: <==commonly_known== 63589 (neg)
                    (Pc_checked_p7)

                    ; #18565: <==negation-removal== 76710 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #23403: <==negation-removal== 79456 (pos)
                    (not (Pa_not_checked_p7))

                    ; #23991: <==negation-removal== 20895 (pos)
                    (not (Pc_not_checked_p7))

                    ; #31945: <==uncertain_firing== 21332 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #52030: <==negation-removal== 28115 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #54261: <==negation-removal== 85643 (pos)
                    (not (Bc_not_checked_p7))

                    ; #57026: <==uncertain_firing== 28115 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #59987: <==uncertain_firing== 11566 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #63162: <==negation-removal== 34059 (pos)
                    (not (Bb_not_checked_p7))

                    ; #63589: <==negation-removal== 11460 (pos)
                    (not (not_checked_p7))

                    ; #64824: <==negation-removal== 21332 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #71643: <==negation-removal== 24572 (pos)
                    (not (Ba_not_checked_p7))

                    ; #81553: <==negation-removal== 11566 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #89378: <==uncertain_firing== 76710 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #91521: <==negation-removal== 26781 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #26084: <==commonly_known== 49603 (neg)
                    (Pb_checked_p8)

                    ; #29366: <==commonly_known== 82313 (pos)
                    (Bc_checked_p8)

                    ; #42593: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #53368: <==commonly_known== 49603 (neg)
                    (Pa_checked_p8)

                    ; #57427: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #66620: <==closure== 42593 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #82298: <==commonly_known== 82313 (pos)
                    (Ba_checked_p8)

                    ; #82313: origin
                    (checked_p8)

                    ; #82329: <==commonly_known== 82313 (pos)
                    (Bb_checked_p8)

                    ; #83956: <==closure== 57427 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #91008: <==commonly_known== 49603 (neg)
                    (Pc_checked_p8)

                    ; #14612: <==uncertain_firing== 42593 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #39195: <==negation-removal== 57427 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42904: <==negation-removal== 42593 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #47401: <==uncertain_firing== 66620 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #49603: <==negation-removal== 82313 (pos)
                    (not (not_checked_p8))

                    ; #53384: <==negation-removal== 66620 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #58110: <==negation-removal== 29366 (pos)
                    (not (Pc_not_checked_p8))

                    ; #62917: <==negation-removal== 82298 (pos)
                    (not (Pa_not_checked_p8))

                    ; #64084: <==negation-removal== 53368 (pos)
                    (not (Ba_not_checked_p8))

                    ; #66897: <==negation-removal== 91008 (pos)
                    (not (Bc_not_checked_p8))

                    ; #74520: <==uncertain_firing== 57427 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #75200: <==uncertain_firing== 83956 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #78927: <==negation-removal== 82329 (pos)
                    (not (Pb_not_checked_p8))

                    ; #82644: <==negation-removal== 83956 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #93040: <==negation-removal== 26084 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12010: <==closure== 79721 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #30852: <==commonly_known== 50716 (pos)
                    (Bb_checked_p9)

                    ; #31204: <==commonly_known== 48892 (neg)
                    (Pa_checked_p9)

                    ; #35791: <==commonly_known== 50716 (pos)
                    (Bc_checked_p9)

                    ; #38298: <==commonly_known== 50716 (pos)
                    (Ba_checked_p9)

                    ; #43877: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #45106: <==commonly_known== 48892 (neg)
                    (Pc_checked_p9)

                    ; #50716: origin
                    (checked_p9)

                    ; #62056: <==commonly_known== 48892 (neg)
                    (Pb_checked_p9)

                    ; #63679: <==closure== 43877 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #79721: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #13913: <==uncertain_firing== 12010 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #17462: <==negation-removal== 38298 (pos)
                    (not (Pa_not_checked_p9))

                    ; #27636: <==negation-removal== 12010 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #39719: <==negation-removal== 43877 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #39749: <==uncertain_firing== 79721 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #43440: <==uncertain_firing== 43877 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #48892: <==negation-removal== 50716 (pos)
                    (not (not_checked_p9))

                    ; #67314: <==negation-removal== 45106 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70098: <==negation-removal== 63679 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #70670: <==negation-removal== 30852 (pos)
                    (not (Pb_not_checked_p9))

                    ; #70896: <==negation-removal== 35791 (pos)
                    (not (Pc_not_checked_p9))

                    ; #71588: <==negation-removal== 62056 (pos)
                    (not (Bb_not_checked_p9))

                    ; #77591: <==negation-removal== 31204 (pos)
                    (not (Ba_not_checked_p9))

                    ; #86535: <==uncertain_firing== 63679 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #89643: <==negation-removal== 79721 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11721: <==commonly_known== 44757 (neg)
                    (Pc_checked_p1)

                    ; #26768: <==commonly_known== 69774 (pos)
                    (Ba_checked_p1)

                    ; #43888: <==closure== 83705 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #49057: <==commonly_known== 44757 (neg)
                    (Pa_checked_p1)

                    ; #56188: <==commonly_known== 69774 (pos)
                    (Bb_checked_p1)

                    ; #69774: origin
                    (checked_p1)

                    ; #83055: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #83705: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #87906: <==commonly_known== 69774 (pos)
                    (Bc_checked_p1)

                    ; #91216: <==commonly_known== 44757 (neg)
                    (Pb_checked_p1)

                    ; #92028: <==closure== 83055 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #12138: <==negation-removal== 83705 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #24250: <==uncertain_firing== 92028 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36655: <==uncertain_firing== 83705 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #42333: <==negation-removal== 92028 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #43074: <==negation-removal== 56188 (pos)
                    (not (Pb_not_checked_p1))

                    ; #44757: <==negation-removal== 69774 (pos)
                    (not (not_checked_p1))

                    ; #46602: <==negation-removal== 49057 (pos)
                    (not (Ba_not_checked_p1))

                    ; #53428: <==negation-removal== 83055 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #58974: <==negation-removal== 26768 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68838: <==uncertain_firing== 83055 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #83749: <==negation-removal== 87906 (pos)
                    (not (Pc_not_checked_p1))

                    ; #85664: <==negation-removal== 11721 (pos)
                    (not (Bc_not_checked_p1))

                    ; #86456: <==negation-removal== 91216 (pos)
                    (not (Bb_not_checked_p1))

                    ; #92080: <==negation-removal== 43888 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #98104: <==uncertain_firing== 43888 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16459: <==commonly_known== 20971 (neg)
                    (Pc_checked_p2)

                    ; #16556: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #24657: <==commonly_known== 69103 (pos)
                    (Ba_checked_p2)

                    ; #30834: <==closure== 98771 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #39707: <==commonly_known== 69103 (pos)
                    (Bc_checked_p2)

                    ; #54815: <==commonly_known== 20971 (neg)
                    (Pb_checked_p2)

                    ; #58447: <==commonly_known== 20971 (neg)
                    (Pa_checked_p2)

                    ; #64608: <==commonly_known== 69103 (pos)
                    (Bb_checked_p2)

                    ; #69103: origin
                    (checked_p2)

                    ; #85748: <==closure== 16556 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #98771: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #14364: <==uncertain_firing== 85748 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #19947: <==negation-removal== 58447 (pos)
                    (not (Ba_not_checked_p2))

                    ; #20971: <==negation-removal== 69103 (pos)
                    (not (not_checked_p2))

                    ; #22617: <==negation-removal== 24657 (pos)
                    (not (Pa_not_checked_p2))

                    ; #43648: <==negation-removal== 16556 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #51888: <==uncertain_firing== 30834 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #53263: <==negation-removal== 30834 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #55670: <==uncertain_firing== 16556 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #57305: <==negation-removal== 64608 (pos)
                    (not (Pb_not_checked_p2))

                    ; #61597: <==negation-removal== 54815 (pos)
                    (not (Bb_not_checked_p2))

                    ; #67240: <==negation-removal== 39707 (pos)
                    (not (Pc_not_checked_p2))

                    ; #70305: <==negation-removal== 98771 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #79176: <==negation-removal== 16459 (pos)
                    (not (Bc_not_checked_p2))

                    ; #80415: <==negation-removal== 85748 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #86989: <==uncertain_firing== 98771 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #21066: <==closure== 75580 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #22921: <==commonly_known== 78648 (neg)
                    (Pc_checked_p3)

                    ; #39386: <==commonly_known== 52155 (pos)
                    (Bb_checked_p3)

                    ; #48391: <==closure== 89371 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #48947: <==commonly_known== 78648 (neg)
                    (Pa_checked_p3)

                    ; #51342: <==commonly_known== 78648 (neg)
                    (Pb_checked_p3)

                    ; #52155: origin
                    (checked_p3)

                    ; #63393: <==commonly_known== 52155 (pos)
                    (Bc_checked_p3)

                    ; #74540: <==commonly_known== 52155 (pos)
                    (Ba_checked_p3)

                    ; #75580: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #89371: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #15694: <==negation-removal== 21066 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #18634: <==uncertain_firing== 21066 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #18662: <==uncertain_firing== 89371 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #26052: <==negation-removal== 51342 (pos)
                    (not (Bb_not_checked_p3))

                    ; #34975: <==negation-removal== 63393 (pos)
                    (not (Pc_not_checked_p3))

                    ; #37029: <==uncertain_firing== 48391 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #40950: <==negation-removal== 75580 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #42547: <==negation-removal== 22921 (pos)
                    (not (Bc_not_checked_p3))

                    ; #56083: <==negation-removal== 39386 (pos)
                    (not (Pb_not_checked_p3))

                    ; #64086: <==negation-removal== 48391 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #76980: <==negation-removal== 48947 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78648: <==negation-removal== 52155 (pos)
                    (not (not_checked_p3))

                    ; #79516: <==uncertain_firing== 75580 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #81913: <==negation-removal== 74540 (pos)
                    (not (Pa_not_checked_p3))

                    ; #86291: <==negation-removal== 89371 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #14625: <==commonly_known== 23526 (neg)
                    (Pb_checked_p4)

                    ; #25345: <==closure== 34598 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #29276: <==commonly_known== 23526 (neg)
                    (Pa_checked_p4)

                    ; #29918: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #34598: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #45678: <==commonly_known== 23526 (neg)
                    (Pc_checked_p4)

                    ; #53156: origin
                    (checked_p4)

                    ; #60882: <==commonly_known== 53156 (pos)
                    (Ba_checked_p4)

                    ; #67888: <==commonly_known== 53156 (pos)
                    (Bc_checked_p4)

                    ; #68845: <==closure== 29918 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #69922: <==commonly_known== 53156 (pos)
                    (Bb_checked_p4)

                    ; #12514: <==uncertain_firing== 34598 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #23526: <==negation-removal== 53156 (pos)
                    (not (not_checked_p4))

                    ; #24100: <==negation-removal== 68845 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #33230: <==negation-removal== 69922 (pos)
                    (not (Pb_not_checked_p4))

                    ; #33625: <==uncertain_firing== 29918 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #34901: <==negation-removal== 14625 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37300: <==negation-removal== 29276 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45477: <==negation-removal== 45678 (pos)
                    (not (Bc_not_checked_p4))

                    ; #58432: <==negation-removal== 29918 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #61987: <==negation-removal== 60882 (pos)
                    (not (Pa_not_checked_p4))

                    ; #64287: <==negation-removal== 25345 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #68322: <==uncertain_firing== 25345 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #68802: <==negation-removal== 34598 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #77774: <==negation-removal== 67888 (pos)
                    (not (Pc_not_checked_p4))

                    ; #91470: <==uncertain_firing== 68845 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12964: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #22623: <==commonly_known== 41217 (neg)
                    (Pb_checked_p5)

                    ; #24256: <==commonly_known== 29753 (pos)
                    (Bb_checked_p5)

                    ; #29753: origin
                    (checked_p5)

                    ; #32619: <==closure== 88192 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #33366: <==commonly_known== 41217 (neg)
                    (Pc_checked_p5)

                    ; #69571: <==commonly_known== 29753 (pos)
                    (Ba_checked_p5)

                    ; #72222: <==commonly_known== 41217 (neg)
                    (Pa_checked_p5)

                    ; #79057: <==commonly_known== 29753 (pos)
                    (Bc_checked_p5)

                    ; #88192: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #90877: <==closure== 12964 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #17015: <==negation-removal== 22623 (pos)
                    (not (Bb_not_checked_p5))

                    ; #21141: <==uncertain_firing== 12964 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #25840: <==negation-removal== 79057 (pos)
                    (not (Pc_not_checked_p5))

                    ; #28580: <==negation-removal== 69571 (pos)
                    (not (Pa_not_checked_p5))

                    ; #31908: <==uncertain_firing== 88192 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #33868: <==uncertain_firing== 90877 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #38312: <==uncertain_firing== 32619 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #41217: <==negation-removal== 29753 (pos)
                    (not (not_checked_p5))

                    ; #49932: <==negation-removal== 33366 (pos)
                    (not (Bc_not_checked_p5))

                    ; #52340: <==negation-removal== 90877 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #56422: <==negation-removal== 72222 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58952: <==negation-removal== 32619 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #59354: <==negation-removal== 88192 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #61506: <==negation-removal== 12964 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #87634: <==negation-removal== 24256 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #32852: <==closure== 61247 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #33461: <==commonly_known== 57125 (pos)
                    (Bc_checked_p6)

                    ; #52747: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #57125: origin
                    (checked_p6)

                    ; #57375: <==commonly_known== 57125 (pos)
                    (Ba_checked_p6)

                    ; #59275: <==commonly_known== 50003 (neg)
                    (Pc_checked_p6)

                    ; #61247: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #62613: <==commonly_known== 57125 (pos)
                    (Bb_checked_p6)

                    ; #73871: <==commonly_known== 50003 (neg)
                    (Pa_checked_p6)

                    ; #89899: <==commonly_known== 50003 (neg)
                    (Pb_checked_p6)

                    ; #90991: <==closure== 52747 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #18403: <==negation-removal== 57375 (pos)
                    (not (Pa_not_checked_p6))

                    ; #20595: <==negation-removal== 33461 (pos)
                    (not (Pc_not_checked_p6))

                    ; #21522: <==negation-removal== 62613 (pos)
                    (not (Pb_not_checked_p6))

                    ; #41122: <==negation-removal== 59275 (pos)
                    (not (Bc_not_checked_p6))

                    ; #48045: <==uncertain_firing== 61247 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #49854: <==uncertain_firing== 32852 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #50003: <==negation-removal== 57125 (pos)
                    (not (not_checked_p6))

                    ; #55047: <==negation-removal== 61247 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #58959: <==negation-removal== 52747 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #61954: <==negation-removal== 90991 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #62107: <==negation-removal== 89899 (pos)
                    (not (Bb_not_checked_p6))

                    ; #64253: <==negation-removal== 73871 (pos)
                    (not (Ba_not_checked_p6))

                    ; #76004: <==negation-removal== 32852 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #83990: <==uncertain_firing== 52747 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #87067: <==uncertain_firing== 90991 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11460: origin
                    (checked_p7)

                    ; #20895: <==commonly_known== 11460 (pos)
                    (Bc_checked_p7)

                    ; #24572: <==commonly_known== 63589 (neg)
                    (Pa_checked_p7)

                    ; #26781: <==commonly_known== 11460 (pos)
                    (Bb_checked_p7)

                    ; #30858: <==closure== 45177 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #34059: <==commonly_known== 63589 (neg)
                    (Pb_checked_p7)

                    ; #45177: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #53136: <==closure== 79381 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #79381: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #79456: <==commonly_known== 11460 (pos)
                    (Ba_checked_p7)

                    ; #85643: <==commonly_known== 63589 (neg)
                    (Pc_checked_p7)

                    ; #19695: <==negation-removal== 79381 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #23403: <==negation-removal== 79456 (pos)
                    (not (Pa_not_checked_p7))

                    ; #23991: <==negation-removal== 20895 (pos)
                    (not (Pc_not_checked_p7))

                    ; #26661: <==uncertain_firing== 30858 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #36200: <==uncertain_firing== 45177 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #36887: <==uncertain_firing== 79381 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #42339: <==negation-removal== 45177 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #54261: <==negation-removal== 85643 (pos)
                    (not (Bc_not_checked_p7))

                    ; #58498: <==uncertain_firing== 53136 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #63162: <==negation-removal== 34059 (pos)
                    (not (Bb_not_checked_p7))

                    ; #63589: <==negation-removal== 11460 (pos)
                    (not (not_checked_p7))

                    ; #70168: <==negation-removal== 53136 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #71643: <==negation-removal== 24572 (pos)
                    (not (Ba_not_checked_p7))

                    ; #80240: <==negation-removal== 30858 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #91521: <==negation-removal== 26781 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12043: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #16995: <==closure== 12043 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #26084: <==commonly_known== 49603 (neg)
                    (Pb_checked_p8)

                    ; #29366: <==commonly_known== 82313 (pos)
                    (Bc_checked_p8)

                    ; #53368: <==commonly_known== 49603 (neg)
                    (Pa_checked_p8)

                    ; #76779: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #82298: <==commonly_known== 82313 (pos)
                    (Ba_checked_p8)

                    ; #82313: origin
                    (checked_p8)

                    ; #82329: <==commonly_known== 82313 (pos)
                    (Bb_checked_p8)

                    ; #87228: <==closure== 76779 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #91008: <==commonly_known== 49603 (neg)
                    (Pc_checked_p8)

                    ; #18845: <==uncertain_firing== 16995 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #26233: <==negation-removal== 87228 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #26916: <==uncertain_firing== 12043 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #46803: <==uncertain_firing== 87228 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #47034: <==negation-removal== 12043 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48073: <==negation-removal== 16995 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #49603: <==negation-removal== 82313 (pos)
                    (not (not_checked_p8))

                    ; #58110: <==negation-removal== 29366 (pos)
                    (not (Pc_not_checked_p8))

                    ; #62917: <==negation-removal== 82298 (pos)
                    (not (Pa_not_checked_p8))

                    ; #63810: <==uncertain_firing== 76779 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #64084: <==negation-removal== 53368 (pos)
                    (not (Ba_not_checked_p8))

                    ; #66897: <==negation-removal== 91008 (pos)
                    (not (Bc_not_checked_p8))

                    ; #69497: <==negation-removal== 76779 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #78927: <==negation-removal== 82329 (pos)
                    (not (Pb_not_checked_p8))

                    ; #93040: <==negation-removal== 26084 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #15519: <==closure== 86087 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #30852: <==commonly_known== 50716 (pos)
                    (Bb_checked_p9)

                    ; #31204: <==commonly_known== 48892 (neg)
                    (Pa_checked_p9)

                    ; #35791: <==commonly_known== 50716 (pos)
                    (Bc_checked_p9)

                    ; #38298: <==commonly_known== 50716 (pos)
                    (Ba_checked_p9)

                    ; #45106: <==commonly_known== 48892 (neg)
                    (Pc_checked_p9)

                    ; #50716: origin
                    (checked_p9)

                    ; #54456: <==closure== 77292 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #62056: <==commonly_known== 48892 (neg)
                    (Pb_checked_p9)

                    ; #77292: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #86087: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #17462: <==negation-removal== 38298 (pos)
                    (not (Pa_not_checked_p9))

                    ; #26600: <==negation-removal== 54456 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #34343: <==negation-removal== 77292 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #43922: <==uncertain_firing== 15519 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #44693: <==negation-removal== 86087 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #45762: <==uncertain_firing== 86087 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #48892: <==negation-removal== 50716 (pos)
                    (not (not_checked_p9))

                    ; #60771: <==uncertain_firing== 77292 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #67314: <==negation-removal== 45106 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70670: <==negation-removal== 30852 (pos)
                    (not (Pb_not_checked_p9))

                    ; #70896: <==negation-removal== 35791 (pos)
                    (not (Pc_not_checked_p9))

                    ; #71588: <==negation-removal== 62056 (pos)
                    (not (Bb_not_checked_p9))

                    ; #77591: <==negation-removal== 31204 (pos)
                    (not (Ba_not_checked_p9))

                    ; #80906: <==uncertain_firing== 54456 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86661: <==negation-removal== 15519 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11721: <==commonly_known== 44757 (neg)
                    (Pc_checked_p1)

                    ; #26768: <==commonly_known== 69774 (pos)
                    (Ba_checked_p1)

                    ; #40553: <==closure== 44755 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #44755: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #49057: <==commonly_known== 44757 (neg)
                    (Pa_checked_p1)

                    ; #49682: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #56188: <==commonly_known== 69774 (pos)
                    (Bb_checked_p1)

                    ; #69774: origin
                    (checked_p1)

                    ; #84741: <==closure== 49682 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #87906: <==commonly_known== 69774 (pos)
                    (Bc_checked_p1)

                    ; #91216: <==commonly_known== 44757 (neg)
                    (Pb_checked_p1)

                    ; #16125: <==uncertain_firing== 40553 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #24093: <==negation-removal== 40553 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #25866: <==negation-removal== 44755 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #43074: <==negation-removal== 56188 (pos)
                    (not (Pb_not_checked_p1))

                    ; #44757: <==negation-removal== 69774 (pos)
                    (not (not_checked_p1))

                    ; #46602: <==negation-removal== 49057 (pos)
                    (not (Ba_not_checked_p1))

                    ; #58974: <==negation-removal== 26768 (pos)
                    (not (Pa_not_checked_p1))

                    ; #61672: <==negation-removal== 49682 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #82152: <==uncertain_firing== 84741 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #83749: <==negation-removal== 87906 (pos)
                    (not (Pc_not_checked_p1))

                    ; #84914: <==uncertain_firing== 49682 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #85664: <==negation-removal== 11721 (pos)
                    (not (Bc_not_checked_p1))

                    ; #86456: <==negation-removal== 91216 (pos)
                    (not (Bb_not_checked_p1))

                    ; #88387: <==uncertain_firing== 44755 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #89505: <==negation-removal== 84741 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16459: <==commonly_known== 20971 (neg)
                    (Pc_checked_p2)

                    ; #20939: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #24657: <==commonly_known== 69103 (pos)
                    (Ba_checked_p2)

                    ; #39012: <==closure== 40048 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #39707: <==commonly_known== 69103 (pos)
                    (Bc_checked_p2)

                    ; #40048: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #54815: <==commonly_known== 20971 (neg)
                    (Pb_checked_p2)

                    ; #58447: <==commonly_known== 20971 (neg)
                    (Pa_checked_p2)

                    ; #64608: <==commonly_known== 69103 (pos)
                    (Bb_checked_p2)

                    ; #69103: origin
                    (checked_p2)

                    ; #77890: <==closure== 20939 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #13512: <==negation-removal== 40048 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #19947: <==negation-removal== 58447 (pos)
                    (not (Ba_not_checked_p2))

                    ; #20971: <==negation-removal== 69103 (pos)
                    (not (not_checked_p2))

                    ; #22617: <==negation-removal== 24657 (pos)
                    (not (Pa_not_checked_p2))

                    ; #25545: <==negation-removal== 77890 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #33601: <==negation-removal== 20939 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #57305: <==negation-removal== 64608 (pos)
                    (not (Pb_not_checked_p2))

                    ; #61202: <==uncertain_firing== 40048 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #61597: <==negation-removal== 54815 (pos)
                    (not (Bb_not_checked_p2))

                    ; #67240: <==negation-removal== 39707 (pos)
                    (not (Pc_not_checked_p2))

                    ; #72926: <==uncertain_firing== 20939 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #77292: <==uncertain_firing== 39012 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #79176: <==negation-removal== 16459 (pos)
                    (not (Bc_not_checked_p2))

                    ; #82319: <==negation-removal== 39012 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #83241: <==uncertain_firing== 77890 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #10092: <==closure== 39576 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #20933: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #22921: <==commonly_known== 78648 (neg)
                    (Pc_checked_p3)

                    ; #39386: <==commonly_known== 52155 (pos)
                    (Bb_checked_p3)

                    ; #39576: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #48947: <==commonly_known== 78648 (neg)
                    (Pa_checked_p3)

                    ; #51342: <==commonly_known== 78648 (neg)
                    (Pb_checked_p3)

                    ; #52155: origin
                    (checked_p3)

                    ; #63393: <==commonly_known== 52155 (pos)
                    (Bc_checked_p3)

                    ; #74540: <==commonly_known== 52155 (pos)
                    (Ba_checked_p3)

                    ; #76602: <==closure== 20933 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #24057: <==negation-removal== 20933 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #25136: <==negation-removal== 10092 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #25915: <==uncertain_firing== 20933 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #26052: <==negation-removal== 51342 (pos)
                    (not (Bb_not_checked_p3))

                    ; #28935: <==uncertain_firing== 39576 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #34975: <==negation-removal== 63393 (pos)
                    (not (Pc_not_checked_p3))

                    ; #42547: <==negation-removal== 22921 (pos)
                    (not (Bc_not_checked_p3))

                    ; #56083: <==negation-removal== 39386 (pos)
                    (not (Pb_not_checked_p3))

                    ; #76144: <==uncertain_firing== 10092 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #76756: <==negation-removal== 76602 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #76980: <==negation-removal== 48947 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78648: <==negation-removal== 52155 (pos)
                    (not (not_checked_p3))

                    ; #81913: <==negation-removal== 74540 (pos)
                    (not (Pa_not_checked_p3))

                    ; #82710: <==negation-removal== 39576 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #86509: <==uncertain_firing== 76602 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #14625: <==commonly_known== 23526 (neg)
                    (Pb_checked_p4)

                    ; #21956: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #29276: <==commonly_known== 23526 (neg)
                    (Pa_checked_p4)

                    ; #29312: <==closure== 53583 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #45678: <==commonly_known== 23526 (neg)
                    (Pc_checked_p4)

                    ; #53156: origin
                    (checked_p4)

                    ; #53583: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #58621: <==closure== 21956 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #60882: <==commonly_known== 53156 (pos)
                    (Ba_checked_p4)

                    ; #67888: <==commonly_known== 53156 (pos)
                    (Bc_checked_p4)

                    ; #69922: <==commonly_known== 53156 (pos)
                    (Bb_checked_p4)

                    ; #18302: <==uncertain_firing== 58621 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #19785: <==negation-removal== 21956 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #23526: <==negation-removal== 53156 (pos)
                    (not (not_checked_p4))

                    ; #31121: <==negation-removal== 29312 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #33230: <==negation-removal== 69922 (pos)
                    (not (Pb_not_checked_p4))

                    ; #34901: <==negation-removal== 14625 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37300: <==negation-removal== 29276 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45477: <==negation-removal== 45678 (pos)
                    (not (Bc_not_checked_p4))

                    ; #50040: <==uncertain_firing== 21956 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #61987: <==negation-removal== 60882 (pos)
                    (not (Pa_not_checked_p4))

                    ; #62320: <==uncertain_firing== 29312 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #68465: <==negation-removal== 58621 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #73598: <==negation-removal== 53583 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #77774: <==negation-removal== 67888 (pos)
                    (not (Pc_not_checked_p4))

                    ; #78556: <==uncertain_firing== 53583 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #22623: <==commonly_known== 41217 (neg)
                    (Pb_checked_p5)

                    ; #24256: <==commonly_known== 29753 (pos)
                    (Bb_checked_p5)

                    ; #29753: origin
                    (checked_p5)

                    ; #33366: <==commonly_known== 41217 (neg)
                    (Pc_checked_p5)

                    ; #39343: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #56744: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #60388: <==closure== 56744 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #69571: <==commonly_known== 29753 (pos)
                    (Ba_checked_p5)

                    ; #72222: <==commonly_known== 41217 (neg)
                    (Pa_checked_p5)

                    ; #79057: <==commonly_known== 29753 (pos)
                    (Bc_checked_p5)

                    ; #85765: <==closure== 39343 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #12212: <==negation-removal== 85765 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #14242: <==negation-removal== 39343 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #17015: <==negation-removal== 22623 (pos)
                    (not (Bb_not_checked_p5))

                    ; #25840: <==negation-removal== 79057 (pos)
                    (not (Pc_not_checked_p5))

                    ; #28580: <==negation-removal== 69571 (pos)
                    (not (Pa_not_checked_p5))

                    ; #39205: <==negation-removal== 56744 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #41217: <==negation-removal== 29753 (pos)
                    (not (not_checked_p5))

                    ; #47989: <==uncertain_firing== 39343 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #49932: <==negation-removal== 33366 (pos)
                    (not (Bc_not_checked_p5))

                    ; #56422: <==negation-removal== 72222 (pos)
                    (not (Ba_not_checked_p5))

                    ; #60800: <==uncertain_firing== 85765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #78903: <==uncertain_firing== 60388 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #83238: <==negation-removal== 60388 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #84779: <==uncertain_firing== 56744 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #87634: <==negation-removal== 24256 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #25027: <==closure== 38398 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #33461: <==commonly_known== 57125 (pos)
                    (Bc_checked_p6)

                    ; #38398: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #53767: <==closure== 85623 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #57125: origin
                    (checked_p6)

                    ; #57375: <==commonly_known== 57125 (pos)
                    (Ba_checked_p6)

                    ; #59275: <==commonly_known== 50003 (neg)
                    (Pc_checked_p6)

                    ; #62613: <==commonly_known== 57125 (pos)
                    (Bb_checked_p6)

                    ; #73871: <==commonly_known== 50003 (neg)
                    (Pa_checked_p6)

                    ; #85623: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #89899: <==commonly_known== 50003 (neg)
                    (Pb_checked_p6)

                    ; #18403: <==negation-removal== 57375 (pos)
                    (not (Pa_not_checked_p6))

                    ; #20595: <==negation-removal== 33461 (pos)
                    (not (Pc_not_checked_p6))

                    ; #20888: <==negation-removal== 25027 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #21522: <==negation-removal== 62613 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31430: <==negation-removal== 53767 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #33309: <==uncertain_firing== 85623 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #41122: <==negation-removal== 59275 (pos)
                    (not (Bc_not_checked_p6))

                    ; #42465: <==negation-removal== 85623 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #42750: <==negation-removal== 38398 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #50003: <==negation-removal== 57125 (pos)
                    (not (not_checked_p6))

                    ; #59333: <==uncertain_firing== 38398 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #61401: <==uncertain_firing== 53767 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #62107: <==negation-removal== 89899 (pos)
                    (not (Bb_not_checked_p6))

                    ; #64253: <==negation-removal== 73871 (pos)
                    (not (Ba_not_checked_p6))

                    ; #85755: <==uncertain_firing== 25027 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11460: origin
                    (checked_p7)

                    ; #16935: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #20895: <==commonly_known== 11460 (pos)
                    (Bc_checked_p7)

                    ; #23705: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #24572: <==commonly_known== 63589 (neg)
                    (Pa_checked_p7)

                    ; #26781: <==commonly_known== 11460 (pos)
                    (Bb_checked_p7)

                    ; #34059: <==commonly_known== 63589 (neg)
                    (Pb_checked_p7)

                    ; #34732: <==closure== 16935 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #73879: <==closure== 23705 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #79456: <==commonly_known== 11460 (pos)
                    (Ba_checked_p7)

                    ; #85643: <==commonly_known== 63589 (neg)
                    (Pc_checked_p7)

                    ; #18438: <==negation-removal== 23705 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #20730: <==negation-removal== 73879 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #23403: <==negation-removal== 79456 (pos)
                    (not (Pa_not_checked_p7))

                    ; #23838: <==uncertain_firing== 23705 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #23991: <==negation-removal== 20895 (pos)
                    (not (Pc_not_checked_p7))

                    ; #25663: <==negation-removal== 34732 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #35945: <==negation-removal== 16935 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #53271: <==uncertain_firing== 16935 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #54261: <==negation-removal== 85643 (pos)
                    (not (Bc_not_checked_p7))

                    ; #59091: <==uncertain_firing== 73879 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #61074: <==uncertain_firing== 34732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63162: <==negation-removal== 34059 (pos)
                    (not (Bb_not_checked_p7))

                    ; #63589: <==negation-removal== 11460 (pos)
                    (not (not_checked_p7))

                    ; #71643: <==negation-removal== 24572 (pos)
                    (not (Ba_not_checked_p7))

                    ; #91521: <==negation-removal== 26781 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17443: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #26084: <==commonly_known== 49603 (neg)
                    (Pb_checked_p8)

                    ; #29366: <==commonly_known== 82313 (pos)
                    (Bc_checked_p8)

                    ; #36456: <==closure== 17443 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #53368: <==commonly_known== 49603 (neg)
                    (Pa_checked_p8)

                    ; #69632: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #82298: <==commonly_known== 82313 (pos)
                    (Ba_checked_p8)

                    ; #82313: origin
                    (checked_p8)

                    ; #82329: <==commonly_known== 82313 (pos)
                    (Bb_checked_p8)

                    ; #90276: <==closure== 69632 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #91008: <==commonly_known== 49603 (neg)
                    (Pc_checked_p8)

                    ; #14039: <==negation-removal== 90276 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #17719: <==uncertain_firing== 90276 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #47032: <==uncertain_firing== 36456 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #47416: <==negation-removal== 69632 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #48841: <==uncertain_firing== 17443 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #49603: <==negation-removal== 82313 (pos)
                    (not (not_checked_p8))

                    ; #58110: <==negation-removal== 29366 (pos)
                    (not (Pc_not_checked_p8))

                    ; #62917: <==negation-removal== 82298 (pos)
                    (not (Pa_not_checked_p8))

                    ; #63572: <==uncertain_firing== 69632 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #64084: <==negation-removal== 53368 (pos)
                    (not (Ba_not_checked_p8))

                    ; #66897: <==negation-removal== 91008 (pos)
                    (not (Bc_not_checked_p8))

                    ; #74756: <==negation-removal== 36456 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #78927: <==negation-removal== 82329 (pos)
                    (not (Pb_not_checked_p8))

                    ; #89122: <==negation-removal== 17443 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #93040: <==negation-removal== 26084 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11940: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #30852: <==commonly_known== 50716 (pos)
                    (Bb_checked_p9)

                    ; #31204: <==commonly_known== 48892 (neg)
                    (Pa_checked_p9)

                    ; #35791: <==commonly_known== 50716 (pos)
                    (Bc_checked_p9)

                    ; #38298: <==commonly_known== 50716 (pos)
                    (Ba_checked_p9)

                    ; #45106: <==commonly_known== 48892 (neg)
                    (Pc_checked_p9)

                    ; #50716: origin
                    (checked_p9)

                    ; #58751: <==closure== 11940 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #61828: <==closure== 75247 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #62056: <==commonly_known== 48892 (neg)
                    (Pb_checked_p9)

                    ; #75247: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #12984: <==uncertain_firing== 11940 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #17462: <==negation-removal== 38298 (pos)
                    (not (Pa_not_checked_p9))

                    ; #26704: <==negation-removal== 61828 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #29950: <==uncertain_firing== 58751 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #32767: <==negation-removal== 75247 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #34396: <==negation-removal== 58751 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #48892: <==negation-removal== 50716 (pos)
                    (not (not_checked_p9))

                    ; #66239: <==uncertain_firing== 61828 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #67314: <==negation-removal== 45106 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68152: <==negation-removal== 11940 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #70670: <==negation-removal== 30852 (pos)
                    (not (Pb_not_checked_p9))

                    ; #70896: <==negation-removal== 35791 (pos)
                    (not (Pc_not_checked_p9))

                    ; #71588: <==negation-removal== 62056 (pos)
                    (not (Bb_not_checked_p9))

                    ; #77591: <==negation-removal== 31204 (pos)
                    (not (Ba_not_checked_p9))

                    ; #80235: <==uncertain_firing== 75247 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))))

)