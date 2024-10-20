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
                    ; #23767: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #48616: <==closure== 72634 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #49186: <==closure== 84774 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #64497: <==closure== 23767 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #72634: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #84774: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #19625: <==uncertain_firing== 49186 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #20667: <==negation-removal== 49186 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #37096: <==uncertain_firing== 72634 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #39516: <==uncertain_firing== 23767 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #52950: <==uncertain_firing== 64497 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #53453: <==negation-removal== 23767 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #58671: <==negation-removal== 48616 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #58922: <==negation-removal== 64497 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #64363: <==uncertain_firing== 84774 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #72433: <==uncertain_firing== 48616 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #81649: <==negation-removal== 72634 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #81841: <==negation-removal== 84774 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #23767: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #48616: <==closure== 72634 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #49186: <==closure== 84774 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #64497: <==closure== 23767 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #72634: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #84774: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #19625: <==uncertain_firing== 49186 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #20667: <==negation-removal== 49186 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #37096: <==uncertain_firing== 72634 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #39516: <==uncertain_firing== 23767 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #52950: <==uncertain_firing== 64497 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #53453: <==negation-removal== 23767 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #58671: <==negation-removal== 48616 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #58922: <==negation-removal== 64497 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #64363: <==uncertain_firing== 84774 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #72433: <==uncertain_firing== 48616 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #81649: <==negation-removal== 72634 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #81841: <==negation-removal== 84774 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #23767: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #48616: <==closure== 72634 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #49186: <==closure== 84774 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #64497: <==closure== 23767 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #72634: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #84774: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #19625: <==uncertain_firing== 49186 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #20667: <==negation-removal== 49186 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #37096: <==uncertain_firing== 72634 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #39516: <==uncertain_firing== 23767 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #52950: <==uncertain_firing== 64497 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #53453: <==negation-removal== 23767 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #58671: <==negation-removal== 48616 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #58922: <==negation-removal== 64497 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #64363: <==uncertain_firing== 84774 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #72433: <==uncertain_firing== 48616 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #81649: <==negation-removal== 72634 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #81841: <==negation-removal== 84774 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #10909: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #18977: <==closure== 20507 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #20507: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #58525: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #79419: <==closure== 10909 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #90590: <==closure== 58525 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #18317: <==uncertain_firing== 90590 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #30020: <==negation-removal== 20507 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #32509: <==negation-removal== 18977 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #35728: <==negation-removal== 10909 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #42760: <==uncertain_firing== 10909 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #52985: <==negation-removal== 79419 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #61116: <==uncertain_firing== 79419 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #67492: <==negation-removal== 90590 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #67747: <==uncertain_firing== 58525 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #73849: <==negation-removal== 58525 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #75189: <==uncertain_firing== 18977 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #84425: <==uncertain_firing== 20507 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #10909: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #18977: <==closure== 20507 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #20507: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #58525: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #79419: <==closure== 10909 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #90590: <==closure== 58525 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #18317: <==uncertain_firing== 90590 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #30020: <==negation-removal== 20507 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #32509: <==negation-removal== 18977 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #35728: <==negation-removal== 10909 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #42760: <==uncertain_firing== 10909 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #52985: <==negation-removal== 79419 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #61116: <==uncertain_firing== 79419 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #67492: <==negation-removal== 90590 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #67747: <==uncertain_firing== 58525 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #73849: <==negation-removal== 58525 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #75189: <==uncertain_firing== 18977 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #84425: <==uncertain_firing== 20507 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #10909: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #18977: <==closure== 20507 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #20507: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #58525: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #79419: <==closure== 10909 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #90590: <==closure== 58525 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #18317: <==uncertain_firing== 90590 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #30020: <==negation-removal== 20507 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #32509: <==negation-removal== 18977 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #35728: <==negation-removal== 10909 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #42760: <==uncertain_firing== 10909 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #52985: <==negation-removal== 79419 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #61116: <==uncertain_firing== 79419 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #67492: <==negation-removal== 90590 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #67747: <==uncertain_firing== 58525 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #73849: <==negation-removal== 58525 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #75189: <==uncertain_firing== 18977 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #84425: <==uncertain_firing== 20507 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #19425: <==closure== 42385 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #21555: <==closure== 63834 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #22153: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #42385: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #63834: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #89388: <==closure== 22153 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #10810: <==uncertain_firing== 63834 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #17268: <==negation-removal== 63834 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #19494: <==uncertain_firing== 19425 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #28158: <==uncertain_firing== 22153 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #28781: <==negation-removal== 42385 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #30755: <==uncertain_firing== 89388 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #39273: <==uncertain_firing== 21555 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41646: <==negation-removal== 21555 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #67484: <==negation-removal== 22153 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #83385: <==negation-removal== 19425 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #87979: <==negation-removal== 89388 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #90769: <==uncertain_firing== 42385 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #19425: <==closure== 42385 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #21555: <==closure== 63834 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #22153: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #42385: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #63834: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #89388: <==closure== 22153 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #10810: <==uncertain_firing== 63834 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #17268: <==negation-removal== 63834 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #19494: <==uncertain_firing== 19425 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #28158: <==uncertain_firing== 22153 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #28781: <==negation-removal== 42385 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #30755: <==uncertain_firing== 89388 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #39273: <==uncertain_firing== 21555 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41646: <==negation-removal== 21555 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #67484: <==negation-removal== 22153 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #83385: <==negation-removal== 19425 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #87979: <==negation-removal== 89388 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #90769: <==uncertain_firing== 42385 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #19425: <==closure== 42385 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #21555: <==closure== 63834 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #22153: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #42385: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #63834: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #89388: <==closure== 22153 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #10810: <==uncertain_firing== 63834 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #17268: <==negation-removal== 63834 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #19494: <==uncertain_firing== 19425 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #28158: <==uncertain_firing== 22153 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #28781: <==negation-removal== 42385 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #30755: <==uncertain_firing== 89388 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #39273: <==uncertain_firing== 21555 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41646: <==negation-removal== 21555 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #67484: <==negation-removal== 22153 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #83385: <==negation-removal== 19425 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #87979: <==negation-removal== 89388 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #90769: <==uncertain_firing== 42385 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #41742: <==closure== 60777 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #46108: <==closure== 63625 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #52823: <==closure== 66522 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #60777: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #63625: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #66522: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #10323: <==uncertain_firing== 46108 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #29116: <==negation-removal== 60777 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #38307: <==negation-removal== 41742 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #44878: <==uncertain_firing== 63625 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #50913: <==uncertain_firing== 52823 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52045: <==uncertain_firing== 41742 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #52673: <==negation-removal== 46108 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #53663: <==negation-removal== 52823 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56585: <==uncertain_firing== 66522 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #62207: <==negation-removal== 63625 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #72286: <==uncertain_firing== 60777 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #90051: <==negation-removal== 66522 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #41742: <==closure== 60777 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #46108: <==closure== 63625 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #52823: <==closure== 66522 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #60777: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #63625: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #66522: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #10323: <==uncertain_firing== 46108 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #29116: <==negation-removal== 60777 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #38307: <==negation-removal== 41742 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #44878: <==uncertain_firing== 63625 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #50913: <==uncertain_firing== 52823 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52045: <==uncertain_firing== 41742 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #52673: <==negation-removal== 46108 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #53663: <==negation-removal== 52823 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56585: <==uncertain_firing== 66522 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #62207: <==negation-removal== 63625 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #72286: <==uncertain_firing== 60777 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #90051: <==negation-removal== 66522 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #41742: <==closure== 60777 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #46108: <==closure== 63625 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #52823: <==closure== 66522 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #60777: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #63625: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #66522: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #10323: <==uncertain_firing== 46108 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #29116: <==negation-removal== 60777 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #38307: <==negation-removal== 41742 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #44878: <==uncertain_firing== 63625 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #50913: <==uncertain_firing== 52823 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52045: <==uncertain_firing== 41742 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #52673: <==negation-removal== 46108 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #53663: <==negation-removal== 52823 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56585: <==uncertain_firing== 66522 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #62207: <==negation-removal== 63625 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #72286: <==uncertain_firing== 60777 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #90051: <==negation-removal== 66522 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #18663: <==closure== 69485 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #31275: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #33181: <==closure== 31275 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #33532: <==closure== 79502 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #69485: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #79502: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #12173: <==negation-removal== 18663 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27337: <==uncertain_firing== 18663 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27680: <==negation-removal== 31275 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #36722: <==negation-removal== 33532 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46112: <==negation-removal== 33181 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #47217: <==uncertain_firing== 79502 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #58725: <==negation-removal== 69485 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #60065: <==negation-removal== 79502 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62054: <==uncertain_firing== 31275 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #69018: <==uncertain_firing== 33181 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #74638: <==uncertain_firing== 69485 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #90733: <==uncertain_firing== 33532 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #18663: <==closure== 69485 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #31275: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #33181: <==closure== 31275 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #33532: <==closure== 79502 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #69485: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #79502: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #12173: <==negation-removal== 18663 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27337: <==uncertain_firing== 18663 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27680: <==negation-removal== 31275 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #36722: <==negation-removal== 33532 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46112: <==negation-removal== 33181 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #47217: <==uncertain_firing== 79502 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #58725: <==negation-removal== 69485 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #60065: <==negation-removal== 79502 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62054: <==uncertain_firing== 31275 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #69018: <==uncertain_firing== 33181 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #74638: <==uncertain_firing== 69485 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #90733: <==uncertain_firing== 33532 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #18663: <==closure== 69485 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #31275: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #33181: <==closure== 31275 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #33532: <==closure== 79502 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #69485: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #79502: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #12173: <==negation-removal== 18663 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27337: <==uncertain_firing== 18663 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27680: <==negation-removal== 31275 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #36722: <==negation-removal== 33532 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46112: <==negation-removal== 33181 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #47217: <==uncertain_firing== 79502 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #58725: <==negation-removal== 69485 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #60065: <==negation-removal== 79502 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62054: <==uncertain_firing== 31275 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #69018: <==uncertain_firing== 33181 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #74638: <==uncertain_firing== 69485 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #90733: <==uncertain_firing== 33532 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #12097: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #12309: <==closure== 12097 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17386: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #26816: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #29431: <==closure== 26816 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #57097: <==closure== 17386 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #18238: <==uncertain_firing== 17386 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #30837: <==uncertain_firing== 57097 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #33485: <==negation-removal== 17386 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #34845: <==uncertain_firing== 26816 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #39209: <==negation-removal== 29431 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #51857: <==uncertain_firing== 12309 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #57401: <==negation-removal== 12097 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #66777: <==negation-removal== 26816 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67634: <==uncertain_firing== 29431 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #68048: <==negation-removal== 57097 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #72283: <==negation-removal== 12309 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #74879: <==uncertain_firing== 12097 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #12097: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #12309: <==closure== 12097 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17386: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #26816: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #29431: <==closure== 26816 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #57097: <==closure== 17386 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #18238: <==uncertain_firing== 17386 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #30837: <==uncertain_firing== 57097 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #33485: <==negation-removal== 17386 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #34845: <==uncertain_firing== 26816 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #39209: <==negation-removal== 29431 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #51857: <==uncertain_firing== 12309 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #57401: <==negation-removal== 12097 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #66777: <==negation-removal== 26816 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67634: <==uncertain_firing== 29431 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #68048: <==negation-removal== 57097 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #72283: <==negation-removal== 12309 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #74879: <==uncertain_firing== 12097 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #12097: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #12309: <==closure== 12097 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #17386: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #26816: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #29431: <==closure== 26816 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #57097: <==closure== 17386 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #18238: <==uncertain_firing== 17386 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #30837: <==uncertain_firing== 57097 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #33485: <==negation-removal== 17386 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #34845: <==uncertain_firing== 26816 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #39209: <==negation-removal== 29431 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #51857: <==uncertain_firing== 12309 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #57401: <==negation-removal== 12097 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #66777: <==negation-removal== 26816 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67634: <==uncertain_firing== 29431 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #68048: <==negation-removal== 57097 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #72283: <==negation-removal== 12309 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #74879: <==uncertain_firing== 12097 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #19158: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #30741: <==closure== 40576 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #39322: <==closure== 19158 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #40576: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #76017: <==closure== 82904 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #82904: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #22642: <==negation-removal== 76017 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24392: <==uncertain_firing== 76017 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #26375: <==uncertain_firing== 30741 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #27912: <==uncertain_firing== 19158 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #29388: <==negation-removal== 40576 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #29972: <==negation-removal== 30741 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #32088: <==uncertain_firing== 40576 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #43983: <==uncertain_firing== 39322 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #45469: <==negation-removal== 82904 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #68389: <==uncertain_firing== 82904 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #71309: <==negation-removal== 19158 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #78525: <==negation-removal== 39322 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #19158: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #30741: <==closure== 40576 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #39322: <==closure== 19158 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #40576: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #76017: <==closure== 82904 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #82904: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #22642: <==negation-removal== 76017 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24392: <==uncertain_firing== 76017 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #26375: <==uncertain_firing== 30741 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #27912: <==uncertain_firing== 19158 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #29388: <==negation-removal== 40576 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #29972: <==negation-removal== 30741 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #32088: <==uncertain_firing== 40576 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #43983: <==uncertain_firing== 39322 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #45469: <==negation-removal== 82904 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #68389: <==uncertain_firing== 82904 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #71309: <==negation-removal== 19158 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #78525: <==negation-removal== 39322 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #19158: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #30741: <==closure== 40576 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #39322: <==closure== 19158 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #40576: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #76017: <==closure== 82904 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #82904: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #22642: <==negation-removal== 76017 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24392: <==uncertain_firing== 76017 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #26375: <==uncertain_firing== 30741 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #27912: <==uncertain_firing== 19158 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #29388: <==negation-removal== 40576 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #29972: <==negation-removal== 30741 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #32088: <==uncertain_firing== 40576 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #43983: <==uncertain_firing== 39322 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #45469: <==negation-removal== 82904 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #68389: <==uncertain_firing== 82904 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #71309: <==negation-removal== 19158 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #78525: <==negation-removal== 39322 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #25257: <==closure== 68494 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #43570: <==closure== 78030 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #56229: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #68494: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #78030: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #87647: <==closure== 56229 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #10308: <==negation-removal== 25257 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #22212: <==negation-removal== 68494 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #32045: <==uncertain_firing== 56229 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #32864: <==negation-removal== 56229 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #37290: <==uncertain_firing== 68494 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52383: <==uncertain_firing== 78030 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #61056: <==negation-removal== 87647 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #66890: <==uncertain_firing== 87647 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71816: <==negation-removal== 78030 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #72442: <==uncertain_firing== 43570 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #88873: <==uncertain_firing== 25257 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #88885: <==negation-removal== 43570 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #25257: <==closure== 68494 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #43570: <==closure== 78030 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #56229: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #68494: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #78030: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #87647: <==closure== 56229 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #10308: <==negation-removal== 25257 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #22212: <==negation-removal== 68494 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #32045: <==uncertain_firing== 56229 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #32864: <==negation-removal== 56229 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #37290: <==uncertain_firing== 68494 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52383: <==uncertain_firing== 78030 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #61056: <==negation-removal== 87647 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #66890: <==uncertain_firing== 87647 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71816: <==negation-removal== 78030 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #72442: <==uncertain_firing== 43570 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #88873: <==uncertain_firing== 25257 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #88885: <==negation-removal== 43570 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #25257: <==closure== 68494 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #43570: <==closure== 78030 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #56229: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #68494: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #78030: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #87647: <==closure== 56229 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #10308: <==negation-removal== 25257 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #22212: <==negation-removal== 68494 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #32045: <==uncertain_firing== 56229 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #32864: <==negation-removal== 56229 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #37290: <==uncertain_firing== 68494 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52383: <==uncertain_firing== 78030 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #61056: <==negation-removal== 87647 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #66890: <==uncertain_firing== 87647 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71816: <==negation-removal== 78030 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #72442: <==uncertain_firing== 43570 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #88873: <==uncertain_firing== 25257 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #88885: <==negation-removal== 43570 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #10995: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #44212: <==closure== 87667 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #48892: <==closure== 80401 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68601: <==closure== 10995 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #80401: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #87667: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #13455: <==negation-removal== 68601 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #22467: <==uncertain_firing== 68601 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #33475: <==negation-removal== 80401 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #34542: <==uncertain_firing== 44212 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #36635: <==negation-removal== 44212 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #37175: <==negation-removal== 87667 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #43487: <==negation-removal== 48892 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #55496: <==negation-removal== 10995 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #66159: <==uncertain_firing== 10995 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #67149: <==uncertain_firing== 87667 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76907: <==uncertain_firing== 48892 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #90373: <==uncertain_firing== 80401 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #10995: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #44212: <==closure== 87667 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #48892: <==closure== 80401 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68601: <==closure== 10995 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #80401: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #87667: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #13455: <==negation-removal== 68601 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #22467: <==uncertain_firing== 68601 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #33475: <==negation-removal== 80401 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #34542: <==uncertain_firing== 44212 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #36635: <==negation-removal== 44212 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #37175: <==negation-removal== 87667 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #43487: <==negation-removal== 48892 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #55496: <==negation-removal== 10995 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #66159: <==uncertain_firing== 10995 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #67149: <==uncertain_firing== 87667 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76907: <==uncertain_firing== 48892 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #90373: <==uncertain_firing== 80401 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #10995: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #44212: <==closure== 87667 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #48892: <==closure== 80401 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68601: <==closure== 10995 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #80401: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #87667: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #13455: <==negation-removal== 68601 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #22467: <==uncertain_firing== 68601 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #33475: <==negation-removal== 80401 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #34542: <==uncertain_firing== 44212 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #36635: <==negation-removal== 44212 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #37175: <==negation-removal== 87667 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #43487: <==negation-removal== 48892 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #55496: <==negation-removal== 10995 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #66159: <==uncertain_firing== 10995 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #67149: <==uncertain_firing== 87667 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76907: <==uncertain_firing== 48892 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #90373: <==uncertain_firing== 80401 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #28983: <==closure== 41897 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #31702: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #41897: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #72470: <==closure== 31702 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #84925: <==closure== 92051 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #92051: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #15155: <==uncertain_firing== 92051 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #20986: <==uncertain_firing== 41897 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #22011: <==uncertain_firing== 31702 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #28011: <==uncertain_firing== 28983 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #30170: <==negation-removal== 72470 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #47552: <==negation-removal== 31702 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #54567: <==negation-removal== 92051 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #57861: <==uncertain_firing== 84925 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63168: <==uncertain_firing== 72470 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #67744: <==negation-removal== 41897 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #68987: <==negation-removal== 28983 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #87778: <==negation-removal== 84925 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #28983: <==closure== 41897 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #31702: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #41897: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #72470: <==closure== 31702 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #84925: <==closure== 92051 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #92051: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #15155: <==uncertain_firing== 92051 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #20986: <==uncertain_firing== 41897 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #22011: <==uncertain_firing== 31702 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #28011: <==uncertain_firing== 28983 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #30170: <==negation-removal== 72470 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #47552: <==negation-removal== 31702 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #54567: <==negation-removal== 92051 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #57861: <==uncertain_firing== 84925 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63168: <==uncertain_firing== 72470 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #67744: <==negation-removal== 41897 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #68987: <==negation-removal== 28983 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #87778: <==negation-removal== 84925 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #28983: <==closure== 41897 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #31702: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #41897: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #72470: <==closure== 31702 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #84925: <==closure== 92051 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #92051: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #15155: <==uncertain_firing== 92051 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #20986: <==uncertain_firing== 41897 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #22011: <==uncertain_firing== 31702 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #28011: <==uncertain_firing== 28983 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #30170: <==negation-removal== 72470 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #47552: <==negation-removal== 31702 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #54567: <==negation-removal== 92051 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #57861: <==uncertain_firing== 84925 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63168: <==uncertain_firing== 72470 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #67744: <==negation-removal== 41897 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #68987: <==negation-removal== 28983 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #87778: <==negation-removal== 84925 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #10109: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #16226: <==closure== 47706 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #28669: <==closure== 10109 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #47706: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #50811: <==closure== 68320 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #68320: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #22139: <==negation-removal== 50811 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #29146: <==uncertain_firing== 47706 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29578: <==uncertain_firing== 68320 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #45564: <==negation-removal== 28669 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69070: <==uncertain_firing== 10109 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #71062: <==uncertain_firing== 50811 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #82855: <==negation-removal== 16226 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83424: <==negation-removal== 10109 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #87546: <==uncertain_firing== 28669 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89107: <==negation-removal== 68320 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #89251: <==negation-removal== 47706 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #97129: <==uncertain_firing== 16226 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #10109: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #16226: <==closure== 47706 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #28669: <==closure== 10109 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #47706: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #50811: <==closure== 68320 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #68320: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #22139: <==negation-removal== 50811 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #29146: <==uncertain_firing== 47706 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29578: <==uncertain_firing== 68320 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #45564: <==negation-removal== 28669 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69070: <==uncertain_firing== 10109 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #71062: <==uncertain_firing== 50811 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #82855: <==negation-removal== 16226 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83424: <==negation-removal== 10109 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #87546: <==uncertain_firing== 28669 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89107: <==negation-removal== 68320 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #89251: <==negation-removal== 47706 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #97129: <==uncertain_firing== 16226 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #10109: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #16226: <==closure== 47706 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #28669: <==closure== 10109 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #47706: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #50811: <==closure== 68320 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #68320: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #22139: <==negation-removal== 50811 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #29146: <==uncertain_firing== 47706 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29578: <==uncertain_firing== 68320 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #45564: <==negation-removal== 28669 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69070: <==uncertain_firing== 10109 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #71062: <==uncertain_firing== 50811 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #82855: <==negation-removal== 16226 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83424: <==negation-removal== 10109 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #87546: <==uncertain_firing== 28669 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89107: <==negation-removal== 68320 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #89251: <==negation-removal== 47706 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #97129: <==uncertain_firing== 16226 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #29155: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #39776: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #55477: <==closure== 80660 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #63677: <==closure== 29155 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #80660: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #90861: <==closure== 39776 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #12873: <==uncertain_firing== 29155 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #12931: <==negation-removal== 90861 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #24874: <==negation-removal== 29155 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #27606: <==uncertain_firing== 63677 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #31199: <==negation-removal== 55477 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #34016: <==negation-removal== 80660 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #34115: <==uncertain_firing== 80660 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #44772: <==uncertain_firing== 39776 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #47216: <==negation-removal== 39776 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50548: <==uncertain_firing== 90861 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #65937: <==negation-removal== 63677 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #85938: <==uncertain_firing== 55477 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #29155: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #39776: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #55477: <==closure== 80660 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #63677: <==closure== 29155 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #80660: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #90861: <==closure== 39776 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #12873: <==uncertain_firing== 29155 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #12931: <==negation-removal== 90861 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #24874: <==negation-removal== 29155 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #27606: <==uncertain_firing== 63677 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #31199: <==negation-removal== 55477 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #34016: <==negation-removal== 80660 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #34115: <==uncertain_firing== 80660 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #44772: <==uncertain_firing== 39776 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #47216: <==negation-removal== 39776 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50548: <==uncertain_firing== 90861 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #65937: <==negation-removal== 63677 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #85938: <==uncertain_firing== 55477 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #29155: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #39776: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #55477: <==closure== 80660 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #63677: <==closure== 29155 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #80660: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #90861: <==closure== 39776 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #12873: <==uncertain_firing== 29155 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #12931: <==negation-removal== 90861 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #24874: <==negation-removal== 29155 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #27606: <==uncertain_firing== 63677 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #31199: <==negation-removal== 55477 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #34016: <==negation-removal== 80660 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #34115: <==uncertain_firing== 80660 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #44772: <==uncertain_firing== 39776 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #47216: <==negation-removal== 39776 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50548: <==uncertain_firing== 90861 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #65937: <==negation-removal== 63677 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #85938: <==uncertain_firing== 55477 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #11724: origin
                    (Ba_survivorat_s_p10)

                    ; #22604: origin
                    (Bc_survivorat_s_p10)

                    ; #36544: origin
                    (Bb_survivorat_s_p10)

                    ; #52676: <==closure== 36544 (pos)
                    (Pb_survivorat_s_p10)

                    ; #69899: <==closure== 11724 (pos)
                    (Pa_survivorat_s_p10)

                    ; #80057: <==closure== 22604 (pos)
                    (Pc_survivorat_s_p10)

                    ; #11111: <==negation-removal== 11724 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #24791: <==negation-removal== 69899 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #64481: <==negation-removal== 52676 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #67023: <==negation-removal== 80057 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #75715: <==negation-removal== 22604 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #88392: <==negation-removal== 36544 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #11724: origin
                    (Ba_survivorat_s_p10)

                    ; #22604: origin
                    (Bc_survivorat_s_p10)

                    ; #36544: origin
                    (Bb_survivorat_s_p10)

                    ; #52676: <==closure== 36544 (pos)
                    (Pb_survivorat_s_p10)

                    ; #69899: <==closure== 11724 (pos)
                    (Pa_survivorat_s_p10)

                    ; #80057: <==closure== 22604 (pos)
                    (Pc_survivorat_s_p10)

                    ; #11111: <==negation-removal== 11724 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #24791: <==negation-removal== 69899 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #64481: <==negation-removal== 52676 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #67023: <==negation-removal== 80057 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #75715: <==negation-removal== 22604 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #88392: <==negation-removal== 36544 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #11724: origin
                    (Ba_survivorat_s_p10)

                    ; #22604: origin
                    (Bc_survivorat_s_p10)

                    ; #36544: origin
                    (Bb_survivorat_s_p10)

                    ; #52676: <==closure== 36544 (pos)
                    (Pb_survivorat_s_p10)

                    ; #69899: <==closure== 11724 (pos)
                    (Pa_survivorat_s_p10)

                    ; #80057: <==closure== 22604 (pos)
                    (Pc_survivorat_s_p10)

                    ; #11111: <==negation-removal== 11724 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #24791: <==negation-removal== 69899 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #64481: <==negation-removal== 52676 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #67023: <==negation-removal== 80057 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #75715: <==negation-removal== 22604 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #88392: <==negation-removal== 36544 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #21773: <==closure== 57861 (pos)
                    (Pc_survivorat_s_p11)

                    ; #36394: <==closure== 37383 (pos)
                    (Pa_survivorat_s_p11)

                    ; #37383: origin
                    (Ba_survivorat_s_p11)

                    ; #48852: <==closure== 68874 (pos)
                    (Pb_survivorat_s_p11)

                    ; #57861: origin
                    (Bc_survivorat_s_p11)

                    ; #68874: origin
                    (Bb_survivorat_s_p11)

                    ; #40994: <==negation-removal== 48852 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #47446: <==negation-removal== 37383 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #59708: <==negation-removal== 57861 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #61654: <==negation-removal== 68874 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #61752: <==negation-removal== 36394 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #73803: <==negation-removal== 21773 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #21773: <==closure== 57861 (pos)
                    (Pc_survivorat_s_p11)

                    ; #36394: <==closure== 37383 (pos)
                    (Pa_survivorat_s_p11)

                    ; #37383: origin
                    (Ba_survivorat_s_p11)

                    ; #48852: <==closure== 68874 (pos)
                    (Pb_survivorat_s_p11)

                    ; #57861: origin
                    (Bc_survivorat_s_p11)

                    ; #68874: origin
                    (Bb_survivorat_s_p11)

                    ; #40994: <==negation-removal== 48852 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #47446: <==negation-removal== 37383 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #59708: <==negation-removal== 57861 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #61654: <==negation-removal== 68874 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #61752: <==negation-removal== 36394 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #73803: <==negation-removal== 21773 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #21773: <==closure== 57861 (pos)
                    (Pc_survivorat_s_p11)

                    ; #36394: <==closure== 37383 (pos)
                    (Pa_survivorat_s_p11)

                    ; #37383: origin
                    (Ba_survivorat_s_p11)

                    ; #48852: <==closure== 68874 (pos)
                    (Pb_survivorat_s_p11)

                    ; #57861: origin
                    (Bc_survivorat_s_p11)

                    ; #68874: origin
                    (Bb_survivorat_s_p11)

                    ; #40994: <==negation-removal== 48852 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #47446: <==negation-removal== 37383 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #59708: <==negation-removal== 57861 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #61654: <==negation-removal== 68874 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #61752: <==negation-removal== 36394 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #73803: <==negation-removal== 21773 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #13555: origin
                    (Ba_survivorat_s_p12)

                    ; #13971: origin
                    (Bb_survivorat_s_p12)

                    ; #15239: <==closure== 49047 (pos)
                    (Pc_survivorat_s_p12)

                    ; #32416: <==closure== 13555 (pos)
                    (Pa_survivorat_s_p12)

                    ; #49047: origin
                    (Bc_survivorat_s_p12)

                    ; #52922: <==closure== 13971 (pos)
                    (Pb_survivorat_s_p12)

                    ; #14747: <==negation-removal== 52922 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #21088: <==negation-removal== 15239 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #37769: <==negation-removal== 49047 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #71752: <==negation-removal== 13555 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #88102: <==negation-removal== 32416 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #88829: <==negation-removal== 13971 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #13555: origin
                    (Ba_survivorat_s_p12)

                    ; #13971: origin
                    (Bb_survivorat_s_p12)

                    ; #15239: <==closure== 49047 (pos)
                    (Pc_survivorat_s_p12)

                    ; #32416: <==closure== 13555 (pos)
                    (Pa_survivorat_s_p12)

                    ; #49047: origin
                    (Bc_survivorat_s_p12)

                    ; #52922: <==closure== 13971 (pos)
                    (Pb_survivorat_s_p12)

                    ; #14747: <==negation-removal== 52922 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #21088: <==negation-removal== 15239 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #37769: <==negation-removal== 49047 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #71752: <==negation-removal== 13555 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #88102: <==negation-removal== 32416 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #88829: <==negation-removal== 13971 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #13555: origin
                    (Ba_survivorat_s_p12)

                    ; #13971: origin
                    (Bb_survivorat_s_p12)

                    ; #15239: <==closure== 49047 (pos)
                    (Pc_survivorat_s_p12)

                    ; #32416: <==closure== 13555 (pos)
                    (Pa_survivorat_s_p12)

                    ; #49047: origin
                    (Bc_survivorat_s_p12)

                    ; #52922: <==closure== 13971 (pos)
                    (Pb_survivorat_s_p12)

                    ; #14747: <==negation-removal== 52922 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #21088: <==negation-removal== 15239 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #37769: <==negation-removal== 49047 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #71752: <==negation-removal== 13555 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #88102: <==negation-removal== 32416 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #88829: <==negation-removal== 13971 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #13790: <==closure== 76880 (pos)
                    (Pc_survivorat_s_p1)

                    ; #35880: <==closure== 41024 (pos)
                    (Pa_survivorat_s_p1)

                    ; #41024: origin
                    (Ba_survivorat_s_p1)

                    ; #66128: origin
                    (Bb_survivorat_s_p1)

                    ; #74788: <==closure== 66128 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76880: origin
                    (Bc_survivorat_s_p1)

                    ; #11184: <==negation-removal== 35880 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #19045: <==negation-removal== 76880 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #22030: <==negation-removal== 66128 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #28208: <==negation-removal== 41024 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #64042: <==negation-removal== 74788 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #87236: <==negation-removal== 13790 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #13790: <==closure== 76880 (pos)
                    (Pc_survivorat_s_p1)

                    ; #35880: <==closure== 41024 (pos)
                    (Pa_survivorat_s_p1)

                    ; #41024: origin
                    (Ba_survivorat_s_p1)

                    ; #66128: origin
                    (Bb_survivorat_s_p1)

                    ; #74788: <==closure== 66128 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76880: origin
                    (Bc_survivorat_s_p1)

                    ; #11184: <==negation-removal== 35880 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #19045: <==negation-removal== 76880 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #22030: <==negation-removal== 66128 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #28208: <==negation-removal== 41024 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #64042: <==negation-removal== 74788 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #87236: <==negation-removal== 13790 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #13790: <==closure== 76880 (pos)
                    (Pc_survivorat_s_p1)

                    ; #35880: <==closure== 41024 (pos)
                    (Pa_survivorat_s_p1)

                    ; #41024: origin
                    (Ba_survivorat_s_p1)

                    ; #66128: origin
                    (Bb_survivorat_s_p1)

                    ; #74788: <==closure== 66128 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76880: origin
                    (Bc_survivorat_s_p1)

                    ; #11184: <==negation-removal== 35880 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #19045: <==negation-removal== 76880 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #22030: <==negation-removal== 66128 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #28208: <==negation-removal== 41024 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #64042: <==negation-removal== 74788 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #87236: <==negation-removal== 13790 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #12105: origin
                    (Ba_survivorat_s_p2)

                    ; #24920: origin
                    (Bb_survivorat_s_p2)

                    ; #30175: <==closure== 24920 (pos)
                    (Pb_survivorat_s_p2)

                    ; #68317: <==closure== 12105 (pos)
                    (Pa_survivorat_s_p2)

                    ; #69119: <==closure== 89111 (pos)
                    (Pc_survivorat_s_p2)

                    ; #89111: origin
                    (Bc_survivorat_s_p2)

                    ; #13285: <==negation-removal== 69119 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #15244: <==negation-removal== 30175 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #16102: <==negation-removal== 12105 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26265: <==negation-removal== 24920 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #71458: <==negation-removal== 89111 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87244: <==negation-removal== 68317 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #12105: origin
                    (Ba_survivorat_s_p2)

                    ; #24920: origin
                    (Bb_survivorat_s_p2)

                    ; #30175: <==closure== 24920 (pos)
                    (Pb_survivorat_s_p2)

                    ; #68317: <==closure== 12105 (pos)
                    (Pa_survivorat_s_p2)

                    ; #69119: <==closure== 89111 (pos)
                    (Pc_survivorat_s_p2)

                    ; #89111: origin
                    (Bc_survivorat_s_p2)

                    ; #13285: <==negation-removal== 69119 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #15244: <==negation-removal== 30175 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #16102: <==negation-removal== 12105 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26265: <==negation-removal== 24920 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #71458: <==negation-removal== 89111 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87244: <==negation-removal== 68317 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #12105: origin
                    (Ba_survivorat_s_p2)

                    ; #24920: origin
                    (Bb_survivorat_s_p2)

                    ; #30175: <==closure== 24920 (pos)
                    (Pb_survivorat_s_p2)

                    ; #68317: <==closure== 12105 (pos)
                    (Pa_survivorat_s_p2)

                    ; #69119: <==closure== 89111 (pos)
                    (Pc_survivorat_s_p2)

                    ; #89111: origin
                    (Bc_survivorat_s_p2)

                    ; #13285: <==negation-removal== 69119 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #15244: <==negation-removal== 30175 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #16102: <==negation-removal== 12105 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26265: <==negation-removal== 24920 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #71458: <==negation-removal== 89111 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87244: <==negation-removal== 68317 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #30262: <==closure== 47272 (pos)
                    (Pc_survivorat_s_p3)

                    ; #47272: origin
                    (Bc_survivorat_s_p3)

                    ; #61749: <==closure== 79774 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74748: origin
                    (Bb_survivorat_s_p3)

                    ; #79774: origin
                    (Ba_survivorat_s_p3)

                    ; #81663: <==closure== 74748 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41761: <==negation-removal== 47272 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #42058: <==negation-removal== 30262 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #51433: <==negation-removal== 81663 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #73293: <==negation-removal== 79774 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79077: <==negation-removal== 74748 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #85505: <==negation-removal== 61749 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #30262: <==closure== 47272 (pos)
                    (Pc_survivorat_s_p3)

                    ; #47272: origin
                    (Bc_survivorat_s_p3)

                    ; #61749: <==closure== 79774 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74748: origin
                    (Bb_survivorat_s_p3)

                    ; #79774: origin
                    (Ba_survivorat_s_p3)

                    ; #81663: <==closure== 74748 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41761: <==negation-removal== 47272 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #42058: <==negation-removal== 30262 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #51433: <==negation-removal== 81663 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #73293: <==negation-removal== 79774 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79077: <==negation-removal== 74748 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #85505: <==negation-removal== 61749 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #30262: <==closure== 47272 (pos)
                    (Pc_survivorat_s_p3)

                    ; #47272: origin
                    (Bc_survivorat_s_p3)

                    ; #61749: <==closure== 79774 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74748: origin
                    (Bb_survivorat_s_p3)

                    ; #79774: origin
                    (Ba_survivorat_s_p3)

                    ; #81663: <==closure== 74748 (pos)
                    (Pb_survivorat_s_p3)

                    ; #41761: <==negation-removal== 47272 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #42058: <==negation-removal== 30262 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #51433: <==negation-removal== 81663 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #73293: <==negation-removal== 79774 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79077: <==negation-removal== 74748 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #85505: <==negation-removal== 61749 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #19929: <==closure== 70625 (pos)
                    (Pc_survivorat_s_p4)

                    ; #20736: <==closure== 79433 (pos)
                    (Pa_survivorat_s_p4)

                    ; #54236: <==closure== 65136 (pos)
                    (Pb_survivorat_s_p4)

                    ; #65136: origin
                    (Bb_survivorat_s_p4)

                    ; #70625: origin
                    (Bc_survivorat_s_p4)

                    ; #79433: origin
                    (Ba_survivorat_s_p4)

                    ; #12981: <==negation-removal== 19929 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #16261: <==negation-removal== 20736 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #21944: <==negation-removal== 65136 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #34716: <==negation-removal== 54236 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #55489: <==negation-removal== 79433 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #79678: <==negation-removal== 70625 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #19929: <==closure== 70625 (pos)
                    (Pc_survivorat_s_p4)

                    ; #20736: <==closure== 79433 (pos)
                    (Pa_survivorat_s_p4)

                    ; #54236: <==closure== 65136 (pos)
                    (Pb_survivorat_s_p4)

                    ; #65136: origin
                    (Bb_survivorat_s_p4)

                    ; #70625: origin
                    (Bc_survivorat_s_p4)

                    ; #79433: origin
                    (Ba_survivorat_s_p4)

                    ; #12981: <==negation-removal== 19929 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #16261: <==negation-removal== 20736 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #21944: <==negation-removal== 65136 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #34716: <==negation-removal== 54236 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #55489: <==negation-removal== 79433 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #79678: <==negation-removal== 70625 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #19929: <==closure== 70625 (pos)
                    (Pc_survivorat_s_p4)

                    ; #20736: <==closure== 79433 (pos)
                    (Pa_survivorat_s_p4)

                    ; #54236: <==closure== 65136 (pos)
                    (Pb_survivorat_s_p4)

                    ; #65136: origin
                    (Bb_survivorat_s_p4)

                    ; #70625: origin
                    (Bc_survivorat_s_p4)

                    ; #79433: origin
                    (Ba_survivorat_s_p4)

                    ; #12981: <==negation-removal== 19929 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #16261: <==negation-removal== 20736 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #21944: <==negation-removal== 65136 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #34716: <==negation-removal== 54236 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #55489: <==negation-removal== 79433 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #79678: <==negation-removal== 70625 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #15841: <==closure== 27413 (pos)
                    (Pc_survivorat_s_p5)

                    ; #27413: origin
                    (Bc_survivorat_s_p5)

                    ; #49344: <==closure== 83156 (pos)
                    (Pb_survivorat_s_p5)

                    ; #58479: origin
                    (Ba_survivorat_s_p5)

                    ; #63586: <==closure== 58479 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83156: origin
                    (Bb_survivorat_s_p5)

                    ; #10051: <==negation-removal== 27413 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #11130: <==negation-removal== 15841 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #22066: <==negation-removal== 58479 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #27778: <==negation-removal== 63586 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #58682: <==negation-removal== 83156 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #72657: <==negation-removal== 49344 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #15841: <==closure== 27413 (pos)
                    (Pc_survivorat_s_p5)

                    ; #27413: origin
                    (Bc_survivorat_s_p5)

                    ; #49344: <==closure== 83156 (pos)
                    (Pb_survivorat_s_p5)

                    ; #58479: origin
                    (Ba_survivorat_s_p5)

                    ; #63586: <==closure== 58479 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83156: origin
                    (Bb_survivorat_s_p5)

                    ; #10051: <==negation-removal== 27413 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #11130: <==negation-removal== 15841 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #22066: <==negation-removal== 58479 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #27778: <==negation-removal== 63586 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #58682: <==negation-removal== 83156 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #72657: <==negation-removal== 49344 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #15841: <==closure== 27413 (pos)
                    (Pc_survivorat_s_p5)

                    ; #27413: origin
                    (Bc_survivorat_s_p5)

                    ; #49344: <==closure== 83156 (pos)
                    (Pb_survivorat_s_p5)

                    ; #58479: origin
                    (Ba_survivorat_s_p5)

                    ; #63586: <==closure== 58479 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83156: origin
                    (Bb_survivorat_s_p5)

                    ; #10051: <==negation-removal== 27413 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #11130: <==negation-removal== 15841 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #22066: <==negation-removal== 58479 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #27778: <==negation-removal== 63586 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #58682: <==negation-removal== 83156 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #72657: <==negation-removal== 49344 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #19759: <==closure== 37249 (pos)
                    (Pc_survivorat_s_p6)

                    ; #37249: origin
                    (Bc_survivorat_s_p6)

                    ; #39054: <==closure== 40201 (pos)
                    (Pa_survivorat_s_p6)

                    ; #40201: origin
                    (Ba_survivorat_s_p6)

                    ; #87856: origin
                    (Bb_survivorat_s_p6)

                    ; #88355: <==closure== 87856 (pos)
                    (Pb_survivorat_s_p6)

                    ; #15588: <==negation-removal== 40201 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #16847: <==negation-removal== 37249 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #28028: <==negation-removal== 88355 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31289: <==negation-removal== 19759 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48779: <==negation-removal== 39054 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #55504: <==negation-removal== 87856 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #19759: <==closure== 37249 (pos)
                    (Pc_survivorat_s_p6)

                    ; #37249: origin
                    (Bc_survivorat_s_p6)

                    ; #39054: <==closure== 40201 (pos)
                    (Pa_survivorat_s_p6)

                    ; #40201: origin
                    (Ba_survivorat_s_p6)

                    ; #87856: origin
                    (Bb_survivorat_s_p6)

                    ; #88355: <==closure== 87856 (pos)
                    (Pb_survivorat_s_p6)

                    ; #15588: <==negation-removal== 40201 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #16847: <==negation-removal== 37249 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #28028: <==negation-removal== 88355 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31289: <==negation-removal== 19759 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48779: <==negation-removal== 39054 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #55504: <==negation-removal== 87856 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #19759: <==closure== 37249 (pos)
                    (Pc_survivorat_s_p6)

                    ; #37249: origin
                    (Bc_survivorat_s_p6)

                    ; #39054: <==closure== 40201 (pos)
                    (Pa_survivorat_s_p6)

                    ; #40201: origin
                    (Ba_survivorat_s_p6)

                    ; #87856: origin
                    (Bb_survivorat_s_p6)

                    ; #88355: <==closure== 87856 (pos)
                    (Pb_survivorat_s_p6)

                    ; #15588: <==negation-removal== 40201 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #16847: <==negation-removal== 37249 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #28028: <==negation-removal== 88355 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31289: <==negation-removal== 19759 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48779: <==negation-removal== 39054 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #55504: <==negation-removal== 87856 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #15024: origin
                    (Ba_survivorat_s_p7)

                    ; #37108: <==closure== 15024 (pos)
                    (Pa_survivorat_s_p7)

                    ; #43886: origin
                    (Bc_survivorat_s_p7)

                    ; #62018: origin
                    (Bb_survivorat_s_p7)

                    ; #73730: <==closure== 62018 (pos)
                    (Pb_survivorat_s_p7)

                    ; #89345: <==closure== 43886 (pos)
                    (Pc_survivorat_s_p7)

                    ; #24551: <==negation-removal== 89345 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #26190: <==negation-removal== 62018 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #28430: <==negation-removal== 43886 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #35325: <==negation-removal== 15024 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #49909: <==negation-removal== 73730 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #76183: <==negation-removal== 37108 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #15024: origin
                    (Ba_survivorat_s_p7)

                    ; #37108: <==closure== 15024 (pos)
                    (Pa_survivorat_s_p7)

                    ; #43886: origin
                    (Bc_survivorat_s_p7)

                    ; #62018: origin
                    (Bb_survivorat_s_p7)

                    ; #73730: <==closure== 62018 (pos)
                    (Pb_survivorat_s_p7)

                    ; #89345: <==closure== 43886 (pos)
                    (Pc_survivorat_s_p7)

                    ; #24551: <==negation-removal== 89345 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #26190: <==negation-removal== 62018 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #28430: <==negation-removal== 43886 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #35325: <==negation-removal== 15024 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #49909: <==negation-removal== 73730 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #76183: <==negation-removal== 37108 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #15024: origin
                    (Ba_survivorat_s_p7)

                    ; #37108: <==closure== 15024 (pos)
                    (Pa_survivorat_s_p7)

                    ; #43886: origin
                    (Bc_survivorat_s_p7)

                    ; #62018: origin
                    (Bb_survivorat_s_p7)

                    ; #73730: <==closure== 62018 (pos)
                    (Pb_survivorat_s_p7)

                    ; #89345: <==closure== 43886 (pos)
                    (Pc_survivorat_s_p7)

                    ; #24551: <==negation-removal== 89345 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #26190: <==negation-removal== 62018 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #28430: <==negation-removal== 43886 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #35325: <==negation-removal== 15024 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #49909: <==negation-removal== 73730 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #76183: <==negation-removal== 37108 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #14624: <==closure== 51316 (pos)
                    (Pa_survivorat_s_p8)

                    ; #30158: origin
                    (Bb_survivorat_s_p8)

                    ; #49674: origin
                    (Bc_survivorat_s_p8)

                    ; #51316: origin
                    (Ba_survivorat_s_p8)

                    ; #66602: <==closure== 30158 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83542: <==closure== 49674 (pos)
                    (Pc_survivorat_s_p8)

                    ; #18520: <==negation-removal== 30158 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #34002: <==negation-removal== 49674 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #54812: <==negation-removal== 66602 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #58184: <==negation-removal== 83542 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #76750: <==negation-removal== 51316 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #80569: <==negation-removal== 14624 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #14624: <==closure== 51316 (pos)
                    (Pa_survivorat_s_p8)

                    ; #30158: origin
                    (Bb_survivorat_s_p8)

                    ; #49674: origin
                    (Bc_survivorat_s_p8)

                    ; #51316: origin
                    (Ba_survivorat_s_p8)

                    ; #66602: <==closure== 30158 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83542: <==closure== 49674 (pos)
                    (Pc_survivorat_s_p8)

                    ; #18520: <==negation-removal== 30158 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #34002: <==negation-removal== 49674 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #54812: <==negation-removal== 66602 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #58184: <==negation-removal== 83542 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #76750: <==negation-removal== 51316 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #80569: <==negation-removal== 14624 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #14624: <==closure== 51316 (pos)
                    (Pa_survivorat_s_p8)

                    ; #30158: origin
                    (Bb_survivorat_s_p8)

                    ; #49674: origin
                    (Bc_survivorat_s_p8)

                    ; #51316: origin
                    (Ba_survivorat_s_p8)

                    ; #66602: <==closure== 30158 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83542: <==closure== 49674 (pos)
                    (Pc_survivorat_s_p8)

                    ; #18520: <==negation-removal== 30158 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #34002: <==negation-removal== 49674 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #54812: <==negation-removal== 66602 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #58184: <==negation-removal== 83542 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #76750: <==negation-removal== 51316 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #80569: <==negation-removal== 14624 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #67709: <==closure== 87953 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86679: <==closure== 89679 (pos)
                    (Pb_survivorat_s_p9)

                    ; #86939: <==closure== 91710 (pos)
                    (Pa_survivorat_s_p9)

                    ; #87953: origin
                    (Bc_survivorat_s_p9)

                    ; #89679: origin
                    (Bb_survivorat_s_p9)

                    ; #91710: origin
                    (Ba_survivorat_s_p9)

                    ; #11712: <==negation-removal== 86679 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #53141: <==negation-removal== 67709 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #75926: <==negation-removal== 86939 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #81460: <==negation-removal== 91710 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #84518: <==negation-removal== 89679 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87668: <==negation-removal== 87953 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #67709: <==closure== 87953 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86679: <==closure== 89679 (pos)
                    (Pb_survivorat_s_p9)

                    ; #86939: <==closure== 91710 (pos)
                    (Pa_survivorat_s_p9)

                    ; #87953: origin
                    (Bc_survivorat_s_p9)

                    ; #89679: origin
                    (Bb_survivorat_s_p9)

                    ; #91710: origin
                    (Ba_survivorat_s_p9)

                    ; #11712: <==negation-removal== 86679 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #53141: <==negation-removal== 67709 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #75926: <==negation-removal== 86939 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #81460: <==negation-removal== 91710 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #84518: <==negation-removal== 89679 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87668: <==negation-removal== 87953 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #67709: <==closure== 87953 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86679: <==closure== 89679 (pos)
                    (Pb_survivorat_s_p9)

                    ; #86939: <==closure== 91710 (pos)
                    (Pa_survivorat_s_p9)

                    ; #87953: origin
                    (Bc_survivorat_s_p9)

                    ; #89679: origin
                    (Bb_survivorat_s_p9)

                    ; #91710: origin
                    (Ba_survivorat_s_p9)

                    ; #11712: <==negation-removal== 86679 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #53141: <==negation-removal== 67709 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #75926: <==negation-removal== 86939 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #81460: <==negation-removal== 91710 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #84518: <==negation-removal== 89679 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87668: <==negation-removal== 87953 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #78939: origin
                    (not_at_a_p10)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #45906: origin
                    (at_a_p10)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #27081: origin
                    (at_a_p11)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #52910: origin
                    (at_a_p12)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #58777: origin
                    (at_a_p2)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #78066: origin
                    (at_a_p3)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #55783: origin
                    (at_a_p4)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #61431: origin
                    (at_a_p5)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #70954: origin
                    (at_a_p6)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #78939: origin
                    (not_at_a_p10)

                    ; #87091: origin
                    (at_a_p7)

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #59559: origin
                    (at_a_p8)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #78939: origin
                    (not_at_a_p10)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #45906: <==negation-removal== 78939 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #47051: origin
                    (not_at_a_p11)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #45906: origin
                    (at_a_p10)

                    ; #47051: origin
                    (not_at_a_p11)

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #27081: origin
                    (at_a_p11)

                    ; #47051: origin
                    (not_at_a_p11)

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #47051: origin
                    (not_at_a_p11)

                    ; #52910: origin
                    (at_a_p12)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #47051: origin
                    (not_at_a_p11)

                    ; #58777: origin
                    (at_a_p2)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #47051: origin
                    (not_at_a_p11)

                    ; #78066: origin
                    (at_a_p3)

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #47051: origin
                    (not_at_a_p11)

                    ; #55783: origin
                    (at_a_p4)

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #47051: origin
                    (not_at_a_p11)

                    ; #61431: origin
                    (at_a_p5)

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #47051: origin
                    (not_at_a_p11)

                    ; #70954: origin
                    (at_a_p6)

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #47051: origin
                    (not_at_a_p11)

                    ; #87091: origin
                    (at_a_p7)

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #47051: origin
                    (not_at_a_p11)

                    ; #59559: origin
                    (at_a_p8)

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #47051: origin
                    (not_at_a_p11)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #27081: <==negation-removal== 47051 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #45906: origin
                    (at_a_p10)

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #27081: origin
                    (at_a_p11)

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #52910: origin
                    (at_a_p12)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #58777: origin
                    (at_a_p2)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #78066: origin
                    (at_a_p3)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #55783: origin
                    (at_a_p4)

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #61431: origin
                    (at_a_p5)

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #70954: origin
                    (at_a_p6)

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #87091: origin
                    (at_a_p7)

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #59559: origin
                    (at_a_p8)

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #12292: origin
                    (not_at_a_p12)

                    ; #12767: origin
                    (at_a_p9)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #52910: <==negation-removal== 12292 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #45906: origin
                    (at_a_p10)

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #27081: origin
                    (at_a_p11)

                    ; #27541: origin
                    (not_at_a_p1)

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #52910: origin
                    (at_a_p12)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #58777: origin
                    (at_a_p2)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #78066: origin
                    (at_a_p3)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #55783: origin
                    (at_a_p4)

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #61431: origin
                    (at_a_p5)

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #70954: origin
                    (at_a_p6)

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #87091: origin
                    (at_a_p7)

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #27541: origin
                    (not_at_a_p1)

                    ; #59559: origin
                    (at_a_p8)

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #27541: origin
                    (not_at_a_p1)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #83278: <==negation-removal== 27541 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #45906: origin
                    (at_a_p10)

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #27081: origin
                    (at_a_p11)

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #52910: origin
                    (at_a_p12)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #58777: origin
                    (at_a_p2)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #78066: origin
                    (at_a_p3)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #55783: origin
                    (at_a_p4)

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #61431: origin
                    (at_a_p5)

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #70954: origin
                    (at_a_p6)

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #87091: origin
                    (at_a_p7)

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #13641: origin
                    (not_at_a_p2)

                    ; #59559: origin
                    (at_a_p8)

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #13641: origin
                    (not_at_a_p2)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #58777: <==negation-removal== 13641 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #45906: origin
                    (at_a_p10)

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #27081: origin
                    (at_a_p11)

                    ; #45805: origin
                    (not_at_a_p3)

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #52910: origin
                    (at_a_p12)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #58777: origin
                    (at_a_p2)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #78066: origin
                    (at_a_p3)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #55783: origin
                    (at_a_p4)

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #61431: origin
                    (at_a_p5)

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #70954: origin
                    (at_a_p6)

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #87091: origin
                    (at_a_p7)

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #45805: origin
                    (not_at_a_p3)

                    ; #59559: origin
                    (at_a_p8)

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #45805: origin
                    (not_at_a_p3)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #78066: <==negation-removal== 45805 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #61043: origin
                    (not_at_a_p4)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #45906: origin
                    (at_a_p10)

                    ; #61043: origin
                    (not_at_a_p4)

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #27081: origin
                    (at_a_p11)

                    ; #61043: origin
                    (not_at_a_p4)

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #52910: origin
                    (at_a_p12)

                    ; #61043: origin
                    (not_at_a_p4)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #58777: origin
                    (at_a_p2)

                    ; #61043: origin
                    (not_at_a_p4)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #61043: origin
                    (not_at_a_p4)

                    ; #78066: origin
                    (at_a_p3)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #55783: origin
                    (at_a_p4)

                    ; #61043: origin
                    (not_at_a_p4)

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #61043: origin
                    (not_at_a_p4)

                    ; #61431: origin
                    (at_a_p5)

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #61043: origin
                    (not_at_a_p4)

                    ; #70954: origin
                    (at_a_p6)

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #61043: origin
                    (not_at_a_p4)

                    ; #87091: origin
                    (at_a_p7)

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #59559: origin
                    (at_a_p8)

                    ; #61043: origin
                    (not_at_a_p4)

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #61043: origin
                    (not_at_a_p4)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #55783: <==negation-removal== 61043 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #83278: origin
                    (at_a_p1)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #45906: origin
                    (at_a_p10)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5))
        :effect (and
                    ; #27081: origin
                    (at_a_p11)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #52910: origin
                    (at_a_p12)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #58777: origin
                    (at_a_p2)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #78066: origin
                    (at_a_p3)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #55783: origin
                    (at_a_p4)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #61431: origin
                    (at_a_p5)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #70954: origin
                    (at_a_p6)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #87091: origin
                    (at_a_p7)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #59559: origin
                    (at_a_p8)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #91086: origin
                    (not_at_a_p5)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #61431: <==negation-removal== 91086 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #57696: origin
                    (not_at_a_p6)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #45906: origin
                    (at_a_p10)

                    ; #57696: origin
                    (not_at_a_p6)

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #27081: origin
                    (at_a_p11)

                    ; #57696: origin
                    (not_at_a_p6)

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #52910: origin
                    (at_a_p12)

                    ; #57696: origin
                    (not_at_a_p6)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #57696: origin
                    (not_at_a_p6)

                    ; #58777: origin
                    (at_a_p2)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #57696: origin
                    (not_at_a_p6)

                    ; #78066: origin
                    (at_a_p3)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #55783: origin
                    (at_a_p4)

                    ; #57696: origin
                    (not_at_a_p6)

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #57696: origin
                    (not_at_a_p6)

                    ; #61431: origin
                    (at_a_p5)

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #57696: origin
                    (not_at_a_p6)

                    ; #70954: origin
                    (at_a_p6)

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #57696: origin
                    (not_at_a_p6)

                    ; #87091: origin
                    (at_a_p7)

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #57696: origin
                    (not_at_a_p6)

                    ; #59559: origin
                    (at_a_p8)

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #57696: origin
                    (not_at_a_p6)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #70954: <==negation-removal== 57696 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #51168: origin
                    (not_at_a_p7)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #45906: origin
                    (at_a_p10)

                    ; #51168: origin
                    (not_at_a_p7)

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #27081: origin
                    (at_a_p11)

                    ; #51168: origin
                    (not_at_a_p7)

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #51168: origin
                    (not_at_a_p7)

                    ; #52910: origin
                    (at_a_p12)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #51168: origin
                    (not_at_a_p7)

                    ; #58777: origin
                    (at_a_p2)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #51168: origin
                    (not_at_a_p7)

                    ; #78066: origin
                    (at_a_p3)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #51168: origin
                    (not_at_a_p7)

                    ; #55783: origin
                    (at_a_p4)

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #51168: origin
                    (not_at_a_p7)

                    ; #61431: origin
                    (at_a_p5)

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #51168: origin
                    (not_at_a_p7)

                    ; #70954: origin
                    (at_a_p6)

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #51168: origin
                    (not_at_a_p7)

                    ; #87091: origin
                    (at_a_p7)

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #51168: origin
                    (not_at_a_p7)

                    ; #59559: origin
                    (at_a_p8)

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #51168: origin
                    (not_at_a_p7)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #87091: <==negation-removal== 51168 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #56555: origin
                    (not_at_a_p8)

                    ; #83278: origin
                    (at_a_p1)

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #45906: origin
                    (at_a_p10)

                    ; #56555: origin
                    (not_at_a_p8)

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #27081: origin
                    (at_a_p11)

                    ; #56555: origin
                    (not_at_a_p8)

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #52910: origin
                    (at_a_p12)

                    ; #56555: origin
                    (not_at_a_p8)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #56555: origin
                    (not_at_a_p8)

                    ; #58777: origin
                    (at_a_p2)

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #56555: origin
                    (not_at_a_p8)

                    ; #78066: origin
                    (at_a_p3)

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #55783: origin
                    (at_a_p4)

                    ; #56555: origin
                    (not_at_a_p8)

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #56555: origin
                    (not_at_a_p8)

                    ; #61431: origin
                    (at_a_p5)

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #56555: origin
                    (not_at_a_p8)

                    ; #70954: origin
                    (at_a_p6)

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #56555: origin
                    (not_at_a_p8)

                    ; #87091: origin
                    (at_a_p7)

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #56555: origin
                    (not_at_a_p8)

                    ; #59559: origin
                    (at_a_p8)

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #12767: origin
                    (at_a_p9)

                    ; #56555: origin
                    (not_at_a_p8)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #59559: <==negation-removal== 56555 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #83278: origin
                    (at_a_p1)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #27541: <==negation-removal== 83278 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #45906: origin
                    (at_a_p10)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #78939: <==negation-removal== 45906 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #27081: origin
                    (at_a_p11)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #47051: <==negation-removal== 27081 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #52910: origin
                    (at_a_p12)

                    ; #12292: <==negation-removal== 52910 (pos)
                    (not (not_at_a_p12))

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #58777: origin
                    (at_a_p2)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #13641: <==negation-removal== 58777 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #78066: origin
                    (at_a_p3)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #45805: <==negation-removal== 78066 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #55783: origin
                    (at_a_p4)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #61043: <==negation-removal== 55783 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #61431: origin
                    (at_a_p5)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #91086: <==negation-removal== 61431 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #70954: origin
                    (at_a_p6)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #57696: <==negation-removal== 70954 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #87091: origin
                    (at_a_p7)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #51168: <==negation-removal== 87091 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #59559: origin
                    (at_a_p8)

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))

                    ; #56555: <==negation-removal== 59559 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #12106: origin
                    (not_at_a_p9)

                    ; #12767: origin
                    (at_a_p9)

                    ; #12106: <==negation-removal== 12767 (pos)
                    (not (not_at_a_p9))

                    ; #12767: <==negation-removal== 12106 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #38375: origin
                    (at_b_p1)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #84430: origin
                    (not_at_b_p10)

                    ; #89839: origin
                    (at_b_p11)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #65008: origin
                    (at_b_p12)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #73188: origin
                    (at_b_p3)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #60628: origin
                    (at_b_p4)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #83106: origin
                    (at_b_p5)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #62173: origin
                    (at_b_p6)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #58318: origin
                    (at_b_p8)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #45786: origin
                    (at_b_p9)

                    ; #84430: origin
                    (not_at_b_p10)

                    ; #13606: <==negation-removal== 84430 (pos)
                    (not (at_b_p10))

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #38375: origin
                    (at_b_p1)

                    ; #63061: origin
                    (not_at_b_p11)

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #63061: origin
                    (not_at_b_p11)

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #63061: origin
                    (not_at_b_p11)

                    ; #89839: origin
                    (at_b_p11)

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #63061: origin
                    (not_at_b_p11)

                    ; #65008: origin
                    (at_b_p12)

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #63061: origin
                    (not_at_b_p11)

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #63061: origin
                    (not_at_b_p11)

                    ; #73188: origin
                    (at_b_p3)

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #60628: origin
                    (at_b_p4)

                    ; #63061: origin
                    (not_at_b_p11)

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #63061: origin
                    (not_at_b_p11)

                    ; #83106: origin
                    (at_b_p5)

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #62173: origin
                    (at_b_p6)

                    ; #63061: origin
                    (not_at_b_p11)

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #63061: origin
                    (not_at_b_p11)

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #58318: origin
                    (at_b_p8)

                    ; #63061: origin
                    (not_at_b_p11)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #45786: origin
                    (at_b_p9)

                    ; #63061: origin
                    (not_at_b_p11)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #89839: <==negation-removal== 63061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #38375: origin
                    (at_b_p1)

                    ; #68169: origin
                    (not_at_b_p12)

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #68169: origin
                    (not_at_b_p12)

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #68169: origin
                    (not_at_b_p12)

                    ; #89839: origin
                    (at_b_p11)

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #65008: origin
                    (at_b_p12)

                    ; #68169: origin
                    (not_at_b_p12)

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #68169: origin
                    (not_at_b_p12)

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #68169: origin
                    (not_at_b_p12)

                    ; #73188: origin
                    (at_b_p3)

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #60628: origin
                    (at_b_p4)

                    ; #68169: origin
                    (not_at_b_p12)

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #68169: origin
                    (not_at_b_p12)

                    ; #83106: origin
                    (at_b_p5)

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #62173: origin
                    (at_b_p6)

                    ; #68169: origin
                    (not_at_b_p12)

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #68169: origin
                    (not_at_b_p12)

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #58318: origin
                    (at_b_p8)

                    ; #68169: origin
                    (not_at_b_p12)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #45786: origin
                    (at_b_p9)

                    ; #68169: origin
                    (not_at_b_p12)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #65008: <==negation-removal== 68169 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #38375: origin
                    (at_b_p1)

                    ; #51907: origin
                    (not_at_b_p1)

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #51907: origin
                    (not_at_b_p1)

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #51907: origin
                    (not_at_b_p1)

                    ; #89839: origin
                    (at_b_p11)

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #51907: origin
                    (not_at_b_p1)

                    ; #65008: origin
                    (at_b_p12)

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #51907: origin
                    (not_at_b_p1)

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #51907: origin
                    (not_at_b_p1)

                    ; #73188: origin
                    (at_b_p3)

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #51907: origin
                    (not_at_b_p1)

                    ; #60628: origin
                    (at_b_p4)

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #51907: origin
                    (not_at_b_p1)

                    ; #83106: origin
                    (at_b_p5)

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #51907: origin
                    (not_at_b_p1)

                    ; #62173: origin
                    (at_b_p6)

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #51907: origin
                    (not_at_b_p1)

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #51907: origin
                    (not_at_b_p1)

                    ; #58318: origin
                    (at_b_p8)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #45786: origin
                    (at_b_p9)

                    ; #51907: origin
                    (not_at_b_p1)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #38375: <==negation-removal== 51907 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #33473: origin
                    (not_at_b_p2)

                    ; #38375: origin
                    (at_b_p1)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #33473: origin
                    (not_at_b_p2)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #33473: origin
                    (not_at_b_p2)

                    ; #89839: origin
                    (at_b_p11)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #33473: origin
                    (not_at_b_p2)

                    ; #65008: origin
                    (at_b_p12)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #33473: origin
                    (not_at_b_p2)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #33473: origin
                    (not_at_b_p2)

                    ; #73188: origin
                    (at_b_p3)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #33473: origin
                    (not_at_b_p2)

                    ; #60628: origin
                    (at_b_p4)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #33473: origin
                    (not_at_b_p2)

                    ; #83106: origin
                    (at_b_p5)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #33473: origin
                    (not_at_b_p2)

                    ; #62173: origin
                    (at_b_p6)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #33473: origin
                    (not_at_b_p2)

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #33473: origin
                    (not_at_b_p2)

                    ; #58318: origin
                    (at_b_p8)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #33473: origin
                    (not_at_b_p2)

                    ; #45786: origin
                    (at_b_p9)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #32814: <==negation-removal== 33473 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #38375: origin
                    (at_b_p1)

                    ; #52826: origin
                    (not_at_b_p3)

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #52826: origin
                    (not_at_b_p3)

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #52826: origin
                    (not_at_b_p3)

                    ; #89839: origin
                    (at_b_p11)

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #52826: origin
                    (not_at_b_p3)

                    ; #65008: origin
                    (at_b_p12)

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #52826: origin
                    (not_at_b_p3)

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #52826: origin
                    (not_at_b_p3)

                    ; #73188: origin
                    (at_b_p3)

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #52826: origin
                    (not_at_b_p3)

                    ; #60628: origin
                    (at_b_p4)

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #52826: origin
                    (not_at_b_p3)

                    ; #83106: origin
                    (at_b_p5)

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #52826: origin
                    (not_at_b_p3)

                    ; #62173: origin
                    (at_b_p6)

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #52826: origin
                    (not_at_b_p3)

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #52826: origin
                    (not_at_b_p3)

                    ; #58318: origin
                    (at_b_p8)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #45786: origin
                    (at_b_p9)

                    ; #52826: origin
                    (not_at_b_p3)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #73188: <==negation-removal== 52826 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #38375: origin
                    (at_b_p1)

                    ; #56388: origin
                    (not_at_b_p4)

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #56388: origin
                    (not_at_b_p4)

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #56388: origin
                    (not_at_b_p4)

                    ; #89839: origin
                    (at_b_p11)

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #56388: origin
                    (not_at_b_p4)

                    ; #65008: origin
                    (at_b_p12)

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #56388: origin
                    (not_at_b_p4)

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #56388: origin
                    (not_at_b_p4)

                    ; #73188: origin
                    (at_b_p3)

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #56388: origin
                    (not_at_b_p4)

                    ; #60628: origin
                    (at_b_p4)

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #56388: origin
                    (not_at_b_p4)

                    ; #83106: origin
                    (at_b_p5)

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #56388: origin
                    (not_at_b_p4)

                    ; #62173: origin
                    (at_b_p6)

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #56388: origin
                    (not_at_b_p4)

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #56388: origin
                    (not_at_b_p4)

                    ; #58318: origin
                    (at_b_p8)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #45786: origin
                    (at_b_p9)

                    ; #56388: origin
                    (not_at_b_p4)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #60628: <==negation-removal== 56388 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #38375: origin
                    (at_b_p1)

                    ; #55151: origin
                    (not_at_b_p5)

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #55151: origin
                    (not_at_b_p5)

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5))
        :effect (and
                    ; #55151: origin
                    (not_at_b_p5)

                    ; #89839: origin
                    (at_b_p11)

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #55151: origin
                    (not_at_b_p5)

                    ; #65008: origin
                    (at_b_p12)

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #55151: origin
                    (not_at_b_p5)

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #55151: origin
                    (not_at_b_p5)

                    ; #73188: origin
                    (at_b_p3)

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #55151: origin
                    (not_at_b_p5)

                    ; #60628: origin
                    (at_b_p4)

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #55151: origin
                    (not_at_b_p5)

                    ; #83106: origin
                    (at_b_p5)

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #55151: origin
                    (not_at_b_p5)

                    ; #62173: origin
                    (at_b_p6)

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #55151: origin
                    (not_at_b_p5)

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #55151: origin
                    (not_at_b_p5)

                    ; #58318: origin
                    (at_b_p8)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #45786: origin
                    (at_b_p9)

                    ; #55151: origin
                    (not_at_b_p5)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #83106: <==negation-removal== 55151 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #38375: origin
                    (at_b_p1)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #83214: origin
                    (not_at_b_p6)

                    ; #89839: origin
                    (at_b_p11)

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #65008: origin
                    (at_b_p12)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #73188: origin
                    (at_b_p3)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #60628: origin
                    (at_b_p4)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #83106: origin
                    (at_b_p5)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #62173: origin
                    (at_b_p6)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #58318: origin
                    (at_b_p8)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #45786: origin
                    (at_b_p9)

                    ; #83214: origin
                    (not_at_b_p6)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #62173: <==negation-removal== 83214 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #38375: origin
                    (at_b_p1)

                    ; #39990: origin
                    (not_at_b_p7)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #39990: origin
                    (not_at_b_p7)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #39990: origin
                    (not_at_b_p7)

                    ; #89839: origin
                    (at_b_p11)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #39990: origin
                    (not_at_b_p7)

                    ; #65008: origin
                    (at_b_p12)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #32814: origin
                    (at_b_p2)

                    ; #39990: origin
                    (not_at_b_p7)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #39990: origin
                    (not_at_b_p7)

                    ; #73188: origin
                    (at_b_p3)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #39990: origin
                    (not_at_b_p7)

                    ; #60628: origin
                    (at_b_p4)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #39990: origin
                    (not_at_b_p7)

                    ; #83106: origin
                    (at_b_p5)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #39990: origin
                    (not_at_b_p7)

                    ; #62173: origin
                    (at_b_p6)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #39990: origin
                    (not_at_b_p7)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #39990: origin
                    (not_at_b_p7)

                    ; #58318: origin
                    (at_b_p8)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #39990: origin
                    (not_at_b_p7)

                    ; #45786: origin
                    (at_b_p9)

                    ; #13751: <==negation-removal== 39990 (pos)
                    (not (at_b_p7))

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #38375: origin
                    (at_b_p1)

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #21410: origin
                    (not_at_b_p8)

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #89839: origin
                    (at_b_p11)

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #65008: origin
                    (at_b_p12)

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #32814: origin
                    (at_b_p2)

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #73188: origin
                    (at_b_p3)

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #60628: origin
                    (at_b_p4)

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #83106: origin
                    (at_b_p5)

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #62173: origin
                    (at_b_p6)

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #21410: origin
                    (not_at_b_p8)

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #58318: origin
                    (at_b_p8)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #21410: origin
                    (not_at_b_p8)

                    ; #45786: origin
                    (at_b_p9)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #58318: <==negation-removal== 21410 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #38375: origin
                    (at_b_p1)

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))

                    ; #51907: <==negation-removal== 38375 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #13606: origin
                    (at_b_p10)

                    ; #24792: origin
                    (not_at_b_p9)

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))

                    ; #84430: <==negation-removal== 13606 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #89839: origin
                    (at_b_p11)

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))

                    ; #63061: <==negation-removal== 89839 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #65008: origin
                    (at_b_p12)

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))

                    ; #68169: <==negation-removal== 65008 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #32814: origin
                    (at_b_p2)

                    ; #33473: <==negation-removal== 32814 (pos)
                    (not (not_at_b_p2))

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #73188: origin
                    (at_b_p3)

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))

                    ; #52826: <==negation-removal== 73188 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #60628: origin
                    (at_b_p4)

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))

                    ; #56388: <==negation-removal== 60628 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #83106: origin
                    (at_b_p5)

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))

                    ; #55151: <==negation-removal== 83106 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #62173: origin
                    (at_b_p6)

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))

                    ; #83214: <==negation-removal== 62173 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #13751: origin
                    (at_b_p7)

                    ; #24792: origin
                    (not_at_b_p9)

                    ; #39990: <==negation-removal== 13751 (pos)
                    (not (not_at_b_p7))

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #58318: origin
                    (at_b_p8)

                    ; #21410: <==negation-removal== 58318 (pos)
                    (not (not_at_b_p8))

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #24792: origin
                    (not_at_b_p9)

                    ; #45786: origin
                    (at_b_p9)

                    ; #24792: <==negation-removal== 45786 (pos)
                    (not (not_at_b_p9))

                    ; #45786: <==negation-removal== 24792 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #55940: origin
                    (not_at_c_p10)

                    ; #61634: origin
                    (at_c_p1)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #44986: origin
                    (at_c_p10)

                    ; #55940: origin
                    (not_at_c_p10)

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #47325: origin
                    (at_c_p11)

                    ; #55940: origin
                    (not_at_c_p10)

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #55940: origin
                    (not_at_c_p10)

                    ; #57503: origin
                    (at_c_p12)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #55940: origin
                    (not_at_c_p10)

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #23714: origin
                    (at_c_p3)

                    ; #55940: origin
                    (not_at_c_p10)

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #55940: origin
                    (not_at_c_p10)

                    ; #63235: origin
                    (at_c_p4)

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #55940: origin
                    (not_at_c_p10)

                    ; #90584: origin
                    (at_c_p5)

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #46340: origin
                    (at_c_p6)

                    ; #55940: origin
                    (not_at_c_p10)

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #55940: origin
                    (not_at_c_p10)

                    ; #77402: origin
                    (at_c_p7)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #55940: origin
                    (not_at_c_p10)

                    ; #67973: origin
                    (at_c_p8)

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #21427: origin
                    (at_c_p9)

                    ; #55940: origin
                    (not_at_c_p10)

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))

                    ; #44986: <==negation-removal== 55940 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #61634: origin
                    (at_c_p1)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #44986: origin
                    (at_c_p10)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #47325: origin
                    (at_c_p11)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #57503: origin
                    (at_c_p12)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #23714: origin
                    (at_c_p3)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #63235: origin
                    (at_c_p4)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #90584: origin
                    (at_c_p5)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #46340: origin
                    (at_c_p6)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #77402: origin
                    (at_c_p7)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #67973: origin
                    (at_c_p8)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #21427: origin
                    (at_c_p9)

                    ; #98196: origin
                    (not_at_c_p11)

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))

                    ; #47325: <==negation-removal== 98196 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #61634: origin
                    (at_c_p1)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #44986: origin
                    (at_c_p10)

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #47325: origin
                    (at_c_p11)

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #57503: origin
                    (at_c_p12)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #14269: origin
                    (not_at_c_p12)

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #23714: origin
                    (at_c_p3)

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #63235: origin
                    (at_c_p4)

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #90584: origin
                    (at_c_p5)

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #46340: origin
                    (at_c_p6)

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #77402: origin
                    (at_c_p7)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #67973: origin
                    (at_c_p8)

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #14269: origin
                    (not_at_c_p12)

                    ; #21427: origin
                    (at_c_p9)

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))

                    ; #57503: <==negation-removal== 14269 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #61634: origin
                    (at_c_p1)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #44986: origin
                    (at_c_p10)

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #47325: origin
                    (at_c_p11)

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #57503: origin
                    (at_c_p12)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #13273: origin
                    (not_at_c_p1)

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #23714: origin
                    (at_c_p3)

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #63235: origin
                    (at_c_p4)

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #90584: origin
                    (at_c_p5)

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #46340: origin
                    (at_c_p6)

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #77402: origin
                    (at_c_p7)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #67973: origin
                    (at_c_p8)

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #13273: origin
                    (not_at_c_p1)

                    ; #21427: origin
                    (at_c_p9)

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))

                    ; #61634: <==negation-removal== 13273 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #61634: origin
                    (at_c_p1)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #44986: origin
                    (at_c_p10)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #47325: origin
                    (at_c_p11)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #57503: origin
                    (at_c_p12)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #23714: origin
                    (at_c_p3)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #63235: origin
                    (at_c_p4)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #73336: origin
                    (not_at_c_p2)

                    ; #90584: origin
                    (at_c_p5)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #46340: origin
                    (at_c_p6)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #73336: origin
                    (not_at_c_p2)

                    ; #77402: origin
                    (at_c_p7)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #67973: origin
                    (at_c_p8)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #21427: origin
                    (at_c_p9)

                    ; #73336: origin
                    (not_at_c_p2)

                    ; #13241: <==negation-removal== 73336 (pos)
                    (not (at_c_p2))

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #52162: origin
                    (not_at_c_p3)

                    ; #61634: origin
                    (at_c_p1)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #44986: origin
                    (at_c_p10)

                    ; #52162: origin
                    (not_at_c_p3)

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #47325: origin
                    (at_c_p11)

                    ; #52162: origin
                    (not_at_c_p3)

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #52162: origin
                    (not_at_c_p3)

                    ; #57503: origin
                    (at_c_p12)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #52162: origin
                    (not_at_c_p3)

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #23714: origin
                    (at_c_p3)

                    ; #52162: origin
                    (not_at_c_p3)

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #52162: origin
                    (not_at_c_p3)

                    ; #63235: origin
                    (at_c_p4)

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #52162: origin
                    (not_at_c_p3)

                    ; #90584: origin
                    (at_c_p5)

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #46340: origin
                    (at_c_p6)

                    ; #52162: origin
                    (not_at_c_p3)

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #52162: origin
                    (not_at_c_p3)

                    ; #77402: origin
                    (at_c_p7)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #52162: origin
                    (not_at_c_p3)

                    ; #67973: origin
                    (at_c_p8)

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #21427: origin
                    (at_c_p9)

                    ; #52162: origin
                    (not_at_c_p3)

                    ; #23714: <==negation-removal== 52162 (pos)
                    (not (at_c_p3))

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #61634: origin
                    (at_c_p1)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #44986: origin
                    (at_c_p10)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #47325: origin
                    (at_c_p11)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #57503: origin
                    (at_c_p12)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #23714: origin
                    (at_c_p3)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #63235: origin
                    (at_c_p4)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #75332: origin
                    (not_at_c_p4)

                    ; #90584: origin
                    (at_c_p5)

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #46340: origin
                    (at_c_p6)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #75332: origin
                    (not_at_c_p4)

                    ; #77402: origin
                    (at_c_p7)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #67973: origin
                    (at_c_p8)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #21427: origin
                    (at_c_p9)

                    ; #75332: origin
                    (not_at_c_p4)

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))

                    ; #63235: <==negation-removal== 75332 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #61634: origin
                    (at_c_p1)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #44986: origin
                    (at_c_p10)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #47325: origin
                    (at_c_p11)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #57503: origin
                    (at_c_p12)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #23714: origin
                    (at_c_p3)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #63235: origin
                    (at_c_p4)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #79570: origin
                    (not_at_c_p5)

                    ; #90584: origin
                    (at_c_p5)

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #46340: origin
                    (at_c_p6)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #77402: origin
                    (at_c_p7)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #67973: origin
                    (at_c_p8)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #21427: origin
                    (at_c_p9)

                    ; #79570: origin
                    (not_at_c_p5)

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))

                    ; #90584: <==negation-removal== 79570 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #47862: origin
                    (not_at_c_p6)

                    ; #61634: origin
                    (at_c_p1)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #44986: origin
                    (at_c_p10)

                    ; #47862: origin
                    (not_at_c_p6)

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #47325: origin
                    (at_c_p11)

                    ; #47862: origin
                    (not_at_c_p6)

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #47862: origin
                    (not_at_c_p6)

                    ; #57503: origin
                    (at_c_p12)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #47862: origin
                    (not_at_c_p6)

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #23714: origin
                    (at_c_p3)

                    ; #47862: origin
                    (not_at_c_p6)

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #47862: origin
                    (not_at_c_p6)

                    ; #63235: origin
                    (at_c_p4)

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #47862: origin
                    (not_at_c_p6)

                    ; #90584: origin
                    (at_c_p5)

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #46340: origin
                    (at_c_p6)

                    ; #47862: origin
                    (not_at_c_p6)

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #47862: origin
                    (not_at_c_p6)

                    ; #77402: origin
                    (at_c_p7)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #47862: origin
                    (not_at_c_p6)

                    ; #67973: origin
                    (at_c_p8)

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #21427: origin
                    (at_c_p9)

                    ; #47862: origin
                    (not_at_c_p6)

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))

                    ; #46340: <==negation-removal== 47862 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #61634: origin
                    (at_c_p1)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #44986: origin
                    (at_c_p10)

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #47325: origin
                    (at_c_p11)

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #57503: origin
                    (at_c_p12)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #20276: origin
                    (not_at_c_p7)

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #23714: origin
                    (at_c_p3)

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #63235: origin
                    (at_c_p4)

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #90584: origin
                    (at_c_p5)

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #46340: origin
                    (at_c_p6)

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #77402: origin
                    (at_c_p7)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #67973: origin
                    (at_c_p8)

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #20276: origin
                    (not_at_c_p7)

                    ; #21427: origin
                    (at_c_p9)

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))

                    ; #77402: <==negation-removal== 20276 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #54910: origin
                    (not_at_c_p8)

                    ; #61634: origin
                    (at_c_p1)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #44986: origin
                    (at_c_p10)

                    ; #54910: origin
                    (not_at_c_p8)

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #47325: origin
                    (at_c_p11)

                    ; #54910: origin
                    (not_at_c_p8)

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #54910: origin
                    (not_at_c_p8)

                    ; #57503: origin
                    (at_c_p12)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #54910: origin
                    (not_at_c_p8)

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #23714: origin
                    (at_c_p3)

                    ; #54910: origin
                    (not_at_c_p8)

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #54910: origin
                    (not_at_c_p8)

                    ; #63235: origin
                    (at_c_p4)

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #54910: origin
                    (not_at_c_p8)

                    ; #90584: origin
                    (at_c_p5)

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #46340: origin
                    (at_c_p6)

                    ; #54910: origin
                    (not_at_c_p8)

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #54910: origin
                    (not_at_c_p8)

                    ; #77402: origin
                    (at_c_p7)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #54910: origin
                    (not_at_c_p8)

                    ; #67973: origin
                    (at_c_p8)

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #21427: origin
                    (at_c_p9)

                    ; #54910: origin
                    (not_at_c_p8)

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))

                    ; #67973: <==negation-removal== 54910 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #32335: origin
                    (not_at_c_p9)

                    ; #61634: origin
                    (at_c_p1)

                    ; #13273: <==negation-removal== 61634 (pos)
                    (not (not_at_c_p1))

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #32335: origin
                    (not_at_c_p9)

                    ; #44986: origin
                    (at_c_p10)

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))

                    ; #55940: <==negation-removal== 44986 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #32335: origin
                    (not_at_c_p9)

                    ; #47325: origin
                    (at_c_p11)

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))

                    ; #98196: <==negation-removal== 47325 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #32335: origin
                    (not_at_c_p9)

                    ; #57503: origin
                    (at_c_p12)

                    ; #14269: <==negation-removal== 57503 (pos)
                    (not (not_at_c_p12))

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #13241: origin
                    (at_c_p2)

                    ; #32335: origin
                    (not_at_c_p9)

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))

                    ; #73336: <==negation-removal== 13241 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #23714: origin
                    (at_c_p3)

                    ; #32335: origin
                    (not_at_c_p9)

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))

                    ; #52162: <==negation-removal== 23714 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #32335: origin
                    (not_at_c_p9)

                    ; #63235: origin
                    (at_c_p4)

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))

                    ; #75332: <==negation-removal== 63235 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #32335: origin
                    (not_at_c_p9)

                    ; #90584: origin
                    (at_c_p5)

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))

                    ; #79570: <==negation-removal== 90584 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #32335: origin
                    (not_at_c_p9)

                    ; #46340: origin
                    (at_c_p6)

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))

                    ; #47862: <==negation-removal== 46340 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #32335: origin
                    (not_at_c_p9)

                    ; #77402: origin
                    (at_c_p7)

                    ; #20276: <==negation-removal== 77402 (pos)
                    (not (not_at_c_p7))

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #32335: origin
                    (not_at_c_p9)

                    ; #67973: origin
                    (at_c_p8)

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))

                    ; #54910: <==negation-removal== 67973 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #21427: origin
                    (at_c_p9)

                    ; #32335: origin
                    (not_at_c_p9)

                    ; #21427: <==negation-removal== 32335 (pos)
                    (not (at_c_p9))

                    ; #32335: <==negation-removal== 21427 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14510: <==commonly_known== 10836 (neg)
                    (Pc_checked_p10)

                    ; #31778: <==commonly_known== 88111 (pos)
                    (Bb_checked_p10)

                    ; #33453: <==commonly_known== 88111 (pos)
                    (Ba_checked_p10)

                    ; #36274: <==closure== 88635 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #44988: <==commonly_known== 10836 (neg)
                    (Pb_checked_p10)

                    ; #45126: <==commonly_known== 10836 (neg)
                    (Pa_checked_p10)

                    ; #45147: <==closure== 89624 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #77162: <==commonly_known== 88111 (pos)
                    (Bc_checked_p10)

                    ; #88111: origin
                    (checked_p10)

                    ; #88635: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #89624: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #10836: <==negation-removal== 88111 (pos)
                    (not (not_checked_p10))

                    ; #13960: <==negation-removal== 14510 (pos)
                    (not (Bc_not_checked_p10))

                    ; #25426: <==negation-removal== 33453 (pos)
                    (not (Pa_not_checked_p10))

                    ; #27203: <==negation-removal== 44988 (pos)
                    (not (Bb_not_checked_p10))

                    ; #29700: <==negation-removal== 45126 (pos)
                    (not (Ba_not_checked_p10))

                    ; #39366: <==negation-removal== 88635 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #40701: <==uncertain_firing== 88635 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #46199: <==negation-removal== 36274 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #54330: <==uncertain_firing== 36274 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #54879: <==uncertain_firing== 89624 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #62007: <==uncertain_firing== 45147 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #66690: <==negation-removal== 31778 (pos)
                    (not (Pb_not_checked_p10))

                    ; #75157: <==negation-removal== 89624 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #79295: <==negation-removal== 45147 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #84552: <==negation-removal== 77162 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #12462: <==commonly_known== 26281 (pos)
                    (Bc_checked_p11)

                    ; #17333: <==closure== 75315 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #20368: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #20682: <==commonly_known== 55211 (neg)
                    (Pa_checked_p11)

                    ; #26281: origin
                    (checked_p11)

                    ; #57742: <==closure== 20368 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #64251: <==commonly_known== 55211 (neg)
                    (Pc_checked_p11)

                    ; #66998: <==commonly_known== 55211 (neg)
                    (Pb_checked_p11)

                    ; #75165: <==commonly_known== 26281 (pos)
                    (Bb_checked_p11)

                    ; #75315: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #90348: <==commonly_known== 26281 (pos)
                    (Ba_checked_p11)

                    ; #12485: <==negation-removal== 20682 (pos)
                    (not (Ba_not_checked_p11))

                    ; #12894: <==uncertain_firing== 75315 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #14340: <==negation-removal== 75165 (pos)
                    (not (Pb_not_checked_p11))

                    ; #15208: <==uncertain_firing== 17333 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #23574: <==negation-removal== 64251 (pos)
                    (not (Bc_not_checked_p11))

                    ; #28694: <==negation-removal== 20368 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #37075: <==uncertain_firing== 20368 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #41367: <==negation-removal== 75315 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #55189: <==negation-removal== 17333 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #55211: <==negation-removal== 26281 (pos)
                    (not (not_checked_p11))

                    ; #57597: <==negation-removal== 57742 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #62502: <==negation-removal== 90348 (pos)
                    (not (Pa_not_checked_p11))

                    ; #64188: <==negation-removal== 66998 (pos)
                    (not (Bb_not_checked_p11))

                    ; #66180: <==negation-removal== 12462 (pos)
                    (not (Pc_not_checked_p11))

                    ; #76459: <==uncertain_firing== 57742 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12777: <==closure== 56014 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #31127: <==commonly_known== 13881 (neg)
                    (Pa_checked_p12)

                    ; #42419: <==commonly_known== 84263 (pos)
                    (Ba_checked_p12)

                    ; #43139: <==commonly_known== 84263 (pos)
                    (Bb_checked_p12)

                    ; #51123: <==commonly_known== 84263 (pos)
                    (Bc_checked_p12)

                    ; #56014: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #68761: <==commonly_known== 13881 (neg)
                    (Pb_checked_p12)

                    ; #70432: <==closure== 79618 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #79618: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #84263: origin
                    (checked_p12)

                    ; #85292: <==commonly_known== 13881 (neg)
                    (Pc_checked_p12)

                    ; #13881: <==negation-removal== 84263 (pos)
                    (not (not_checked_p12))

                    ; #24194: <==negation-removal== 51123 (pos)
                    (not (Pc_not_checked_p12))

                    ; #27971: <==negation-removal== 12777 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #34861: <==negation-removal== 43139 (pos)
                    (not (Pb_not_checked_p12))

                    ; #40692: <==uncertain_firing== 12777 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #44720: <==negation-removal== 56014 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #57670: <==negation-removal== 31127 (pos)
                    (not (Ba_not_checked_p12))

                    ; #62532: <==negation-removal== 42419 (pos)
                    (not (Pa_not_checked_p12))

                    ; #62580: <==negation-removal== 79618 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #64224: <==negation-removal== 70432 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #69378: <==uncertain_firing== 56014 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #75714: <==uncertain_firing== 70432 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #78663: <==uncertain_firing== 79618 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #78705: <==negation-removal== 85292 (pos)
                    (not (Bc_not_checked_p12))

                    ; #83537: <==negation-removal== 68761 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12319: <==closure== 76791 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #13112: <==commonly_known== 32281 (pos)
                    (Bb_checked_p1)

                    ; #21106: <==commonly_known== 32281 (pos)
                    (Bc_checked_p1)

                    ; #32281: origin
                    (checked_p1)

                    ; #37850: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #46689: <==commonly_known== 36671 (neg)
                    (Pb_checked_p1)

                    ; #67809: <==commonly_known== 32281 (pos)
                    (Ba_checked_p1)

                    ; #72297: <==closure== 37850 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #76791: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #87189: <==commonly_known== 36671 (neg)
                    (Pa_checked_p1)

                    ; #89128: <==commonly_known== 36671 (neg)
                    (Pc_checked_p1)

                    ; #10614: <==negation-removal== 72297 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #19287: <==negation-removal== 76791 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #24560: <==negation-removal== 37850 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #29270: <==negation-removal== 13112 (pos)
                    (not (Pb_not_checked_p1))

                    ; #33755: <==uncertain_firing== 72297 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #36671: <==negation-removal== 32281 (pos)
                    (not (not_checked_p1))

                    ; #40405: <==uncertain_firing== 37850 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #49734: <==negation-removal== 21106 (pos)
                    (not (Pc_not_checked_p1))

                    ; #52604: <==negation-removal== 67809 (pos)
                    (not (Pa_not_checked_p1))

                    ; #55950: <==uncertain_firing== 12319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #56639: <==negation-removal== 12319 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #69066: <==negation-removal== 46689 (pos)
                    (not (Bb_not_checked_p1))

                    ; #73046: <==negation-removal== 89128 (pos)
                    (not (Bc_not_checked_p1))

                    ; #73811: <==negation-removal== 87189 (pos)
                    (not (Ba_not_checked_p1))

                    ; #76320: <==uncertain_firing== 76791 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11309: <==commonly_known== 48207 (pos)
                    (Bb_checked_p2)

                    ; #13547: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #14046: <==commonly_known== 48207 (pos)
                    (Ba_checked_p2)

                    ; #18799: <==commonly_known== 76648 (neg)
                    (Pa_checked_p2)

                    ; #41926: <==commonly_known== 48207 (pos)
                    (Bc_checked_p2)

                    ; #42264: <==commonly_known== 76648 (neg)
                    (Pc_checked_p2)

                    ; #48207: origin
                    (checked_p2)

                    ; #50689: <==closure== 13547 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #51279: <==commonly_known== 76648 (neg)
                    (Pb_checked_p2)

                    ; #63480: <==closure== 84030 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #84030: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #34184: <==uncertain_firing== 63480 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #38956: <==uncertain_firing== 13547 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #42961: <==negation-removal== 41926 (pos)
                    (not (Pc_not_checked_p2))

                    ; #45486: <==uncertain_firing== 84030 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #48121: <==negation-removal== 42264 (pos)
                    (not (Bc_not_checked_p2))

                    ; #50178: <==negation-removal== 63480 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #51863: <==negation-removal== 50689 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #54225: <==negation-removal== 11309 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54986: <==negation-removal== 13547 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #60650: <==negation-removal== 18799 (pos)
                    (not (Ba_not_checked_p2))

                    ; #61671: <==negation-removal== 14046 (pos)
                    (not (Pa_not_checked_p2))

                    ; #74773: <==negation-removal== 51279 (pos)
                    (not (Bb_not_checked_p2))

                    ; #75184: <==uncertain_firing== 50689 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #76648: <==negation-removal== 48207 (pos)
                    (not (not_checked_p2))

                    ; #86340: <==negation-removal== 84030 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13965: <==commonly_known== 85368 (pos)
                    (Bb_checked_p3)

                    ; #18329: <==commonly_known== 85368 (pos)
                    (Bc_checked_p3)

                    ; #44593: <==commonly_known== 80165 (neg)
                    (Pc_checked_p3)

                    ; #50080: <==commonly_known== 80165 (neg)
                    (Pa_checked_p3)

                    ; #52759: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #59237: <==closure== 91340 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #71060: <==closure== 52759 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #73980: <==commonly_known== 85368 (pos)
                    (Ba_checked_p3)

                    ; #74061: <==commonly_known== 80165 (neg)
                    (Pb_checked_p3)

                    ; #85368: origin
                    (checked_p3)

                    ; #91340: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #23919: <==negation-removal== 44593 (pos)
                    (not (Bc_not_checked_p3))

                    ; #24653: <==negation-removal== 71060 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #35917: <==negation-removal== 50080 (pos)
                    (not (Ba_not_checked_p3))

                    ; #36492: <==negation-removal== 59237 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #47883: <==negation-removal== 74061 (pos)
                    (not (Bb_not_checked_p3))

                    ; #50629: <==negation-removal== 18329 (pos)
                    (not (Pc_not_checked_p3))

                    ; #51217: <==uncertain_firing== 52759 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #51617: <==uncertain_firing== 59237 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #52745: <==negation-removal== 91340 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #64205: <==negation-removal== 73980 (pos)
                    (not (Pa_not_checked_p3))

                    ; #69823: <==negation-removal== 13965 (pos)
                    (not (Pb_not_checked_p3))

                    ; #74937: <==uncertain_firing== 71060 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #76102: <==negation-removal== 52759 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #80165: <==negation-removal== 85368 (pos)
                    (not (not_checked_p3))

                    ; #82807: <==uncertain_firing== 91340 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11402: <==commonly_known== 37662 (pos)
                    (Bc_checked_p4)

                    ; #16128: <==commonly_known== 37662 (pos)
                    (Bb_checked_p4)

                    ; #27166: <==commonly_known== 75217 (neg)
                    (Pa_checked_p4)

                    ; #27765: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #37662: origin
                    (checked_p4)

                    ; #57599: <==commonly_known== 75217 (neg)
                    (Pc_checked_p4)

                    ; #60810: <==closure== 27765 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #63230: <==commonly_known== 75217 (neg)
                    (Pb_checked_p4)

                    ; #65225: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #70316: <==closure== 65225 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #85064: <==commonly_known== 37662 (pos)
                    (Ba_checked_p4)

                    ; #11353: <==negation-removal== 60810 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #12996: <==negation-removal== 65225 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #14666: <==uncertain_firing== 60810 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #25320: <==negation-removal== 16128 (pos)
                    (not (Pb_not_checked_p4))

                    ; #37664: <==uncertain_firing== 70316 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #39468: <==negation-removal== 63230 (pos)
                    (not (Bb_not_checked_p4))

                    ; #40653: <==negation-removal== 85064 (pos)
                    (not (Pa_not_checked_p4))

                    ; #44650: <==negation-removal== 57599 (pos)
                    (not (Bc_not_checked_p4))

                    ; #52419: <==negation-removal== 70316 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #56108: <==negation-removal== 27765 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #60632: <==negation-removal== 11402 (pos)
                    (not (Pc_not_checked_p4))

                    ; #68691: <==uncertain_firing== 27765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #73165: <==uncertain_firing== 65225 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #75217: <==negation-removal== 37662 (pos)
                    (not (not_checked_p4))

                    ; #88272: <==negation-removal== 27166 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #16668: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #21006: <==commonly_known== 34225 (pos)
                    (Bc_checked_p5)

                    ; #24051: <==commonly_known== 64316 (neg)
                    (Pa_checked_p5)

                    ; #34225: origin
                    (checked_p5)

                    ; #41232: <==commonly_known== 34225 (pos)
                    (Bb_checked_p5)

                    ; #46151: <==closure== 16668 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #56536: <==commonly_known== 34225 (pos)
                    (Ba_checked_p5)

                    ; #62784: <==commonly_known== 64316 (neg)
                    (Pc_checked_p5)

                    ; #66354: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #74377: <==closure== 66354 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #74514: <==commonly_known== 64316 (neg)
                    (Pb_checked_p5)

                    ; #13611: <==negation-removal== 66354 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #18952: <==negation-removal== 74377 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #24336: <==negation-removal== 41232 (pos)
                    (not (Pb_not_checked_p5))

                    ; #38209: <==negation-removal== 74514 (pos)
                    (not (Bb_not_checked_p5))

                    ; #55612: <==negation-removal== 46151 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #56237: <==negation-removal== 24051 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58962: <==negation-removal== 62784 (pos)
                    (not (Bc_not_checked_p5))

                    ; #62259: <==uncertain_firing== 46151 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #64316: <==negation-removal== 34225 (pos)
                    (not (not_checked_p5))

                    ; #67246: <==negation-removal== 16668 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #74287: <==uncertain_firing== 16668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #79633: <==negation-removal== 56536 (pos)
                    (not (Pa_not_checked_p5))

                    ; #83715: <==uncertain_firing== 74377 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #86162: <==negation-removal== 21006 (pos)
                    (not (Pc_not_checked_p5))

                    ; #90360: <==uncertain_firing== 66354 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13217: <==commonly_known== 48522 (pos)
                    (Ba_checked_p6)

                    ; #16500: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #48522: origin
                    (checked_p6)

                    ; #56323: <==closure== 70286 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #61349: <==commonly_known== 71796 (neg)
                    (Pa_checked_p6)

                    ; #70286: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #73210: <==commonly_known== 71796 (neg)
                    (Pc_checked_p6)

                    ; #77614: <==commonly_known== 48522 (pos)
                    (Bb_checked_p6)

                    ; #78751: <==commonly_known== 71796 (neg)
                    (Pb_checked_p6)

                    ; #83403: <==commonly_known== 48522 (pos)
                    (Bc_checked_p6)

                    ; #86949: <==closure== 16500 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #10406: <==negation-removal== 16500 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #31144: <==uncertain_firing== 70286 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #31850: <==negation-removal== 77614 (pos)
                    (not (Pb_not_checked_p6))

                    ; #33556: <==uncertain_firing== 16500 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #35458: <==negation-removal== 73210 (pos)
                    (not (Bc_not_checked_p6))

                    ; #42455: <==negation-removal== 13217 (pos)
                    (not (Pa_not_checked_p6))

                    ; #49404: <==negation-removal== 78751 (pos)
                    (not (Bb_not_checked_p6))

                    ; #52517: <==uncertain_firing== 86949 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #53768: <==negation-removal== 70286 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #59794: <==negation-removal== 86949 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #61349: <==uncertain_firing== 56323 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #66217: <==negation-removal== 56323 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #71796: <==negation-removal== 48522 (pos)
                    (not (not_checked_p6))

                    ; #76962: <==negation-removal== 83403 (pos)
                    (not (Pc_not_checked_p6))

                    ; #83920: <==negation-removal== 61349 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10363: <==commonly_known== 77053 (neg)
                    (Pb_checked_p7)

                    ; #13520: <==closure== 99676 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #34417: <==commonly_known== 77053 (neg)
                    (Pa_checked_p7)

                    ; #34457: <==closure== 56264 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #46763: <==commonly_known== 83916 (pos)
                    (Bc_checked_p7)

                    ; #56264: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #57063: <==commonly_known== 77053 (neg)
                    (Pc_checked_p7)

                    ; #61355: <==commonly_known== 83916 (pos)
                    (Ba_checked_p7)

                    ; #82494: <==commonly_known== 83916 (pos)
                    (Bb_checked_p7)

                    ; #83916: origin
                    (checked_p7)

                    ; #99676: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #16981: <==uncertain_firing== 99676 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22136: <==negation-removal== 61355 (pos)
                    (not (Pa_not_checked_p7))

                    ; #24684: <==negation-removal== 10363 (pos)
                    (not (Bb_not_checked_p7))

                    ; #42553: <==negation-removal== 57063 (pos)
                    (not (Bc_not_checked_p7))

                    ; #45653: <==negation-removal== 56264 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #46923: <==negation-removal== 46763 (pos)
                    (not (Pc_not_checked_p7))

                    ; #59370: <==uncertain_firing== 34457 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #67938: <==uncertain_firing== 13520 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #72892: <==negation-removal== 34457 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #76543: <==negation-removal== 99676 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #77053: <==negation-removal== 83916 (pos)
                    (not (not_checked_p7))

                    ; #77741: <==negation-removal== 13520 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #78344: <==negation-removal== 34417 (pos)
                    (not (Ba_not_checked_p7))

                    ; #86760: <==uncertain_firing== 56264 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #87555: <==negation-removal== 82494 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13740: <==closure== 58827 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #21056: <==commonly_known== 25678 (pos)
                    (Bc_checked_p8)

                    ; #25372: <==commonly_known== 25678 (pos)
                    (Ba_checked_p8)

                    ; #25678: origin
                    (checked_p8)

                    ; #30722: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #53501: <==commonly_known== 29184 (neg)
                    (Pa_checked_p8)

                    ; #58497: <==closure== 30722 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #58827: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #61693: <==commonly_known== 25678 (pos)
                    (Bb_checked_p8)

                    ; #72703: <==commonly_known== 29184 (neg)
                    (Pb_checked_p8)

                    ; #79579: <==commonly_known== 29184 (neg)
                    (Pc_checked_p8)

                    ; #13315: <==uncertain_firing== 30722 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #22740: <==negation-removal== 53501 (pos)
                    (not (Ba_not_checked_p8))

                    ; #25495: <==negation-removal== 79579 (pos)
                    (not (Bc_not_checked_p8))

                    ; #29184: <==negation-removal== 25678 (pos)
                    (not (not_checked_p8))

                    ; #29906: <==negation-removal== 25372 (pos)
                    (not (Pa_not_checked_p8))

                    ; #35001: <==negation-removal== 72703 (pos)
                    (not (Bb_not_checked_p8))

                    ; #35559: <==uncertain_firing== 58827 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #43910: <==negation-removal== 21056 (pos)
                    (not (Pc_not_checked_p8))

                    ; #61098: <==negation-removal== 61693 (pos)
                    (not (Pb_not_checked_p8))

                    ; #66005: <==uncertain_firing== 13740 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #74992: <==negation-removal== 30722 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #75516: <==negation-removal== 13740 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #79709: <==negation-removal== 58827 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #88796: <==uncertain_firing== 58497 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #91540: <==negation-removal== 58497 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14745: <==commonly_known== 60389 (pos)
                    (Bc_checked_p9)

                    ; #16447: <==closure== 74704 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #21004: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #35968: <==commonly_known== 60389 (pos)
                    (Bb_checked_p9)

                    ; #55658: <==commonly_known== 21370 (neg)
                    (Pb_checked_p9)

                    ; #60389: origin
                    (checked_p9)

                    ; #62869: <==closure== 21004 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #67328: <==commonly_known== 60389 (pos)
                    (Ba_checked_p9)

                    ; #74704: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #77264: <==commonly_known== 21370 (neg)
                    (Pc_checked_p9)

                    ; #88353: <==commonly_known== 21370 (neg)
                    (Pa_checked_p9)

                    ; #19625: <==uncertain_firing== 62869 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #21370: <==negation-removal== 60389 (pos)
                    (not (not_checked_p9))

                    ; #21724: <==negation-removal== 62869 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #24632: <==uncertain_firing== 16447 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #33844: <==negation-removal== 35968 (pos)
                    (not (Pb_not_checked_p9))

                    ; #42837: <==negation-removal== 88353 (pos)
                    (not (Ba_not_checked_p9))

                    ; #43531: <==negation-removal== 21004 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #44591: <==uncertain_firing== 21004 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #65261: <==negation-removal== 77264 (pos)
                    (not (Bc_not_checked_p9))

                    ; #66849: <==negation-removal== 55658 (pos)
                    (not (Bb_not_checked_p9))

                    ; #72732: <==negation-removal== 74704 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #76291: <==negation-removal== 16447 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #76997: <==negation-removal== 67328 (pos)
                    (not (Pa_not_checked_p9))

                    ; #88948: <==negation-removal== 14745 (pos)
                    (not (Pc_not_checked_p9))

                    ; #89977: <==uncertain_firing== 74704 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14510: <==commonly_known== 10836 (neg)
                    (Pc_checked_p10)

                    ; #21690: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #24055: <==closure== 21690 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #27185: <==closure== 73601 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #31778: <==commonly_known== 88111 (pos)
                    (Bb_checked_p10)

                    ; #33453: <==commonly_known== 88111 (pos)
                    (Ba_checked_p10)

                    ; #44988: <==commonly_known== 10836 (neg)
                    (Pb_checked_p10)

                    ; #45126: <==commonly_known== 10836 (neg)
                    (Pa_checked_p10)

                    ; #73601: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #77162: <==commonly_known== 88111 (pos)
                    (Bc_checked_p10)

                    ; #88111: origin
                    (checked_p10)

                    ; #10836: <==negation-removal== 88111 (pos)
                    (not (not_checked_p10))

                    ; #13960: <==negation-removal== 14510 (pos)
                    (not (Bc_not_checked_p10))

                    ; #25426: <==negation-removal== 33453 (pos)
                    (not (Pa_not_checked_p10))

                    ; #27194: <==uncertain_firing== 73601 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #27203: <==negation-removal== 44988 (pos)
                    (not (Bb_not_checked_p10))

                    ; #29700: <==negation-removal== 45126 (pos)
                    (not (Ba_not_checked_p10))

                    ; #45609: <==negation-removal== 21690 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #49615: <==uncertain_firing== 27185 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #54763: <==uncertain_firing== 21690 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #66690: <==negation-removal== 31778 (pos)
                    (not (Pb_not_checked_p10))

                    ; #71807: <==negation-removal== 24055 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #74435: <==uncertain_firing== 24055 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #79808: <==negation-removal== 27185 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #84552: <==negation-removal== 77162 (pos)
                    (not (Pc_not_checked_p10))

                    ; #88412: <==negation-removal== 73601 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #12462: <==commonly_known== 26281 (pos)
                    (Bc_checked_p11)

                    ; #20682: <==commonly_known== 55211 (neg)
                    (Pa_checked_p11)

                    ; #26281: origin
                    (checked_p11)

                    ; #43056: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #44542: <==closure== 70834 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #64251: <==commonly_known== 55211 (neg)
                    (Pc_checked_p11)

                    ; #66998: <==commonly_known== 55211 (neg)
                    (Pb_checked_p11)

                    ; #70834: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #75165: <==commonly_known== 26281 (pos)
                    (Bb_checked_p11)

                    ; #80560: <==closure== 43056 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #90348: <==commonly_known== 26281 (pos)
                    (Ba_checked_p11)

                    ; #12485: <==negation-removal== 20682 (pos)
                    (not (Ba_not_checked_p11))

                    ; #14340: <==negation-removal== 75165 (pos)
                    (not (Pb_not_checked_p11))

                    ; #16825: <==negation-removal== 43056 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #21378: <==uncertain_firing== 43056 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #23574: <==negation-removal== 64251 (pos)
                    (not (Bc_not_checked_p11))

                    ; #29131: <==negation-removal== 70834 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #31322: <==negation-removal== 80560 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #50080: <==uncertain_firing== 70834 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #51853: <==negation-removal== 44542 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #55211: <==negation-removal== 26281 (pos)
                    (not (not_checked_p11))

                    ; #55987: <==uncertain_firing== 44542 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #62502: <==negation-removal== 90348 (pos)
                    (not (Pa_not_checked_p11))

                    ; #64188: <==negation-removal== 66998 (pos)
                    (not (Bb_not_checked_p11))

                    ; #66180: <==negation-removal== 12462 (pos)
                    (not (Pc_not_checked_p11))

                    ; #69410: <==uncertain_firing== 80560 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #18780: <==closure== 30592 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #19153: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #30592: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #31127: <==commonly_known== 13881 (neg)
                    (Pa_checked_p12)

                    ; #41203: <==closure== 19153 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #42419: <==commonly_known== 84263 (pos)
                    (Ba_checked_p12)

                    ; #43139: <==commonly_known== 84263 (pos)
                    (Bb_checked_p12)

                    ; #51123: <==commonly_known== 84263 (pos)
                    (Bc_checked_p12)

                    ; #68761: <==commonly_known== 13881 (neg)
                    (Pb_checked_p12)

                    ; #84263: origin
                    (checked_p12)

                    ; #85292: <==commonly_known== 13881 (neg)
                    (Pc_checked_p12)

                    ; #13881: <==negation-removal== 84263 (pos)
                    (not (not_checked_p12))

                    ; #24194: <==negation-removal== 51123 (pos)
                    (not (Pc_not_checked_p12))

                    ; #34861: <==negation-removal== 43139 (pos)
                    (not (Pb_not_checked_p12))

                    ; #35282: <==uncertain_firing== 41203 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #38043: <==uncertain_firing== 19153 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #45588: <==negation-removal== 41203 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #45729: <==uncertain_firing== 30592 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #57670: <==negation-removal== 31127 (pos)
                    (not (Ba_not_checked_p12))

                    ; #62532: <==negation-removal== 42419 (pos)
                    (not (Pa_not_checked_p12))

                    ; #67379: <==negation-removal== 18780 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #69231: <==uncertain_firing== 18780 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #78705: <==negation-removal== 85292 (pos)
                    (not (Bc_not_checked_p12))

                    ; #83537: <==negation-removal== 68761 (pos)
                    (not (Bb_not_checked_p12))

                    ; #86399: <==negation-removal== 30592 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #87781: <==negation-removal== 19153 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11170: <==closure== 89226 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #13112: <==commonly_known== 32281 (pos)
                    (Bb_checked_p1)

                    ; #21106: <==commonly_known== 32281 (pos)
                    (Bc_checked_p1)

                    ; #32281: origin
                    (checked_p1)

                    ; #46689: <==commonly_known== 36671 (neg)
                    (Pb_checked_p1)

                    ; #58148: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #66033: <==closure== 58148 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #67809: <==commonly_known== 32281 (pos)
                    (Ba_checked_p1)

                    ; #87189: <==commonly_known== 36671 (neg)
                    (Pa_checked_p1)

                    ; #89128: <==commonly_known== 36671 (neg)
                    (Pc_checked_p1)

                    ; #89226: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #11131: <==negation-removal== 66033 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #11236: <==uncertain_firing== 66033 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #15729: <==uncertain_firing== 89226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #18392: <==negation-removal== 89226 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #21534: <==uncertain_firing== 58148 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #29270: <==negation-removal== 13112 (pos)
                    (not (Pb_not_checked_p1))

                    ; #36671: <==negation-removal== 32281 (pos)
                    (not (not_checked_p1))

                    ; #40862: <==negation-removal== 58148 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #49734: <==negation-removal== 21106 (pos)
                    (not (Pc_not_checked_p1))

                    ; #50562: <==uncertain_firing== 11170 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52604: <==negation-removal== 67809 (pos)
                    (not (Pa_not_checked_p1))

                    ; #69066: <==negation-removal== 46689 (pos)
                    (not (Bb_not_checked_p1))

                    ; #73046: <==negation-removal== 89128 (pos)
                    (not (Bc_not_checked_p1))

                    ; #73811: <==negation-removal== 87189 (pos)
                    (not (Ba_not_checked_p1))

                    ; #91380: <==negation-removal== 11170 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11309: <==commonly_known== 48207 (pos)
                    (Bb_checked_p2)

                    ; #14046: <==commonly_known== 48207 (pos)
                    (Ba_checked_p2)

                    ; #18799: <==commonly_known== 76648 (neg)
                    (Pa_checked_p2)

                    ; #34956: <==closure== 76249 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #41926: <==commonly_known== 48207 (pos)
                    (Bc_checked_p2)

                    ; #42264: <==commonly_known== 76648 (neg)
                    (Pc_checked_p2)

                    ; #48207: origin
                    (checked_p2)

                    ; #51279: <==commonly_known== 76648 (neg)
                    (Pb_checked_p2)

                    ; #76249: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #80595: <==closure== 89620 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #89620: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #13087: <==negation-removal== 76249 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #26176: <==negation-removal== 80595 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #28241: <==uncertain_firing== 76249 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #33647: <==uncertain_firing== 89620 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #42961: <==negation-removal== 41926 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43981: <==negation-removal== 34956 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #48121: <==negation-removal== 42264 (pos)
                    (not (Bc_not_checked_p2))

                    ; #54225: <==negation-removal== 11309 (pos)
                    (not (Pb_not_checked_p2))

                    ; #56419: <==negation-removal== 89620 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #60650: <==negation-removal== 18799 (pos)
                    (not (Ba_not_checked_p2))

                    ; #61671: <==negation-removal== 14046 (pos)
                    (not (Pa_not_checked_p2))

                    ; #74773: <==negation-removal== 51279 (pos)
                    (not (Bb_not_checked_p2))

                    ; #76648: <==negation-removal== 48207 (pos)
                    (not (not_checked_p2))

                    ; #78599: <==uncertain_firing== 34956 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #89018: <==uncertain_firing== 80595 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13965: <==commonly_known== 85368 (pos)
                    (Bb_checked_p3)

                    ; #18329: <==commonly_known== 85368 (pos)
                    (Bc_checked_p3)

                    ; #22921: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #36215: <==closure== 22921 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #44593: <==commonly_known== 80165 (neg)
                    (Pc_checked_p3)

                    ; #50080: <==commonly_known== 80165 (neg)
                    (Pa_checked_p3)

                    ; #59417: <==closure== 70446 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #70446: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #73980: <==commonly_known== 85368 (pos)
                    (Ba_checked_p3)

                    ; #74061: <==commonly_known== 80165 (neg)
                    (Pb_checked_p3)

                    ; #85368: origin
                    (checked_p3)

                    ; #21736: <==negation-removal== 70446 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #22488: <==uncertain_firing== 36215 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #23919: <==negation-removal== 44593 (pos)
                    (not (Bc_not_checked_p3))

                    ; #24282: <==uncertain_firing== 70446 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #31898: <==negation-removal== 59417 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #35917: <==negation-removal== 50080 (pos)
                    (not (Ba_not_checked_p3))

                    ; #47883: <==negation-removal== 74061 (pos)
                    (not (Bb_not_checked_p3))

                    ; #50629: <==negation-removal== 18329 (pos)
                    (not (Pc_not_checked_p3))

                    ; #52798: <==negation-removal== 22921 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #59942: <==uncertain_firing== 22921 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #64205: <==negation-removal== 73980 (pos)
                    (not (Pa_not_checked_p3))

                    ; #69823: <==negation-removal== 13965 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80165: <==negation-removal== 85368 (pos)
                    (not (not_checked_p3))

                    ; #80276: <==negation-removal== 36215 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #80703: <==uncertain_firing== 59417 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11402: <==commonly_known== 37662 (pos)
                    (Bc_checked_p4)

                    ; #16128: <==commonly_known== 37662 (pos)
                    (Bb_checked_p4)

                    ; #27166: <==commonly_known== 75217 (neg)
                    (Pa_checked_p4)

                    ; #37662: origin
                    (checked_p4)

                    ; #54763: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #57599: <==commonly_known== 75217 (neg)
                    (Pc_checked_p4)

                    ; #60248: <==closure== 54763 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #60970: <==closure== 61360 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #61360: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #63230: <==commonly_known== 75217 (neg)
                    (Pb_checked_p4)

                    ; #85064: <==commonly_known== 37662 (pos)
                    (Ba_checked_p4)

                    ; #10013: <==negation-removal== 54763 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #21971: <==negation-removal== 60248 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #25320: <==negation-removal== 16128 (pos)
                    (not (Pb_not_checked_p4))

                    ; #39468: <==negation-removal== 63230 (pos)
                    (not (Bb_not_checked_p4))

                    ; #40653: <==negation-removal== 85064 (pos)
                    (not (Pa_not_checked_p4))

                    ; #44650: <==negation-removal== 57599 (pos)
                    (not (Bc_not_checked_p4))

                    ; #45059: <==uncertain_firing== 60970 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #51235: <==uncertain_firing== 61360 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #60632: <==negation-removal== 11402 (pos)
                    (not (Pc_not_checked_p4))

                    ; #61702: <==uncertain_firing== 54763 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #63307: <==uncertain_firing== 60248 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #66688: <==negation-removal== 61360 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #75217: <==negation-removal== 37662 (pos)
                    (not (not_checked_p4))

                    ; #88272: <==negation-removal== 27166 (pos)
                    (not (Ba_not_checked_p4))

                    ; #91102: <==negation-removal== 60970 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #21006: <==commonly_known== 34225 (pos)
                    (Bc_checked_p5)

                    ; #24051: <==commonly_known== 64316 (neg)
                    (Pa_checked_p5)

                    ; #30046: <==closure== 33014 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #33014: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #34225: origin
                    (checked_p5)

                    ; #41232: <==commonly_known== 34225 (pos)
                    (Bb_checked_p5)

                    ; #45486: <==closure== 54776 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #54776: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #56536: <==commonly_known== 34225 (pos)
                    (Ba_checked_p5)

                    ; #62784: <==commonly_known== 64316 (neg)
                    (Pc_checked_p5)

                    ; #74514: <==commonly_known== 64316 (neg)
                    (Pb_checked_p5)

                    ; #14860: <==uncertain_firing== 30046 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #24088: <==negation-removal== 33014 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #24336: <==negation-removal== 41232 (pos)
                    (not (Pb_not_checked_p5))

                    ; #26569: <==negation-removal== 30046 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #31111: <==negation-removal== 45486 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #38209: <==negation-removal== 74514 (pos)
                    (not (Bb_not_checked_p5))

                    ; #50779: <==negation-removal== 54776 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #56237: <==negation-removal== 24051 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58158: <==uncertain_firing== 54776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #58962: <==negation-removal== 62784 (pos)
                    (not (Bc_not_checked_p5))

                    ; #64316: <==negation-removal== 34225 (pos)
                    (not (not_checked_p5))

                    ; #77006: <==uncertain_firing== 33014 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #79546: <==uncertain_firing== 45486 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #79633: <==negation-removal== 56536 (pos)
                    (not (Pa_not_checked_p5))

                    ; #86162: <==negation-removal== 21006 (pos)
                    (not (Pc_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13217: <==commonly_known== 48522 (pos)
                    (Ba_checked_p6)

                    ; #15606: <==closure== 82135 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #30131: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #48522: origin
                    (checked_p6)

                    ; #52579: <==closure== 30131 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #61349: <==commonly_known== 71796 (neg)
                    (Pa_checked_p6)

                    ; #73210: <==commonly_known== 71796 (neg)
                    (Pc_checked_p6)

                    ; #77614: <==commonly_known== 48522 (pos)
                    (Bb_checked_p6)

                    ; #78751: <==commonly_known== 71796 (neg)
                    (Pb_checked_p6)

                    ; #82135: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #83403: <==commonly_known== 48522 (pos)
                    (Bc_checked_p6)

                    ; #10598: <==uncertain_firing== 30131 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #18615: <==negation-removal== 82135 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #27446: <==uncertain_firing== 82135 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #31850: <==negation-removal== 77614 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34068: <==negation-removal== 15606 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #35458: <==negation-removal== 73210 (pos)
                    (not (Bc_not_checked_p6))

                    ; #42455: <==negation-removal== 13217 (pos)
                    (not (Pa_not_checked_p6))

                    ; #48336: <==negation-removal== 52579 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #49404: <==negation-removal== 78751 (pos)
                    (not (Bb_not_checked_p6))

                    ; #59203: <==uncertain_firing== 15606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #71796: <==negation-removal== 48522 (pos)
                    (not (not_checked_p6))

                    ; #75532: <==negation-removal== 30131 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #76962: <==negation-removal== 83403 (pos)
                    (not (Pc_not_checked_p6))

                    ; #83920: <==negation-removal== 61349 (pos)
                    (not (Ba_not_checked_p6))

                    ; #98288: <==uncertain_firing== 52579 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10363: <==commonly_known== 77053 (neg)
                    (Pb_checked_p7)

                    ; #19798: <==closure== 85390 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #34417: <==commonly_known== 77053 (neg)
                    (Pa_checked_p7)

                    ; #41846: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #46763: <==commonly_known== 83916 (pos)
                    (Bc_checked_p7)

                    ; #57063: <==commonly_known== 77053 (neg)
                    (Pc_checked_p7)

                    ; #61355: <==commonly_known== 83916 (pos)
                    (Ba_checked_p7)

                    ; #76649: <==closure== 41846 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #82494: <==commonly_known== 83916 (pos)
                    (Bb_checked_p7)

                    ; #83916: origin
                    (checked_p7)

                    ; #85390: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #11468: <==uncertain_firing== 19798 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #14330: <==uncertain_firing== 41846 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #22136: <==negation-removal== 61355 (pos)
                    (not (Pa_not_checked_p7))

                    ; #24684: <==negation-removal== 10363 (pos)
                    (not (Bb_not_checked_p7))

                    ; #25317: <==negation-removal== 41846 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #37636: <==uncertain_firing== 76649 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #42553: <==negation-removal== 57063 (pos)
                    (not (Bc_not_checked_p7))

                    ; #46923: <==negation-removal== 46763 (pos)
                    (not (Pc_not_checked_p7))

                    ; #48238: <==negation-removal== 85390 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #53320: <==negation-removal== 76649 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #57241: <==negation-removal== 19798 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #63424: <==uncertain_firing== 85390 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #77053: <==negation-removal== 83916 (pos)
                    (not (not_checked_p7))

                    ; #78344: <==negation-removal== 34417 (pos)
                    (not (Ba_not_checked_p7))

                    ; #87555: <==negation-removal== 82494 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20674: <==closure== 71548 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #21056: <==commonly_known== 25678 (pos)
                    (Bc_checked_p8)

                    ; #25372: <==commonly_known== 25678 (pos)
                    (Ba_checked_p8)

                    ; #25678: origin
                    (checked_p8)

                    ; #53501: <==commonly_known== 29184 (neg)
                    (Pa_checked_p8)

                    ; #54383: <==closure== 59839 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #59839: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #61693: <==commonly_known== 25678 (pos)
                    (Bb_checked_p8)

                    ; #71548: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #72703: <==commonly_known== 29184 (neg)
                    (Pb_checked_p8)

                    ; #79579: <==commonly_known== 29184 (neg)
                    (Pc_checked_p8)

                    ; #11971: <==uncertain_firing== 20674 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #17768: <==uncertain_firing== 71548 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #22740: <==negation-removal== 53501 (pos)
                    (not (Ba_not_checked_p8))

                    ; #25495: <==negation-removal== 79579 (pos)
                    (not (Bc_not_checked_p8))

                    ; #29184: <==negation-removal== 25678 (pos)
                    (not (not_checked_p8))

                    ; #29906: <==negation-removal== 25372 (pos)
                    (not (Pa_not_checked_p8))

                    ; #35001: <==negation-removal== 72703 (pos)
                    (not (Bb_not_checked_p8))

                    ; #40582: <==uncertain_firing== 59839 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #42070: <==uncertain_firing== 54383 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #43910: <==negation-removal== 21056 (pos)
                    (not (Pc_not_checked_p8))

                    ; #50756: <==negation-removal== 71548 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #61098: <==negation-removal== 61693 (pos)
                    (not (Pb_not_checked_p8))

                    ; #61921: <==negation-removal== 59839 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #63111: <==negation-removal== 54383 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #71263: <==negation-removal== 20674 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12123: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #14745: <==commonly_known== 60389 (pos)
                    (Bc_checked_p9)

                    ; #31965: <==closure== 12123 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #33631: <==closure== 91706 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #35968: <==commonly_known== 60389 (pos)
                    (Bb_checked_p9)

                    ; #55658: <==commonly_known== 21370 (neg)
                    (Pb_checked_p9)

                    ; #60389: origin
                    (checked_p9)

                    ; #67328: <==commonly_known== 60389 (pos)
                    (Ba_checked_p9)

                    ; #77264: <==commonly_known== 21370 (neg)
                    (Pc_checked_p9)

                    ; #88353: <==commonly_known== 21370 (neg)
                    (Pa_checked_p9)

                    ; #91706: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #21370: <==negation-removal== 60389 (pos)
                    (not (not_checked_p9))

                    ; #24576: <==uncertain_firing== 31965 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #30494: <==negation-removal== 31965 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #33844: <==negation-removal== 35968 (pos)
                    (not (Pb_not_checked_p9))

                    ; #36888: <==negation-removal== 12123 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #42837: <==negation-removal== 88353 (pos)
                    (not (Ba_not_checked_p9))

                    ; #54966: <==uncertain_firing== 33631 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #65261: <==negation-removal== 77264 (pos)
                    (not (Bc_not_checked_p9))

                    ; #65750: <==negation-removal== 33631 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #66849: <==negation-removal== 55658 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73748: <==uncertain_firing== 91706 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #76997: <==negation-removal== 67328 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77475: <==uncertain_firing== 12123 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #79971: <==negation-removal== 91706 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #88948: <==negation-removal== 14745 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14510: <==commonly_known== 10836 (neg)
                    (Pc_checked_p10)

                    ; #19469: <==closure== 66869 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #31778: <==commonly_known== 88111 (pos)
                    (Bb_checked_p10)

                    ; #33453: <==commonly_known== 88111 (pos)
                    (Ba_checked_p10)

                    ; #38915: <==closure== 65601 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #44988: <==commonly_known== 10836 (neg)
                    (Pb_checked_p10)

                    ; #45126: <==commonly_known== 10836 (neg)
                    (Pa_checked_p10)

                    ; #65601: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #66869: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #77162: <==commonly_known== 88111 (pos)
                    (Bc_checked_p10)

                    ; #88111: origin
                    (checked_p10)

                    ; #10836: <==negation-removal== 88111 (pos)
                    (not (not_checked_p10))

                    ; #11361: <==uncertain_firing== 38915 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #13960: <==negation-removal== 14510 (pos)
                    (not (Bc_not_checked_p10))

                    ; #19485: <==uncertain_firing== 65601 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22918: <==uncertain_firing== 19469 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #25426: <==negation-removal== 33453 (pos)
                    (not (Pa_not_checked_p10))

                    ; #25463: <==negation-removal== 65601 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #27203: <==negation-removal== 44988 (pos)
                    (not (Bb_not_checked_p10))

                    ; #29700: <==negation-removal== 45126 (pos)
                    (not (Ba_not_checked_p10))

                    ; #34694: <==negation-removal== 66869 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #41928: <==negation-removal== 19469 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #57447: <==uncertain_firing== 66869 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #66690: <==negation-removal== 31778 (pos)
                    (not (Pb_not_checked_p10))

                    ; #84552: <==negation-removal== 77162 (pos)
                    (not (Pc_not_checked_p10))

                    ; #95873: <==negation-removal== 38915 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #12462: <==commonly_known== 26281 (pos)
                    (Bc_checked_p11)

                    ; #20682: <==commonly_known== 55211 (neg)
                    (Pa_checked_p11)

                    ; #23086: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #26281: origin
                    (checked_p11)

                    ; #29365: <==closure== 42646 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #42646: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #64251: <==commonly_known== 55211 (neg)
                    (Pc_checked_p11)

                    ; #66998: <==commonly_known== 55211 (neg)
                    (Pb_checked_p11)

                    ; #68504: <==closure== 23086 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #75165: <==commonly_known== 26281 (pos)
                    (Bb_checked_p11)

                    ; #90348: <==commonly_known== 26281 (pos)
                    (Ba_checked_p11)

                    ; #12485: <==negation-removal== 20682 (pos)
                    (not (Ba_not_checked_p11))

                    ; #14340: <==negation-removal== 75165 (pos)
                    (not (Pb_not_checked_p11))

                    ; #23574: <==negation-removal== 64251 (pos)
                    (not (Bc_not_checked_p11))

                    ; #38901: <==negation-removal== 23086 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #46660: <==negation-removal== 68504 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #55211: <==negation-removal== 26281 (pos)
                    (not (not_checked_p11))

                    ; #56546: <==uncertain_firing== 29365 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #62502: <==negation-removal== 90348 (pos)
                    (not (Pa_not_checked_p11))

                    ; #64188: <==negation-removal== 66998 (pos)
                    (not (Bb_not_checked_p11))

                    ; #64497: <==negation-removal== 29365 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #66180: <==negation-removal== 12462 (pos)
                    (not (Pc_not_checked_p11))

                    ; #79021: <==negation-removal== 42646 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #79057: <==uncertain_firing== 23086 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #80026: <==uncertain_firing== 68504 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #82434: <==uncertain_firing== 42646 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #25243: <==closure== 50308 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #31127: <==commonly_known== 13881 (neg)
                    (Pa_checked_p12)

                    ; #36233: <==closure== 78030 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #42419: <==commonly_known== 84263 (pos)
                    (Ba_checked_p12)

                    ; #43139: <==commonly_known== 84263 (pos)
                    (Bb_checked_p12)

                    ; #50308: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #51123: <==commonly_known== 84263 (pos)
                    (Bc_checked_p12)

                    ; #68761: <==commonly_known== 13881 (neg)
                    (Pb_checked_p12)

                    ; #78030: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #84263: origin
                    (checked_p12)

                    ; #85292: <==commonly_known== 13881 (neg)
                    (Pc_checked_p12)

                    ; #13881: <==negation-removal== 84263 (pos)
                    (not (not_checked_p12))

                    ; #14145: <==negation-removal== 50308 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #15869: <==negation-removal== 36233 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #24194: <==negation-removal== 51123 (pos)
                    (not (Pc_not_checked_p12))

                    ; #34861: <==negation-removal== 43139 (pos)
                    (not (Pb_not_checked_p12))

                    ; #41540: <==uncertain_firing== 50308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #44702: <==uncertain_firing== 25243 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #45245: <==negation-removal== 78030 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #50646: <==negation-removal== 25243 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #57670: <==negation-removal== 31127 (pos)
                    (not (Ba_not_checked_p12))

                    ; #62532: <==negation-removal== 42419 (pos)
                    (not (Pa_not_checked_p12))

                    ; #64782: <==uncertain_firing== 78030 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #78705: <==negation-removal== 85292 (pos)
                    (not (Bc_not_checked_p12))

                    ; #80483: <==uncertain_firing== 36233 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #83537: <==negation-removal== 68761 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13112: <==commonly_known== 32281 (pos)
                    (Bb_checked_p1)

                    ; #14621: <==closure== 34748 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #16932: <==closure== 61978 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #21106: <==commonly_known== 32281 (pos)
                    (Bc_checked_p1)

                    ; #32281: origin
                    (checked_p1)

                    ; #34748: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #46689: <==commonly_known== 36671 (neg)
                    (Pb_checked_p1)

                    ; #61978: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #67809: <==commonly_known== 32281 (pos)
                    (Ba_checked_p1)

                    ; #87189: <==commonly_known== 36671 (neg)
                    (Pa_checked_p1)

                    ; #89128: <==commonly_known== 36671 (neg)
                    (Pc_checked_p1)

                    ; #11465: <==uncertain_firing== 16932 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #15534: <==uncertain_firing== 14621 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #18191: <==negation-removal== 16932 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #28398: <==uncertain_firing== 34748 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #29270: <==negation-removal== 13112 (pos)
                    (not (Pb_not_checked_p1))

                    ; #36671: <==negation-removal== 32281 (pos)
                    (not (not_checked_p1))

                    ; #49734: <==negation-removal== 21106 (pos)
                    (not (Pc_not_checked_p1))

                    ; #52604: <==negation-removal== 67809 (pos)
                    (not (Pa_not_checked_p1))

                    ; #60497: <==uncertain_firing== 61978 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #60870: <==negation-removal== 34748 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #69066: <==negation-removal== 46689 (pos)
                    (not (Bb_not_checked_p1))

                    ; #71634: <==negation-removal== 61978 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #73046: <==negation-removal== 89128 (pos)
                    (not (Bc_not_checked_p1))

                    ; #73811: <==negation-removal== 87189 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80355: <==negation-removal== 14621 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11309: <==commonly_known== 48207 (pos)
                    (Bb_checked_p2)

                    ; #14046: <==commonly_known== 48207 (pos)
                    (Ba_checked_p2)

                    ; #18799: <==commonly_known== 76648 (neg)
                    (Pa_checked_p2)

                    ; #41926: <==commonly_known== 48207 (pos)
                    (Bc_checked_p2)

                    ; #42264: <==commonly_known== 76648 (neg)
                    (Pc_checked_p2)

                    ; #42459: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #45522: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #48207: origin
                    (checked_p2)

                    ; #51279: <==commonly_known== 76648 (neg)
                    (Pb_checked_p2)

                    ; #62953: <==closure== 45522 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #74013: <==closure== 42459 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #10644: <==negation-removal== 42459 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #13046: <==negation-removal== 62953 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #16262: <==negation-removal== 74013 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #42961: <==negation-removal== 41926 (pos)
                    (not (Pc_not_checked_p2))

                    ; #48121: <==negation-removal== 42264 (pos)
                    (not (Bc_not_checked_p2))

                    ; #53773: <==uncertain_firing== 45522 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #54225: <==negation-removal== 11309 (pos)
                    (not (Pb_not_checked_p2))

                    ; #58586: <==uncertain_firing== 74013 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #60650: <==negation-removal== 18799 (pos)
                    (not (Ba_not_checked_p2))

                    ; #61671: <==negation-removal== 14046 (pos)
                    (not (Pa_not_checked_p2))

                    ; #63636: <==uncertain_firing== 42459 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #74773: <==negation-removal== 51279 (pos)
                    (not (Bb_not_checked_p2))

                    ; #76648: <==negation-removal== 48207 (pos)
                    (not (not_checked_p2))

                    ; #84827: <==negation-removal== 45522 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #89735: <==uncertain_firing== 62953 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13965: <==commonly_known== 85368 (pos)
                    (Bb_checked_p3)

                    ; #18329: <==commonly_known== 85368 (pos)
                    (Bc_checked_p3)

                    ; #44593: <==commonly_known== 80165 (neg)
                    (Pc_checked_p3)

                    ; #50080: <==commonly_known== 80165 (neg)
                    (Pa_checked_p3)

                    ; #55596: <==closure== 64308 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #64308: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #73980: <==commonly_known== 85368 (pos)
                    (Ba_checked_p3)

                    ; #74061: <==commonly_known== 80165 (neg)
                    (Pb_checked_p3)

                    ; #74206: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #78163: <==closure== 74206 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #85368: origin
                    (checked_p3)

                    ; #11141: <==uncertain_firing== 78163 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #23919: <==negation-removal== 44593 (pos)
                    (not (Bc_not_checked_p3))

                    ; #25114: <==negation-removal== 64308 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35917: <==negation-removal== 50080 (pos)
                    (not (Ba_not_checked_p3))

                    ; #47055: <==negation-removal== 55596 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #47883: <==negation-removal== 74061 (pos)
                    (not (Bb_not_checked_p3))

                    ; #48342: <==negation-removal== 74206 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #50629: <==negation-removal== 18329 (pos)
                    (not (Pc_not_checked_p3))

                    ; #62723: <==uncertain_firing== 64308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #64205: <==negation-removal== 73980 (pos)
                    (not (Pa_not_checked_p3))

                    ; #69823: <==negation-removal== 13965 (pos)
                    (not (Pb_not_checked_p3))

                    ; #70247: <==negation-removal== 78163 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #71460: <==uncertain_firing== 74206 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #80165: <==negation-removal== 85368 (pos)
                    (not (not_checked_p3))

                    ; #88357: <==uncertain_firing== 55596 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11402: <==commonly_known== 37662 (pos)
                    (Bc_checked_p4)

                    ; #16128: <==commonly_known== 37662 (pos)
                    (Bb_checked_p4)

                    ; #27166: <==commonly_known== 75217 (neg)
                    (Pa_checked_p4)

                    ; #37662: origin
                    (checked_p4)

                    ; #45005: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #57599: <==commonly_known== 75217 (neg)
                    (Pc_checked_p4)

                    ; #63230: <==commonly_known== 75217 (neg)
                    (Pb_checked_p4)

                    ; #68098: <==closure== 45005 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #68494: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #85064: <==commonly_known== 37662 (pos)
                    (Ba_checked_p4)

                    ; #87195: <==closure== 68494 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #20004: <==negation-removal== 87195 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #25320: <==negation-removal== 16128 (pos)
                    (not (Pb_not_checked_p4))

                    ; #27860: <==uncertain_firing== 68494 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #28545: <==negation-removal== 45005 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39468: <==negation-removal== 63230 (pos)
                    (not (Bb_not_checked_p4))

                    ; #40653: <==negation-removal== 85064 (pos)
                    (not (Pa_not_checked_p4))

                    ; #44650: <==negation-removal== 57599 (pos)
                    (not (Bc_not_checked_p4))

                    ; #46548: <==uncertain_firing== 87195 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #47154: <==negation-removal== 68494 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #56053: <==uncertain_firing== 45005 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #60632: <==negation-removal== 11402 (pos)
                    (not (Pc_not_checked_p4))

                    ; #60686: <==negation-removal== 68098 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #75217: <==negation-removal== 37662 (pos)
                    (not (not_checked_p4))

                    ; #88272: <==negation-removal== 27166 (pos)
                    (not (Ba_not_checked_p4))

                    ; #89528: <==uncertain_firing== 68098 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #21006: <==commonly_known== 34225 (pos)
                    (Bc_checked_p5)

                    ; #24051: <==commonly_known== 64316 (neg)
                    (Pa_checked_p5)

                    ; #33934: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #34225: origin
                    (checked_p5)

                    ; #41232: <==commonly_known== 34225 (pos)
                    (Bb_checked_p5)

                    ; #56536: <==commonly_known== 34225 (pos)
                    (Ba_checked_p5)

                    ; #62784: <==commonly_known== 64316 (neg)
                    (Pc_checked_p5)

                    ; #74514: <==commonly_known== 64316 (neg)
                    (Pb_checked_p5)

                    ; #87338: <==closure== 94695 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #90892: <==closure== 33934 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #94695: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #24336: <==negation-removal== 41232 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34710: <==uncertain_firing== 33934 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #38209: <==negation-removal== 74514 (pos)
                    (not (Bb_not_checked_p5))

                    ; #39639: <==negation-removal== 33934 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #43724: <==negation-removal== 94695 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #47793: <==uncertain_firing== 90892 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #52266: <==negation-removal== 87338 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #56237: <==negation-removal== 24051 (pos)
                    (not (Ba_not_checked_p5))

                    ; #57279: <==uncertain_firing== 94695 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #58962: <==negation-removal== 62784 (pos)
                    (not (Bc_not_checked_p5))

                    ; #64316: <==negation-removal== 34225 (pos)
                    (not (not_checked_p5))

                    ; #77426: <==uncertain_firing== 87338 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #79633: <==negation-removal== 56536 (pos)
                    (not (Pa_not_checked_p5))

                    ; #86162: <==negation-removal== 21006 (pos)
                    (not (Pc_not_checked_p5))

                    ; #96604: <==negation-removal== 90892 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13217: <==commonly_known== 48522 (pos)
                    (Ba_checked_p6)

                    ; #18481: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #48522: origin
                    (checked_p6)

                    ; #48834: <==closure== 18481 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #61349: <==commonly_known== 71796 (neg)
                    (Pa_checked_p6)

                    ; #73210: <==commonly_known== 71796 (neg)
                    (Pc_checked_p6)

                    ; #77614: <==commonly_known== 48522 (pos)
                    (Bb_checked_p6)

                    ; #78751: <==commonly_known== 71796 (neg)
                    (Pb_checked_p6)

                    ; #79544: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #82131: <==closure== 79544 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #83403: <==commonly_known== 48522 (pos)
                    (Bc_checked_p6)

                    ; #13927: <==negation-removal== 82131 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #30293: <==uncertain_firing== 79544 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #30767: <==uncertain_firing== 82131 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #31850: <==negation-removal== 77614 (pos)
                    (not (Pb_not_checked_p6))

                    ; #35458: <==negation-removal== 73210 (pos)
                    (not (Bc_not_checked_p6))

                    ; #37796: <==negation-removal== 18481 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #41716: <==uncertain_firing== 48834 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #42455: <==negation-removal== 13217 (pos)
                    (not (Pa_not_checked_p6))

                    ; #49404: <==negation-removal== 78751 (pos)
                    (not (Bb_not_checked_p6))

                    ; #56030: <==negation-removal== 48834 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #69096: <==uncertain_firing== 18481 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #71796: <==negation-removal== 48522 (pos)
                    (not (not_checked_p6))

                    ; #76962: <==negation-removal== 83403 (pos)
                    (not (Pc_not_checked_p6))

                    ; #78955: <==negation-removal== 79544 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #83920: <==negation-removal== 61349 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10363: <==commonly_known== 77053 (neg)
                    (Pb_checked_p7)

                    ; #26301: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #34417: <==commonly_known== 77053 (neg)
                    (Pa_checked_p7)

                    ; #46763: <==commonly_known== 83916 (pos)
                    (Bc_checked_p7)

                    ; #54153: <==closure== 73480 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #57063: <==commonly_known== 77053 (neg)
                    (Pc_checked_p7)

                    ; #60333: <==closure== 26301 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61355: <==commonly_known== 83916 (pos)
                    (Ba_checked_p7)

                    ; #73480: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #82494: <==commonly_known== 83916 (pos)
                    (Bb_checked_p7)

                    ; #83916: origin
                    (checked_p7)

                    ; #22136: <==negation-removal== 61355 (pos)
                    (not (Pa_not_checked_p7))

                    ; #24684: <==negation-removal== 10363 (pos)
                    (not (Bb_not_checked_p7))

                    ; #25801: <==negation-removal== 54153 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #42553: <==negation-removal== 57063 (pos)
                    (not (Bc_not_checked_p7))

                    ; #46923: <==negation-removal== 46763 (pos)
                    (not (Pc_not_checked_p7))

                    ; #48891: <==negation-removal== 26301 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #64151: <==uncertain_firing== 54153 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76081: <==uncertain_firing== 26301 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #76597: <==negation-removal== 60333 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #77053: <==negation-removal== 83916 (pos)
                    (not (not_checked_p7))

                    ; #78344: <==negation-removal== 34417 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79468: <==uncertain_firing== 60333 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81412: <==uncertain_firing== 73480 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #87555: <==negation-removal== 82494 (pos)
                    (not (Pb_not_checked_p7))

                    ; #92096: <==negation-removal== 73480 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #21056: <==commonly_known== 25678 (pos)
                    (Bc_checked_p8)

                    ; #25372: <==commonly_known== 25678 (pos)
                    (Ba_checked_p8)

                    ; #25678: origin
                    (checked_p8)

                    ; #38513: <==closure== 58485 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #39330: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #53501: <==commonly_known== 29184 (neg)
                    (Pa_checked_p8)

                    ; #57415: <==closure== 39330 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #58485: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #61693: <==commonly_known== 25678 (pos)
                    (Bb_checked_p8)

                    ; #72703: <==commonly_known== 29184 (neg)
                    (Pb_checked_p8)

                    ; #79579: <==commonly_known== 29184 (neg)
                    (Pc_checked_p8)

                    ; #21145: <==uncertain_firing== 38513 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #22740: <==negation-removal== 53501 (pos)
                    (not (Ba_not_checked_p8))

                    ; #25495: <==negation-removal== 79579 (pos)
                    (not (Bc_not_checked_p8))

                    ; #27027: <==negation-removal== 58485 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #29184: <==negation-removal== 25678 (pos)
                    (not (not_checked_p8))

                    ; #29906: <==negation-removal== 25372 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33565: <==uncertain_firing== 57415 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #35001: <==negation-removal== 72703 (pos)
                    (not (Bb_not_checked_p8))

                    ; #40122: <==negation-removal== 38513 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #41955: <==uncertain_firing== 58485 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #43910: <==negation-removal== 21056 (pos)
                    (not (Pc_not_checked_p8))

                    ; #47998: <==negation-removal== 57415 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #61098: <==negation-removal== 61693 (pos)
                    (not (Pb_not_checked_p8))

                    ; #83735: <==uncertain_firing== 39330 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #87245: <==negation-removal== 39330 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14745: <==commonly_known== 60389 (pos)
                    (Bc_checked_p9)

                    ; #35968: <==commonly_known== 60389 (pos)
                    (Bb_checked_p9)

                    ; #48294: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #55658: <==commonly_known== 21370 (neg)
                    (Pb_checked_p9)

                    ; #60389: origin
                    (checked_p9)

                    ; #67328: <==commonly_known== 60389 (pos)
                    (Ba_checked_p9)

                    ; #73179: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #77264: <==commonly_known== 21370 (neg)
                    (Pc_checked_p9)

                    ; #88353: <==commonly_known== 21370 (neg)
                    (Pa_checked_p9)

                    ; #88468: <==closure== 48294 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #89173: <==closure== 73179 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #12595: <==uncertain_firing== 73179 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #14434: <==negation-removal== 88468 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #16767: <==uncertain_firing== 48294 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #17772: <==negation-removal== 73179 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #21370: <==negation-removal== 60389 (pos)
                    (not (not_checked_p9))

                    ; #30089: <==uncertain_firing== 89173 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #30662: <==negation-removal== 89173 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #33844: <==negation-removal== 35968 (pos)
                    (not (Pb_not_checked_p9))

                    ; #41876: <==uncertain_firing== 88468 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #42837: <==negation-removal== 88353 (pos)
                    (not (Ba_not_checked_p9))

                    ; #65261: <==negation-removal== 77264 (pos)
                    (not (Bc_not_checked_p9))

                    ; #66849: <==negation-removal== 55658 (pos)
                    (not (Bb_not_checked_p9))

                    ; #75216: <==negation-removal== 48294 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #76997: <==negation-removal== 67328 (pos)
                    (not (Pa_not_checked_p9))

                    ; #88948: <==negation-removal== 14745 (pos)
                    (not (Pc_not_checked_p9))))

)