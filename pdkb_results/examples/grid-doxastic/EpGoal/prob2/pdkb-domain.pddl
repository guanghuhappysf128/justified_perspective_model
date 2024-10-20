(define (domain grid)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_p1)
        (not_at_a_p10)
        (not_at_a_p11)
        (not_at_a_p12)
        (not_at_a_p2)
        (not_at_a_p3)
        (not_at_a_p4)
        (not_at_a_p5)
        (not_at_a_p6)
        (not_at_a_p7)
        (not_at_a_p8)
        (not_at_a_p9)
        (not_at_b_p1)
        (not_at_b_p10)
        (not_at_b_p11)
        (not_at_b_p12)
        (not_at_b_p2)
        (not_at_b_p3)
        (not_at_b_p4)
        (not_at_b_p5)
        (not_at_b_p6)
        (not_at_b_p7)
        (not_at_b_p8)
        (not_at_b_p9)
        (not_at_c_p1)
        (not_at_c_p10)
        (not_at_c_p11)
        (not_at_c_p12)
        (not_at_c_p2)
        (not_at_c_p3)
        (not_at_c_p4)
        (not_at_c_p5)
        (not_at_c_p6)
        (not_at_c_p7)
        (not_at_c_p8)
        (not_at_c_p9)
        (not_checked_p1)
        (not_checked_p10)
        (not_checked_p11)
        (not_checked_p12)
        (not_checked_p2)
        (not_checked_p3)
        (not_checked_p4)
        (not_checked_p5)
        (not_checked_p6)
        (not_checked_p7)
        (not_checked_p8)
        (not_checked_p9)
        (not_hiddensurvivorat_s_p1)
        (not_hiddensurvivorat_s_p10)
        (not_hiddensurvivorat_s_p11)
        (not_hiddensurvivorat_s_p12)
        (not_hiddensurvivorat_s_p2)
        (not_hiddensurvivorat_s_p3)
        (not_hiddensurvivorat_s_p4)
        (not_hiddensurvivorat_s_p5)
        (not_hiddensurvivorat_s_p6)
        (not_hiddensurvivorat_s_p7)
        (not_hiddensurvivorat_s_p8)
        (not_hiddensurvivorat_s_p9)
        (not_succ_p10_p1)
        (not_succ_p10_p10)
        (not_succ_p10_p11)
        (not_succ_p10_p12)
        (not_succ_p10_p2)
        (not_succ_p10_p3)
        (not_succ_p10_p4)
        (not_succ_p10_p5)
        (not_succ_p10_p6)
        (not_succ_p10_p7)
        (not_succ_p10_p8)
        (not_succ_p10_p9)
        (not_succ_p11_p1)
        (not_succ_p11_p10)
        (not_succ_p11_p11)
        (not_succ_p11_p12)
        (not_succ_p11_p2)
        (not_succ_p11_p3)
        (not_succ_p11_p4)
        (not_succ_p11_p5)
        (not_succ_p11_p6)
        (not_succ_p11_p7)
        (not_succ_p11_p8)
        (not_succ_p11_p9)
        (not_succ_p12_p1)
        (not_succ_p12_p10)
        (not_succ_p12_p11)
        (not_succ_p12_p12)
        (not_succ_p12_p2)
        (not_succ_p12_p3)
        (not_succ_p12_p4)
        (not_succ_p12_p5)
        (not_succ_p12_p6)
        (not_succ_p12_p7)
        (not_succ_p12_p8)
        (not_succ_p12_p9)
        (not_succ_p1_p1)
        (not_succ_p1_p10)
        (not_succ_p1_p11)
        (not_succ_p1_p12)
        (not_succ_p1_p2)
        (not_succ_p1_p3)
        (not_succ_p1_p4)
        (not_succ_p1_p5)
        (not_succ_p1_p6)
        (not_succ_p1_p7)
        (not_succ_p1_p8)
        (not_succ_p1_p9)
        (not_succ_p2_p1)
        (not_succ_p2_p10)
        (not_succ_p2_p11)
        (not_succ_p2_p12)
        (not_succ_p2_p2)
        (not_succ_p2_p3)
        (not_succ_p2_p4)
        (not_succ_p2_p5)
        (not_succ_p2_p6)
        (not_succ_p2_p7)
        (not_succ_p2_p8)
        (not_succ_p2_p9)
        (not_succ_p3_p1)
        (not_succ_p3_p10)
        (not_succ_p3_p11)
        (not_succ_p3_p12)
        (not_succ_p3_p2)
        (not_succ_p3_p3)
        (not_succ_p3_p4)
        (not_succ_p3_p5)
        (not_succ_p3_p6)
        (not_succ_p3_p7)
        (not_succ_p3_p8)
        (not_succ_p3_p9)
        (not_succ_p4_p1)
        (not_succ_p4_p10)
        (not_succ_p4_p11)
        (not_succ_p4_p12)
        (not_succ_p4_p2)
        (not_succ_p4_p3)
        (not_succ_p4_p4)
        (not_succ_p4_p5)
        (not_succ_p4_p6)
        (not_succ_p4_p7)
        (not_succ_p4_p8)
        (not_succ_p4_p9)
        (not_succ_p5_p1)
        (not_succ_p5_p10)
        (not_succ_p5_p11)
        (not_succ_p5_p12)
        (not_succ_p5_p2)
        (not_succ_p5_p3)
        (not_succ_p5_p4)
        (not_succ_p5_p5)
        (not_succ_p5_p6)
        (not_succ_p5_p7)
        (not_succ_p5_p8)
        (not_succ_p5_p9)
        (not_succ_p6_p1)
        (not_succ_p6_p10)
        (not_succ_p6_p11)
        (not_succ_p6_p12)
        (not_succ_p6_p2)
        (not_succ_p6_p3)
        (not_succ_p6_p4)
        (not_succ_p6_p5)
        (not_succ_p6_p6)
        (not_succ_p6_p7)
        (not_succ_p6_p8)
        (not_succ_p6_p9)
        (not_succ_p7_p1)
        (not_succ_p7_p10)
        (not_succ_p7_p11)
        (not_succ_p7_p12)
        (not_succ_p7_p2)
        (not_succ_p7_p3)
        (not_succ_p7_p4)
        (not_succ_p7_p5)
        (not_succ_p7_p6)
        (not_succ_p7_p7)
        (not_succ_p7_p8)
        (not_succ_p7_p9)
        (not_succ_p8_p1)
        (not_succ_p8_p10)
        (not_succ_p8_p11)
        (not_succ_p8_p12)
        (not_succ_p8_p2)
        (not_succ_p8_p3)
        (not_succ_p8_p4)
        (not_succ_p8_p5)
        (not_succ_p8_p6)
        (not_succ_p8_p7)
        (not_succ_p8_p8)
        (not_succ_p8_p9)
        (not_succ_p9_p1)
        (not_succ_p9_p10)
        (not_succ_p9_p11)
        (not_succ_p9_p12)
        (not_succ_p9_p2)
        (not_succ_p9_p3)
        (not_succ_p9_p4)
        (not_succ_p9_p5)
        (not_succ_p9_p6)
        (not_succ_p9_p7)
        (not_succ_p9_p8)
        (not_succ_p9_p9)
        (not_survivorat_s_p1)
        (not_survivorat_s_p10)
        (not_survivorat_s_p11)
        (not_survivorat_s_p12)
        (not_survivorat_s_p2)
        (not_survivorat_s_p3)
        (not_survivorat_s_p4)
        (not_survivorat_s_p5)
        (not_survivorat_s_p6)
        (not_survivorat_s_p7)
        (not_survivorat_s_p8)
        (not_survivorat_s_p9)
        (Ba_not_checked_p1)
        (Ba_not_checked_p10)
        (Ba_not_checked_p11)
        (Ba_not_checked_p12)
        (Ba_not_checked_p2)
        (Ba_not_checked_p3)
        (Ba_not_checked_p4)
        (Ba_not_checked_p5)
        (Ba_not_checked_p6)
        (Ba_not_checked_p7)
        (Ba_not_checked_p8)
        (Ba_not_checked_p9)
        (Ba_not_hiddensurvivorat_s_p1)
        (Ba_not_hiddensurvivorat_s_p10)
        (Ba_not_hiddensurvivorat_s_p11)
        (Ba_not_hiddensurvivorat_s_p12)
        (Ba_not_hiddensurvivorat_s_p2)
        (Ba_not_hiddensurvivorat_s_p3)
        (Ba_not_hiddensurvivorat_s_p4)
        (Ba_not_hiddensurvivorat_s_p5)
        (Ba_not_hiddensurvivorat_s_p6)
        (Ba_not_hiddensurvivorat_s_p7)
        (Ba_not_hiddensurvivorat_s_p8)
        (Ba_not_hiddensurvivorat_s_p9)
        (Ba_not_survivorat_s_p1)
        (Ba_not_survivorat_s_p10)
        (Ba_not_survivorat_s_p11)
        (Ba_not_survivorat_s_p12)
        (Ba_not_survivorat_s_p2)
        (Ba_not_survivorat_s_p3)
        (Ba_not_survivorat_s_p4)
        (Ba_not_survivorat_s_p5)
        (Ba_not_survivorat_s_p6)
        (Ba_not_survivorat_s_p7)
        (Ba_not_survivorat_s_p8)
        (Ba_not_survivorat_s_p9)
        (Ba_checked_p1)
        (Ba_checked_p10)
        (Ba_checked_p11)
        (Ba_checked_p12)
        (Ba_checked_p2)
        (Ba_checked_p3)
        (Ba_checked_p4)
        (Ba_checked_p5)
        (Ba_checked_p6)
        (Ba_checked_p7)
        (Ba_checked_p8)
        (Ba_checked_p9)
        (Ba_hiddensurvivorat_s_p1)
        (Ba_hiddensurvivorat_s_p10)
        (Ba_hiddensurvivorat_s_p11)
        (Ba_hiddensurvivorat_s_p12)
        (Ba_hiddensurvivorat_s_p2)
        (Ba_hiddensurvivorat_s_p3)
        (Ba_hiddensurvivorat_s_p4)
        (Ba_hiddensurvivorat_s_p5)
        (Ba_hiddensurvivorat_s_p6)
        (Ba_hiddensurvivorat_s_p7)
        (Ba_hiddensurvivorat_s_p8)
        (Ba_hiddensurvivorat_s_p9)
        (Ba_survivorat_s_p1)
        (Ba_survivorat_s_p10)
        (Ba_survivorat_s_p11)
        (Ba_survivorat_s_p12)
        (Ba_survivorat_s_p2)
        (Ba_survivorat_s_p3)
        (Ba_survivorat_s_p4)
        (Ba_survivorat_s_p5)
        (Ba_survivorat_s_p6)
        (Ba_survivorat_s_p7)
        (Ba_survivorat_s_p8)
        (Ba_survivorat_s_p9)
        (Bb_not_checked_p1)
        (Bb_not_checked_p10)
        (Bb_not_checked_p11)
        (Bb_not_checked_p12)
        (Bb_not_checked_p2)
        (Bb_not_checked_p3)
        (Bb_not_checked_p4)
        (Bb_not_checked_p5)
        (Bb_not_checked_p6)
        (Bb_not_checked_p7)
        (Bb_not_checked_p8)
        (Bb_not_checked_p9)
        (Bb_not_hiddensurvivorat_s_p1)
        (Bb_not_hiddensurvivorat_s_p10)
        (Bb_not_hiddensurvivorat_s_p11)
        (Bb_not_hiddensurvivorat_s_p12)
        (Bb_not_hiddensurvivorat_s_p2)
        (Bb_not_hiddensurvivorat_s_p3)
        (Bb_not_hiddensurvivorat_s_p4)
        (Bb_not_hiddensurvivorat_s_p5)
        (Bb_not_hiddensurvivorat_s_p6)
        (Bb_not_hiddensurvivorat_s_p7)
        (Bb_not_hiddensurvivorat_s_p8)
        (Bb_not_hiddensurvivorat_s_p9)
        (Bb_not_survivorat_s_p1)
        (Bb_not_survivorat_s_p10)
        (Bb_not_survivorat_s_p11)
        (Bb_not_survivorat_s_p12)
        (Bb_not_survivorat_s_p2)
        (Bb_not_survivorat_s_p3)
        (Bb_not_survivorat_s_p4)
        (Bb_not_survivorat_s_p5)
        (Bb_not_survivorat_s_p6)
        (Bb_not_survivorat_s_p7)
        (Bb_not_survivorat_s_p8)
        (Bb_not_survivorat_s_p9)
        (Bb_checked_p1)
        (Bb_checked_p10)
        (Bb_checked_p11)
        (Bb_checked_p12)
        (Bb_checked_p2)
        (Bb_checked_p3)
        (Bb_checked_p4)
        (Bb_checked_p5)
        (Bb_checked_p6)
        (Bb_checked_p7)
        (Bb_checked_p8)
        (Bb_checked_p9)
        (Bb_hiddensurvivorat_s_p1)
        (Bb_hiddensurvivorat_s_p10)
        (Bb_hiddensurvivorat_s_p11)
        (Bb_hiddensurvivorat_s_p12)
        (Bb_hiddensurvivorat_s_p2)
        (Bb_hiddensurvivorat_s_p3)
        (Bb_hiddensurvivorat_s_p4)
        (Bb_hiddensurvivorat_s_p5)
        (Bb_hiddensurvivorat_s_p6)
        (Bb_hiddensurvivorat_s_p7)
        (Bb_hiddensurvivorat_s_p8)
        (Bb_hiddensurvivorat_s_p9)
        (Bb_survivorat_s_p1)
        (Bb_survivorat_s_p10)
        (Bb_survivorat_s_p11)
        (Bb_survivorat_s_p12)
        (Bb_survivorat_s_p2)
        (Bb_survivorat_s_p3)
        (Bb_survivorat_s_p4)
        (Bb_survivorat_s_p5)
        (Bb_survivorat_s_p6)
        (Bb_survivorat_s_p7)
        (Bb_survivorat_s_p8)
        (Bb_survivorat_s_p9)
        (Bc_not_checked_p1)
        (Bc_not_checked_p10)
        (Bc_not_checked_p11)
        (Bc_not_checked_p12)
        (Bc_not_checked_p2)
        (Bc_not_checked_p3)
        (Bc_not_checked_p4)
        (Bc_not_checked_p5)
        (Bc_not_checked_p6)
        (Bc_not_checked_p7)
        (Bc_not_checked_p8)
        (Bc_not_checked_p9)
        (Bc_not_hiddensurvivorat_s_p1)
        (Bc_not_hiddensurvivorat_s_p10)
        (Bc_not_hiddensurvivorat_s_p11)
        (Bc_not_hiddensurvivorat_s_p12)
        (Bc_not_hiddensurvivorat_s_p2)
        (Bc_not_hiddensurvivorat_s_p3)
        (Bc_not_hiddensurvivorat_s_p4)
        (Bc_not_hiddensurvivorat_s_p5)
        (Bc_not_hiddensurvivorat_s_p6)
        (Bc_not_hiddensurvivorat_s_p7)
        (Bc_not_hiddensurvivorat_s_p8)
        (Bc_not_hiddensurvivorat_s_p9)
        (Bc_not_survivorat_s_p1)
        (Bc_not_survivorat_s_p10)
        (Bc_not_survivorat_s_p11)
        (Bc_not_survivorat_s_p12)
        (Bc_not_survivorat_s_p2)
        (Bc_not_survivorat_s_p3)
        (Bc_not_survivorat_s_p4)
        (Bc_not_survivorat_s_p5)
        (Bc_not_survivorat_s_p6)
        (Bc_not_survivorat_s_p7)
        (Bc_not_survivorat_s_p8)
        (Bc_not_survivorat_s_p9)
        (Bc_checked_p1)
        (Bc_checked_p10)
        (Bc_checked_p11)
        (Bc_checked_p12)
        (Bc_checked_p2)
        (Bc_checked_p3)
        (Bc_checked_p4)
        (Bc_checked_p5)
        (Bc_checked_p6)
        (Bc_checked_p7)
        (Bc_checked_p8)
        (Bc_checked_p9)
        (Bc_hiddensurvivorat_s_p1)
        (Bc_hiddensurvivorat_s_p10)
        (Bc_hiddensurvivorat_s_p11)
        (Bc_hiddensurvivorat_s_p12)
        (Bc_hiddensurvivorat_s_p2)
        (Bc_hiddensurvivorat_s_p3)
        (Bc_hiddensurvivorat_s_p4)
        (Bc_hiddensurvivorat_s_p5)
        (Bc_hiddensurvivorat_s_p6)
        (Bc_hiddensurvivorat_s_p7)
        (Bc_hiddensurvivorat_s_p8)
        (Bc_hiddensurvivorat_s_p9)
        (Bc_survivorat_s_p1)
        (Bc_survivorat_s_p10)
        (Bc_survivorat_s_p11)
        (Bc_survivorat_s_p12)
        (Bc_survivorat_s_p2)
        (Bc_survivorat_s_p3)
        (Bc_survivorat_s_p4)
        (Bc_survivorat_s_p5)
        (Bc_survivorat_s_p6)
        (Bc_survivorat_s_p7)
        (Bc_survivorat_s_p8)
        (Bc_survivorat_s_p9)
        (Pa_not_checked_p1)
        (Pa_not_checked_p10)
        (Pa_not_checked_p11)
        (Pa_not_checked_p12)
        (Pa_not_checked_p2)
        (Pa_not_checked_p3)
        (Pa_not_checked_p4)
        (Pa_not_checked_p5)
        (Pa_not_checked_p6)
        (Pa_not_checked_p7)
        (Pa_not_checked_p8)
        (Pa_not_checked_p9)
        (Pa_not_hiddensurvivorat_s_p1)
        (Pa_not_hiddensurvivorat_s_p10)
        (Pa_not_hiddensurvivorat_s_p11)
        (Pa_not_hiddensurvivorat_s_p12)
        (Pa_not_hiddensurvivorat_s_p2)
        (Pa_not_hiddensurvivorat_s_p3)
        (Pa_not_hiddensurvivorat_s_p4)
        (Pa_not_hiddensurvivorat_s_p5)
        (Pa_not_hiddensurvivorat_s_p6)
        (Pa_not_hiddensurvivorat_s_p7)
        (Pa_not_hiddensurvivorat_s_p8)
        (Pa_not_hiddensurvivorat_s_p9)
        (Pa_not_survivorat_s_p1)
        (Pa_not_survivorat_s_p10)
        (Pa_not_survivorat_s_p11)
        (Pa_not_survivorat_s_p12)
        (Pa_not_survivorat_s_p2)
        (Pa_not_survivorat_s_p3)
        (Pa_not_survivorat_s_p4)
        (Pa_not_survivorat_s_p5)
        (Pa_not_survivorat_s_p6)
        (Pa_not_survivorat_s_p7)
        (Pa_not_survivorat_s_p8)
        (Pa_not_survivorat_s_p9)
        (Pa_checked_p1)
        (Pa_checked_p10)
        (Pa_checked_p11)
        (Pa_checked_p12)
        (Pa_checked_p2)
        (Pa_checked_p3)
        (Pa_checked_p4)
        (Pa_checked_p5)
        (Pa_checked_p6)
        (Pa_checked_p7)
        (Pa_checked_p8)
        (Pa_checked_p9)
        (Pa_hiddensurvivorat_s_p1)
        (Pa_hiddensurvivorat_s_p10)
        (Pa_hiddensurvivorat_s_p11)
        (Pa_hiddensurvivorat_s_p12)
        (Pa_hiddensurvivorat_s_p2)
        (Pa_hiddensurvivorat_s_p3)
        (Pa_hiddensurvivorat_s_p4)
        (Pa_hiddensurvivorat_s_p5)
        (Pa_hiddensurvivorat_s_p6)
        (Pa_hiddensurvivorat_s_p7)
        (Pa_hiddensurvivorat_s_p8)
        (Pa_hiddensurvivorat_s_p9)
        (Pa_survivorat_s_p1)
        (Pa_survivorat_s_p10)
        (Pa_survivorat_s_p11)
        (Pa_survivorat_s_p12)
        (Pa_survivorat_s_p2)
        (Pa_survivorat_s_p3)
        (Pa_survivorat_s_p4)
        (Pa_survivorat_s_p5)
        (Pa_survivorat_s_p6)
        (Pa_survivorat_s_p7)
        (Pa_survivorat_s_p8)
        (Pa_survivorat_s_p9)
        (Pb_not_checked_p1)
        (Pb_not_checked_p10)
        (Pb_not_checked_p11)
        (Pb_not_checked_p12)
        (Pb_not_checked_p2)
        (Pb_not_checked_p3)
        (Pb_not_checked_p4)
        (Pb_not_checked_p5)
        (Pb_not_checked_p6)
        (Pb_not_checked_p7)
        (Pb_not_checked_p8)
        (Pb_not_checked_p9)
        (Pb_not_hiddensurvivorat_s_p1)
        (Pb_not_hiddensurvivorat_s_p10)
        (Pb_not_hiddensurvivorat_s_p11)
        (Pb_not_hiddensurvivorat_s_p12)
        (Pb_not_hiddensurvivorat_s_p2)
        (Pb_not_hiddensurvivorat_s_p3)
        (Pb_not_hiddensurvivorat_s_p4)
        (Pb_not_hiddensurvivorat_s_p5)
        (Pb_not_hiddensurvivorat_s_p6)
        (Pb_not_hiddensurvivorat_s_p7)
        (Pb_not_hiddensurvivorat_s_p8)
        (Pb_not_hiddensurvivorat_s_p9)
        (Pb_not_survivorat_s_p1)
        (Pb_not_survivorat_s_p10)
        (Pb_not_survivorat_s_p11)
        (Pb_not_survivorat_s_p12)
        (Pb_not_survivorat_s_p2)
        (Pb_not_survivorat_s_p3)
        (Pb_not_survivorat_s_p4)
        (Pb_not_survivorat_s_p5)
        (Pb_not_survivorat_s_p6)
        (Pb_not_survivorat_s_p7)
        (Pb_not_survivorat_s_p8)
        (Pb_not_survivorat_s_p9)
        (Pb_checked_p1)
        (Pb_checked_p10)
        (Pb_checked_p11)
        (Pb_checked_p12)
        (Pb_checked_p2)
        (Pb_checked_p3)
        (Pb_checked_p4)
        (Pb_checked_p5)
        (Pb_checked_p6)
        (Pb_checked_p7)
        (Pb_checked_p8)
        (Pb_checked_p9)
        (Pb_hiddensurvivorat_s_p1)
        (Pb_hiddensurvivorat_s_p10)
        (Pb_hiddensurvivorat_s_p11)
        (Pb_hiddensurvivorat_s_p12)
        (Pb_hiddensurvivorat_s_p2)
        (Pb_hiddensurvivorat_s_p3)
        (Pb_hiddensurvivorat_s_p4)
        (Pb_hiddensurvivorat_s_p5)
        (Pb_hiddensurvivorat_s_p6)
        (Pb_hiddensurvivorat_s_p7)
        (Pb_hiddensurvivorat_s_p8)
        (Pb_hiddensurvivorat_s_p9)
        (Pb_survivorat_s_p1)
        (Pb_survivorat_s_p10)
        (Pb_survivorat_s_p11)
        (Pb_survivorat_s_p12)
        (Pb_survivorat_s_p2)
        (Pb_survivorat_s_p3)
        (Pb_survivorat_s_p4)
        (Pb_survivorat_s_p5)
        (Pb_survivorat_s_p6)
        (Pb_survivorat_s_p7)
        (Pb_survivorat_s_p8)
        (Pb_survivorat_s_p9)
        (Pc_not_checked_p1)
        (Pc_not_checked_p10)
        (Pc_not_checked_p11)
        (Pc_not_checked_p12)
        (Pc_not_checked_p2)
        (Pc_not_checked_p3)
        (Pc_not_checked_p4)
        (Pc_not_checked_p5)
        (Pc_not_checked_p6)
        (Pc_not_checked_p7)
        (Pc_not_checked_p8)
        (Pc_not_checked_p9)
        (Pc_not_hiddensurvivorat_s_p1)
        (Pc_not_hiddensurvivorat_s_p10)
        (Pc_not_hiddensurvivorat_s_p11)
        (Pc_not_hiddensurvivorat_s_p12)
        (Pc_not_hiddensurvivorat_s_p2)
        (Pc_not_hiddensurvivorat_s_p3)
        (Pc_not_hiddensurvivorat_s_p4)
        (Pc_not_hiddensurvivorat_s_p5)
        (Pc_not_hiddensurvivorat_s_p6)
        (Pc_not_hiddensurvivorat_s_p7)
        (Pc_not_hiddensurvivorat_s_p8)
        (Pc_not_hiddensurvivorat_s_p9)
        (Pc_not_survivorat_s_p1)
        (Pc_not_survivorat_s_p10)
        (Pc_not_survivorat_s_p11)
        (Pc_not_survivorat_s_p12)
        (Pc_not_survivorat_s_p2)
        (Pc_not_survivorat_s_p3)
        (Pc_not_survivorat_s_p4)
        (Pc_not_survivorat_s_p5)
        (Pc_not_survivorat_s_p6)
        (Pc_not_survivorat_s_p7)
        (Pc_not_survivorat_s_p8)
        (Pc_not_survivorat_s_p9)
        (Pc_checked_p1)
        (Pc_checked_p10)
        (Pc_checked_p11)
        (Pc_checked_p12)
        (Pc_checked_p2)
        (Pc_checked_p3)
        (Pc_checked_p4)
        (Pc_checked_p5)
        (Pc_checked_p6)
        (Pc_checked_p7)
        (Pc_checked_p8)
        (Pc_checked_p9)
        (Pc_hiddensurvivorat_s_p1)
        (Pc_hiddensurvivorat_s_p10)
        (Pc_hiddensurvivorat_s_p11)
        (Pc_hiddensurvivorat_s_p12)
        (Pc_hiddensurvivorat_s_p2)
        (Pc_hiddensurvivorat_s_p3)
        (Pc_hiddensurvivorat_s_p4)
        (Pc_hiddensurvivorat_s_p5)
        (Pc_hiddensurvivorat_s_p6)
        (Pc_hiddensurvivorat_s_p7)
        (Pc_hiddensurvivorat_s_p8)
        (Pc_hiddensurvivorat_s_p9)
        (Pc_survivorat_s_p1)
        (Pc_survivorat_s_p10)
        (Pc_survivorat_s_p11)
        (Pc_survivorat_s_p12)
        (Pc_survivorat_s_p2)
        (Pc_survivorat_s_p3)
        (Pc_survivorat_s_p4)
        (Pc_survivorat_s_p5)
        (Pc_survivorat_s_p6)
        (Pc_survivorat_s_p7)
        (Pc_survivorat_s_p8)
        (Pc_survivorat_s_p9)
        (at_a_p1)
        (at_a_p10)
        (at_a_p11)
        (at_a_p12)
        (at_a_p2)
        (at_a_p3)
        (at_a_p4)
        (at_a_p5)
        (at_a_p6)
        (at_a_p7)
        (at_a_p8)
        (at_a_p9)
        (at_b_p1)
        (at_b_p10)
        (at_b_p11)
        (at_b_p12)
        (at_b_p2)
        (at_b_p3)
        (at_b_p4)
        (at_b_p5)
        (at_b_p6)
        (at_b_p7)
        (at_b_p8)
        (at_b_p9)
        (at_c_p1)
        (at_c_p10)
        (at_c_p11)
        (at_c_p12)
        (at_c_p2)
        (at_c_p3)
        (at_c_p4)
        (at_c_p5)
        (at_c_p6)
        (at_c_p7)
        (at_c_p8)
        (at_c_p9)
        (checked_p1)
        (checked_p10)
        (checked_p11)
        (checked_p12)
        (checked_p2)
        (checked_p3)
        (checked_p4)
        (checked_p5)
        (checked_p6)
        (checked_p7)
        (checked_p8)
        (checked_p9)
        (hiddensurvivorat_s_p1)
        (hiddensurvivorat_s_p10)
        (hiddensurvivorat_s_p11)
        (hiddensurvivorat_s_p12)
        (hiddensurvivorat_s_p2)
        (hiddensurvivorat_s_p3)
        (hiddensurvivorat_s_p4)
        (hiddensurvivorat_s_p5)
        (hiddensurvivorat_s_p6)
        (hiddensurvivorat_s_p7)
        (hiddensurvivorat_s_p8)
        (hiddensurvivorat_s_p9)
        (succ_p10_p1)
        (succ_p10_p10)
        (succ_p10_p11)
        (succ_p10_p12)
        (succ_p10_p2)
        (succ_p10_p3)
        (succ_p10_p4)
        (succ_p10_p5)
        (succ_p10_p6)
        (succ_p10_p7)
        (succ_p10_p8)
        (succ_p10_p9)
        (succ_p11_p1)
        (succ_p11_p10)
        (succ_p11_p11)
        (succ_p11_p12)
        (succ_p11_p2)
        (succ_p11_p3)
        (succ_p11_p4)
        (succ_p11_p5)
        (succ_p11_p6)
        (succ_p11_p7)
        (succ_p11_p8)
        (succ_p11_p9)
        (succ_p12_p1)
        (succ_p12_p10)
        (succ_p12_p11)
        (succ_p12_p12)
        (succ_p12_p2)
        (succ_p12_p3)
        (succ_p12_p4)
        (succ_p12_p5)
        (succ_p12_p6)
        (succ_p12_p7)
        (succ_p12_p8)
        (succ_p12_p9)
        (succ_p1_p1)
        (succ_p1_p10)
        (succ_p1_p11)
        (succ_p1_p12)
        (succ_p1_p2)
        (succ_p1_p3)
        (succ_p1_p4)
        (succ_p1_p5)
        (succ_p1_p6)
        (succ_p1_p7)
        (succ_p1_p8)
        (succ_p1_p9)
        (succ_p2_p1)
        (succ_p2_p10)
        (succ_p2_p11)
        (succ_p2_p12)
        (succ_p2_p2)
        (succ_p2_p3)
        (succ_p2_p4)
        (succ_p2_p5)
        (succ_p2_p6)
        (succ_p2_p7)
        (succ_p2_p8)
        (succ_p2_p9)
        (succ_p3_p1)
        (succ_p3_p10)
        (succ_p3_p11)
        (succ_p3_p12)
        (succ_p3_p2)
        (succ_p3_p3)
        (succ_p3_p4)
        (succ_p3_p5)
        (succ_p3_p6)
        (succ_p3_p7)
        (succ_p3_p8)
        (succ_p3_p9)
        (succ_p4_p1)
        (succ_p4_p10)
        (succ_p4_p11)
        (succ_p4_p12)
        (succ_p4_p2)
        (succ_p4_p3)
        (succ_p4_p4)
        (succ_p4_p5)
        (succ_p4_p6)
        (succ_p4_p7)
        (succ_p4_p8)
        (succ_p4_p9)
        (succ_p5_p1)
        (succ_p5_p10)
        (succ_p5_p11)
        (succ_p5_p12)
        (succ_p5_p2)
        (succ_p5_p3)
        (succ_p5_p4)
        (succ_p5_p5)
        (succ_p5_p6)
        (succ_p5_p7)
        (succ_p5_p8)
        (succ_p5_p9)
        (succ_p6_p1)
        (succ_p6_p10)
        (succ_p6_p11)
        (succ_p6_p12)
        (succ_p6_p2)
        (succ_p6_p3)
        (succ_p6_p4)
        (succ_p6_p5)
        (succ_p6_p6)
        (succ_p6_p7)
        (succ_p6_p8)
        (succ_p6_p9)
        (succ_p7_p1)
        (succ_p7_p10)
        (succ_p7_p11)
        (succ_p7_p12)
        (succ_p7_p2)
        (succ_p7_p3)
        (succ_p7_p4)
        (succ_p7_p5)
        (succ_p7_p6)
        (succ_p7_p7)
        (succ_p7_p8)
        (succ_p7_p9)
        (succ_p8_p1)
        (succ_p8_p10)
        (succ_p8_p11)
        (succ_p8_p12)
        (succ_p8_p2)
        (succ_p8_p3)
        (succ_p8_p4)
        (succ_p8_p5)
        (succ_p8_p6)
        (succ_p8_p7)
        (succ_p8_p8)
        (succ_p8_p9)
        (succ_p9_p1)
        (succ_p9_p10)
        (succ_p9_p11)
        (succ_p9_p12)
        (succ_p9_p2)
        (succ_p9_p3)
        (succ_p9_p4)
        (succ_p9_p5)
        (succ_p9_p6)
        (succ_p9_p7)
        (succ_p9_p8)
        (succ_p9_p9)
        (survivorat_s_p1)
        (survivorat_s_p10)
        (survivorat_s_p11)
        (survivorat_s_p12)
        (survivorat_s_p2)
        (survivorat_s_p3)
        (survivorat_s_p4)
        (survivorat_s_p5)
        (survivorat_s_p6)
        (survivorat_s_p7)
        (survivorat_s_p8)
        (survivorat_s_p9)
    )

    (:action badcomm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #15256: <==closure== 72783 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #40525: <==closure== 62334 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #62334: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #72783: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #88757: <==closure== 90100 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #90100: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #12631: <==negation-removal== 62334 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #19353: <==negation-removal== 88757 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #20922: <==negation-removal== 40525 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #23720: <==uncertain_firing== 62334 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #34104: <==negation-removal== 72783 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #55105: <==negation-removal== 90100 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #71002: <==negation-removal== 15256 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #71199: <==uncertain_firing== 15256 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #76255: <==uncertain_firing== 90100 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #77674: <==uncertain_firing== 40525 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #79718: <==uncertain_firing== 88757 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #88867: <==uncertain_firing== 72783 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #15256: <==closure== 72783 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #40525: <==closure== 62334 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #62334: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #72783: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #88757: <==closure== 90100 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #90100: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #12631: <==negation-removal== 62334 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #19353: <==negation-removal== 88757 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #20922: <==negation-removal== 40525 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #23720: <==uncertain_firing== 62334 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #34104: <==negation-removal== 72783 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #55105: <==negation-removal== 90100 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #71002: <==negation-removal== 15256 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #71199: <==uncertain_firing== 15256 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #76255: <==uncertain_firing== 90100 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #77674: <==uncertain_firing== 40525 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #79718: <==uncertain_firing== 88757 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #88867: <==uncertain_firing== 72783 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #15256: <==closure== 72783 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #40525: <==closure== 62334 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #62334: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #72783: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #88757: <==closure== 90100 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #90100: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #12631: <==negation-removal== 62334 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #19353: <==negation-removal== 88757 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #20922: <==negation-removal== 40525 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #23720: <==uncertain_firing== 62334 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #34104: <==negation-removal== 72783 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #55105: <==negation-removal== 90100 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #71002: <==negation-removal== 15256 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #71199: <==uncertain_firing== 15256 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #76255: <==uncertain_firing== 90100 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #77674: <==uncertain_firing== 40525 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #79718: <==uncertain_firing== 88757 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #88867: <==uncertain_firing== 72783 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #12349: <==closure== 68288 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #43143: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #62721: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #68288: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #70207: <==closure== 62721 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #88491: <==closure== 43143 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #11188: <==uncertain_firing== 62721 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #11855: <==uncertain_firing== 70207 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #25467: <==negation-removal== 68288 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #30083: <==negation-removal== 88491 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #34031: <==negation-removal== 12349 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #35386: <==uncertain_firing== 43143 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #39475: <==uncertain_firing== 12349 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #50460: <==negation-removal== 70207 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #71622: <==negation-removal== 62721 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #72169: <==uncertain_firing== 68288 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #87630: <==uncertain_firing== 88491 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #90864: <==negation-removal== 43143 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #12349: <==closure== 68288 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #43143: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #62721: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #68288: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #70207: <==closure== 62721 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #88491: <==closure== 43143 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #11188: <==uncertain_firing== 62721 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #11855: <==uncertain_firing== 70207 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #25467: <==negation-removal== 68288 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #30083: <==negation-removal== 88491 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #34031: <==negation-removal== 12349 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #35386: <==uncertain_firing== 43143 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #39475: <==uncertain_firing== 12349 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #50460: <==negation-removal== 70207 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #71622: <==negation-removal== 62721 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #72169: <==uncertain_firing== 68288 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #87630: <==uncertain_firing== 88491 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #90864: <==negation-removal== 43143 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #12349: <==closure== 68288 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #43143: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #62721: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #68288: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #70207: <==closure== 62721 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #88491: <==closure== 43143 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #11188: <==uncertain_firing== 62721 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #11855: <==uncertain_firing== 70207 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #25467: <==negation-removal== 68288 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #30083: <==negation-removal== 88491 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #34031: <==negation-removal== 12349 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #35386: <==uncertain_firing== 43143 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #39475: <==uncertain_firing== 12349 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #50460: <==negation-removal== 70207 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #71622: <==negation-removal== 62721 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #72169: <==uncertain_firing== 68288 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #87630: <==uncertain_firing== 88491 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #90864: <==negation-removal== 43143 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #34450: <==closure== 45984 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #35562: <==closure== 92161 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #40020: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #45984: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #71255: <==closure== 40020 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #92161: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #17304: <==uncertain_firing== 35562 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #23861: <==uncertain_firing== 34450 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #39629: <==negation-removal== 92161 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #42016: <==uncertain_firing== 71255 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #44913: <==negation-removal== 40020 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #50878: <==uncertain_firing== 92161 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #57349: <==negation-removal== 35562 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #64183: <==negation-removal== 71255 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #66302: <==uncertain_firing== 45984 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #66669: <==negation-removal== 45984 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #80325: <==uncertain_firing== 40020 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #89743: <==negation-removal== 34450 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #34450: <==closure== 45984 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #35562: <==closure== 92161 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #40020: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #45984: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #71255: <==closure== 40020 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #92161: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #17304: <==uncertain_firing== 35562 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #23861: <==uncertain_firing== 34450 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #39629: <==negation-removal== 92161 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #42016: <==uncertain_firing== 71255 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #44913: <==negation-removal== 40020 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #50878: <==uncertain_firing== 92161 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #57349: <==negation-removal== 35562 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #64183: <==negation-removal== 71255 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #66302: <==uncertain_firing== 45984 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #66669: <==negation-removal== 45984 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #80325: <==uncertain_firing== 40020 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #89743: <==negation-removal== 34450 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #34450: <==closure== 45984 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #35562: <==closure== 92161 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #40020: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #45984: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #71255: <==closure== 40020 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #92161: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #17304: <==uncertain_firing== 35562 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #23861: <==uncertain_firing== 34450 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #39629: <==negation-removal== 92161 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #42016: <==uncertain_firing== 71255 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #44913: <==negation-removal== 40020 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #50878: <==uncertain_firing== 92161 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #57349: <==negation-removal== 35562 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #64183: <==negation-removal== 71255 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #66302: <==uncertain_firing== 45984 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #66669: <==negation-removal== 45984 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #80325: <==uncertain_firing== 40020 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #89743: <==negation-removal== 34450 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #30419: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #42606: <==closure== 56205 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #56205: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #59653: <==closure== 30419 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #59853: <==closure== 72069 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72069: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #33427: <==uncertain_firing== 30419 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #34921: <==uncertain_firing== 56205 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #40419: <==uncertain_firing== 72069 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #41651: <==negation-removal== 30419 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #47281: <==negation-removal== 56205 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #48839: <==negation-removal== 42606 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #58448: <==uncertain_firing== 59853 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #65852: <==negation-removal== 59853 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #69750: <==uncertain_firing== 42606 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #71661: <==negation-removal== 59653 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #74774: <==uncertain_firing== 59653 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91926: <==negation-removal== 72069 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #30419: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #42606: <==closure== 56205 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #56205: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #59653: <==closure== 30419 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #59853: <==closure== 72069 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72069: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #33427: <==uncertain_firing== 30419 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #34921: <==uncertain_firing== 56205 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #40419: <==uncertain_firing== 72069 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #41651: <==negation-removal== 30419 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #47281: <==negation-removal== 56205 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #48839: <==negation-removal== 42606 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #58448: <==uncertain_firing== 59853 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #65852: <==negation-removal== 59853 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #69750: <==uncertain_firing== 42606 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #71661: <==negation-removal== 59653 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #74774: <==uncertain_firing== 59653 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91926: <==negation-removal== 72069 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #30419: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #42606: <==closure== 56205 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #56205: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #59653: <==closure== 30419 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #59853: <==closure== 72069 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72069: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #33427: <==uncertain_firing== 30419 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #34921: <==uncertain_firing== 56205 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #40419: <==uncertain_firing== 72069 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #41651: <==negation-removal== 30419 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #47281: <==negation-removal== 56205 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #48839: <==negation-removal== 42606 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #58448: <==uncertain_firing== 59853 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #65852: <==negation-removal== 59853 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #69750: <==uncertain_firing== 42606 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #71661: <==negation-removal== 59653 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #74774: <==uncertain_firing== 59653 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91926: <==negation-removal== 72069 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #33938: <==closure== 90879 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #34258: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #58305: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #68123: <==closure== 34258 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #78531: <==closure== 58305 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #90879: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #22286: <==negation-removal== 34258 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #28839: <==uncertain_firing== 58305 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #30336: <==negation-removal== 78531 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #48550: <==uncertain_firing== 78531 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #53160: <==uncertain_firing== 68123 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #69155: <==negation-removal== 90879 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #69739: <==uncertain_firing== 33938 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #71062: <==negation-removal== 33938 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #74310: <==negation-removal== 58305 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #78879: <==uncertain_firing== 90879 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #81349: <==uncertain_firing== 34258 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #81702: <==negation-removal== 68123 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #33938: <==closure== 90879 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #34258: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #58305: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #68123: <==closure== 34258 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #78531: <==closure== 58305 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #90879: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #22286: <==negation-removal== 34258 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #28839: <==uncertain_firing== 58305 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #30336: <==negation-removal== 78531 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #48550: <==uncertain_firing== 78531 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #53160: <==uncertain_firing== 68123 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #69155: <==negation-removal== 90879 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #69739: <==uncertain_firing== 33938 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #71062: <==negation-removal== 33938 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #74310: <==negation-removal== 58305 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #78879: <==uncertain_firing== 90879 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #81349: <==uncertain_firing== 34258 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #81702: <==negation-removal== 68123 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #33938: <==closure== 90879 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #34258: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #58305: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #68123: <==closure== 34258 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #78531: <==closure== 58305 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #90879: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #22286: <==negation-removal== 34258 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #28839: <==uncertain_firing== 58305 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #30336: <==negation-removal== 78531 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #48550: <==uncertain_firing== 78531 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #53160: <==uncertain_firing== 68123 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #69155: <==negation-removal== 90879 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #69739: <==uncertain_firing== 33938 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #71062: <==negation-removal== 33938 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #74310: <==negation-removal== 58305 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #78879: <==uncertain_firing== 90879 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #81349: <==uncertain_firing== 34258 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #81702: <==negation-removal== 68123 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #10327: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #55672: <==closure== 10327 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #62576: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #80668: <==closure== 84383 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #84383: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #86213: <==closure== 62576 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #14784: <==negation-removal== 10327 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #22104: <==negation-removal== 55672 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #28369: <==uncertain_firing== 86213 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #28884: <==uncertain_firing== 80668 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #35167: <==negation-removal== 80668 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #43995: <==uncertain_firing== 55672 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #59126: <==uncertain_firing== 10327 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #60302: <==negation-removal== 62576 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #72002: <==uncertain_firing== 62576 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #75364: <==negation-removal== 84383 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #76258: <==uncertain_firing== 84383 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #82752: <==negation-removal== 86213 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #10327: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #55672: <==closure== 10327 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #62576: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #80668: <==closure== 84383 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #84383: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #86213: <==closure== 62576 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #14784: <==negation-removal== 10327 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #22104: <==negation-removal== 55672 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #28369: <==uncertain_firing== 86213 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #28884: <==uncertain_firing== 80668 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #35167: <==negation-removal== 80668 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #43995: <==uncertain_firing== 55672 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #59126: <==uncertain_firing== 10327 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #60302: <==negation-removal== 62576 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #72002: <==uncertain_firing== 62576 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #75364: <==negation-removal== 84383 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #76258: <==uncertain_firing== 84383 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #82752: <==negation-removal== 86213 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #10327: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #55672: <==closure== 10327 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #62576: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #80668: <==closure== 84383 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #84383: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #86213: <==closure== 62576 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #14784: <==negation-removal== 10327 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #22104: <==negation-removal== 55672 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #28369: <==uncertain_firing== 86213 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #28884: <==uncertain_firing== 80668 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #35167: <==negation-removal== 80668 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #43995: <==uncertain_firing== 55672 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #59126: <==uncertain_firing== 10327 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #60302: <==negation-removal== 62576 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #72002: <==uncertain_firing== 62576 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #75364: <==negation-removal== 84383 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #76258: <==uncertain_firing== 84383 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #82752: <==negation-removal== 86213 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #11224: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #24473: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #33392: <==closure== 36906 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #36906: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #50017: <==closure== 11224 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #71562: <==closure== 24473 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #18553: <==negation-removal== 11224 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #27312: <==uncertain_firing== 33392 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #29539: <==negation-removal== 33392 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #36607: <==uncertain_firing== 71562 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #42262: <==negation-removal== 36906 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #43324: <==negation-removal== 71562 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #51671: <==uncertain_firing== 11224 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #62045: <==uncertain_firing== 50017 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #69575: <==negation-removal== 50017 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #69869: <==uncertain_firing== 36906 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #76079: <==negation-removal== 24473 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #83916: <==uncertain_firing== 24473 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #11224: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #24473: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #33392: <==closure== 36906 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #36906: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #50017: <==closure== 11224 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #71562: <==closure== 24473 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #18553: <==negation-removal== 11224 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #27312: <==uncertain_firing== 33392 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #29539: <==negation-removal== 33392 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #36607: <==uncertain_firing== 71562 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #42262: <==negation-removal== 36906 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #43324: <==negation-removal== 71562 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #51671: <==uncertain_firing== 11224 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #62045: <==uncertain_firing== 50017 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #69575: <==negation-removal== 50017 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #69869: <==uncertain_firing== 36906 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #76079: <==negation-removal== 24473 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #83916: <==uncertain_firing== 24473 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #11224: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #24473: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #33392: <==closure== 36906 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #36906: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #50017: <==closure== 11224 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #71562: <==closure== 24473 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #18553: <==negation-removal== 11224 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #27312: <==uncertain_firing== 33392 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #29539: <==negation-removal== 33392 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #36607: <==uncertain_firing== 71562 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #42262: <==negation-removal== 36906 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #43324: <==negation-removal== 71562 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #51671: <==uncertain_firing== 11224 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #62045: <==uncertain_firing== 50017 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #69575: <==negation-removal== 50017 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #69869: <==uncertain_firing== 36906 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #76079: <==negation-removal== 24473 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #83916: <==uncertain_firing== 24473 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #28729: <==closure== 89950 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #58714: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #67750: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #70531: <==closure== 58714 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #79317: <==closure== 67750 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #89950: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #11868: <==negation-removal== 79317 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #14641: <==negation-removal== 89950 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #24740: <==uncertain_firing== 58714 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #41688: <==uncertain_firing== 70531 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #45704: <==uncertain_firing== 79317 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #47080: <==uncertain_firing== 67750 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #56968: <==uncertain_firing== 89950 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #57615: <==negation-removal== 28729 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #68575: <==uncertain_firing== 28729 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #72425: <==negation-removal== 67750 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #81251: <==negation-removal== 58714 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #81851: <==negation-removal== 70531 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #28729: <==closure== 89950 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #58714: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #67750: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #70531: <==closure== 58714 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #79317: <==closure== 67750 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #89950: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #11868: <==negation-removal== 79317 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #14641: <==negation-removal== 89950 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #24740: <==uncertain_firing== 58714 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #41688: <==uncertain_firing== 70531 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #45704: <==uncertain_firing== 79317 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #47080: <==uncertain_firing== 67750 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #56968: <==uncertain_firing== 89950 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #57615: <==negation-removal== 28729 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #68575: <==uncertain_firing== 28729 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #72425: <==negation-removal== 67750 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #81251: <==negation-removal== 58714 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #81851: <==negation-removal== 70531 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #28729: <==closure== 89950 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #58714: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #67750: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #70531: <==closure== 58714 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #79317: <==closure== 67750 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #89950: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #11868: <==negation-removal== 79317 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #14641: <==negation-removal== 89950 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #24740: <==uncertain_firing== 58714 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #41688: <==uncertain_firing== 70531 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #45704: <==uncertain_firing== 79317 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #47080: <==uncertain_firing== 67750 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #56968: <==uncertain_firing== 89950 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #57615: <==negation-removal== 28729 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #68575: <==uncertain_firing== 28729 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #72425: <==negation-removal== 67750 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #81251: <==negation-removal== 58714 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #81851: <==negation-removal== 70531 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #21577: <==closure== 83670 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #22803: <==closure== 54409 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #29207: <==closure== 62865 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #54409: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #62865: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #83670: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #35656: <==negation-removal== 54409 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #39371: <==uncertain_firing== 54409 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #47625: <==negation-removal== 62865 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #59508: <==negation-removal== 22803 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #60990: <==uncertain_firing== 21577 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #65953: <==uncertain_firing== 62865 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #67382: <==negation-removal== 29207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74367: <==negation-removal== 21577 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #76547: <==uncertain_firing== 29207 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78241: <==uncertain_firing== 22803 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #79974: <==negation-removal== 83670 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #86238: <==uncertain_firing== 83670 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #21577: <==closure== 83670 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #22803: <==closure== 54409 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #29207: <==closure== 62865 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #54409: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #62865: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #83670: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #35656: <==negation-removal== 54409 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #39371: <==uncertain_firing== 54409 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #47625: <==negation-removal== 62865 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #59508: <==negation-removal== 22803 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #60990: <==uncertain_firing== 21577 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #65953: <==uncertain_firing== 62865 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #67382: <==negation-removal== 29207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74367: <==negation-removal== 21577 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #76547: <==uncertain_firing== 29207 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78241: <==uncertain_firing== 22803 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #79974: <==negation-removal== 83670 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #86238: <==uncertain_firing== 83670 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #21577: <==closure== 83670 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #22803: <==closure== 54409 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #29207: <==closure== 62865 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #54409: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #62865: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #83670: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #35656: <==negation-removal== 54409 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #39371: <==uncertain_firing== 54409 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #47625: <==negation-removal== 62865 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #59508: <==negation-removal== 22803 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #60990: <==uncertain_firing== 21577 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #65953: <==uncertain_firing== 62865 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #67382: <==negation-removal== 29207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74367: <==negation-removal== 21577 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #76547: <==uncertain_firing== 29207 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78241: <==uncertain_firing== 22803 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #79974: <==negation-removal== 83670 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #86238: <==uncertain_firing== 83670 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #22514: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #24327: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #34374: <==closure== 52158 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #37639: <==closure== 24327 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #52158: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #65260: <==closure== 22514 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #12024: <==uncertain_firing== 24327 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #18357: <==uncertain_firing== 22514 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #20639: <==negation-removal== 34374 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #47582: <==uncertain_firing== 34374 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #49926: <==negation-removal== 24327 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #58235: <==negation-removal== 52158 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #63230: <==negation-removal== 37639 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #66180: <==negation-removal== 65260 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #69796: <==uncertain_firing== 65260 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #70610: <==uncertain_firing== 37639 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #88160: <==negation-removal== 22514 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #88505: <==uncertain_firing== 52158 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #22514: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #24327: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #34374: <==closure== 52158 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #37639: <==closure== 24327 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #52158: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #65260: <==closure== 22514 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #12024: <==uncertain_firing== 24327 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #18357: <==uncertain_firing== 22514 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #20639: <==negation-removal== 34374 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #47582: <==uncertain_firing== 34374 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #49926: <==negation-removal== 24327 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #58235: <==negation-removal== 52158 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #63230: <==negation-removal== 37639 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #66180: <==negation-removal== 65260 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #69796: <==uncertain_firing== 65260 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #70610: <==uncertain_firing== 37639 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #88160: <==negation-removal== 22514 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #88505: <==uncertain_firing== 52158 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #22514: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #24327: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #34374: <==closure== 52158 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #37639: <==closure== 24327 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #52158: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #65260: <==closure== 22514 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #12024: <==uncertain_firing== 24327 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #18357: <==uncertain_firing== 22514 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #20639: <==negation-removal== 34374 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #47582: <==uncertain_firing== 34374 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #49926: <==negation-removal== 24327 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #58235: <==negation-removal== 52158 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #63230: <==negation-removal== 37639 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #66180: <==negation-removal== 65260 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #69796: <==uncertain_firing== 65260 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #70610: <==uncertain_firing== 37639 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #88160: <==negation-removal== 22514 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #88505: <==uncertain_firing== 52158 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #10950: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #11057: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #40827: <==closure== 10950 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #46187: <==closure== 53385 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #53385: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #70302: <==closure== 11057 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #11699: <==uncertain_firing== 40827 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #13278: <==uncertain_firing== 10950 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #28970: <==uncertain_firing== 70302 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #30634: <==negation-removal== 70302 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #38479: <==negation-removal== 53385 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #42588: <==negation-removal== 40827 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #50291: <==uncertain_firing== 46187 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #57682: <==negation-removal== 11057 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #68838: <==negation-removal== 10950 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #72563: <==uncertain_firing== 53385 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #77523: <==negation-removal== 46187 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #95779: <==uncertain_firing== 11057 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #10950: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #11057: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #40827: <==closure== 10950 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #46187: <==closure== 53385 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #53385: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #70302: <==closure== 11057 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #11699: <==uncertain_firing== 40827 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #13278: <==uncertain_firing== 10950 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #28970: <==uncertain_firing== 70302 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #30634: <==negation-removal== 70302 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #38479: <==negation-removal== 53385 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #42588: <==negation-removal== 40827 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #50291: <==uncertain_firing== 46187 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #57682: <==negation-removal== 11057 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #68838: <==negation-removal== 10950 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #72563: <==uncertain_firing== 53385 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #77523: <==negation-removal== 46187 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #95779: <==uncertain_firing== 11057 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #10950: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #11057: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #40827: <==closure== 10950 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #46187: <==closure== 53385 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #53385: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #70302: <==closure== 11057 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #11699: <==uncertain_firing== 40827 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #13278: <==uncertain_firing== 10950 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #28970: <==uncertain_firing== 70302 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #30634: <==negation-removal== 70302 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #38479: <==negation-removal== 53385 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #42588: <==negation-removal== 40827 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #50291: <==uncertain_firing== 46187 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #57682: <==negation-removal== 11057 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #68838: <==negation-removal== 10950 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #72563: <==uncertain_firing== 53385 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #77523: <==negation-removal== 46187 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #95779: <==uncertain_firing== 11057 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #12529: <==closure== 22051 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #22051: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #29910: <==closure== 64140 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #36624: <==closure== 61381 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #61381: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #64140: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #12872: <==uncertain_firing== 29910 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #16316: <==uncertain_firing== 22051 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #16483: <==negation-removal== 61381 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #21583: <==uncertain_firing== 12529 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #26731: <==negation-removal== 22051 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #27258: <==negation-removal== 36624 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #36803: <==uncertain_firing== 64140 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #39197: <==negation-removal== 64140 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #53183: <==uncertain_firing== 36624 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #67452: <==uncertain_firing== 61381 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #71731: <==negation-removal== 29910 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #85370: <==negation-removal== 12529 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #12529: <==closure== 22051 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #22051: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #29910: <==closure== 64140 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #36624: <==closure== 61381 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #61381: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #64140: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #12872: <==uncertain_firing== 29910 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #16316: <==uncertain_firing== 22051 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #16483: <==negation-removal== 61381 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #21583: <==uncertain_firing== 12529 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #26731: <==negation-removal== 22051 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #27258: <==negation-removal== 36624 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #36803: <==uncertain_firing== 64140 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #39197: <==negation-removal== 64140 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #53183: <==uncertain_firing== 36624 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #67452: <==uncertain_firing== 61381 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #71731: <==negation-removal== 29910 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #85370: <==negation-removal== 12529 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #12529: <==closure== 22051 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #22051: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #29910: <==closure== 64140 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #36624: <==closure== 61381 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #61381: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #64140: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #12872: <==uncertain_firing== 29910 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #16316: <==uncertain_firing== 22051 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #16483: <==negation-removal== 61381 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #21583: <==uncertain_firing== 12529 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #26731: <==negation-removal== 22051 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #27258: <==negation-removal== 36624 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #36803: <==uncertain_firing== 64140 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #39197: <==negation-removal== 64140 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #53183: <==uncertain_firing== 36624 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #67452: <==uncertain_firing== 61381 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #71731: <==negation-removal== 29910 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #85370: <==negation-removal== 12529 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #10007: origin
                    (Bc_survivorat_s_p10)

                    ; #15189: <==closure== 70900 (pos)
                    (Pa_survivorat_s_p10)

                    ; #56043: <==closure== 94106 (pos)
                    (Pb_survivorat_s_p10)

                    ; #70900: origin
                    (Ba_survivorat_s_p10)

                    ; #77753: <==closure== 10007 (pos)
                    (Pc_survivorat_s_p10)

                    ; #94106: origin
                    (Bb_survivorat_s_p10)

                    ; #16573: <==negation-removal== 94106 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #18490: <==negation-removal== 10007 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #49699: <==negation-removal== 70900 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #51337: <==negation-removal== 15189 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #57850: <==negation-removal== 77753 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #58821: <==negation-removal== 56043 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #10007: origin
                    (Bc_survivorat_s_p10)

                    ; #15189: <==closure== 70900 (pos)
                    (Pa_survivorat_s_p10)

                    ; #56043: <==closure== 94106 (pos)
                    (Pb_survivorat_s_p10)

                    ; #70900: origin
                    (Ba_survivorat_s_p10)

                    ; #77753: <==closure== 10007 (pos)
                    (Pc_survivorat_s_p10)

                    ; #94106: origin
                    (Bb_survivorat_s_p10)

                    ; #16573: <==negation-removal== 94106 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #18490: <==negation-removal== 10007 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #49699: <==negation-removal== 70900 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #51337: <==negation-removal== 15189 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #57850: <==negation-removal== 77753 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #58821: <==negation-removal== 56043 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #10007: origin
                    (Bc_survivorat_s_p10)

                    ; #15189: <==closure== 70900 (pos)
                    (Pa_survivorat_s_p10)

                    ; #56043: <==closure== 94106 (pos)
                    (Pb_survivorat_s_p10)

                    ; #70900: origin
                    (Ba_survivorat_s_p10)

                    ; #77753: <==closure== 10007 (pos)
                    (Pc_survivorat_s_p10)

                    ; #94106: origin
                    (Bb_survivorat_s_p10)

                    ; #16573: <==negation-removal== 94106 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #18490: <==negation-removal== 10007 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #49699: <==negation-removal== 70900 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #51337: <==negation-removal== 15189 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #57850: <==negation-removal== 77753 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #58821: <==negation-removal== 56043 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #14145: origin
                    (Bc_survivorat_s_p11)

                    ; #17036: <==closure== 33269 (pos)
                    (Pb_survivorat_s_p11)

                    ; #23227: <==closure== 14145 (pos)
                    (Pc_survivorat_s_p11)

                    ; #33269: origin
                    (Bb_survivorat_s_p11)

                    ; #57763: origin
                    (Ba_survivorat_s_p11)

                    ; #78581: <==closure== 57763 (pos)
                    (Pa_survivorat_s_p11)

                    ; #22827: <==negation-removal== 57763 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #57843: <==negation-removal== 14145 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #62001: <==negation-removal== 78581 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #73959: <==negation-removal== 23227 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #75296: <==negation-removal== 17036 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #83358: <==negation-removal== 33269 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #14145: origin
                    (Bc_survivorat_s_p11)

                    ; #17036: <==closure== 33269 (pos)
                    (Pb_survivorat_s_p11)

                    ; #23227: <==closure== 14145 (pos)
                    (Pc_survivorat_s_p11)

                    ; #33269: origin
                    (Bb_survivorat_s_p11)

                    ; #57763: origin
                    (Ba_survivorat_s_p11)

                    ; #78581: <==closure== 57763 (pos)
                    (Pa_survivorat_s_p11)

                    ; #22827: <==negation-removal== 57763 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #57843: <==negation-removal== 14145 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #62001: <==negation-removal== 78581 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #73959: <==negation-removal== 23227 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #75296: <==negation-removal== 17036 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #83358: <==negation-removal== 33269 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #14145: origin
                    (Bc_survivorat_s_p11)

                    ; #17036: <==closure== 33269 (pos)
                    (Pb_survivorat_s_p11)

                    ; #23227: <==closure== 14145 (pos)
                    (Pc_survivorat_s_p11)

                    ; #33269: origin
                    (Bb_survivorat_s_p11)

                    ; #57763: origin
                    (Ba_survivorat_s_p11)

                    ; #78581: <==closure== 57763 (pos)
                    (Pa_survivorat_s_p11)

                    ; #22827: <==negation-removal== 57763 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #57843: <==negation-removal== 14145 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #62001: <==negation-removal== 78581 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #73959: <==negation-removal== 23227 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #75296: <==negation-removal== 17036 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #83358: <==negation-removal== 33269 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #27815: <==closure== 82070 (pos)
                    (Pa_survivorat_s_p12)

                    ; #42374: <==closure== 84196 (pos)
                    (Pb_survivorat_s_p12)

                    ; #51499: origin
                    (Bc_survivorat_s_p12)

                    ; #56457: <==closure== 51499 (pos)
                    (Pc_survivorat_s_p12)

                    ; #82070: origin
                    (Ba_survivorat_s_p12)

                    ; #84196: origin
                    (Bb_survivorat_s_p12)

                    ; #11560: <==negation-removal== 51499 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #21328: <==negation-removal== 27815 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #35245: <==negation-removal== 82070 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #44713: <==negation-removal== 42374 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #73734: <==negation-removal== 56457 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #87037: <==negation-removal== 84196 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #27815: <==closure== 82070 (pos)
                    (Pa_survivorat_s_p12)

                    ; #42374: <==closure== 84196 (pos)
                    (Pb_survivorat_s_p12)

                    ; #51499: origin
                    (Bc_survivorat_s_p12)

                    ; #56457: <==closure== 51499 (pos)
                    (Pc_survivorat_s_p12)

                    ; #82070: origin
                    (Ba_survivorat_s_p12)

                    ; #84196: origin
                    (Bb_survivorat_s_p12)

                    ; #11560: <==negation-removal== 51499 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #21328: <==negation-removal== 27815 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #35245: <==negation-removal== 82070 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #44713: <==negation-removal== 42374 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #73734: <==negation-removal== 56457 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #87037: <==negation-removal== 84196 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #27815: <==closure== 82070 (pos)
                    (Pa_survivorat_s_p12)

                    ; #42374: <==closure== 84196 (pos)
                    (Pb_survivorat_s_p12)

                    ; #51499: origin
                    (Bc_survivorat_s_p12)

                    ; #56457: <==closure== 51499 (pos)
                    (Pc_survivorat_s_p12)

                    ; #82070: origin
                    (Ba_survivorat_s_p12)

                    ; #84196: origin
                    (Bb_survivorat_s_p12)

                    ; #11560: <==negation-removal== 51499 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #21328: <==negation-removal== 27815 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #35245: <==negation-removal== 82070 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #44713: <==negation-removal== 42374 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #73734: <==negation-removal== 56457 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #87037: <==negation-removal== 84196 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #22644: origin
                    (Bc_survivorat_s_p1)

                    ; #24193: <==closure== 69352 (pos)
                    (Pa_survivorat_s_p1)

                    ; #45707: <==closure== 66652 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66652: origin
                    (Bb_survivorat_s_p1)

                    ; #69352: origin
                    (Ba_survivorat_s_p1)

                    ; #82561: <==closure== 22644 (pos)
                    (Pc_survivorat_s_p1)

                    ; #20972: <==negation-removal== 69352 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #22651: <==negation-removal== 24193 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30119: <==negation-removal== 22644 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #37605: <==negation-removal== 82561 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61142: <==negation-removal== 66652 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #74759: <==negation-removal== 45707 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #22644: origin
                    (Bc_survivorat_s_p1)

                    ; #24193: <==closure== 69352 (pos)
                    (Pa_survivorat_s_p1)

                    ; #45707: <==closure== 66652 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66652: origin
                    (Bb_survivorat_s_p1)

                    ; #69352: origin
                    (Ba_survivorat_s_p1)

                    ; #82561: <==closure== 22644 (pos)
                    (Pc_survivorat_s_p1)

                    ; #20972: <==negation-removal== 69352 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #22651: <==negation-removal== 24193 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30119: <==negation-removal== 22644 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #37605: <==negation-removal== 82561 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61142: <==negation-removal== 66652 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #74759: <==negation-removal== 45707 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #22644: origin
                    (Bc_survivorat_s_p1)

                    ; #24193: <==closure== 69352 (pos)
                    (Pa_survivorat_s_p1)

                    ; #45707: <==closure== 66652 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66652: origin
                    (Bb_survivorat_s_p1)

                    ; #69352: origin
                    (Ba_survivorat_s_p1)

                    ; #82561: <==closure== 22644 (pos)
                    (Pc_survivorat_s_p1)

                    ; #20972: <==negation-removal== 69352 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #22651: <==negation-removal== 24193 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30119: <==negation-removal== 22644 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #37605: <==negation-removal== 82561 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61142: <==negation-removal== 66652 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #74759: <==negation-removal== 45707 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #17867: <==closure== 75534 (pos)
                    (Pa_survivorat_s_p2)

                    ; #41388: <==closure== 88357 (pos)
                    (Pb_survivorat_s_p2)

                    ; #42277: <==closure== 57742 (pos)
                    (Pc_survivorat_s_p2)

                    ; #57742: origin
                    (Bc_survivorat_s_p2)

                    ; #75534: origin
                    (Ba_survivorat_s_p2)

                    ; #88357: origin
                    (Bb_survivorat_s_p2)

                    ; #16390: <==negation-removal== 75534 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #31237: <==negation-removal== 41388 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40409: <==negation-removal== 17867 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #55980: <==negation-removal== 57742 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #66417: <==negation-removal== 88357 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #79608: <==negation-removal== 42277 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #17867: <==closure== 75534 (pos)
                    (Pa_survivorat_s_p2)

                    ; #41388: <==closure== 88357 (pos)
                    (Pb_survivorat_s_p2)

                    ; #42277: <==closure== 57742 (pos)
                    (Pc_survivorat_s_p2)

                    ; #57742: origin
                    (Bc_survivorat_s_p2)

                    ; #75534: origin
                    (Ba_survivorat_s_p2)

                    ; #88357: origin
                    (Bb_survivorat_s_p2)

                    ; #16390: <==negation-removal== 75534 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #31237: <==negation-removal== 41388 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40409: <==negation-removal== 17867 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #55980: <==negation-removal== 57742 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #66417: <==negation-removal== 88357 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #79608: <==negation-removal== 42277 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #17867: <==closure== 75534 (pos)
                    (Pa_survivorat_s_p2)

                    ; #41388: <==closure== 88357 (pos)
                    (Pb_survivorat_s_p2)

                    ; #42277: <==closure== 57742 (pos)
                    (Pc_survivorat_s_p2)

                    ; #57742: origin
                    (Bc_survivorat_s_p2)

                    ; #75534: origin
                    (Ba_survivorat_s_p2)

                    ; #88357: origin
                    (Bb_survivorat_s_p2)

                    ; #16390: <==negation-removal== 75534 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #31237: <==negation-removal== 41388 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40409: <==negation-removal== 17867 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #55980: <==negation-removal== 57742 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #66417: <==negation-removal== 88357 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #79608: <==negation-removal== 42277 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #45377: <==closure== 83189 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50422: <==closure== 67212 (pos)
                    (Pb_survivorat_s_p3)

                    ; #53013: <==closure== 81660 (pos)
                    (Pa_survivorat_s_p3)

                    ; #67212: origin
                    (Bb_survivorat_s_p3)

                    ; #81660: origin
                    (Ba_survivorat_s_p3)

                    ; #83189: origin
                    (Bc_survivorat_s_p3)

                    ; #20753: <==negation-removal== 50422 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #32106: <==negation-removal== 45377 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #42937: <==negation-removal== 53013 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #50648: <==negation-removal== 67212 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #54719: <==negation-removal== 81660 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #75259: <==negation-removal== 83189 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #45377: <==closure== 83189 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50422: <==closure== 67212 (pos)
                    (Pb_survivorat_s_p3)

                    ; #53013: <==closure== 81660 (pos)
                    (Pa_survivorat_s_p3)

                    ; #67212: origin
                    (Bb_survivorat_s_p3)

                    ; #81660: origin
                    (Ba_survivorat_s_p3)

                    ; #83189: origin
                    (Bc_survivorat_s_p3)

                    ; #20753: <==negation-removal== 50422 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #32106: <==negation-removal== 45377 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #42937: <==negation-removal== 53013 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #50648: <==negation-removal== 67212 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #54719: <==negation-removal== 81660 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #75259: <==negation-removal== 83189 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #45377: <==closure== 83189 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50422: <==closure== 67212 (pos)
                    (Pb_survivorat_s_p3)

                    ; #53013: <==closure== 81660 (pos)
                    (Pa_survivorat_s_p3)

                    ; #67212: origin
                    (Bb_survivorat_s_p3)

                    ; #81660: origin
                    (Ba_survivorat_s_p3)

                    ; #83189: origin
                    (Bc_survivorat_s_p3)

                    ; #20753: <==negation-removal== 50422 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #32106: <==negation-removal== 45377 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #42937: <==negation-removal== 53013 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #50648: <==negation-removal== 67212 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #54719: <==negation-removal== 81660 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #75259: <==negation-removal== 83189 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #15259: origin
                    (Bb_survivorat_s_p4)

                    ; #18396: origin
                    (Ba_survivorat_s_p4)

                    ; #25047: <==closure== 18396 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28920: origin
                    (Bc_survivorat_s_p4)

                    ; #44337: <==closure== 28920 (pos)
                    (Pc_survivorat_s_p4)

                    ; #57192: <==closure== 15259 (pos)
                    (Pb_survivorat_s_p4)

                    ; #17484: <==negation-removal== 25047 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #18816: <==negation-removal== 18396 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #32898: <==negation-removal== 15259 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #44730: <==negation-removal== 44337 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #55533: <==negation-removal== 57192 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90863: <==negation-removal== 28920 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #15259: origin
                    (Bb_survivorat_s_p4)

                    ; #18396: origin
                    (Ba_survivorat_s_p4)

                    ; #25047: <==closure== 18396 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28920: origin
                    (Bc_survivorat_s_p4)

                    ; #44337: <==closure== 28920 (pos)
                    (Pc_survivorat_s_p4)

                    ; #57192: <==closure== 15259 (pos)
                    (Pb_survivorat_s_p4)

                    ; #17484: <==negation-removal== 25047 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #18816: <==negation-removal== 18396 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #32898: <==negation-removal== 15259 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #44730: <==negation-removal== 44337 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #55533: <==negation-removal== 57192 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90863: <==negation-removal== 28920 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #15259: origin
                    (Bb_survivorat_s_p4)

                    ; #18396: origin
                    (Ba_survivorat_s_p4)

                    ; #25047: <==closure== 18396 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28920: origin
                    (Bc_survivorat_s_p4)

                    ; #44337: <==closure== 28920 (pos)
                    (Pc_survivorat_s_p4)

                    ; #57192: <==closure== 15259 (pos)
                    (Pb_survivorat_s_p4)

                    ; #17484: <==negation-removal== 25047 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #18816: <==negation-removal== 18396 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #32898: <==negation-removal== 15259 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #44730: <==negation-removal== 44337 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #55533: <==negation-removal== 57192 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90863: <==negation-removal== 28920 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #31794: origin
                    (Bb_survivorat_s_p5)

                    ; #36163: origin
                    (Ba_survivorat_s_p5)

                    ; #37387: <==closure== 91875 (pos)
                    (Pc_survivorat_s_p5)

                    ; #48721: <==closure== 36163 (pos)
                    (Pa_survivorat_s_p5)

                    ; #82852: <==closure== 31794 (pos)
                    (Pb_survivorat_s_p5)

                    ; #91875: origin
                    (Bc_survivorat_s_p5)

                    ; #10345: <==negation-removal== 48721 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #12520: <==negation-removal== 91875 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #18883: <==negation-removal== 82852 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #21192: <==negation-removal== 36163 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #27383: <==negation-removal== 31794 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60621: <==negation-removal== 37387 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #31794: origin
                    (Bb_survivorat_s_p5)

                    ; #36163: origin
                    (Ba_survivorat_s_p5)

                    ; #37387: <==closure== 91875 (pos)
                    (Pc_survivorat_s_p5)

                    ; #48721: <==closure== 36163 (pos)
                    (Pa_survivorat_s_p5)

                    ; #82852: <==closure== 31794 (pos)
                    (Pb_survivorat_s_p5)

                    ; #91875: origin
                    (Bc_survivorat_s_p5)

                    ; #10345: <==negation-removal== 48721 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #12520: <==negation-removal== 91875 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #18883: <==negation-removal== 82852 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #21192: <==negation-removal== 36163 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #27383: <==negation-removal== 31794 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60621: <==negation-removal== 37387 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #31794: origin
                    (Bb_survivorat_s_p5)

                    ; #36163: origin
                    (Ba_survivorat_s_p5)

                    ; #37387: <==closure== 91875 (pos)
                    (Pc_survivorat_s_p5)

                    ; #48721: <==closure== 36163 (pos)
                    (Pa_survivorat_s_p5)

                    ; #82852: <==closure== 31794 (pos)
                    (Pb_survivorat_s_p5)

                    ; #91875: origin
                    (Bc_survivorat_s_p5)

                    ; #10345: <==negation-removal== 48721 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #12520: <==negation-removal== 91875 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #18883: <==negation-removal== 82852 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #21192: <==negation-removal== 36163 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #27383: <==negation-removal== 31794 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60621: <==negation-removal== 37387 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #16174: <==closure== 92064 (pos)
                    (Pc_survivorat_s_p6)

                    ; #53052: origin
                    (Ba_survivorat_s_p6)

                    ; #58841: <==closure== 92112 (pos)
                    (Pb_survivorat_s_p6)

                    ; #66944: <==closure== 53052 (pos)
                    (Pa_survivorat_s_p6)

                    ; #92064: origin
                    (Bc_survivorat_s_p6)

                    ; #92112: origin
                    (Bb_survivorat_s_p6)

                    ; #68183: <==negation-removal== 53052 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #69054: <==negation-removal== 92064 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #74967: <==negation-removal== 66944 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75348: <==negation-removal== 92112 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #85121: <==negation-removal== 16174 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #89995: <==negation-removal== 58841 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #16174: <==closure== 92064 (pos)
                    (Pc_survivorat_s_p6)

                    ; #53052: origin
                    (Ba_survivorat_s_p6)

                    ; #58841: <==closure== 92112 (pos)
                    (Pb_survivorat_s_p6)

                    ; #66944: <==closure== 53052 (pos)
                    (Pa_survivorat_s_p6)

                    ; #92064: origin
                    (Bc_survivorat_s_p6)

                    ; #92112: origin
                    (Bb_survivorat_s_p6)

                    ; #68183: <==negation-removal== 53052 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #69054: <==negation-removal== 92064 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #74967: <==negation-removal== 66944 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75348: <==negation-removal== 92112 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #85121: <==negation-removal== 16174 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #89995: <==negation-removal== 58841 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #16174: <==closure== 92064 (pos)
                    (Pc_survivorat_s_p6)

                    ; #53052: origin
                    (Ba_survivorat_s_p6)

                    ; #58841: <==closure== 92112 (pos)
                    (Pb_survivorat_s_p6)

                    ; #66944: <==closure== 53052 (pos)
                    (Pa_survivorat_s_p6)

                    ; #92064: origin
                    (Bc_survivorat_s_p6)

                    ; #92112: origin
                    (Bb_survivorat_s_p6)

                    ; #68183: <==negation-removal== 53052 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #69054: <==negation-removal== 92064 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #74967: <==negation-removal== 66944 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75348: <==negation-removal== 92112 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #85121: <==negation-removal== 16174 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #89995: <==negation-removal== 58841 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #24814: <==closure== 52305 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27868: <==closure== 69788 (pos)
                    (Pc_survivorat_s_p7)

                    ; #43459: origin
                    (Ba_survivorat_s_p7)

                    ; #52305: origin
                    (Bb_survivorat_s_p7)

                    ; #69788: origin
                    (Bc_survivorat_s_p7)

                    ; #71396: <==closure== 43459 (pos)
                    (Pa_survivorat_s_p7)

                    ; #15315: <==negation-removal== 43459 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #41983: <==negation-removal== 27868 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #47360: <==negation-removal== 69788 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #55916: <==negation-removal== 52305 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #69701: <==negation-removal== 24814 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #88767: <==negation-removal== 71396 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #24814: <==closure== 52305 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27868: <==closure== 69788 (pos)
                    (Pc_survivorat_s_p7)

                    ; #43459: origin
                    (Ba_survivorat_s_p7)

                    ; #52305: origin
                    (Bb_survivorat_s_p7)

                    ; #69788: origin
                    (Bc_survivorat_s_p7)

                    ; #71396: <==closure== 43459 (pos)
                    (Pa_survivorat_s_p7)

                    ; #15315: <==negation-removal== 43459 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #41983: <==negation-removal== 27868 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #47360: <==negation-removal== 69788 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #55916: <==negation-removal== 52305 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #69701: <==negation-removal== 24814 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #88767: <==negation-removal== 71396 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #24814: <==closure== 52305 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27868: <==closure== 69788 (pos)
                    (Pc_survivorat_s_p7)

                    ; #43459: origin
                    (Ba_survivorat_s_p7)

                    ; #52305: origin
                    (Bb_survivorat_s_p7)

                    ; #69788: origin
                    (Bc_survivorat_s_p7)

                    ; #71396: <==closure== 43459 (pos)
                    (Pa_survivorat_s_p7)

                    ; #15315: <==negation-removal== 43459 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #41983: <==negation-removal== 27868 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #47360: <==negation-removal== 69788 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #55916: <==negation-removal== 52305 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #69701: <==negation-removal== 24814 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #88767: <==negation-removal== 71396 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #13626: <==closure== 89619 (pos)
                    (Pb_survivorat_s_p8)

                    ; #36068: origin
                    (Bc_survivorat_s_p8)

                    ; #36681: <==closure== 36068 (pos)
                    (Pc_survivorat_s_p8)

                    ; #53397: <==closure== 75825 (pos)
                    (Pa_survivorat_s_p8)

                    ; #75825: origin
                    (Ba_survivorat_s_p8)

                    ; #89619: origin
                    (Bb_survivorat_s_p8)

                    ; #14425: <==negation-removal== 36681 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #18352: <==negation-removal== 53397 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25856: <==negation-removal== 89619 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #39603: <==negation-removal== 75825 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #71969: <==negation-removal== 13626 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #82886: <==negation-removal== 36068 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #13626: <==closure== 89619 (pos)
                    (Pb_survivorat_s_p8)

                    ; #36068: origin
                    (Bc_survivorat_s_p8)

                    ; #36681: <==closure== 36068 (pos)
                    (Pc_survivorat_s_p8)

                    ; #53397: <==closure== 75825 (pos)
                    (Pa_survivorat_s_p8)

                    ; #75825: origin
                    (Ba_survivorat_s_p8)

                    ; #89619: origin
                    (Bb_survivorat_s_p8)

                    ; #14425: <==negation-removal== 36681 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #18352: <==negation-removal== 53397 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25856: <==negation-removal== 89619 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #39603: <==negation-removal== 75825 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #71969: <==negation-removal== 13626 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #82886: <==negation-removal== 36068 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #13626: <==closure== 89619 (pos)
                    (Pb_survivorat_s_p8)

                    ; #36068: origin
                    (Bc_survivorat_s_p8)

                    ; #36681: <==closure== 36068 (pos)
                    (Pc_survivorat_s_p8)

                    ; #53397: <==closure== 75825 (pos)
                    (Pa_survivorat_s_p8)

                    ; #75825: origin
                    (Ba_survivorat_s_p8)

                    ; #89619: origin
                    (Bb_survivorat_s_p8)

                    ; #14425: <==negation-removal== 36681 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #18352: <==negation-removal== 53397 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25856: <==negation-removal== 89619 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #39603: <==negation-removal== 75825 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #71969: <==negation-removal== 13626 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #82886: <==negation-removal== 36068 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #29415: <==closure== 39871 (pos)
                    (Pb_survivorat_s_p9)

                    ; #39871: origin
                    (Bb_survivorat_s_p9)

                    ; #46453: origin
                    (Bc_survivorat_s_p9)

                    ; #54820: <==closure== 61167 (pos)
                    (Pa_survivorat_s_p9)

                    ; #61167: origin
                    (Ba_survivorat_s_p9)

                    ; #90132: <==closure== 46453 (pos)
                    (Pc_survivorat_s_p9)

                    ; #21156: <==negation-removal== 29415 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #29712: <==negation-removal== 46453 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #30861: <==negation-removal== 61167 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63014: <==negation-removal== 90132 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #64037: <==negation-removal== 54820 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #65644: <==negation-removal== 39871 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #29415: <==closure== 39871 (pos)
                    (Pb_survivorat_s_p9)

                    ; #39871: origin
                    (Bb_survivorat_s_p9)

                    ; #46453: origin
                    (Bc_survivorat_s_p9)

                    ; #54820: <==closure== 61167 (pos)
                    (Pa_survivorat_s_p9)

                    ; #61167: origin
                    (Ba_survivorat_s_p9)

                    ; #90132: <==closure== 46453 (pos)
                    (Pc_survivorat_s_p9)

                    ; #21156: <==negation-removal== 29415 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #29712: <==negation-removal== 46453 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #30861: <==negation-removal== 61167 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63014: <==negation-removal== 90132 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #64037: <==negation-removal== 54820 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #65644: <==negation-removal== 39871 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #29415: <==closure== 39871 (pos)
                    (Pb_survivorat_s_p9)

                    ; #39871: origin
                    (Bb_survivorat_s_p9)

                    ; #46453: origin
                    (Bc_survivorat_s_p9)

                    ; #54820: <==closure== 61167 (pos)
                    (Pa_survivorat_s_p9)

                    ; #61167: origin
                    (Ba_survivorat_s_p9)

                    ; #90132: <==closure== 46453 (pos)
                    (Pc_survivorat_s_p9)

                    ; #21156: <==negation-removal== 29415 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #29712: <==negation-removal== 46453 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #30861: <==negation-removal== 61167 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63014: <==negation-removal== 90132 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #64037: <==negation-removal== 54820 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #65644: <==negation-removal== 39871 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #88246: origin
                    (at_a_p1)

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #45816: origin
                    (at_a_p10)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #83856: origin
                    (at_a_p11)

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #75501: origin
                    (at_a_p12)

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #56738: origin
                    (at_a_p2)

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #31830: origin
                    (at_a_p3)

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #68463: origin
                    (at_a_p4)

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #27605: origin
                    (not_at_a_p10)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #37054: origin
                    (at_a_p6)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #99966: origin
                    (at_a_p7)

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #27605: origin
                    (not_at_a_p10)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #27605: origin
                    (not_at_a_p10)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #45816: <==negation-removal== 27605 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #40786: origin
                    (not_at_a_p11)

                    ; #88246: origin
                    (at_a_p1)

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #40786: origin
                    (not_at_a_p11)

                    ; #45816: origin
                    (at_a_p10)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #40786: origin
                    (not_at_a_p11)

                    ; #83856: origin
                    (at_a_p11)

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #40786: origin
                    (not_at_a_p11)

                    ; #75501: origin
                    (at_a_p12)

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #40786: origin
                    (not_at_a_p11)

                    ; #56738: origin
                    (at_a_p2)

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #31830: origin
                    (at_a_p3)

                    ; #40786: origin
                    (not_at_a_p11)

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #40786: origin
                    (not_at_a_p11)

                    ; #68463: origin
                    (at_a_p4)

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #40786: origin
                    (not_at_a_p11)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #37054: origin
                    (at_a_p6)

                    ; #40786: origin
                    (not_at_a_p11)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #40786: origin
                    (not_at_a_p11)

                    ; #99966: origin
                    (at_a_p7)

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #40786: origin
                    (not_at_a_p11)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #40786: origin
                    (not_at_a_p11)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #83856: <==negation-removal== 40786 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #44896: origin
                    (not_at_a_p12)

                    ; #88246: origin
                    (at_a_p1)

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #44896: origin
                    (not_at_a_p12)

                    ; #45816: origin
                    (at_a_p10)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #44896: origin
                    (not_at_a_p12)

                    ; #83856: origin
                    (at_a_p11)

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #44896: origin
                    (not_at_a_p12)

                    ; #75501: origin
                    (at_a_p12)

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #44896: origin
                    (not_at_a_p12)

                    ; #56738: origin
                    (at_a_p2)

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #31830: origin
                    (at_a_p3)

                    ; #44896: origin
                    (not_at_a_p12)

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #44896: origin
                    (not_at_a_p12)

                    ; #68463: origin
                    (at_a_p4)

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #44896: origin
                    (not_at_a_p12)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #37054: origin
                    (at_a_p6)

                    ; #44896: origin
                    (not_at_a_p12)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #44896: origin
                    (not_at_a_p12)

                    ; #99966: origin
                    (at_a_p7)

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #44896: origin
                    (not_at_a_p12)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #44896: origin
                    (not_at_a_p12)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #75501: <==negation-removal== 44896 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #63528: origin
                    (not_at_a_p1)

                    ; #88246: origin
                    (at_a_p1)

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #45816: origin
                    (at_a_p10)

                    ; #63528: origin
                    (not_at_a_p1)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #63528: origin
                    (not_at_a_p1)

                    ; #83856: origin
                    (at_a_p11)

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #63528: origin
                    (not_at_a_p1)

                    ; #75501: origin
                    (at_a_p12)

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #56738: origin
                    (at_a_p2)

                    ; #63528: origin
                    (not_at_a_p1)

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #31830: origin
                    (at_a_p3)

                    ; #63528: origin
                    (not_at_a_p1)

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #63528: origin
                    (not_at_a_p1)

                    ; #68463: origin
                    (at_a_p4)

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #63528: origin
                    (not_at_a_p1)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #37054: origin
                    (at_a_p6)

                    ; #63528: origin
                    (not_at_a_p1)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #63528: origin
                    (not_at_a_p1)

                    ; #99966: origin
                    (at_a_p7)

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #63528: origin
                    (not_at_a_p1)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #63528: origin
                    (not_at_a_p1)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #88246: <==negation-removal== 63528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #60272: origin
                    (not_at_a_p2)

                    ; #88246: origin
                    (at_a_p1)

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #45816: origin
                    (at_a_p10)

                    ; #60272: origin
                    (not_at_a_p2)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #60272: origin
                    (not_at_a_p2)

                    ; #83856: origin
                    (at_a_p11)

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #60272: origin
                    (not_at_a_p2)

                    ; #75501: origin
                    (at_a_p12)

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #56738: origin
                    (at_a_p2)

                    ; #60272: origin
                    (not_at_a_p2)

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #31830: origin
                    (at_a_p3)

                    ; #60272: origin
                    (not_at_a_p2)

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #60272: origin
                    (not_at_a_p2)

                    ; #68463: origin
                    (at_a_p4)

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #60272: origin
                    (not_at_a_p2)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #37054: origin
                    (at_a_p6)

                    ; #60272: origin
                    (not_at_a_p2)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #60272: origin
                    (not_at_a_p2)

                    ; #99966: origin
                    (at_a_p7)

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #60272: origin
                    (not_at_a_p2)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #60272: origin
                    (not_at_a_p2)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #56738: <==negation-removal== 60272 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #42949: origin
                    (not_at_a_p3)

                    ; #88246: origin
                    (at_a_p1)

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #42949: origin
                    (not_at_a_p3)

                    ; #45816: origin
                    (at_a_p10)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #42949: origin
                    (not_at_a_p3)

                    ; #83856: origin
                    (at_a_p11)

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #42949: origin
                    (not_at_a_p3)

                    ; #75501: origin
                    (at_a_p12)

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #42949: origin
                    (not_at_a_p3)

                    ; #56738: origin
                    (at_a_p2)

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #31830: origin
                    (at_a_p3)

                    ; #42949: origin
                    (not_at_a_p3)

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #42949: origin
                    (not_at_a_p3)

                    ; #68463: origin
                    (at_a_p4)

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #42949: origin
                    (not_at_a_p3)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #37054: origin
                    (at_a_p6)

                    ; #42949: origin
                    (not_at_a_p3)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #42949: origin
                    (not_at_a_p3)

                    ; #99966: origin
                    (at_a_p7)

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #42949: origin
                    (not_at_a_p3)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #42949: origin
                    (not_at_a_p3)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #31830: <==negation-removal== 42949 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #76784: origin
                    (not_at_a_p4)

                    ; #88246: origin
                    (at_a_p1)

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #45816: origin
                    (at_a_p10)

                    ; #76784: origin
                    (not_at_a_p4)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #76784: origin
                    (not_at_a_p4)

                    ; #83856: origin
                    (at_a_p11)

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #75501: origin
                    (at_a_p12)

                    ; #76784: origin
                    (not_at_a_p4)

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #56738: origin
                    (at_a_p2)

                    ; #76784: origin
                    (not_at_a_p4)

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #31830: origin
                    (at_a_p3)

                    ; #76784: origin
                    (not_at_a_p4)

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #68463: origin
                    (at_a_p4)

                    ; #76784: origin
                    (not_at_a_p4)

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #76784: origin
                    (not_at_a_p4)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #37054: origin
                    (at_a_p6)

                    ; #76784: origin
                    (not_at_a_p4)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #76784: origin
                    (not_at_a_p4)

                    ; #99966: origin
                    (at_a_p7)

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #76784: origin
                    (not_at_a_p4)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #76784: origin
                    (not_at_a_p4)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #68463: <==negation-removal== 76784 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #88246: origin
                    (at_a_p1)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #45816: origin
                    (at_a_p10)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #83856: origin
                    (at_a_p11)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #75501: origin
                    (at_a_p12)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #56738: origin
                    (at_a_p2)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #31830: origin
                    (at_a_p3)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #68463: origin
                    (at_a_p4)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #22595: origin
                    (at_a_p5)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #37054: origin
                    (at_a_p6)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #99966: origin
                    (at_a_p7)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #23697: origin
                    (at_a_p8)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #21746: origin
                    (not_at_a_p5)

                    ; #86565: origin
                    (at_a_p9)

                    ; #22595: <==negation-removal== 21746 (pos)
                    (not (at_a_p5))

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #88246: origin
                    (at_a_p1)

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #45816: origin
                    (at_a_p10)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #83856: origin
                    (at_a_p11)

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #75501: origin
                    (at_a_p12)

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #56738: origin
                    (at_a_p2)

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #31830: origin
                    (at_a_p3)

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #68463: origin
                    (at_a_p4)

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #22595: origin
                    (at_a_p5)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #37054: origin
                    (at_a_p6)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #99966: origin
                    (at_a_p7)

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #23697: origin
                    (at_a_p8)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #18338: origin
                    (not_at_a_p6)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #37054: <==negation-removal== 18338 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #70151: origin
                    (not_at_a_p7)

                    ; #88246: origin
                    (at_a_p1)

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #45816: origin
                    (at_a_p10)

                    ; #70151: origin
                    (not_at_a_p7)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #70151: origin
                    (not_at_a_p7)

                    ; #83856: origin
                    (at_a_p11)

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #70151: origin
                    (not_at_a_p7)

                    ; #75501: origin
                    (at_a_p12)

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #56738: origin
                    (at_a_p2)

                    ; #70151: origin
                    (not_at_a_p7)

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #31830: origin
                    (at_a_p3)

                    ; #70151: origin
                    (not_at_a_p7)

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #68463: origin
                    (at_a_p4)

                    ; #70151: origin
                    (not_at_a_p7)

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #70151: origin
                    (not_at_a_p7)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #37054: origin
                    (at_a_p6)

                    ; #70151: origin
                    (not_at_a_p7)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #70151: origin
                    (not_at_a_p7)

                    ; #99966: origin
                    (at_a_p7)

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #70151: origin
                    (not_at_a_p7)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #70151: origin
                    (not_at_a_p7)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #99966: <==negation-removal== 70151 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #88246: origin
                    (at_a_p1)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #45816: origin
                    (at_a_p10)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #83856: origin
                    (at_a_p11)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #75501: origin
                    (at_a_p12)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #56738: origin
                    (at_a_p2)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #31830: origin
                    (at_a_p3)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #68463: origin
                    (at_a_p4)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #25534: origin
                    (not_at_a_p8)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #37054: origin
                    (at_a_p6)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #99966: origin
                    (at_a_p7)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #25534: origin
                    (not_at_a_p8)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #25534: origin
                    (not_at_a_p8)

                    ; #86565: origin
                    (at_a_p9)

                    ; #23697: <==negation-removal== 25534 (pos)
                    (not (at_a_p8))

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #88246: origin
                    (at_a_p1)

                    ; #63528: <==negation-removal== 88246 (pos)
                    (not (not_at_a_p1))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #45816: origin
                    (at_a_p10)

                    ; #27605: <==negation-removal== 45816 (pos)
                    (not (not_at_a_p10))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #83856: origin
                    (at_a_p11)

                    ; #40786: <==negation-removal== 83856 (pos)
                    (not (not_at_a_p11))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #75501: origin
                    (at_a_p12)

                    ; #44896: <==negation-removal== 75501 (pos)
                    (not (not_at_a_p12))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #56738: origin
                    (at_a_p2)

                    ; #60272: <==negation-removal== 56738 (pos)
                    (not (not_at_a_p2))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #31830: origin
                    (at_a_p3)

                    ; #42949: <==negation-removal== 31830 (pos)
                    (not (not_at_a_p3))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #68463: origin
                    (at_a_p4)

                    ; #76784: <==negation-removal== 68463 (pos)
                    (not (not_at_a_p4))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #22595: origin
                    (at_a_p5)

                    ; #29771: origin
                    (not_at_a_p9)

                    ; #21746: <==negation-removal== 22595 (pos)
                    (not (not_at_a_p5))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #37054: origin
                    (at_a_p6)

                    ; #18338: <==negation-removal== 37054 (pos)
                    (not (not_at_a_p6))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #99966: origin
                    (at_a_p7)

                    ; #70151: <==negation-removal== 99966 (pos)
                    (not (not_at_a_p7))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #23697: origin
                    (at_a_p8)

                    ; #29771: origin
                    (not_at_a_p9)

                    ; #25534: <==negation-removal== 23697 (pos)
                    (not (not_at_a_p8))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #29771: origin
                    (not_at_a_p9)

                    ; #86565: origin
                    (at_a_p9)

                    ; #29771: <==negation-removal== 86565 (pos)
                    (not (not_at_a_p9))

                    ; #86565: <==negation-removal== 29771 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #63075: origin
                    (at_b_p1)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #30284: origin
                    (at_b_p11)

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #48633: origin
                    (at_b_p12)

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #20418: origin
                    (not_at_b_p10)

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #20418: origin
                    (not_at_b_p10)

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #38865: origin
                    (at_b_p4)

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #53287: origin
                    (at_b_p5)

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #63807: origin
                    (at_b_p6)

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #24408: origin
                    (at_b_p7)

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #57092: origin
                    (at_b_p8)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #20418: origin
                    (not_at_b_p10)

                    ; #50299: origin
                    (at_b_p9)

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))

                    ; #89541: <==negation-removal== 20418 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #63075: origin
                    (at_b_p1)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #85756: origin
                    (not_at_b_p11)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #30284: origin
                    (at_b_p11)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #48633: origin
                    (at_b_p12)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #38865: origin
                    (at_b_p4)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #53287: origin
                    (at_b_p5)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #63807: origin
                    (at_b_p6)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #24408: origin
                    (at_b_p7)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #57092: origin
                    (at_b_p8)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #50299: origin
                    (at_b_p9)

                    ; #85756: origin
                    (not_at_b_p11)

                    ; #30284: <==negation-removal== 85756 (pos)
                    (not (at_b_p11))

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #57555: origin
                    (not_at_b_p12)

                    ; #63075: origin
                    (at_b_p1)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #57555: origin
                    (not_at_b_p12)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #30284: origin
                    (at_b_p11)

                    ; #57555: origin
                    (not_at_b_p12)

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #48633: origin
                    (at_b_p12)

                    ; #57555: origin
                    (not_at_b_p12)

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #57555: origin
                    (not_at_b_p12)

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #57555: origin
                    (not_at_b_p12)

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #38865: origin
                    (at_b_p4)

                    ; #57555: origin
                    (not_at_b_p12)

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #53287: origin
                    (at_b_p5)

                    ; #57555: origin
                    (not_at_b_p12)

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #57555: origin
                    (not_at_b_p12)

                    ; #63807: origin
                    (at_b_p6)

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #24408: origin
                    (at_b_p7)

                    ; #57555: origin
                    (not_at_b_p12)

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #57092: origin
                    (at_b_p8)

                    ; #57555: origin
                    (not_at_b_p12)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #50299: origin
                    (at_b_p9)

                    ; #57555: origin
                    (not_at_b_p12)

                    ; #48633: <==negation-removal== 57555 (pos)
                    (not (at_b_p12))

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #63075: origin
                    (at_b_p1)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #30284: origin
                    (at_b_p11)

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #48633: origin
                    (at_b_p12)

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #19366: origin
                    (at_b_p2)

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #15379: origin
                    (at_b_p3)

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #38865: origin
                    (at_b_p4)

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #53287: origin
                    (at_b_p5)

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #63807: origin
                    (at_b_p6)

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #24408: origin
                    (at_b_p7)

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #57092: origin
                    (at_b_p8)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #15361: origin
                    (not_at_b_p1)

                    ; #50299: origin
                    (at_b_p9)

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))

                    ; #63075: <==negation-removal== 15361 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #62979: origin
                    (not_at_b_p2)

                    ; #63075: origin
                    (at_b_p1)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #62979: origin
                    (not_at_b_p2)

                    ; #89541: origin
                    (at_b_p10)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #30284: origin
                    (at_b_p11)

                    ; #62979: origin
                    (not_at_b_p2)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #48633: origin
                    (at_b_p12)

                    ; #62979: origin
                    (not_at_b_p2)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #62979: origin
                    (not_at_b_p2)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #62979: origin
                    (not_at_b_p2)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #38865: origin
                    (at_b_p4)

                    ; #62979: origin
                    (not_at_b_p2)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #53287: origin
                    (at_b_p5)

                    ; #62979: origin
                    (not_at_b_p2)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #62979: origin
                    (not_at_b_p2)

                    ; #63807: origin
                    (at_b_p6)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #24408: origin
                    (at_b_p7)

                    ; #62979: origin
                    (not_at_b_p2)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #57092: origin
                    (at_b_p8)

                    ; #62979: origin
                    (not_at_b_p2)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #50299: origin
                    (at_b_p9)

                    ; #62979: origin
                    (not_at_b_p2)

                    ; #19366: <==negation-removal== 62979 (pos)
                    (not (at_b_p2))

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #63075: origin
                    (at_b_p1)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #67828: origin
                    (not_at_b_p3)

                    ; #89541: origin
                    (at_b_p10)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #30284: origin
                    (at_b_p11)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #48633: origin
                    (at_b_p12)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #38865: origin
                    (at_b_p4)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #53287: origin
                    (at_b_p5)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #63807: origin
                    (at_b_p6)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #24408: origin
                    (at_b_p7)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #57092: origin
                    (at_b_p8)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #50299: origin
                    (at_b_p9)

                    ; #67828: origin
                    (not_at_b_p3)

                    ; #15379: <==negation-removal== 67828 (pos)
                    (not (at_b_p3))

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #59366: origin
                    (not_at_b_p4)

                    ; #63075: origin
                    (at_b_p1)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #59366: origin
                    (not_at_b_p4)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #30284: origin
                    (at_b_p11)

                    ; #59366: origin
                    (not_at_b_p4)

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #48633: origin
                    (at_b_p12)

                    ; #59366: origin
                    (not_at_b_p4)

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #59366: origin
                    (not_at_b_p4)

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #59366: origin
                    (not_at_b_p4)

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #38865: origin
                    (at_b_p4)

                    ; #59366: origin
                    (not_at_b_p4)

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #53287: origin
                    (at_b_p5)

                    ; #59366: origin
                    (not_at_b_p4)

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #59366: origin
                    (not_at_b_p4)

                    ; #63807: origin
                    (at_b_p6)

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #24408: origin
                    (at_b_p7)

                    ; #59366: origin
                    (not_at_b_p4)

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #57092: origin
                    (at_b_p8)

                    ; #59366: origin
                    (not_at_b_p4)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #50299: origin
                    (at_b_p9)

                    ; #59366: origin
                    (not_at_b_p4)

                    ; #38865: <==negation-removal== 59366 (pos)
                    (not (at_b_p4))

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #28886: origin
                    (not_at_b_p5)

                    ; #63075: origin
                    (at_b_p1)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #28886: origin
                    (not_at_b_p5)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #28886: origin
                    (not_at_b_p5)

                    ; #30284: origin
                    (at_b_p11)

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #28886: origin
                    (not_at_b_p5)

                    ; #48633: origin
                    (at_b_p12)

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #28886: origin
                    (not_at_b_p5)

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #28886: origin
                    (not_at_b_p5)

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #28886: origin
                    (not_at_b_p5)

                    ; #38865: origin
                    (at_b_p4)

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #28886: origin
                    (not_at_b_p5)

                    ; #53287: origin
                    (at_b_p5)

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #28886: origin
                    (not_at_b_p5)

                    ; #63807: origin
                    (at_b_p6)

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #24408: origin
                    (at_b_p7)

                    ; #28886: origin
                    (not_at_b_p5)

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #28886: origin
                    (not_at_b_p5)

                    ; #57092: origin
                    (at_b_p8)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #28886: origin
                    (not_at_b_p5)

                    ; #50299: origin
                    (at_b_p9)

                    ; #53287: <==negation-removal== 28886 (pos)
                    (not (at_b_p5))

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #53444: origin
                    (not_at_b_p6)

                    ; #63075: origin
                    (at_b_p1)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #53444: origin
                    (not_at_b_p6)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #30284: origin
                    (at_b_p11)

                    ; #53444: origin
                    (not_at_b_p6)

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #48633: origin
                    (at_b_p12)

                    ; #53444: origin
                    (not_at_b_p6)

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #53444: origin
                    (not_at_b_p6)

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #53444: origin
                    (not_at_b_p6)

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #38865: origin
                    (at_b_p4)

                    ; #53444: origin
                    (not_at_b_p6)

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #53287: origin
                    (at_b_p5)

                    ; #53444: origin
                    (not_at_b_p6)

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #53444: origin
                    (not_at_b_p6)

                    ; #63807: origin
                    (at_b_p6)

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #24408: origin
                    (at_b_p7)

                    ; #53444: origin
                    (not_at_b_p6)

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #53444: origin
                    (not_at_b_p6)

                    ; #57092: origin
                    (at_b_p8)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #50299: origin
                    (at_b_p9)

                    ; #53444: origin
                    (not_at_b_p6)

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))

                    ; #63807: <==negation-removal== 53444 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #63075: origin
                    (at_b_p1)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #82750: origin
                    (not_at_b_p7)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #30284: origin
                    (at_b_p11)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #48633: origin
                    (at_b_p12)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #38865: origin
                    (at_b_p4)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #53287: origin
                    (at_b_p5)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #63807: origin
                    (at_b_p6)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #24408: origin
                    (at_b_p7)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #57092: origin
                    (at_b_p8)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #50299: origin
                    (at_b_p9)

                    ; #82750: origin
                    (not_at_b_p7)

                    ; #24408: <==negation-removal== 82750 (pos)
                    (not (at_b_p7))

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #63075: origin
                    (at_b_p1)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #30284: origin
                    (at_b_p11)

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #48633: origin
                    (at_b_p12)

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #19366: origin
                    (at_b_p2)

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #15379: origin
                    (at_b_p3)

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #38865: origin
                    (at_b_p4)

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #53287: origin
                    (at_b_p5)

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #63807: origin
                    (at_b_p6)

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #24408: origin
                    (at_b_p7)

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #57092: origin
                    (at_b_p8)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #13149: origin
                    (not_at_b_p8)

                    ; #50299: origin
                    (at_b_p9)

                    ; #57092: <==negation-removal== 13149 (pos)
                    (not (at_b_p8))

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #58293: origin
                    (not_at_b_p9)

                    ; #63075: origin
                    (at_b_p1)

                    ; #15361: <==negation-removal== 63075 (pos)
                    (not (not_at_b_p1))

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #58293: origin
                    (not_at_b_p9)

                    ; #89541: origin
                    (at_b_p10)

                    ; #20418: <==negation-removal== 89541 (pos)
                    (not (not_at_b_p10))

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #30284: origin
                    (at_b_p11)

                    ; #58293: origin
                    (not_at_b_p9)

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))

                    ; #85756: <==negation-removal== 30284 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #48633: origin
                    (at_b_p12)

                    ; #58293: origin
                    (not_at_b_p9)

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))

                    ; #57555: <==negation-removal== 48633 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #19366: origin
                    (at_b_p2)

                    ; #58293: origin
                    (not_at_b_p9)

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))

                    ; #62979: <==negation-removal== 19366 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #15379: origin
                    (at_b_p3)

                    ; #58293: origin
                    (not_at_b_p9)

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))

                    ; #67828: <==negation-removal== 15379 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #38865: origin
                    (at_b_p4)

                    ; #58293: origin
                    (not_at_b_p9)

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))

                    ; #59366: <==negation-removal== 38865 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #53287: origin
                    (at_b_p5)

                    ; #58293: origin
                    (not_at_b_p9)

                    ; #28886: <==negation-removal== 53287 (pos)
                    (not (not_at_b_p5))

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #58293: origin
                    (not_at_b_p9)

                    ; #63807: origin
                    (at_b_p6)

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))

                    ; #53444: <==negation-removal== 63807 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #24408: origin
                    (at_b_p7)

                    ; #58293: origin
                    (not_at_b_p9)

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))

                    ; #82750: <==negation-removal== 24408 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #57092: origin
                    (at_b_p8)

                    ; #58293: origin
                    (not_at_b_p9)

                    ; #13149: <==negation-removal== 57092 (pos)
                    (not (not_at_b_p8))

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #50299: origin
                    (at_b_p9)

                    ; #58293: origin
                    (not_at_b_p9)

                    ; #50299: <==negation-removal== 58293 (pos)
                    (not (at_b_p9))

                    ; #58293: <==negation-removal== 50299 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #46006: origin
                    (at_c_p1)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #46111: origin
                    (at_c_p10)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #75130: origin
                    (at_c_p11)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #60904: origin
                    (at_c_p12)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #39041: origin
                    (at_c_p2)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #45739: origin
                    (at_c_p3)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #78819: origin
                    (at_c_p4)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #52089: origin
                    (at_c_p5)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #51327: origin
                    (at_c_p6)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #56725: origin
                    (at_c_p8)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #85924: origin
                    (not_at_c_p10)

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))

                    ; #46111: <==negation-removal== 85924 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #46006: origin
                    (at_c_p1)

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #46111: origin
                    (at_c_p10)

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #75130: origin
                    (at_c_p11)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #60904: origin
                    (at_c_p12)

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #39041: origin
                    (at_c_p2)

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #45739: origin
                    (at_c_p3)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #78819: origin
                    (at_c_p4)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #52089: origin
                    (at_c_p5)

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #51327: origin
                    (at_c_p6)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #30071: origin
                    (not_at_c_p11)

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #30071: origin
                    (not_at_c_p11)

                    ; #56725: origin
                    (at_c_p8)

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #30071: origin
                    (not_at_c_p11)

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))

                    ; #75130: <==negation-removal== 30071 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #46006: origin
                    (at_c_p1)

                    ; #57816: origin
                    (not_at_c_p12)

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #46111: origin
                    (at_c_p10)

                    ; #57816: origin
                    (not_at_c_p12)

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #57816: origin
                    (not_at_c_p12)

                    ; #75130: origin
                    (at_c_p11)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #57816: origin
                    (not_at_c_p12)

                    ; #60904: origin
                    (at_c_p12)

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #39041: origin
                    (at_c_p2)

                    ; #57816: origin
                    (not_at_c_p12)

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #45739: origin
                    (at_c_p3)

                    ; #57816: origin
                    (not_at_c_p12)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #57816: origin
                    (not_at_c_p12)

                    ; #78819: origin
                    (at_c_p4)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #52089: origin
                    (at_c_p5)

                    ; #57816: origin
                    (not_at_c_p12)

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #51327: origin
                    (at_c_p6)

                    ; #57816: origin
                    (not_at_c_p12)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #57816: origin
                    (not_at_c_p12)

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #56725: origin
                    (at_c_p8)

                    ; #57816: origin
                    (not_at_c_p12)

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #57816: origin
                    (not_at_c_p12)

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))

                    ; #60904: <==negation-removal== 57816 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #46006: origin
                    (at_c_p1)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #46111: origin
                    (at_c_p10)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #75130: origin
                    (at_c_p11)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #60904: origin
                    (at_c_p12)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #39041: origin
                    (at_c_p2)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #45739: origin
                    (at_c_p3)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #78819: origin
                    (at_c_p4)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #52089: origin
                    (at_c_p5)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #51327: origin
                    (at_c_p6)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #56725: origin
                    (at_c_p8)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #93268: origin
                    (not_at_c_p1)

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))

                    ; #46006: <==negation-removal== 93268 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #46006: origin
                    (at_c_p1)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #46111: origin
                    (at_c_p10)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #75130: origin
                    (at_c_p11)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #60904: origin
                    (at_c_p12)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #39041: origin
                    (at_c_p2)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #45739: origin
                    (at_c_p3)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #78819: origin
                    (at_c_p4)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #52089: origin
                    (at_c_p5)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #51327: origin
                    (at_c_p6)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #56725: origin
                    (at_c_p8)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #89228: origin
                    (not_at_c_p2)

                    ; #39041: <==negation-removal== 89228 (pos)
                    (not (at_c_p2))

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #46006: origin
                    (at_c_p1)

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #46111: origin
                    (at_c_p10)

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #75130: origin
                    (at_c_p11)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #60904: origin
                    (at_c_p12)

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #39041: origin
                    (at_c_p2)

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #45739: origin
                    (at_c_p3)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #78819: origin
                    (at_c_p4)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #52089: origin
                    (at_c_p5)

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #51327: origin
                    (at_c_p6)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #34360: origin
                    (not_at_c_p3)

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #34360: origin
                    (not_at_c_p3)

                    ; #56725: origin
                    (at_c_p8)

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #34360: origin
                    (not_at_c_p3)

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))

                    ; #45739: <==negation-removal== 34360 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #46006: origin
                    (at_c_p1)

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #46111: origin
                    (at_c_p10)

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #75130: origin
                    (at_c_p11)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #60904: origin
                    (at_c_p12)

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #39041: origin
                    (at_c_p2)

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #45739: origin
                    (at_c_p3)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #78819: origin
                    (at_c_p4)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #52089: origin
                    (at_c_p5)

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #51327: origin
                    (at_c_p6)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #35397: origin
                    (not_at_c_p4)

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #35397: origin
                    (not_at_c_p4)

                    ; #56725: origin
                    (at_c_p8)

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #35397: origin
                    (not_at_c_p4)

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))

                    ; #78819: <==negation-removal== 35397 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #46006: origin
                    (at_c_p1)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #46111: origin
                    (at_c_p10)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #75130: origin
                    (at_c_p11)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #60904: origin
                    (at_c_p12)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #39041: origin
                    (at_c_p2)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #45739: origin
                    (at_c_p3)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #78819: origin
                    (at_c_p4)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #52089: origin
                    (at_c_p5)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #51327: origin
                    (at_c_p6)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #56725: origin
                    (at_c_p8)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #90360: origin
                    (not_at_c_p5)

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))

                    ; #52089: <==negation-removal== 90360 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #46006: origin
                    (at_c_p1)

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #46111: origin
                    (at_c_p10)

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #75130: origin
                    (at_c_p11)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #60904: origin
                    (at_c_p12)

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #39041: origin
                    (at_c_p2)

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #45739: origin
                    (at_c_p3)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #78819: origin
                    (at_c_p4)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #52089: origin
                    (at_c_p5)

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #51327: origin
                    (at_c_p6)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #20384: origin
                    (not_at_c_p6)

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #56725: origin
                    (at_c_p8)

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #20384: origin
                    (not_at_c_p6)

                    ; #28394: origin
                    (at_c_p9)

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))

                    ; #51327: <==negation-removal== 20384 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #46006: origin
                    (at_c_p1)

                    ; #60145: origin
                    (not_at_c_p7)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #46111: origin
                    (at_c_p10)

                    ; #60145: origin
                    (not_at_c_p7)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #60145: origin
                    (not_at_c_p7)

                    ; #75130: origin
                    (at_c_p11)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #60145: origin
                    (not_at_c_p7)

                    ; #60904: origin
                    (at_c_p12)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #39041: origin
                    (at_c_p2)

                    ; #60145: origin
                    (not_at_c_p7)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #45739: origin
                    (at_c_p3)

                    ; #60145: origin
                    (not_at_c_p7)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #60145: origin
                    (not_at_c_p7)

                    ; #78819: origin
                    (at_c_p4)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #52089: origin
                    (at_c_p5)

                    ; #60145: origin
                    (not_at_c_p7)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #51327: origin
                    (at_c_p6)

                    ; #60145: origin
                    (not_at_c_p7)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #60145: origin
                    (not_at_c_p7)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #56725: origin
                    (at_c_p8)

                    ; #60145: origin
                    (not_at_c_p7)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #60145: origin
                    (not_at_c_p7)

                    ; #16402: <==negation-removal== 60145 (pos)
                    (not (at_c_p7))

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #46006: origin
                    (at_c_p1)

                    ; #47811: origin
                    (not_at_c_p8)

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #46111: origin
                    (at_c_p10)

                    ; #47811: origin
                    (not_at_c_p8)

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #47811: origin
                    (not_at_c_p8)

                    ; #75130: origin
                    (at_c_p11)

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #47811: origin
                    (not_at_c_p8)

                    ; #60904: origin
                    (at_c_p12)

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #39041: origin
                    (at_c_p2)

                    ; #47811: origin
                    (not_at_c_p8)

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #45739: origin
                    (at_c_p3)

                    ; #47811: origin
                    (not_at_c_p8)

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #47811: origin
                    (not_at_c_p8)

                    ; #78819: origin
                    (at_c_p4)

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #47811: origin
                    (not_at_c_p8)

                    ; #52089: origin
                    (at_c_p5)

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #47811: origin
                    (not_at_c_p8)

                    ; #51327: origin
                    (at_c_p6)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #47811: origin
                    (not_at_c_p8)

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #47811: origin
                    (not_at_c_p8)

                    ; #56725: origin
                    (at_c_p8)

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #47811: origin
                    (not_at_c_p8)

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))

                    ; #56725: <==negation-removal== 47811 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #45685: origin
                    (not_at_c_p9)

                    ; #46006: origin
                    (at_c_p1)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #93268: <==negation-removal== 46006 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #45685: origin
                    (not_at_c_p9)

                    ; #46111: origin
                    (at_c_p10)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #85924: <==negation-removal== 46111 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #45685: origin
                    (not_at_c_p9)

                    ; #75130: origin
                    (at_c_p11)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #30071: <==negation-removal== 75130 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #45685: origin
                    (not_at_c_p9)

                    ; #60904: origin
                    (at_c_p12)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #57816: <==negation-removal== 60904 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #39041: origin
                    (at_c_p2)

                    ; #45685: origin
                    (not_at_c_p9)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #89228: <==negation-removal== 39041 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #45685: origin
                    (not_at_c_p9)

                    ; #45739: origin
                    (at_c_p3)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #34360: <==negation-removal== 45739 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #45685: origin
                    (not_at_c_p9)

                    ; #78819: origin
                    (at_c_p4)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #35397: <==negation-removal== 78819 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #45685: origin
                    (not_at_c_p9)

                    ; #52089: origin
                    (at_c_p5)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #90360: <==negation-removal== 52089 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #45685: origin
                    (not_at_c_p9)

                    ; #51327: origin
                    (at_c_p6)

                    ; #20384: <==negation-removal== 51327 (pos)
                    (not (not_at_c_p6))

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #16402: origin
                    (at_c_p7)

                    ; #45685: origin
                    (not_at_c_p9)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #60145: <==negation-removal== 16402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #45685: origin
                    (not_at_c_p9)

                    ; #56725: origin
                    (at_c_p8)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #47811: <==negation-removal== 56725 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #28394: origin
                    (at_c_p9)

                    ; #45685: origin
                    (not_at_c_p9)

                    ; #28394: <==negation-removal== 45685 (pos)
                    (not (at_c_p9))

                    ; #45685: <==negation-removal== 28394 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #10135: <==commonly_known== 36727 (pos)
                    (Ba_checked_p10)

                    ; #13713: <==closure== 41713 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #17581: <==commonly_known== 36727 (pos)
                    (Bb_checked_p10)

                    ; #20379: <==closure== 74266 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #26840: <==commonly_known== 27028 (neg)
                    (Pa_checked_p10)

                    ; #36727: origin
                    (checked_p10)

                    ; #41713: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #57545: <==commonly_known== 36727 (pos)
                    (Bc_checked_p10)

                    ; #59052: <==commonly_known== 27028 (neg)
                    (Pb_checked_p10)

                    ; #74266: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #74657: <==commonly_known== 27028 (neg)
                    (Pc_checked_p10)

                    ; #11466: <==negation-removal== 13713 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #18291: <==negation-removal== 59052 (pos)
                    (not (Bb_not_checked_p10))

                    ; #23894: <==negation-removal== 26840 (pos)
                    (not (Ba_not_checked_p10))

                    ; #24204: <==negation-removal== 17581 (pos)
                    (not (Pb_not_checked_p10))

                    ; #27028: <==negation-removal== 36727 (pos)
                    (not (not_checked_p10))

                    ; #30101: <==negation-removal== 41713 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #33252: <==negation-removal== 74266 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #35828: <==negation-removal== 74657 (pos)
                    (not (Bc_not_checked_p10))

                    ; #38398: <==uncertain_firing== 74266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #47247: <==uncertain_firing== 20379 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #66066: <==uncertain_firing== 41713 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #71583: <==negation-removal== 20379 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #77712: <==uncertain_firing== 13713 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #78112: <==negation-removal== 57545 (pos)
                    (not (Pc_not_checked_p10))

                    ; #79852: <==negation-removal== 10135 (pos)
                    (not (Pa_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #33021: <==commonly_known== 13481 (neg)
                    (Pb_checked_p11)

                    ; #46779: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #52695: <==commonly_known== 13481 (neg)
                    (Pa_checked_p11)

                    ; #62320: <==commonly_known== 73023 (pos)
                    (Ba_checked_p11)

                    ; #67986: <==closure== 86537 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #71086: <==commonly_known== 13481 (neg)
                    (Pc_checked_p11)

                    ; #73023: origin
                    (checked_p11)

                    ; #73069: <==commonly_known== 73023 (pos)
                    (Bc_checked_p11)

                    ; #82974: <==commonly_known== 73023 (pos)
                    (Bb_checked_p11)

                    ; #83055: <==closure== 46779 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #86537: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #13481: <==negation-removal== 73023 (pos)
                    (not (not_checked_p11))

                    ; #19847: <==negation-removal== 62320 (pos)
                    (not (Pa_not_checked_p11))

                    ; #24018: <==negation-removal== 52695 (pos)
                    (not (Ba_not_checked_p11))

                    ; #27922: <==negation-removal== 82974 (pos)
                    (not (Pb_not_checked_p11))

                    ; #29143: <==uncertain_firing== 67986 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #30560: <==negation-removal== 73069 (pos)
                    (not (Pc_not_checked_p11))

                    ; #38542: <==negation-removal== 46779 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #40697: <==uncertain_firing== 83055 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #49539: <==uncertain_firing== 86537 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #50640: <==negation-removal== 67986 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #69295: <==negation-removal== 71086 (pos)
                    (not (Bc_not_checked_p11))

                    ; #72265: <==negation-removal== 33021 (pos)
                    (not (Bb_not_checked_p11))

                    ; #73538: <==negation-removal== 83055 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #74135: <==negation-removal== 86537 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #77370: <==uncertain_firing== 46779 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #15754: origin
                    (checked_p12)

                    ; #19709: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #22637: <==commonly_known== 15754 (pos)
                    (Bc_checked_p12)

                    ; #32445: <==commonly_known== 15754 (pos)
                    (Bb_checked_p12)

                    ; #40948: <==commonly_known== 14810 (neg)
                    (Pb_checked_p12)

                    ; #42626: <==closure== 19709 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #50166: <==commonly_known== 14810 (neg)
                    (Pc_checked_p12)

                    ; #52985: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #54162: <==commonly_known== 14810 (neg)
                    (Pa_checked_p12)

                    ; #68310: <==commonly_known== 15754 (pos)
                    (Ba_checked_p12)

                    ; #78889: <==closure== 52985 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #14810: <==negation-removal== 15754 (pos)
                    (not (not_checked_p12))

                    ; #16116: <==negation-removal== 52985 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #21405: <==negation-removal== 78889 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #23566: <==negation-removal== 54162 (pos)
                    (not (Ba_not_checked_p12))

                    ; #34789: <==negation-removal== 19709 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #39913: <==negation-removal== 40948 (pos)
                    (not (Bb_not_checked_p12))

                    ; #52392: <==uncertain_firing== 19709 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #56730: <==negation-removal== 68310 (pos)
                    (not (Pa_not_checked_p12))

                    ; #62487: <==negation-removal== 50166 (pos)
                    (not (Bc_not_checked_p12))

                    ; #64064: <==uncertain_firing== 78889 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #69299: <==negation-removal== 32445 (pos)
                    (not (Pb_not_checked_p12))

                    ; #73954: <==uncertain_firing== 52985 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #78058: <==uncertain_firing== 42626 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #78682: <==negation-removal== 22637 (pos)
                    (not (Pc_not_checked_p12))

                    ; #92159: <==negation-removal== 42626 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #23243: <==commonly_known== 81765 (pos)
                    (Bb_checked_p1)

                    ; #33056: <==closure== 38996 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #38996: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #49832: <==commonly_known== 81765 (pos)
                    (Ba_checked_p1)

                    ; #54466: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #63272: <==commonly_known== 31258 (neg)
                    (Pc_checked_p1)

                    ; #80446: <==closure== 54466 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #81765: origin
                    (checked_p1)

                    ; #82638: <==commonly_known== 31258 (neg)
                    (Pa_checked_p1)

                    ; #92176: <==commonly_known== 31258 (neg)
                    (Pb_checked_p1)

                    ; #98546: <==commonly_known== 81765 (pos)
                    (Bc_checked_p1)

                    ; #15018: <==negation-removal== 80446 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #15730: <==negation-removal== 38996 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #31258: <==negation-removal== 81765 (pos)
                    (not (not_checked_p1))

                    ; #35325: <==negation-removal== 33056 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #37890: <==negation-removal== 92176 (pos)
                    (not (Bb_not_checked_p1))

                    ; #41486: <==negation-removal== 98546 (pos)
                    (not (Pc_not_checked_p1))

                    ; #48065: <==uncertain_firing== 38996 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #55998: <==uncertain_firing== 80446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #59330: <==uncertain_firing== 33056 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #59691: <==negation-removal== 63272 (pos)
                    (not (Bc_not_checked_p1))

                    ; #66849: <==uncertain_firing== 54466 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #82273: <==negation-removal== 82638 (pos)
                    (not (Ba_not_checked_p1))

                    ; #82330: <==negation-removal== 23243 (pos)
                    (not (Pb_not_checked_p1))

                    ; #87176: <==negation-removal== 49832 (pos)
                    (not (Pa_not_checked_p1))

                    ; #91454: <==negation-removal== 54466 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16770: <==commonly_known== 47208 (pos)
                    (Bc_checked_p2)

                    ; #18574: <==commonly_known== 65941 (neg)
                    (Pc_checked_p2)

                    ; #47208: origin
                    (checked_p2)

                    ; #48870: <==commonly_known== 47208 (pos)
                    (Bb_checked_p2)

                    ; #59406: <==commonly_known== 65941 (neg)
                    (Pa_checked_p2)

                    ; #64265: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #69361: <==closure== 64265 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #73627: <==closure== 88836 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #76362: <==commonly_known== 47208 (pos)
                    (Ba_checked_p2)

                    ; #82438: <==commonly_known== 65941 (neg)
                    (Pb_checked_p2)

                    ; #88836: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #10993: <==negation-removal== 64265 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #13140: <==negation-removal== 82438 (pos)
                    (not (Bb_not_checked_p2))

                    ; #24368: <==uncertain_firing== 73627 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27394: <==negation-removal== 69361 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #28868: <==negation-removal== 16770 (pos)
                    (not (Pc_not_checked_p2))

                    ; #39898: <==negation-removal== 73627 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #54412: <==negation-removal== 59406 (pos)
                    (not (Ba_not_checked_p2))

                    ; #57208: <==negation-removal== 18574 (pos)
                    (not (Bc_not_checked_p2))

                    ; #57400: <==negation-removal== 76362 (pos)
                    (not (Pa_not_checked_p2))

                    ; #65941: <==negation-removal== 47208 (pos)
                    (not (not_checked_p2))

                    ; #66165: <==uncertain_firing== 69361 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #68865: <==negation-removal== 48870 (pos)
                    (not (Pb_not_checked_p2))

                    ; #70456: <==negation-removal== 88836 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #70598: <==uncertain_firing== 88836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71757: <==uncertain_firing== 64265 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11553: <==closure== 61021 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #15021: origin
                    (checked_p3)

                    ; #17883: <==commonly_known== 67043 (neg)
                    (Pb_checked_p3)

                    ; #25590: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #35356: <==commonly_known== 67043 (neg)
                    (Pa_checked_p3)

                    ; #38331: <==commonly_known== 15021 (pos)
                    (Bc_checked_p3)

                    ; #61021: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #68062: <==closure== 25590 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #73911: <==commonly_known== 15021 (pos)
                    (Bb_checked_p3)

                    ; #78594: <==commonly_known== 67043 (neg)
                    (Pc_checked_p3)

                    ; #96357: <==commonly_known== 15021 (pos)
                    (Ba_checked_p3)

                    ; #13079: <==negation-removal== 11553 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #19150: <==negation-removal== 17883 (pos)
                    (not (Bb_not_checked_p3))

                    ; #29926: <==negation-removal== 78594 (pos)
                    (not (Bc_not_checked_p3))

                    ; #36959: <==negation-removal== 25590 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #38818: <==negation-removal== 38331 (pos)
                    (not (Pc_not_checked_p3))

                    ; #38991: <==uncertain_firing== 68062 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #40611: <==negation-removal== 68062 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #44122: <==negation-removal== 96357 (pos)
                    (not (Pa_not_checked_p3))

                    ; #47350: <==uncertain_firing== 61021 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #58014: <==negation-removal== 73911 (pos)
                    (not (Pb_not_checked_p3))

                    ; #59457: <==negation-removal== 35356 (pos)
                    (not (Ba_not_checked_p3))

                    ; #67043: <==negation-removal== 15021 (pos)
                    (not (not_checked_p3))

                    ; #78713: <==uncertain_firing== 11553 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #85190: <==uncertain_firing== 25590 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #87721: <==negation-removal== 61021 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #46760: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #53331: <==closure== 46760 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #59013: <==commonly_known== 39624 (neg)
                    (Pb_checked_p4)

                    ; #59783: <==commonly_known== 80582 (pos)
                    (Bb_checked_p4)

                    ; #60191: <==commonly_known== 39624 (neg)
                    (Pc_checked_p4)

                    ; #68632: <==commonly_known== 80582 (pos)
                    (Ba_checked_p4)

                    ; #77983: <==closure== 87530 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #80582: origin
                    (checked_p4)

                    ; #80883: <==commonly_known== 80582 (pos)
                    (Bc_checked_p4)

                    ; #82166: <==commonly_known== 39624 (neg)
                    (Pa_checked_p4)

                    ; #87530: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #10764: <==negation-removal== 87530 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #16282: <==negation-removal== 53331 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #18827: <==negation-removal== 59013 (pos)
                    (not (Bb_not_checked_p4))

                    ; #31241: <==uncertain_firing== 77983 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #34813: <==negation-removal== 60191 (pos)
                    (not (Bc_not_checked_p4))

                    ; #38316: <==negation-removal== 59783 (pos)
                    (not (Pb_not_checked_p4))

                    ; #39624: <==negation-removal== 80582 (pos)
                    (not (not_checked_p4))

                    ; #40109: <==uncertain_firing== 87530 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #44778: <==negation-removal== 80883 (pos)
                    (not (Pc_not_checked_p4))

                    ; #47272: <==negation-removal== 68632 (pos)
                    (not (Pa_not_checked_p4))

                    ; #60275: <==uncertain_firing== 46760 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #64759: <==negation-removal== 46760 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #81901: <==negation-removal== 82166 (pos)
                    (not (Ba_not_checked_p4))

                    ; #86567: <==negation-removal== 77983 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #96114: <==uncertain_firing== 53331 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #27504: <==closure== 43751 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #37425: <==commonly_known== 82185 (neg)
                    (Pc_checked_p5)

                    ; #40263: <==commonly_known== 85928 (pos)
                    (Ba_checked_p5)

                    ; #42690: <==commonly_known== 85928 (pos)
                    (Bc_checked_p5)

                    ; #43751: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #44082: <==commonly_known== 82185 (neg)
                    (Pb_checked_p5)

                    ; #51516: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #66086: <==commonly_known== 85928 (pos)
                    (Bb_checked_p5)

                    ; #75747: <==commonly_known== 82185 (neg)
                    (Pa_checked_p5)

                    ; #78879: <==closure== 51516 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #85928: origin
                    (checked_p5)

                    ; #14364: <==uncertain_firing== 78879 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #16087: <==uncertain_firing== 51516 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #17241: <==negation-removal== 40263 (pos)
                    (not (Pa_not_checked_p5))

                    ; #37287: <==negation-removal== 43751 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #45914: <==negation-removal== 27504 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #47824: <==negation-removal== 66086 (pos)
                    (not (Pb_not_checked_p5))

                    ; #54630: <==negation-removal== 42690 (pos)
                    (not (Pc_not_checked_p5))

                    ; #65337: <==negation-removal== 78879 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65577: <==negation-removal== 44082 (pos)
                    (not (Bb_not_checked_p5))

                    ; #71437: <==uncertain_firing== 27504 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #71799: <==negation-removal== 37425 (pos)
                    (not (Bc_not_checked_p5))

                    ; #71834: <==negation-removal== 51516 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #78361: <==uncertain_firing== 43751 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #78456: <==negation-removal== 75747 (pos)
                    (not (Ba_not_checked_p5))

                    ; #82185: <==negation-removal== 85928 (pos)
                    (not (not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13454: <==commonly_known== 37896 (neg)
                    (Pc_checked_p6)

                    ; #25969: <==commonly_known== 88429 (pos)
                    (Ba_checked_p6)

                    ; #38591: <==commonly_known== 37896 (neg)
                    (Pb_checked_p6)

                    ; #52748: <==closure== 75511 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #55575: <==commonly_known== 88429 (pos)
                    (Bc_checked_p6)

                    ; #66560: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #72005: <==closure== 66560 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #73955: <==commonly_known== 37896 (neg)
                    (Pa_checked_p6)

                    ; #75511: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #83040: <==commonly_known== 88429 (pos)
                    (Bb_checked_p6)

                    ; #88429: origin
                    (checked_p6)

                    ; #11120: <==uncertain_firing== 66560 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #27600: <==negation-removal== 25969 (pos)
                    (not (Pa_not_checked_p6))

                    ; #29975: <==uncertain_firing== 75511 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #33198: <==negation-removal== 55575 (pos)
                    (not (Pc_not_checked_p6))

                    ; #33342: <==negation-removal== 38591 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37896: <==negation-removal== 88429 (pos)
                    (not (not_checked_p6))

                    ; #38920: <==negation-removal== 52748 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #44940: <==negation-removal== 73955 (pos)
                    (not (Ba_not_checked_p6))

                    ; #46303: <==uncertain_firing== 52748 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #54843: <==negation-removal== 13454 (pos)
                    (not (Bc_not_checked_p6))

                    ; #60878: <==negation-removal== 66560 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #68131: <==negation-removal== 83040 (pos)
                    (not (Pb_not_checked_p6))

                    ; #69718: <==negation-removal== 72005 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #70681: <==uncertain_firing== 72005 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #76784: <==negation-removal== 75511 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #13943: <==closure== 35218 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #28045: <==commonly_known== 48810 (neg)
                    (Pa_checked_p7)

                    ; #35218: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #41513: <==closure== 54034 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #47480: <==commonly_known== 81698 (pos)
                    (Bc_checked_p7)

                    ; #52904: <==commonly_known== 81698 (pos)
                    (Bb_checked_p7)

                    ; #54034: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #59796: <==commonly_known== 81698 (pos)
                    (Ba_checked_p7)

                    ; #77688: <==commonly_known== 48810 (neg)
                    (Pc_checked_p7)

                    ; #81698: origin
                    (checked_p7)

                    ; #91358: <==commonly_known== 48810 (neg)
                    (Pb_checked_p7)

                    ; #12996: <==negation-removal== 52904 (pos)
                    (not (Pb_not_checked_p7))

                    ; #17907: <==negation-removal== 59796 (pos)
                    (not (Pa_not_checked_p7))

                    ; #24840: <==negation-removal== 54034 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #25687: <==negation-removal== 47480 (pos)
                    (not (Pc_not_checked_p7))

                    ; #33219: <==uncertain_firing== 41513 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #46540: <==negation-removal== 77688 (pos)
                    (not (Bc_not_checked_p7))

                    ; #48810: <==negation-removal== 81698 (pos)
                    (not (not_checked_p7))

                    ; #51165: <==negation-removal== 13943 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #55604: <==negation-removal== 28045 (pos)
                    (not (Ba_not_checked_p7))

                    ; #57122: <==negation-removal== 41513 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #65894: <==negation-removal== 35218 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #73110: <==negation-removal== 91358 (pos)
                    (not (Bb_not_checked_p7))

                    ; #82514: <==uncertain_firing== 13943 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #83389: <==uncertain_firing== 54034 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #86484: <==uncertain_firing== 35218 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10836: <==commonly_known== 20697 (neg)
                    (Pa_checked_p8)

                    ; #18812: <==commonly_known== 26070 (pos)
                    (Bc_checked_p8)

                    ; #26070: origin
                    (checked_p8)

                    ; #27094: <==closure== 78337 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #44253: <==commonly_known== 26070 (pos)
                    (Bb_checked_p8)

                    ; #51212: <==closure== 60149 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #54011: <==commonly_known== 26070 (pos)
                    (Ba_checked_p8)

                    ; #60149: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #66912: <==commonly_known== 20697 (neg)
                    (Pb_checked_p8)

                    ; #78337: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #83413: <==commonly_known== 20697 (neg)
                    (Pc_checked_p8)

                    ; #14569: <==negation-removal== 27094 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #20697: <==negation-removal== 26070 (pos)
                    (not (not_checked_p8))

                    ; #25948: <==negation-removal== 78337 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #32453: <==uncertain_firing== 78337 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #36868: <==uncertain_firing== 60149 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #51228: <==uncertain_firing== 27094 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55890: <==negation-removal== 10836 (pos)
                    (not (Ba_not_checked_p8))

                    ; #60310: <==negation-removal== 60149 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #68566: <==negation-removal== 44253 (pos)
                    (not (Pb_not_checked_p8))

                    ; #69381: <==uncertain_firing== 51212 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #69481: <==negation-removal== 83413 (pos)
                    (not (Bc_not_checked_p8))

                    ; #69850: <==negation-removal== 18812 (pos)
                    (not (Pc_not_checked_p8))

                    ; #71507: <==negation-removal== 66912 (pos)
                    (not (Bb_not_checked_p8))

                    ; #82836: <==negation-removal== 54011 (pos)
                    (not (Pa_not_checked_p8))

                    ; #90534: <==negation-removal== 51212 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12035: <==commonly_known== 84123 (neg)
                    (Pb_checked_p9)

                    ; #18288: <==commonly_known== 52462 (pos)
                    (Bc_checked_p9)

                    ; #25921: <==commonly_known== 52462 (pos)
                    (Bb_checked_p9)

                    ; #35672: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #48590: <==commonly_known== 52462 (pos)
                    (Ba_checked_p9)

                    ; #52051: <==commonly_known== 84123 (neg)
                    (Pa_checked_p9)

                    ; #52462: origin
                    (checked_p9)

                    ; #56619: <==closure== 35672 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #66371: <==commonly_known== 84123 (neg)
                    (Pc_checked_p9)

                    ; #90869: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #92900: <==closure== 90869 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #17552: <==negation-removal== 35672 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #23034: <==negation-removal== 52051 (pos)
                    (not (Ba_not_checked_p9))

                    ; #29279: <==negation-removal== 12035 (pos)
                    (not (Bb_not_checked_p9))

                    ; #55332: <==negation-removal== 18288 (pos)
                    (not (Pc_not_checked_p9))

                    ; #58451: <==negation-removal== 90869 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #59239: <==negation-removal== 92900 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #70333: <==uncertain_firing== 92900 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #72647: <==negation-removal== 48590 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73533: <==uncertain_firing== 56619 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #74407: <==negation-removal== 56619 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #75720: <==uncertain_firing== 90869 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80222: <==negation-removal== 66371 (pos)
                    (not (Bc_not_checked_p9))

                    ; #81962: <==uncertain_firing== 35672 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #84123: <==negation-removal== 52462 (pos)
                    (not (not_checked_p9))

                    ; #84575: <==negation-removal== 25921 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #10135: <==commonly_known== 36727 (pos)
                    (Ba_checked_p10)

                    ; #17581: <==commonly_known== 36727 (pos)
                    (Bb_checked_p10)

                    ; #25385: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #26840: <==commonly_known== 27028 (neg)
                    (Pa_checked_p10)

                    ; #36727: origin
                    (checked_p10)

                    ; #51810: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #57545: <==commonly_known== 36727 (pos)
                    (Bc_checked_p10)

                    ; #59052: <==commonly_known== 27028 (neg)
                    (Pb_checked_p10)

                    ; #68731: <==closure== 25385 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #70341: <==closure== 51810 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #74657: <==commonly_known== 27028 (neg)
                    (Pc_checked_p10)

                    ; #10030: <==negation-removal== 70341 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #18291: <==negation-removal== 59052 (pos)
                    (not (Bb_not_checked_p10))

                    ; #23773: <==negation-removal== 51810 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #23894: <==negation-removal== 26840 (pos)
                    (not (Ba_not_checked_p10))

                    ; #24204: <==negation-removal== 17581 (pos)
                    (not (Pb_not_checked_p10))

                    ; #27028: <==negation-removal== 36727 (pos)
                    (not (not_checked_p10))

                    ; #35828: <==negation-removal== 74657 (pos)
                    (not (Bc_not_checked_p10))

                    ; #45129: <==uncertain_firing== 51810 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #64397: <==uncertain_firing== 68731 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #65651: <==uncertain_firing== 25385 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #71422: <==negation-removal== 25385 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #71669: <==uncertain_firing== 70341 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #73158: <==negation-removal== 68731 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #78112: <==negation-removal== 57545 (pos)
                    (not (Pc_not_checked_p10))

                    ; #79852: <==negation-removal== 10135 (pos)
                    (not (Pa_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11808: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #20403: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #33021: <==commonly_known== 13481 (neg)
                    (Pb_checked_p11)

                    ; #50392: <==closure== 11808 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #52695: <==commonly_known== 13481 (neg)
                    (Pa_checked_p11)

                    ; #62320: <==commonly_known== 73023 (pos)
                    (Ba_checked_p11)

                    ; #62810: <==closure== 20403 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #71086: <==commonly_known== 13481 (neg)
                    (Pc_checked_p11)

                    ; #73023: origin
                    (checked_p11)

                    ; #73069: <==commonly_known== 73023 (pos)
                    (Bc_checked_p11)

                    ; #82974: <==commonly_known== 73023 (pos)
                    (Bb_checked_p11)

                    ; #13481: <==negation-removal== 73023 (pos)
                    (not (not_checked_p11))

                    ; #19128: <==negation-removal== 11808 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #19847: <==negation-removal== 62320 (pos)
                    (not (Pa_not_checked_p11))

                    ; #21882: <==uncertain_firing== 62810 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #24018: <==negation-removal== 52695 (pos)
                    (not (Ba_not_checked_p11))

                    ; #27922: <==negation-removal== 82974 (pos)
                    (not (Pb_not_checked_p11))

                    ; #30560: <==negation-removal== 73069 (pos)
                    (not (Pc_not_checked_p11))

                    ; #38707: <==uncertain_firing== 50392 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #45634: <==negation-removal== 50392 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #60581: <==uncertain_firing== 11808 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #68775: <==negation-removal== 20403 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #69295: <==negation-removal== 71086 (pos)
                    (not (Bc_not_checked_p11))

                    ; #72265: <==negation-removal== 33021 (pos)
                    (not (Bb_not_checked_p11))

                    ; #86193: <==negation-removal== 62810 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #87702: <==uncertain_firing== 20403 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #15754: origin
                    (checked_p12)

                    ; #22637: <==commonly_known== 15754 (pos)
                    (Bc_checked_p12)

                    ; #32445: <==commonly_known== 15754 (pos)
                    (Bb_checked_p12)

                    ; #40948: <==commonly_known== 14810 (neg)
                    (Pb_checked_p12)

                    ; #42952: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #50166: <==commonly_known== 14810 (neg)
                    (Pc_checked_p12)

                    ; #54162: <==commonly_known== 14810 (neg)
                    (Pa_checked_p12)

                    ; #61141: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #68310: <==commonly_known== 15754 (pos)
                    (Ba_checked_p12)

                    ; #79232: <==closure== 61141 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #83947: <==closure== 42952 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #11295: <==negation-removal== 79232 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #14810: <==negation-removal== 15754 (pos)
                    (not (not_checked_p12))

                    ; #17761: <==negation-removal== 83947 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #23566: <==negation-removal== 54162 (pos)
                    (not (Ba_not_checked_p12))

                    ; #27443: <==uncertain_firing== 61141 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #29902: <==negation-removal== 42952 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #39913: <==negation-removal== 40948 (pos)
                    (not (Bb_not_checked_p12))

                    ; #56730: <==negation-removal== 68310 (pos)
                    (not (Pa_not_checked_p12))

                    ; #62487: <==negation-removal== 50166 (pos)
                    (not (Bc_not_checked_p12))

                    ; #64069: <==uncertain_firing== 79232 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #69299: <==negation-removal== 32445 (pos)
                    (not (Pb_not_checked_p12))

                    ; #70782: <==negation-removal== 61141 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #72148: <==uncertain_firing== 42952 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #78682: <==negation-removal== 22637 (pos)
                    (not (Pc_not_checked_p12))

                    ; #90891: <==uncertain_firing== 83947 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17623: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #23243: <==commonly_known== 81765 (pos)
                    (Bb_checked_p1)

                    ; #25337: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #48583: <==closure== 17623 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #49832: <==commonly_known== 81765 (pos)
                    (Ba_checked_p1)

                    ; #63272: <==commonly_known== 31258 (neg)
                    (Pc_checked_p1)

                    ; #77474: <==closure== 25337 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #81765: origin
                    (checked_p1)

                    ; #82638: <==commonly_known== 31258 (neg)
                    (Pa_checked_p1)

                    ; #92176: <==commonly_known== 31258 (neg)
                    (Pb_checked_p1)

                    ; #98546: <==commonly_known== 81765 (pos)
                    (Bc_checked_p1)

                    ; #23205: <==negation-removal== 48583 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #28976: <==uncertain_firing== 77474 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #31258: <==negation-removal== 81765 (pos)
                    (not (not_checked_p1))

                    ; #37890: <==negation-removal== 92176 (pos)
                    (not (Bb_not_checked_p1))

                    ; #38684: <==negation-removal== 25337 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #41486: <==negation-removal== 98546 (pos)
                    (not (Pc_not_checked_p1))

                    ; #45028: <==negation-removal== 77474 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #59388: <==negation-removal== 17623 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #59691: <==negation-removal== 63272 (pos)
                    (not (Bc_not_checked_p1))

                    ; #64433: <==uncertain_firing== 25337 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #75835: <==uncertain_firing== 48583 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #77169: <==uncertain_firing== 17623 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #82273: <==negation-removal== 82638 (pos)
                    (not (Ba_not_checked_p1))

                    ; #82330: <==negation-removal== 23243 (pos)
                    (not (Pb_not_checked_p1))

                    ; #87176: <==negation-removal== 49832 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16770: <==commonly_known== 47208 (pos)
                    (Bc_checked_p2)

                    ; #18574: <==commonly_known== 65941 (neg)
                    (Pc_checked_p2)

                    ; #25936: <==closure== 38834 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #38834: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #47208: origin
                    (checked_p2)

                    ; #48870: <==commonly_known== 47208 (pos)
                    (Bb_checked_p2)

                    ; #59406: <==commonly_known== 65941 (neg)
                    (Pa_checked_p2)

                    ; #71393: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #76362: <==commonly_known== 47208 (pos)
                    (Ba_checked_p2)

                    ; #82438: <==commonly_known== 65941 (neg)
                    (Pb_checked_p2)

                    ; #90400: <==closure== 71393 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #13140: <==negation-removal== 82438 (pos)
                    (not (Bb_not_checked_p2))

                    ; #15655: <==uncertain_firing== 25936 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #28868: <==negation-removal== 16770 (pos)
                    (not (Pc_not_checked_p2))

                    ; #29600: <==uncertain_firing== 38834 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #48145: <==negation-removal== 25936 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #50219: <==uncertain_firing== 90400 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #54194: <==uncertain_firing== 71393 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #54412: <==negation-removal== 59406 (pos)
                    (not (Ba_not_checked_p2))

                    ; #57208: <==negation-removal== 18574 (pos)
                    (not (Bc_not_checked_p2))

                    ; #57400: <==negation-removal== 76362 (pos)
                    (not (Pa_not_checked_p2))

                    ; #60297: <==negation-removal== 71393 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #65941: <==negation-removal== 47208 (pos)
                    (not (not_checked_p2))

                    ; #68408: <==negation-removal== 90400 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #68865: <==negation-removal== 48870 (pos)
                    (not (Pb_not_checked_p2))

                    ; #91838: <==negation-removal== 38834 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14613: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #15021: origin
                    (checked_p3)

                    ; #17883: <==commonly_known== 67043 (neg)
                    (Pb_checked_p3)

                    ; #35356: <==commonly_known== 67043 (neg)
                    (Pa_checked_p3)

                    ; #37641: <==closure== 55491 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #38331: <==commonly_known== 15021 (pos)
                    (Bc_checked_p3)

                    ; #44709: <==closure== 14613 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #55491: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #73911: <==commonly_known== 15021 (pos)
                    (Bb_checked_p3)

                    ; #78594: <==commonly_known== 67043 (neg)
                    (Pc_checked_p3)

                    ; #96357: <==commonly_known== 15021 (pos)
                    (Ba_checked_p3)

                    ; #19150: <==negation-removal== 17883 (pos)
                    (not (Bb_not_checked_p3))

                    ; #29926: <==negation-removal== 78594 (pos)
                    (not (Bc_not_checked_p3))

                    ; #36726: <==uncertain_firing== 37641 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #38818: <==negation-removal== 38331 (pos)
                    (not (Pc_not_checked_p3))

                    ; #43788: <==negation-removal== 44709 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #44122: <==negation-removal== 96357 (pos)
                    (not (Pa_not_checked_p3))

                    ; #51945: <==uncertain_firing== 44709 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #58014: <==negation-removal== 73911 (pos)
                    (not (Pb_not_checked_p3))

                    ; #59457: <==negation-removal== 35356 (pos)
                    (not (Ba_not_checked_p3))

                    ; #67043: <==negation-removal== 15021 (pos)
                    (not (not_checked_p3))

                    ; #72959: <==uncertain_firing== 14613 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #80130: <==negation-removal== 55491 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #81135: <==negation-removal== 14613 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #83885: <==negation-removal== 37641 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89433: <==uncertain_firing== 55491 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12720: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #29152: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #36326: <==closure== 29152 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #37895: <==closure== 12720 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #59013: <==commonly_known== 39624 (neg)
                    (Pb_checked_p4)

                    ; #59783: <==commonly_known== 80582 (pos)
                    (Bb_checked_p4)

                    ; #60191: <==commonly_known== 39624 (neg)
                    (Pc_checked_p4)

                    ; #68632: <==commonly_known== 80582 (pos)
                    (Ba_checked_p4)

                    ; #80582: origin
                    (checked_p4)

                    ; #80883: <==commonly_known== 80582 (pos)
                    (Bc_checked_p4)

                    ; #82166: <==commonly_known== 39624 (neg)
                    (Pa_checked_p4)

                    ; #12707: <==negation-removal== 29152 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #15702: <==negation-removal== 12720 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #16415: <==uncertain_firing== 36326 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #18827: <==negation-removal== 59013 (pos)
                    (not (Bb_not_checked_p4))

                    ; #34813: <==negation-removal== 60191 (pos)
                    (not (Bc_not_checked_p4))

                    ; #38316: <==negation-removal== 59783 (pos)
                    (not (Pb_not_checked_p4))

                    ; #39624: <==negation-removal== 80582 (pos)
                    (not (not_checked_p4))

                    ; #44778: <==negation-removal== 80883 (pos)
                    (not (Pc_not_checked_p4))

                    ; #47272: <==negation-removal== 68632 (pos)
                    (not (Pa_not_checked_p4))

                    ; #50815: <==uncertain_firing== 29152 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #70295: <==uncertain_firing== 12720 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #75832: <==negation-removal== 36326 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #81901: <==negation-removal== 82166 (pos)
                    (not (Ba_not_checked_p4))

                    ; #84173: <==negation-removal== 37895 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #90119: <==uncertain_firing== 37895 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #28051: <==closure== 83436 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #37425: <==commonly_known== 82185 (neg)
                    (Pc_checked_p5)

                    ; #40263: <==commonly_known== 85928 (pos)
                    (Ba_checked_p5)

                    ; #42690: <==commonly_known== 85928 (pos)
                    (Bc_checked_p5)

                    ; #44082: <==commonly_known== 82185 (neg)
                    (Pb_checked_p5)

                    ; #66086: <==commonly_known== 85928 (pos)
                    (Bb_checked_p5)

                    ; #69554: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #75747: <==commonly_known== 82185 (neg)
                    (Pa_checked_p5)

                    ; #83436: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #85928: origin
                    (checked_p5)

                    ; #86351: <==closure== 69554 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #17241: <==negation-removal== 40263 (pos)
                    (not (Pa_not_checked_p5))

                    ; #18094: <==uncertain_firing== 28051 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #22481: <==uncertain_firing== 86351 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #29615: <==uncertain_firing== 69554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46544: <==negation-removal== 83436 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #47824: <==negation-removal== 66086 (pos)
                    (not (Pb_not_checked_p5))

                    ; #54630: <==negation-removal== 42690 (pos)
                    (not (Pc_not_checked_p5))

                    ; #63230: <==negation-removal== 69554 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #63909: <==uncertain_firing== 83436 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #65577: <==negation-removal== 44082 (pos)
                    (not (Bb_not_checked_p5))

                    ; #71799: <==negation-removal== 37425 (pos)
                    (not (Bc_not_checked_p5))

                    ; #78456: <==negation-removal== 75747 (pos)
                    (not (Ba_not_checked_p5))

                    ; #82185: <==negation-removal== 85928 (pos)
                    (not (not_checked_p5))

                    ; #89181: <==negation-removal== 28051 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #89546: <==negation-removal== 86351 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13454: <==commonly_known== 37896 (neg)
                    (Pc_checked_p6)

                    ; #25969: <==commonly_known== 88429 (pos)
                    (Ba_checked_p6)

                    ; #38591: <==commonly_known== 37896 (neg)
                    (Pb_checked_p6)

                    ; #39816: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #44763: <==closure== 88381 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #49668: <==closure== 39816 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #55575: <==commonly_known== 88429 (pos)
                    (Bc_checked_p6)

                    ; #73955: <==commonly_known== 37896 (neg)
                    (Pa_checked_p6)

                    ; #83040: <==commonly_known== 88429 (pos)
                    (Bb_checked_p6)

                    ; #88381: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #88429: origin
                    (checked_p6)

                    ; #13722: <==uncertain_firing== 44763 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #19234: <==negation-removal== 39816 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25099: <==negation-removal== 88381 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #27600: <==negation-removal== 25969 (pos)
                    (not (Pa_not_checked_p6))

                    ; #33198: <==negation-removal== 55575 (pos)
                    (not (Pc_not_checked_p6))

                    ; #33342: <==negation-removal== 38591 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37896: <==negation-removal== 88429 (pos)
                    (not (not_checked_p6))

                    ; #44940: <==negation-removal== 73955 (pos)
                    (not (Ba_not_checked_p6))

                    ; #45562: <==uncertain_firing== 49668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #52468: <==negation-removal== 44763 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #52823: <==uncertain_firing== 88381 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #54843: <==negation-removal== 13454 (pos)
                    (not (Bc_not_checked_p6))

                    ; #60547: <==negation-removal== 49668 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63763: <==uncertain_firing== 39816 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #68131: <==negation-removal== 83040 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #21492: <==closure== 59346 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #21704: <==closure== 87489 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #28045: <==commonly_known== 48810 (neg)
                    (Pa_checked_p7)

                    ; #47480: <==commonly_known== 81698 (pos)
                    (Bc_checked_p7)

                    ; #52904: <==commonly_known== 81698 (pos)
                    (Bb_checked_p7)

                    ; #59346: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #59796: <==commonly_known== 81698 (pos)
                    (Ba_checked_p7)

                    ; #77688: <==commonly_known== 48810 (neg)
                    (Pc_checked_p7)

                    ; #81698: origin
                    (checked_p7)

                    ; #87489: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #91358: <==commonly_known== 48810 (neg)
                    (Pb_checked_p7)

                    ; #12996: <==negation-removal== 52904 (pos)
                    (not (Pb_not_checked_p7))

                    ; #17907: <==negation-removal== 59796 (pos)
                    (not (Pa_not_checked_p7))

                    ; #18141: <==uncertain_firing== 87489 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #23711: <==uncertain_firing== 21704 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #25687: <==negation-removal== 47480 (pos)
                    (not (Pc_not_checked_p7))

                    ; #35218: <==negation-removal== 21492 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #46540: <==negation-removal== 77688 (pos)
                    (not (Bc_not_checked_p7))

                    ; #48810: <==negation-removal== 81698 (pos)
                    (not (not_checked_p7))

                    ; #53523: <==negation-removal== 87489 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #54495: <==uncertain_firing== 21492 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #55604: <==negation-removal== 28045 (pos)
                    (not (Ba_not_checked_p7))

                    ; #65148: <==negation-removal== 59346 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #73110: <==negation-removal== 91358 (pos)
                    (not (Bb_not_checked_p7))

                    ; #78038: <==negation-removal== 21704 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #79537: <==uncertain_firing== 59346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10836: <==commonly_known== 20697 (neg)
                    (Pa_checked_p8)

                    ; #18812: <==commonly_known== 26070 (pos)
                    (Bc_checked_p8)

                    ; #26070: origin
                    (checked_p8)

                    ; #34232: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #44253: <==commonly_known== 26070 (pos)
                    (Bb_checked_p8)

                    ; #54011: <==commonly_known== 26070 (pos)
                    (Ba_checked_p8)

                    ; #54764: <==closure== 34232 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #66561: <==closure== 83438 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #66912: <==commonly_known== 20697 (neg)
                    (Pb_checked_p8)

                    ; #83413: <==commonly_known== 20697 (neg)
                    (Pc_checked_p8)

                    ; #83438: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #18027: <==negation-removal== 83438 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #20697: <==negation-removal== 26070 (pos)
                    (not (not_checked_p8))

                    ; #21875: <==uncertain_firing== 54764 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #52297: <==uncertain_firing== 83438 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #55890: <==negation-removal== 10836 (pos)
                    (not (Ba_not_checked_p8))

                    ; #59884: <==uncertain_firing== 34232 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #68566: <==negation-removal== 44253 (pos)
                    (not (Pb_not_checked_p8))

                    ; #69481: <==negation-removal== 83413 (pos)
                    (not (Bc_not_checked_p8))

                    ; #69850: <==negation-removal== 18812 (pos)
                    (not (Pc_not_checked_p8))

                    ; #71507: <==negation-removal== 66912 (pos)
                    (not (Bb_not_checked_p8))

                    ; #74353: <==negation-removal== 66561 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #82567: <==negation-removal== 34232 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #82836: <==negation-removal== 54011 (pos)
                    (not (Pa_not_checked_p8))

                    ; #86973: <==negation-removal== 54764 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #91347: <==uncertain_firing== 66561 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12035: <==commonly_known== 84123 (neg)
                    (Pb_checked_p9)

                    ; #18288: <==commonly_known== 52462 (pos)
                    (Bc_checked_p9)

                    ; #25921: <==commonly_known== 52462 (pos)
                    (Bb_checked_p9)

                    ; #48590: <==commonly_known== 52462 (pos)
                    (Ba_checked_p9)

                    ; #52051: <==commonly_known== 84123 (neg)
                    (Pa_checked_p9)

                    ; #52462: origin
                    (checked_p9)

                    ; #60043: <==closure== 92209 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #66371: <==commonly_known== 84123 (neg)
                    (Pc_checked_p9)

                    ; #74045: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #91179: <==closure== 74045 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #92209: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #13571: <==uncertain_firing== 91179 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #13664: <==negation-removal== 92209 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #23034: <==negation-removal== 52051 (pos)
                    (not (Ba_not_checked_p9))

                    ; #27010: <==negation-removal== 74045 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #29279: <==negation-removal== 12035 (pos)
                    (not (Bb_not_checked_p9))

                    ; #49735: <==uncertain_firing== 60043 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #51664: <==negation-removal== 60043 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #55332: <==negation-removal== 18288 (pos)
                    (not (Pc_not_checked_p9))

                    ; #58081: <==uncertain_firing== 92209 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #72216: <==negation-removal== 91179 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #72647: <==negation-removal== 48590 (pos)
                    (not (Pa_not_checked_p9))

                    ; #80222: <==negation-removal== 66371 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82890: <==uncertain_firing== 74045 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #84123: <==negation-removal== 52462 (pos)
                    (not (not_checked_p9))

                    ; #84575: <==negation-removal== 25921 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #10135: <==commonly_known== 36727 (pos)
                    (Ba_checked_p10)

                    ; #15480: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #17581: <==commonly_known== 36727 (pos)
                    (Bb_checked_p10)

                    ; #25287: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #26840: <==commonly_known== 27028 (neg)
                    (Pa_checked_p10)

                    ; #36727: origin
                    (checked_p10)

                    ; #44180: <==closure== 25287 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #57545: <==commonly_known== 36727 (pos)
                    (Bc_checked_p10)

                    ; #59052: <==commonly_known== 27028 (neg)
                    (Pb_checked_p10)

                    ; #74657: <==commonly_known== 27028 (neg)
                    (Pc_checked_p10)

                    ; #79702: <==closure== 15480 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #18291: <==negation-removal== 59052 (pos)
                    (not (Bb_not_checked_p10))

                    ; #22228: <==negation-removal== 79702 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #23894: <==negation-removal== 26840 (pos)
                    (not (Ba_not_checked_p10))

                    ; #24204: <==negation-removal== 17581 (pos)
                    (not (Pb_not_checked_p10))

                    ; #27028: <==negation-removal== 36727 (pos)
                    (not (not_checked_p10))

                    ; #35255: <==uncertain_firing== 44180 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #35828: <==negation-removal== 74657 (pos)
                    (not (Bc_not_checked_p10))

                    ; #37688: <==negation-removal== 15480 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #39238: <==uncertain_firing== 25287 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #53235: <==negation-removal== 44180 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #55500: <==uncertain_firing== 15480 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #62258: <==negation-removal== 25287 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #74651: <==uncertain_firing== 79702 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #78112: <==negation-removal== 57545 (pos)
                    (not (Pc_not_checked_p10))

                    ; #79852: <==negation-removal== 10135 (pos)
                    (not (Pa_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #17275: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #33021: <==commonly_known== 13481 (neg)
                    (Pb_checked_p11)

                    ; #52695: <==commonly_known== 13481 (neg)
                    (Pa_checked_p11)

                    ; #62320: <==commonly_known== 73023 (pos)
                    (Ba_checked_p11)

                    ; #71086: <==commonly_known== 13481 (neg)
                    (Pc_checked_p11)

                    ; #73023: origin
                    (checked_p11)

                    ; #73069: <==commonly_known== 73023 (pos)
                    (Bc_checked_p11)

                    ; #77254: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #82974: <==commonly_known== 73023 (pos)
                    (Bb_checked_p11)

                    ; #89600: <==closure== 77254 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #99904: <==closure== 17275 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #13481: <==negation-removal== 73023 (pos)
                    (not (not_checked_p11))

                    ; #18359: <==negation-removal== 99904 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #19847: <==negation-removal== 62320 (pos)
                    (not (Pa_not_checked_p11))

                    ; #23752: <==negation-removal== 17275 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #24018: <==negation-removal== 52695 (pos)
                    (not (Ba_not_checked_p11))

                    ; #25676: <==uncertain_firing== 99904 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #27922: <==negation-removal== 82974 (pos)
                    (not (Pb_not_checked_p11))

                    ; #30560: <==negation-removal== 73069 (pos)
                    (not (Pc_not_checked_p11))

                    ; #40895: <==negation-removal== 77254 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #47114: <==negation-removal== 89600 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #68973: <==uncertain_firing== 17275 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #69295: <==negation-removal== 71086 (pos)
                    (not (Bc_not_checked_p11))

                    ; #72265: <==negation-removal== 33021 (pos)
                    (not (Bb_not_checked_p11))

                    ; #73965: <==uncertain_firing== 89600 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #86477: <==uncertain_firing== 77254 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #15754: origin
                    (checked_p12)

                    ; #22637: <==commonly_known== 15754 (pos)
                    (Bc_checked_p12)

                    ; #25674: <==closure== 52046 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #28271: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #32445: <==commonly_known== 15754 (pos)
                    (Bb_checked_p12)

                    ; #40948: <==commonly_known== 14810 (neg)
                    (Pb_checked_p12)

                    ; #50166: <==commonly_known== 14810 (neg)
                    (Pc_checked_p12)

                    ; #52046: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #54162: <==commonly_known== 14810 (neg)
                    (Pa_checked_p12)

                    ; #68310: <==commonly_known== 15754 (pos)
                    (Ba_checked_p12)

                    ; #91442: <==closure== 28271 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #14810: <==negation-removal== 15754 (pos)
                    (not (not_checked_p12))

                    ; #23566: <==negation-removal== 54162 (pos)
                    (not (Ba_not_checked_p12))

                    ; #31887: <==uncertain_firing== 91442 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #39913: <==negation-removal== 40948 (pos)
                    (not (Bb_not_checked_p12))

                    ; #44722: <==uncertain_firing== 28271 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #56730: <==negation-removal== 68310 (pos)
                    (not (Pa_not_checked_p12))

                    ; #59416: <==negation-removal== 52046 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #60568: <==negation-removal== 91442 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #62487: <==negation-removal== 50166 (pos)
                    (not (Bc_not_checked_p12))

                    ; #65949: <==negation-removal== 25674 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #66700: <==uncertain_firing== 25674 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #68037: <==negation-removal== 28271 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #69299: <==negation-removal== 32445 (pos)
                    (not (Pb_not_checked_p12))

                    ; #78682: <==negation-removal== 22637 (pos)
                    (not (Pc_not_checked_p12))

                    ; #87780: <==uncertain_firing== 52046 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #18224: <==closure== 47157 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #23243: <==commonly_known== 81765 (pos)
                    (Bb_checked_p1)

                    ; #41643: <==closure== 86152 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #47157: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #49832: <==commonly_known== 81765 (pos)
                    (Ba_checked_p1)

                    ; #63272: <==commonly_known== 31258 (neg)
                    (Pc_checked_p1)

                    ; #81765: origin
                    (checked_p1)

                    ; #82638: <==commonly_known== 31258 (neg)
                    (Pa_checked_p1)

                    ; #86152: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #92176: <==commonly_known== 31258 (neg)
                    (Pb_checked_p1)

                    ; #98546: <==commonly_known== 81765 (pos)
                    (Bc_checked_p1)

                    ; #12898: <==negation-removal== 47157 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #21107: <==uncertain_firing== 41643 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #31258: <==negation-removal== 81765 (pos)
                    (not (not_checked_p1))

                    ; #34187: <==negation-removal== 18224 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #37890: <==negation-removal== 92176 (pos)
                    (not (Bb_not_checked_p1))

                    ; #38885: <==uncertain_firing== 18224 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41486: <==negation-removal== 98546 (pos)
                    (not (Pc_not_checked_p1))

                    ; #46208: <==uncertain_firing== 86152 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #59691: <==negation-removal== 63272 (pos)
                    (not (Bc_not_checked_p1))

                    ; #61283: <==uncertain_firing== 47157 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #71249: <==negation-removal== 86152 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73540: <==negation-removal== 41643 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #82273: <==negation-removal== 82638 (pos)
                    (not (Ba_not_checked_p1))

                    ; #82330: <==negation-removal== 23243 (pos)
                    (not (Pb_not_checked_p1))

                    ; #87176: <==negation-removal== 49832 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16770: <==commonly_known== 47208 (pos)
                    (Bc_checked_p2)

                    ; #18574: <==commonly_known== 65941 (neg)
                    (Pc_checked_p2)

                    ; #44941: <==closure== 78717 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #47208: origin
                    (checked_p2)

                    ; #48870: <==commonly_known== 47208 (pos)
                    (Bb_checked_p2)

                    ; #59406: <==commonly_known== 65941 (neg)
                    (Pa_checked_p2)

                    ; #76362: <==commonly_known== 47208 (pos)
                    (Ba_checked_p2)

                    ; #78717: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #79375: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #82438: <==commonly_known== 65941 (neg)
                    (Pb_checked_p2)

                    ; #90260: <==closure== 79375 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #12900: <==uncertain_firing== 78717 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #13140: <==negation-removal== 82438 (pos)
                    (not (Bb_not_checked_p2))

                    ; #16011: <==negation-removal== 90260 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #22476: <==uncertain_firing== 90260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #28868: <==negation-removal== 16770 (pos)
                    (not (Pc_not_checked_p2))

                    ; #51452: <==uncertain_firing== 79375 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #53250: <==negation-removal== 78717 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #54412: <==negation-removal== 59406 (pos)
                    (not (Ba_not_checked_p2))

                    ; #57208: <==negation-removal== 18574 (pos)
                    (not (Bc_not_checked_p2))

                    ; #57400: <==negation-removal== 76362 (pos)
                    (not (Pa_not_checked_p2))

                    ; #65941: <==negation-removal== 47208 (pos)
                    (not (not_checked_p2))

                    ; #68865: <==negation-removal== 48870 (pos)
                    (not (Pb_not_checked_p2))

                    ; #72001: <==uncertain_firing== 44941 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #76673: <==negation-removal== 44941 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #80614: <==negation-removal== 79375 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15021: origin
                    (checked_p3)

                    ; #17883: <==commonly_known== 67043 (neg)
                    (Pb_checked_p3)

                    ; #35356: <==commonly_known== 67043 (neg)
                    (Pa_checked_p3)

                    ; #38331: <==commonly_known== 15021 (pos)
                    (Bc_checked_p3)

                    ; #58659: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #66122: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #73160: <==closure== 58659 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #73911: <==commonly_known== 15021 (pos)
                    (Bb_checked_p3)

                    ; #78594: <==commonly_known== 67043 (neg)
                    (Pc_checked_p3)

                    ; #79097: <==closure== 66122 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #96357: <==commonly_known== 15021 (pos)
                    (Ba_checked_p3)

                    ; #19150: <==negation-removal== 17883 (pos)
                    (not (Bb_not_checked_p3))

                    ; #29926: <==negation-removal== 78594 (pos)
                    (not (Bc_not_checked_p3))

                    ; #30385: <==negation-removal== 66122 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #30842: <==negation-removal== 73160 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #37373: <==negation-removal== 79097 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #38044: <==uncertain_firing== 66122 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #38818: <==negation-removal== 38331 (pos)
                    (not (Pc_not_checked_p3))

                    ; #42037: <==uncertain_firing== 73160 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #42188: <==uncertain_firing== 58659 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #44122: <==negation-removal== 96357 (pos)
                    (not (Pa_not_checked_p3))

                    ; #49244: <==uncertain_firing== 79097 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #49375: <==negation-removal== 58659 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #58014: <==negation-removal== 73911 (pos)
                    (not (Pb_not_checked_p3))

                    ; #59457: <==negation-removal== 35356 (pos)
                    (not (Ba_not_checked_p3))

                    ; #67043: <==negation-removal== 15021 (pos)
                    (not (not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11745: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #24136: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #43188: <==closure== 11745 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #59013: <==commonly_known== 39624 (neg)
                    (Pb_checked_p4)

                    ; #59783: <==commonly_known== 80582 (pos)
                    (Bb_checked_p4)

                    ; #60191: <==commonly_known== 39624 (neg)
                    (Pc_checked_p4)

                    ; #68632: <==commonly_known== 80582 (pos)
                    (Ba_checked_p4)

                    ; #80582: origin
                    (checked_p4)

                    ; #80883: <==commonly_known== 80582 (pos)
                    (Bc_checked_p4)

                    ; #82166: <==commonly_known== 39624 (neg)
                    (Pa_checked_p4)

                    ; #89834: <==closure== 24136 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #14246: <==negation-removal== 24136 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #18827: <==negation-removal== 59013 (pos)
                    (not (Bb_not_checked_p4))

                    ; #23573: <==uncertain_firing== 11745 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #24459: <==negation-removal== 11745 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #34813: <==negation-removal== 60191 (pos)
                    (not (Bc_not_checked_p4))

                    ; #38316: <==negation-removal== 59783 (pos)
                    (not (Pb_not_checked_p4))

                    ; #38481: <==negation-removal== 43188 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #39624: <==negation-removal== 80582 (pos)
                    (not (not_checked_p4))

                    ; #44778: <==negation-removal== 80883 (pos)
                    (not (Pc_not_checked_p4))

                    ; #47272: <==negation-removal== 68632 (pos)
                    (not (Pa_not_checked_p4))

                    ; #50461: <==uncertain_firing== 24136 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #52832: <==uncertain_firing== 89834 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #55223: <==negation-removal== 89834 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #80404: <==uncertain_firing== 43188 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #81901: <==negation-removal== 82166 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11966: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #17168: <==closure== 52624 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #32767: <==closure== 11966 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #37425: <==commonly_known== 82185 (neg)
                    (Pc_checked_p5)

                    ; #40263: <==commonly_known== 85928 (pos)
                    (Ba_checked_p5)

                    ; #42690: <==commonly_known== 85928 (pos)
                    (Bc_checked_p5)

                    ; #44082: <==commonly_known== 82185 (neg)
                    (Pb_checked_p5)

                    ; #52624: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #66086: <==commonly_known== 85928 (pos)
                    (Bb_checked_p5)

                    ; #75747: <==commonly_known== 82185 (neg)
                    (Pa_checked_p5)

                    ; #85928: origin
                    (checked_p5)

                    ; #11210: <==negation-removal== 17168 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #12930: <==uncertain_firing== 17168 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #17241: <==negation-removal== 40263 (pos)
                    (not (Pa_not_checked_p5))

                    ; #33456: <==uncertain_firing== 52624 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #47824: <==negation-removal== 66086 (pos)
                    (not (Pb_not_checked_p5))

                    ; #54630: <==negation-removal== 42690 (pos)
                    (not (Pc_not_checked_p5))

                    ; #56331: <==uncertain_firing== 32767 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #64503: <==negation-removal== 52624 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #65577: <==negation-removal== 44082 (pos)
                    (not (Bb_not_checked_p5))

                    ; #69193: <==uncertain_firing== 11966 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #71799: <==negation-removal== 37425 (pos)
                    (not (Bc_not_checked_p5))

                    ; #77517: <==negation-removal== 32767 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #78456: <==negation-removal== 75747 (pos)
                    (not (Ba_not_checked_p5))

                    ; #78884: <==negation-removal== 11966 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #82185: <==negation-removal== 85928 (pos)
                    (not (not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13454: <==commonly_known== 37896 (neg)
                    (Pc_checked_p6)

                    ; #20315: <==closure== 86168 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #25969: <==commonly_known== 88429 (pos)
                    (Ba_checked_p6)

                    ; #38591: <==commonly_known== 37896 (neg)
                    (Pb_checked_p6)

                    ; #40501: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #45554: <==closure== 40501 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #55575: <==commonly_known== 88429 (pos)
                    (Bc_checked_p6)

                    ; #73955: <==commonly_known== 37896 (neg)
                    (Pa_checked_p6)

                    ; #83040: <==commonly_known== 88429 (pos)
                    (Bb_checked_p6)

                    ; #86168: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #88429: origin
                    (checked_p6)

                    ; #15743: <==uncertain_firing== 86168 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #17499: <==negation-removal== 86168 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #21868: <==negation-removal== 45554 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #27600: <==negation-removal== 25969 (pos)
                    (not (Pa_not_checked_p6))

                    ; #33198: <==negation-removal== 55575 (pos)
                    (not (Pc_not_checked_p6))

                    ; #33342: <==negation-removal== 38591 (pos)
                    (not (Bb_not_checked_p6))

                    ; #34463: <==negation-removal== 40501 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #37896: <==negation-removal== 88429 (pos)
                    (not (not_checked_p6))

                    ; #44940: <==negation-removal== 73955 (pos)
                    (not (Ba_not_checked_p6))

                    ; #52872: <==negation-removal== 20315 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #54843: <==negation-removal== 13454 (pos)
                    (not (Bc_not_checked_p6))

                    ; #59794: <==uncertain_firing== 40501 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #66098: <==uncertain_firing== 20315 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #68131: <==negation-removal== 83040 (pos)
                    (not (Pb_not_checked_p6))

                    ; #76278: <==uncertain_firing== 45554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #28045: <==commonly_known== 48810 (neg)
                    (Pa_checked_p7)

                    ; #29336: <==closure== 55091 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #31371: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #42631: <==closure== 31371 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #47480: <==commonly_known== 81698 (pos)
                    (Bc_checked_p7)

                    ; #52904: <==commonly_known== 81698 (pos)
                    (Bb_checked_p7)

                    ; #55091: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #59796: <==commonly_known== 81698 (pos)
                    (Ba_checked_p7)

                    ; #77688: <==commonly_known== 48810 (neg)
                    (Pc_checked_p7)

                    ; #81698: origin
                    (checked_p7)

                    ; #91358: <==commonly_known== 48810 (neg)
                    (Pb_checked_p7)

                    ; #12996: <==negation-removal== 52904 (pos)
                    (not (Pb_not_checked_p7))

                    ; #17907: <==negation-removal== 59796 (pos)
                    (not (Pa_not_checked_p7))

                    ; #25687: <==negation-removal== 47480 (pos)
                    (not (Pc_not_checked_p7))

                    ; #25870: <==negation-removal== 42631 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #36835: <==negation-removal== 55091 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #46540: <==negation-removal== 77688 (pos)
                    (not (Bc_not_checked_p7))

                    ; #48810: <==negation-removal== 81698 (pos)
                    (not (not_checked_p7))

                    ; #55604: <==negation-removal== 28045 (pos)
                    (not (Ba_not_checked_p7))

                    ; #58847: <==uncertain_firing== 42631 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63111: <==negation-removal== 31371 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #72735: <==uncertain_firing== 55091 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #73110: <==negation-removal== 91358 (pos)
                    (not (Bb_not_checked_p7))

                    ; #83555: <==negation-removal== 29336 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #86783: <==uncertain_firing== 29336 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #90442: <==uncertain_firing== 31371 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10836: <==commonly_known== 20697 (neg)
                    (Pa_checked_p8)

                    ; #16128: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #18812: <==commonly_known== 26070 (pos)
                    (Bc_checked_p8)

                    ; #26070: origin
                    (checked_p8)

                    ; #44253: <==commonly_known== 26070 (pos)
                    (Bb_checked_p8)

                    ; #54011: <==commonly_known== 26070 (pos)
                    (Ba_checked_p8)

                    ; #55021: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #66912: <==commonly_known== 20697 (neg)
                    (Pb_checked_p8)

                    ; #83413: <==commonly_known== 20697 (neg)
                    (Pc_checked_p8)

                    ; #85119: <==closure== 16128 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #88132: <==closure== 55021 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #16025: <==uncertain_firing== 55021 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #18806: <==negation-removal== 85119 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20697: <==negation-removal== 26070 (pos)
                    (not (not_checked_p8))

                    ; #21063: <==negation-removal== 16128 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #37097: <==uncertain_firing== 85119 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #40818: <==uncertain_firing== 88132 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #46049: <==negation-removal== 55021 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #48543: <==negation-removal== 88132 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #55890: <==negation-removal== 10836 (pos)
                    (not (Ba_not_checked_p8))

                    ; #59501: <==uncertain_firing== 16128 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #68566: <==negation-removal== 44253 (pos)
                    (not (Pb_not_checked_p8))

                    ; #69481: <==negation-removal== 83413 (pos)
                    (not (Bc_not_checked_p8))

                    ; #69850: <==negation-removal== 18812 (pos)
                    (not (Pc_not_checked_p8))

                    ; #71507: <==negation-removal== 66912 (pos)
                    (not (Bb_not_checked_p8))

                    ; #82836: <==negation-removal== 54011 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12035: <==commonly_known== 84123 (neg)
                    (Pb_checked_p9)

                    ; #18288: <==commonly_known== 52462 (pos)
                    (Bc_checked_p9)

                    ; #24859: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #25138: <==closure== 24859 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #25921: <==commonly_known== 52462 (pos)
                    (Bb_checked_p9)

                    ; #37169: <==closure== 83396 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #48590: <==commonly_known== 52462 (pos)
                    (Ba_checked_p9)

                    ; #52051: <==commonly_known== 84123 (neg)
                    (Pa_checked_p9)

                    ; #52462: origin
                    (checked_p9)

                    ; #66371: <==commonly_known== 84123 (neg)
                    (Pc_checked_p9)

                    ; #83396: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #23034: <==negation-removal== 52051 (pos)
                    (not (Ba_not_checked_p9))

                    ; #26798: <==uncertain_firing== 83396 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29279: <==negation-removal== 12035 (pos)
                    (not (Bb_not_checked_p9))

                    ; #36214: <==uncertain_firing== 37169 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #36592: <==uncertain_firing== 24859 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #38244: <==negation-removal== 83396 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #39953: <==negation-removal== 37169 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #55332: <==negation-removal== 18288 (pos)
                    (not (Pc_not_checked_p9))

                    ; #57281: <==negation-removal== 25138 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #72647: <==negation-removal== 48590 (pos)
                    (not (Pa_not_checked_p9))

                    ; #80222: <==negation-removal== 66371 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82038: <==negation-removal== 24859 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #84123: <==negation-removal== 52462 (pos)
                    (not (not_checked_p9))

                    ; #84575: <==negation-removal== 25921 (pos)
                    (not (Pb_not_checked_p9))

                    ; #92143: <==uncertain_firing== 25138 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))))

)