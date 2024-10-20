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

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #21529: <==closure== 72258 (pos)
                    (Pb_survivorat_s_p10)

                    ; #53190: <==closure== 86417 (pos)
                    (Pa_survivorat_s_p10)

                    ; #72258: origin
                    (Bb_survivorat_s_p10)

                    ; #86417: origin
                    (Ba_survivorat_s_p10)

                    ; #88960: <==closure== 89290 (pos)
                    (Pc_survivorat_s_p10)

                    ; #89290: origin
                    (Bc_survivorat_s_p10)

                    ; #25372: <==negation-removal== 21529 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #28241: <==negation-removal== 86417 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #37216: <==negation-removal== 72258 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #48211: <==negation-removal== 88960 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #59718: <==negation-removal== 53190 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #83946: <==negation-removal== 89290 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #21529: <==closure== 72258 (pos)
                    (Pb_survivorat_s_p10)

                    ; #53190: <==closure== 86417 (pos)
                    (Pa_survivorat_s_p10)

                    ; #72258: origin
                    (Bb_survivorat_s_p10)

                    ; #86417: origin
                    (Ba_survivorat_s_p10)

                    ; #88960: <==closure== 89290 (pos)
                    (Pc_survivorat_s_p10)

                    ; #89290: origin
                    (Bc_survivorat_s_p10)

                    ; #25372: <==negation-removal== 21529 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #28241: <==negation-removal== 86417 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #37216: <==negation-removal== 72258 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #48211: <==negation-removal== 88960 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #59718: <==negation-removal== 53190 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #83946: <==negation-removal== 89290 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #21529: <==closure== 72258 (pos)
                    (Pb_survivorat_s_p10)

                    ; #53190: <==closure== 86417 (pos)
                    (Pa_survivorat_s_p10)

                    ; #72258: origin
                    (Bb_survivorat_s_p10)

                    ; #86417: origin
                    (Ba_survivorat_s_p10)

                    ; #88960: <==closure== 89290 (pos)
                    (Pc_survivorat_s_p10)

                    ; #89290: origin
                    (Bc_survivorat_s_p10)

                    ; #25372: <==negation-removal== 21529 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #28241: <==negation-removal== 86417 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #37216: <==negation-removal== 72258 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #48211: <==negation-removal== 88960 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #59718: <==negation-removal== 53190 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #83946: <==negation-removal== 89290 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #48308: origin
                    (Bb_survivorat_s_p11)

                    ; #53476: origin
                    (Bc_survivorat_s_p11)

                    ; #66660: <==closure== 48308 (pos)
                    (Pb_survivorat_s_p11)

                    ; #69365: <==closure== 53476 (pos)
                    (Pc_survivorat_s_p11)

                    ; #73001: <==closure== 75621 (pos)
                    (Pa_survivorat_s_p11)

                    ; #75621: origin
                    (Ba_survivorat_s_p11)

                    ; #18273: <==negation-removal== 75621 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #52644: <==negation-removal== 66660 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #54476: <==negation-removal== 73001 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #70449: <==negation-removal== 69365 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #84094: <==negation-removal== 53476 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #87605: <==negation-removal== 48308 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #48308: origin
                    (Bb_survivorat_s_p11)

                    ; #53476: origin
                    (Bc_survivorat_s_p11)

                    ; #66660: <==closure== 48308 (pos)
                    (Pb_survivorat_s_p11)

                    ; #69365: <==closure== 53476 (pos)
                    (Pc_survivorat_s_p11)

                    ; #73001: <==closure== 75621 (pos)
                    (Pa_survivorat_s_p11)

                    ; #75621: origin
                    (Ba_survivorat_s_p11)

                    ; #18273: <==negation-removal== 75621 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #52644: <==negation-removal== 66660 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #54476: <==negation-removal== 73001 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #70449: <==negation-removal== 69365 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #84094: <==negation-removal== 53476 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #87605: <==negation-removal== 48308 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #48308: origin
                    (Bb_survivorat_s_p11)

                    ; #53476: origin
                    (Bc_survivorat_s_p11)

                    ; #66660: <==closure== 48308 (pos)
                    (Pb_survivorat_s_p11)

                    ; #69365: <==closure== 53476 (pos)
                    (Pc_survivorat_s_p11)

                    ; #73001: <==closure== 75621 (pos)
                    (Pa_survivorat_s_p11)

                    ; #75621: origin
                    (Ba_survivorat_s_p11)

                    ; #18273: <==negation-removal== 75621 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #52644: <==negation-removal== 66660 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #54476: <==negation-removal== 73001 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #70449: <==negation-removal== 69365 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #84094: <==negation-removal== 53476 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #87605: <==negation-removal== 48308 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #16341: <==closure== 88710 (pos)
                    (Pa_survivorat_s_p12)

                    ; #19098: <==closure== 35940 (pos)
                    (Pb_survivorat_s_p12)

                    ; #29138: <==closure== 56711 (pos)
                    (Pc_survivorat_s_p12)

                    ; #35940: origin
                    (Bb_survivorat_s_p12)

                    ; #56711: origin
                    (Bc_survivorat_s_p12)

                    ; #88710: origin
                    (Ba_survivorat_s_p12)

                    ; #20879: <==negation-removal== 29138 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #24834: <==negation-removal== 16341 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #36469: <==negation-removal== 19098 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #55449: <==negation-removal== 88710 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #88869: <==negation-removal== 35940 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #91271: <==negation-removal== 56711 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #16341: <==closure== 88710 (pos)
                    (Pa_survivorat_s_p12)

                    ; #19098: <==closure== 35940 (pos)
                    (Pb_survivorat_s_p12)

                    ; #29138: <==closure== 56711 (pos)
                    (Pc_survivorat_s_p12)

                    ; #35940: origin
                    (Bb_survivorat_s_p12)

                    ; #56711: origin
                    (Bc_survivorat_s_p12)

                    ; #88710: origin
                    (Ba_survivorat_s_p12)

                    ; #20879: <==negation-removal== 29138 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #24834: <==negation-removal== 16341 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #36469: <==negation-removal== 19098 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #55449: <==negation-removal== 88710 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #88869: <==negation-removal== 35940 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #91271: <==negation-removal== 56711 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #16341: <==closure== 88710 (pos)
                    (Pa_survivorat_s_p12)

                    ; #19098: <==closure== 35940 (pos)
                    (Pb_survivorat_s_p12)

                    ; #29138: <==closure== 56711 (pos)
                    (Pc_survivorat_s_p12)

                    ; #35940: origin
                    (Bb_survivorat_s_p12)

                    ; #56711: origin
                    (Bc_survivorat_s_p12)

                    ; #88710: origin
                    (Ba_survivorat_s_p12)

                    ; #20879: <==negation-removal== 29138 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #24834: <==negation-removal== 16341 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #36469: <==negation-removal== 19098 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #55449: <==negation-removal== 88710 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #88869: <==negation-removal== 35940 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #91271: <==negation-removal== 56711 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #11975: <==closure== 80048 (pos)
                    (Pb_survivorat_s_p1)

                    ; #15368: <==closure== 21140 (pos)
                    (Pc_survivorat_s_p1)

                    ; #21140: origin
                    (Bc_survivorat_s_p1)

                    ; #23439: origin
                    (Ba_survivorat_s_p1)

                    ; #52173: <==closure== 23439 (pos)
                    (Pa_survivorat_s_p1)

                    ; #80048: origin
                    (Bb_survivorat_s_p1)

                    ; #10606: <==negation-removal== 15368 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #20583: <==negation-removal== 52173 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #21710: <==negation-removal== 80048 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #34779: <==negation-removal== 21140 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #47482: <==negation-removal== 23439 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #63860: <==negation-removal== 11975 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #11975: <==closure== 80048 (pos)
                    (Pb_survivorat_s_p1)

                    ; #15368: <==closure== 21140 (pos)
                    (Pc_survivorat_s_p1)

                    ; #21140: origin
                    (Bc_survivorat_s_p1)

                    ; #23439: origin
                    (Ba_survivorat_s_p1)

                    ; #52173: <==closure== 23439 (pos)
                    (Pa_survivorat_s_p1)

                    ; #80048: origin
                    (Bb_survivorat_s_p1)

                    ; #10606: <==negation-removal== 15368 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #20583: <==negation-removal== 52173 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #21710: <==negation-removal== 80048 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #34779: <==negation-removal== 21140 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #47482: <==negation-removal== 23439 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #63860: <==negation-removal== 11975 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #11975: <==closure== 80048 (pos)
                    (Pb_survivorat_s_p1)

                    ; #15368: <==closure== 21140 (pos)
                    (Pc_survivorat_s_p1)

                    ; #21140: origin
                    (Bc_survivorat_s_p1)

                    ; #23439: origin
                    (Ba_survivorat_s_p1)

                    ; #52173: <==closure== 23439 (pos)
                    (Pa_survivorat_s_p1)

                    ; #80048: origin
                    (Bb_survivorat_s_p1)

                    ; #10606: <==negation-removal== 15368 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #20583: <==negation-removal== 52173 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #21710: <==negation-removal== 80048 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #34779: <==negation-removal== 21140 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #47482: <==negation-removal== 23439 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #63860: <==negation-removal== 11975 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #35789: origin
                    (Bc_survivorat_s_p2)

                    ; #42386: <==closure== 35789 (pos)
                    (Pc_survivorat_s_p2)

                    ; #46144: <==closure== 89177 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69540: <==closure== 75996 (pos)
                    (Pa_survivorat_s_p2)

                    ; #75996: origin
                    (Ba_survivorat_s_p2)

                    ; #89177: origin
                    (Bb_survivorat_s_p2)

                    ; #10476: <==negation-removal== 69540 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18652: <==negation-removal== 89177 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #35158: <==negation-removal== 42386 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #36425: <==negation-removal== 35789 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #47904: <==negation-removal== 46144 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #53148: <==negation-removal== 75996 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #35789: origin
                    (Bc_survivorat_s_p2)

                    ; #42386: <==closure== 35789 (pos)
                    (Pc_survivorat_s_p2)

                    ; #46144: <==closure== 89177 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69540: <==closure== 75996 (pos)
                    (Pa_survivorat_s_p2)

                    ; #75996: origin
                    (Ba_survivorat_s_p2)

                    ; #89177: origin
                    (Bb_survivorat_s_p2)

                    ; #10476: <==negation-removal== 69540 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18652: <==negation-removal== 89177 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #35158: <==negation-removal== 42386 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #36425: <==negation-removal== 35789 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #47904: <==negation-removal== 46144 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #53148: <==negation-removal== 75996 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #35789: origin
                    (Bc_survivorat_s_p2)

                    ; #42386: <==closure== 35789 (pos)
                    (Pc_survivorat_s_p2)

                    ; #46144: <==closure== 89177 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69540: <==closure== 75996 (pos)
                    (Pa_survivorat_s_p2)

                    ; #75996: origin
                    (Ba_survivorat_s_p2)

                    ; #89177: origin
                    (Bb_survivorat_s_p2)

                    ; #10476: <==negation-removal== 69540 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #18652: <==negation-removal== 89177 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #35158: <==negation-removal== 42386 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #36425: <==negation-removal== 35789 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #47904: <==negation-removal== 46144 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #53148: <==negation-removal== 75996 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #13599: origin
                    (Bc_survivorat_s_p3)

                    ; #18669: <==closure== 54605 (pos)
                    (Pb_survivorat_s_p3)

                    ; #26058: origin
                    (Ba_survivorat_s_p3)

                    ; #43802: <==closure== 13599 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54605: origin
                    (Bb_survivorat_s_p3)

                    ; #69420: <==closure== 26058 (pos)
                    (Pa_survivorat_s_p3)

                    ; #41850: <==negation-removal== 69420 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #45252: <==negation-removal== 18669 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #52499: <==negation-removal== 26058 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #58358: <==negation-removal== 13599 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #82402: <==negation-removal== 43802 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #84655: <==negation-removal== 54605 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #13599: origin
                    (Bc_survivorat_s_p3)

                    ; #18669: <==closure== 54605 (pos)
                    (Pb_survivorat_s_p3)

                    ; #26058: origin
                    (Ba_survivorat_s_p3)

                    ; #43802: <==closure== 13599 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54605: origin
                    (Bb_survivorat_s_p3)

                    ; #69420: <==closure== 26058 (pos)
                    (Pa_survivorat_s_p3)

                    ; #41850: <==negation-removal== 69420 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #45252: <==negation-removal== 18669 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #52499: <==negation-removal== 26058 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #58358: <==negation-removal== 13599 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #82402: <==negation-removal== 43802 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #84655: <==negation-removal== 54605 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #13599: origin
                    (Bc_survivorat_s_p3)

                    ; #18669: <==closure== 54605 (pos)
                    (Pb_survivorat_s_p3)

                    ; #26058: origin
                    (Ba_survivorat_s_p3)

                    ; #43802: <==closure== 13599 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54605: origin
                    (Bb_survivorat_s_p3)

                    ; #69420: <==closure== 26058 (pos)
                    (Pa_survivorat_s_p3)

                    ; #41850: <==negation-removal== 69420 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #45252: <==negation-removal== 18669 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #52499: <==negation-removal== 26058 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #58358: <==negation-removal== 13599 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #82402: <==negation-removal== 43802 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #84655: <==negation-removal== 54605 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #68869: origin
                    (Bc_survivorat_s_p4)

                    ; #70847: origin
                    (Bb_survivorat_s_p4)

                    ; #75560: <==closure== 79691 (pos)
                    (Pa_survivorat_s_p4)

                    ; #79691: origin
                    (Ba_survivorat_s_p4)

                    ; #82567: <==closure== 68869 (pos)
                    (Pc_survivorat_s_p4)

                    ; #85077: <==closure== 70847 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22518: <==negation-removal== 75560 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #31296: <==negation-removal== 70847 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #43483: <==negation-removal== 68869 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #45244: <==negation-removal== 82567 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #50580: <==negation-removal== 85077 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #89824: <==negation-removal== 79691 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #68869: origin
                    (Bc_survivorat_s_p4)

                    ; #70847: origin
                    (Bb_survivorat_s_p4)

                    ; #75560: <==closure== 79691 (pos)
                    (Pa_survivorat_s_p4)

                    ; #79691: origin
                    (Ba_survivorat_s_p4)

                    ; #82567: <==closure== 68869 (pos)
                    (Pc_survivorat_s_p4)

                    ; #85077: <==closure== 70847 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22518: <==negation-removal== 75560 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #31296: <==negation-removal== 70847 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #43483: <==negation-removal== 68869 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #45244: <==negation-removal== 82567 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #50580: <==negation-removal== 85077 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #89824: <==negation-removal== 79691 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #68869: origin
                    (Bc_survivorat_s_p4)

                    ; #70847: origin
                    (Bb_survivorat_s_p4)

                    ; #75560: <==closure== 79691 (pos)
                    (Pa_survivorat_s_p4)

                    ; #79691: origin
                    (Ba_survivorat_s_p4)

                    ; #82567: <==closure== 68869 (pos)
                    (Pc_survivorat_s_p4)

                    ; #85077: <==closure== 70847 (pos)
                    (Pb_survivorat_s_p4)

                    ; #22518: <==negation-removal== 75560 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #31296: <==negation-removal== 70847 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #43483: <==negation-removal== 68869 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #45244: <==negation-removal== 82567 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #50580: <==negation-removal== 85077 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #89824: <==negation-removal== 79691 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #15587: origin
                    (Ba_survivorat_s_p5)

                    ; #23064: <==closure== 15587 (pos)
                    (Pa_survivorat_s_p5)

                    ; #46835: <==closure== 56619 (pos)
                    (Pb_survivorat_s_p5)

                    ; #56619: origin
                    (Bb_survivorat_s_p5)

                    ; #58330: origin
                    (Bc_survivorat_s_p5)

                    ; #62596: <==closure== 58330 (pos)
                    (Pc_survivorat_s_p5)

                    ; #22592: <==negation-removal== 15587 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #30246: <==negation-removal== 46835 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #62698: <==negation-removal== 23064 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81473: <==negation-removal== 58330 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #84751: <==negation-removal== 62596 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #84837: <==negation-removal== 56619 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #15587: origin
                    (Ba_survivorat_s_p5)

                    ; #23064: <==closure== 15587 (pos)
                    (Pa_survivorat_s_p5)

                    ; #46835: <==closure== 56619 (pos)
                    (Pb_survivorat_s_p5)

                    ; #56619: origin
                    (Bb_survivorat_s_p5)

                    ; #58330: origin
                    (Bc_survivorat_s_p5)

                    ; #62596: <==closure== 58330 (pos)
                    (Pc_survivorat_s_p5)

                    ; #22592: <==negation-removal== 15587 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #30246: <==negation-removal== 46835 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #62698: <==negation-removal== 23064 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81473: <==negation-removal== 58330 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #84751: <==negation-removal== 62596 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #84837: <==negation-removal== 56619 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #15587: origin
                    (Ba_survivorat_s_p5)

                    ; #23064: <==closure== 15587 (pos)
                    (Pa_survivorat_s_p5)

                    ; #46835: <==closure== 56619 (pos)
                    (Pb_survivorat_s_p5)

                    ; #56619: origin
                    (Bb_survivorat_s_p5)

                    ; #58330: origin
                    (Bc_survivorat_s_p5)

                    ; #62596: <==closure== 58330 (pos)
                    (Pc_survivorat_s_p5)

                    ; #22592: <==negation-removal== 15587 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #30246: <==negation-removal== 46835 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #62698: <==negation-removal== 23064 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81473: <==negation-removal== 58330 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #84751: <==negation-removal== 62596 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #84837: <==negation-removal== 56619 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #25529: origin
                    (Bb_survivorat_s_p6)

                    ; #28361: origin
                    (Ba_survivorat_s_p6)

                    ; #32937: origin
                    (Bc_survivorat_s_p6)

                    ; #54851: <==closure== 28361 (pos)
                    (Pa_survivorat_s_p6)

                    ; #59472: <==closure== 25529 (pos)
                    (Pb_survivorat_s_p6)

                    ; #73446: <==closure== 32937 (pos)
                    (Pc_survivorat_s_p6)

                    ; #12263: <==negation-removal== 54851 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #33532: <==negation-removal== 32937 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #47882: <==negation-removal== 28361 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #65631: <==negation-removal== 25529 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66559: <==negation-removal== 73446 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74612: <==negation-removal== 59472 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #25529: origin
                    (Bb_survivorat_s_p6)

                    ; #28361: origin
                    (Ba_survivorat_s_p6)

                    ; #32937: origin
                    (Bc_survivorat_s_p6)

                    ; #54851: <==closure== 28361 (pos)
                    (Pa_survivorat_s_p6)

                    ; #59472: <==closure== 25529 (pos)
                    (Pb_survivorat_s_p6)

                    ; #73446: <==closure== 32937 (pos)
                    (Pc_survivorat_s_p6)

                    ; #12263: <==negation-removal== 54851 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #33532: <==negation-removal== 32937 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #47882: <==negation-removal== 28361 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #65631: <==negation-removal== 25529 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66559: <==negation-removal== 73446 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74612: <==negation-removal== 59472 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #25529: origin
                    (Bb_survivorat_s_p6)

                    ; #28361: origin
                    (Ba_survivorat_s_p6)

                    ; #32937: origin
                    (Bc_survivorat_s_p6)

                    ; #54851: <==closure== 28361 (pos)
                    (Pa_survivorat_s_p6)

                    ; #59472: <==closure== 25529 (pos)
                    (Pb_survivorat_s_p6)

                    ; #73446: <==closure== 32937 (pos)
                    (Pc_survivorat_s_p6)

                    ; #12263: <==negation-removal== 54851 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #33532: <==negation-removal== 32937 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #47882: <==negation-removal== 28361 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #65631: <==negation-removal== 25529 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66559: <==negation-removal== 73446 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74612: <==negation-removal== 59472 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #16079: origin
                    (Bc_survivorat_s_p7)

                    ; #16368: <==closure== 16079 (pos)
                    (Pc_survivorat_s_p7)

                    ; #25948: <==closure== 44291 (pos)
                    (Pb_survivorat_s_p7)

                    ; #44291: origin
                    (Bb_survivorat_s_p7)

                    ; #47777: <==closure== 69793 (pos)
                    (Pa_survivorat_s_p7)

                    ; #69793: origin
                    (Ba_survivorat_s_p7)

                    ; #30068: <==negation-removal== 16368 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #30528: <==negation-removal== 44291 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #31318: <==negation-removal== 16079 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #34892: <==negation-removal== 47777 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #57091: <==negation-removal== 69793 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #91463: <==negation-removal== 25948 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #16079: origin
                    (Bc_survivorat_s_p7)

                    ; #16368: <==closure== 16079 (pos)
                    (Pc_survivorat_s_p7)

                    ; #25948: <==closure== 44291 (pos)
                    (Pb_survivorat_s_p7)

                    ; #44291: origin
                    (Bb_survivorat_s_p7)

                    ; #47777: <==closure== 69793 (pos)
                    (Pa_survivorat_s_p7)

                    ; #69793: origin
                    (Ba_survivorat_s_p7)

                    ; #30068: <==negation-removal== 16368 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #30528: <==negation-removal== 44291 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #31318: <==negation-removal== 16079 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #34892: <==negation-removal== 47777 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #57091: <==negation-removal== 69793 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #91463: <==negation-removal== 25948 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #16079: origin
                    (Bc_survivorat_s_p7)

                    ; #16368: <==closure== 16079 (pos)
                    (Pc_survivorat_s_p7)

                    ; #25948: <==closure== 44291 (pos)
                    (Pb_survivorat_s_p7)

                    ; #44291: origin
                    (Bb_survivorat_s_p7)

                    ; #47777: <==closure== 69793 (pos)
                    (Pa_survivorat_s_p7)

                    ; #69793: origin
                    (Ba_survivorat_s_p7)

                    ; #30068: <==negation-removal== 16368 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #30528: <==negation-removal== 44291 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #31318: <==negation-removal== 16079 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #34892: <==negation-removal== 47777 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #57091: <==negation-removal== 69793 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #91463: <==negation-removal== 25948 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #27512: <==closure== 50494 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50494: origin
                    (Ba_survivorat_s_p8)

                    ; #53327: origin
                    (Bc_survivorat_s_p8)

                    ; #62840: <==closure== 69350 (pos)
                    (Pb_survivorat_s_p8)

                    ; #64457: <==closure== 53327 (pos)
                    (Pc_survivorat_s_p8)

                    ; #69350: origin
                    (Bb_survivorat_s_p8)

                    ; #22587: <==negation-removal== 64457 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #33184: <==negation-removal== 53327 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #55255: <==negation-removal== 27512 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #71265: <==negation-removal== 62840 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #71704: <==negation-removal== 50494 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #74393: <==negation-removal== 69350 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #27512: <==closure== 50494 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50494: origin
                    (Ba_survivorat_s_p8)

                    ; #53327: origin
                    (Bc_survivorat_s_p8)

                    ; #62840: <==closure== 69350 (pos)
                    (Pb_survivorat_s_p8)

                    ; #64457: <==closure== 53327 (pos)
                    (Pc_survivorat_s_p8)

                    ; #69350: origin
                    (Bb_survivorat_s_p8)

                    ; #22587: <==negation-removal== 64457 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #33184: <==negation-removal== 53327 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #55255: <==negation-removal== 27512 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #71265: <==negation-removal== 62840 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #71704: <==negation-removal== 50494 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #74393: <==negation-removal== 69350 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #27512: <==closure== 50494 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50494: origin
                    (Ba_survivorat_s_p8)

                    ; #53327: origin
                    (Bc_survivorat_s_p8)

                    ; #62840: <==closure== 69350 (pos)
                    (Pb_survivorat_s_p8)

                    ; #64457: <==closure== 53327 (pos)
                    (Pc_survivorat_s_p8)

                    ; #69350: origin
                    (Bb_survivorat_s_p8)

                    ; #22587: <==negation-removal== 64457 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #33184: <==negation-removal== 53327 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #55255: <==negation-removal== 27512 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #71265: <==negation-removal== 62840 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #71704: <==negation-removal== 50494 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #74393: <==negation-removal== 69350 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #14018: origin
                    (Ba_survivorat_s_p9)

                    ; #14148: <==closure== 35924 (pos)
                    (Pb_survivorat_s_p9)

                    ; #26973: origin
                    (Bc_survivorat_s_p9)

                    ; #28409: <==closure== 26973 (pos)
                    (Pc_survivorat_s_p9)

                    ; #35924: origin
                    (Bb_survivorat_s_p9)

                    ; #43484: <==closure== 14018 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17642: <==negation-removal== 43484 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #26457: <==negation-removal== 28409 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53141: <==negation-removal== 14018 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #61934: <==negation-removal== 14148 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #84200: <==negation-removal== 35924 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #88528: <==negation-removal== 26973 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #14018: origin
                    (Ba_survivorat_s_p9)

                    ; #14148: <==closure== 35924 (pos)
                    (Pb_survivorat_s_p9)

                    ; #26973: origin
                    (Bc_survivorat_s_p9)

                    ; #28409: <==closure== 26973 (pos)
                    (Pc_survivorat_s_p9)

                    ; #35924: origin
                    (Bb_survivorat_s_p9)

                    ; #43484: <==closure== 14018 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17642: <==negation-removal== 43484 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #26457: <==negation-removal== 28409 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53141: <==negation-removal== 14018 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #61934: <==negation-removal== 14148 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #84200: <==negation-removal== 35924 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #88528: <==negation-removal== 26973 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #14018: origin
                    (Ba_survivorat_s_p9)

                    ; #14148: <==closure== 35924 (pos)
                    (Pb_survivorat_s_p9)

                    ; #26973: origin
                    (Bc_survivorat_s_p9)

                    ; #28409: <==closure== 26973 (pos)
                    (Pc_survivorat_s_p9)

                    ; #35924: origin
                    (Bb_survivorat_s_p9)

                    ; #43484: <==closure== 14018 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17642: <==negation-removal== 43484 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #26457: <==negation-removal== 28409 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53141: <==negation-removal== 14018 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #61934: <==negation-removal== 14148 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #84200: <==negation-removal== 35924 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #88528: <==negation-removal== 26973 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #23082: origin
                    (at_a_p1)

                    ; #48852: origin
                    (not_at_a_p10)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #46258: origin
                    (at_a_p10)

                    ; #48852: origin
                    (not_at_a_p10)

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #48852: origin
                    (not_at_a_p10)

                    ; #61078: origin
                    (at_a_p11)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #48852: origin
                    (not_at_a_p10)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #48852: origin
                    (not_at_a_p10)

                    ; #57867: origin
                    (at_a_p2)

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #30318: origin
                    (at_a_p3)

                    ; #48852: origin
                    (not_at_a_p10)

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #48852: origin
                    (not_at_a_p10)

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #48852: origin
                    (not_at_a_p10)

                    ; #74849: origin
                    (at_a_p5)

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #22158: origin
                    (at_a_p6)

                    ; #48852: origin
                    (not_at_a_p10)

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #48852: origin
                    (not_at_a_p10)

                    ; #98908: origin
                    (at_a_p7)

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #39987: origin
                    (at_a_p8)

                    ; #48852: origin
                    (not_at_a_p10)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #45700: origin
                    (at_a_p9)

                    ; #48852: origin
                    (not_at_a_p10)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #46258: <==negation-removal== 48852 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #23082: origin
                    (at_a_p1)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #46258: origin
                    (at_a_p10)

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #61078: origin
                    (at_a_p11)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #57867: origin
                    (at_a_p2)

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #30318: origin
                    (at_a_p3)

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #20469: origin
                    (not_at_a_p11)

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #74849: origin
                    (at_a_p5)

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #22158: origin
                    (at_a_p6)

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #98908: origin
                    (at_a_p7)

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #39987: origin
                    (at_a_p8)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #20469: origin
                    (not_at_a_p11)

                    ; #45700: origin
                    (at_a_p9)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #61078: <==negation-removal== 20469 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #23082: origin
                    (at_a_p1)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #46258: origin
                    (at_a_p10)

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #61078: origin
                    (at_a_p11)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #57867: origin
                    (at_a_p2)

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #30318: origin
                    (at_a_p3)

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #21484: origin
                    (not_at_a_p12)

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #74849: origin
                    (at_a_p5)

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #22158: origin
                    (at_a_p6)

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #98908: origin
                    (at_a_p7)

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #39987: origin
                    (at_a_p8)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #21484: origin
                    (not_at_a_p12)

                    ; #45700: origin
                    (at_a_p9)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #89045: <==negation-removal== 21484 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #23082: origin
                    (at_a_p1)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #46258: origin
                    (at_a_p10)

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #61078: origin
                    (at_a_p11)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #57867: origin
                    (at_a_p2)

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #30318: origin
                    (at_a_p3)

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #16289: origin
                    (not_at_a_p1)

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #74849: origin
                    (at_a_p5)

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #22158: origin
                    (at_a_p6)

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #98908: origin
                    (at_a_p7)

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #39987: origin
                    (at_a_p8)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #16289: origin
                    (not_at_a_p1)

                    ; #45700: origin
                    (at_a_p9)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #23082: <==negation-removal== 16289 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #23082: origin
                    (at_a_p1)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #46258: origin
                    (at_a_p10)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #61078: origin
                    (at_a_p11)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #89045: origin
                    (at_a_p12)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #57867: origin
                    (at_a_p2)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #30318: origin
                    (at_a_p3)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #74849: origin
                    (at_a_p5)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #22158: origin
                    (at_a_p6)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #91241: origin
                    (not_at_a_p2)

                    ; #98908: origin
                    (at_a_p7)

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #39987: origin
                    (at_a_p8)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #45700: origin
                    (at_a_p9)

                    ; #91241: origin
                    (not_at_a_p2)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #57867: <==negation-removal== 91241 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #23082: origin
                    (at_a_p1)

                    ; #69428: origin
                    (not_at_a_p3)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #46258: origin
                    (at_a_p10)

                    ; #69428: origin
                    (not_at_a_p3)

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #61078: origin
                    (at_a_p11)

                    ; #69428: origin
                    (not_at_a_p3)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #69428: origin
                    (not_at_a_p3)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #57867: origin
                    (at_a_p2)

                    ; #69428: origin
                    (not_at_a_p3)

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #30318: origin
                    (at_a_p3)

                    ; #69428: origin
                    (not_at_a_p3)

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #69428: origin
                    (not_at_a_p3)

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #69428: origin
                    (not_at_a_p3)

                    ; #74849: origin
                    (at_a_p5)

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #22158: origin
                    (at_a_p6)

                    ; #69428: origin
                    (not_at_a_p3)

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #69428: origin
                    (not_at_a_p3)

                    ; #98908: origin
                    (at_a_p7)

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #39987: origin
                    (at_a_p8)

                    ; #69428: origin
                    (not_at_a_p3)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #45700: origin
                    (at_a_p9)

                    ; #69428: origin
                    (not_at_a_p3)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #30318: <==negation-removal== 69428 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #23082: origin
                    (at_a_p1)

                    ; #24556: origin
                    (not_at_a_p4)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #24556: origin
                    (not_at_a_p4)

                    ; #46258: origin
                    (at_a_p10)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #24556: origin
                    (not_at_a_p4)

                    ; #61078: origin
                    (at_a_p11)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #24556: origin
                    (not_at_a_p4)

                    ; #89045: origin
                    (at_a_p12)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #24556: origin
                    (not_at_a_p4)

                    ; #57867: origin
                    (at_a_p2)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #24556: origin
                    (not_at_a_p4)

                    ; #30318: origin
                    (at_a_p3)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #24556: origin
                    (not_at_a_p4)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #24556: origin
                    (not_at_a_p4)

                    ; #74849: origin
                    (at_a_p5)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #22158: origin
                    (at_a_p6)

                    ; #24556: origin
                    (not_at_a_p4)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #24556: origin
                    (not_at_a_p4)

                    ; #98908: origin
                    (at_a_p7)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #24556: origin
                    (not_at_a_p4)

                    ; #39987: origin
                    (at_a_p8)

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #24556: origin
                    (not_at_a_p4)

                    ; #45700: origin
                    (at_a_p9)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #14691: <==negation-removal== 24556 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #23082: origin
                    (at_a_p1)

                    ; #71664: origin
                    (not_at_a_p5)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #46258: origin
                    (at_a_p10)

                    ; #71664: origin
                    (not_at_a_p5)

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #61078: origin
                    (at_a_p11)

                    ; #71664: origin
                    (not_at_a_p5)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #71664: origin
                    (not_at_a_p5)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #57867: origin
                    (at_a_p2)

                    ; #71664: origin
                    (not_at_a_p5)

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #30318: origin
                    (at_a_p3)

                    ; #71664: origin
                    (not_at_a_p5)

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #71664: origin
                    (not_at_a_p5)

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #71664: origin
                    (not_at_a_p5)

                    ; #74849: origin
                    (at_a_p5)

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #22158: origin
                    (at_a_p6)

                    ; #71664: origin
                    (not_at_a_p5)

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #71664: origin
                    (not_at_a_p5)

                    ; #98908: origin
                    (at_a_p7)

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #39987: origin
                    (at_a_p8)

                    ; #71664: origin
                    (not_at_a_p5)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #45700: origin
                    (at_a_p9)

                    ; #71664: origin
                    (not_at_a_p5)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #74849: <==negation-removal== 71664 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #23082: origin
                    (at_a_p1)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #46258: origin
                    (at_a_p10)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #61078: origin
                    (at_a_p11)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #86766: origin
                    (not_at_a_p6)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #57867: origin
                    (at_a_p2)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #30318: origin
                    (at_a_p3)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #74849: origin
                    (at_a_p5)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #22158: origin
                    (at_a_p6)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #86766: origin
                    (not_at_a_p6)

                    ; #98908: origin
                    (at_a_p7)

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #39987: origin
                    (at_a_p8)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #45700: origin
                    (at_a_p9)

                    ; #86766: origin
                    (not_at_a_p6)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #22158: <==negation-removal== 86766 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #23082: origin
                    (at_a_p1)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #46258: origin
                    (at_a_p10)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #61078: origin
                    (at_a_p11)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #79922: origin
                    (not_at_a_p7)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #57867: origin
                    (at_a_p2)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #30318: origin
                    (at_a_p3)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #74849: origin
                    (at_a_p5)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #22158: origin
                    (at_a_p6)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #79922: origin
                    (not_at_a_p7)

                    ; #98908: origin
                    (at_a_p7)

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #39987: origin
                    (at_a_p8)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #45700: origin
                    (at_a_p9)

                    ; #79922: origin
                    (not_at_a_p7)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #98908: <==negation-removal== 79922 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #23082: origin
                    (at_a_p1)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #46258: origin
                    (at_a_p10)

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #61078: origin
                    (at_a_p11)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #57867: origin
                    (at_a_p2)

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #30318: origin
                    (at_a_p3)

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #14691: origin
                    (at_a_p4)

                    ; #20383: origin
                    (not_at_a_p8)

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #74849: origin
                    (at_a_p5)

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #22158: origin
                    (at_a_p6)

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #98908: origin
                    (at_a_p7)

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #39987: origin
                    (at_a_p8)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #20383: origin
                    (not_at_a_p8)

                    ; #45700: origin
                    (at_a_p9)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #39987: <==negation-removal== 20383 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #23082: origin
                    (at_a_p1)

                    ; #16289: <==negation-removal== 23082 (pos)
                    (not (not_at_a_p1))

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #46258: origin
                    (at_a_p10)

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))

                    ; #48852: <==negation-removal== 46258 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #61078: origin
                    (at_a_p11)

                    ; #20469: <==negation-removal== 61078 (pos)
                    (not (not_at_a_p11))

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #89045: origin
                    (at_a_p12)

                    ; #21484: <==negation-removal== 89045 (pos)
                    (not (not_at_a_p12))

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #57867: origin
                    (at_a_p2)

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))

                    ; #91241: <==negation-removal== 57867 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #30318: origin
                    (at_a_p3)

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))

                    ; #69428: <==negation-removal== 30318 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #14691: origin
                    (at_a_p4)

                    ; #24556: <==negation-removal== 14691 (pos)
                    (not (not_at_a_p4))

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #74849: origin
                    (at_a_p5)

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))

                    ; #71664: <==negation-removal== 74849 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #22158: origin
                    (at_a_p6)

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))

                    ; #86766: <==negation-removal== 22158 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #98908: origin
                    (at_a_p7)

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))

                    ; #79922: <==negation-removal== 98908 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #39987: origin
                    (at_a_p8)

                    ; #20383: <==negation-removal== 39987 (pos)
                    (not (not_at_a_p8))

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #11467: origin
                    (not_at_a_p9)

                    ; #45700: origin
                    (at_a_p9)

                    ; #11467: <==negation-removal== 45700 (pos)
                    (not (not_at_a_p9))

                    ; #45700: <==negation-removal== 11467 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #76397: origin
                    (not_at_b_p10)

                    ; #77500: origin
                    (at_b_p1)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #49603: origin
                    (at_b_p10)

                    ; #76397: origin
                    (not_at_b_p10)

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #56367: origin
                    (at_b_p11)

                    ; #76397: origin
                    (not_at_b_p10)

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #53590: origin
                    (at_b_p12)

                    ; #76397: origin
                    (not_at_b_p10)

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #76397: origin
                    (not_at_b_p10)

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #40199: origin
                    (at_b_p3)

                    ; #76397: origin
                    (not_at_b_p10)

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #62075: origin
                    (at_b_p4)

                    ; #76397: origin
                    (not_at_b_p10)

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #72251: origin
                    (at_b_p5)

                    ; #76397: origin
                    (not_at_b_p10)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #76397: origin
                    (not_at_b_p10)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #38566: origin
                    (at_b_p7)

                    ; #76397: origin
                    (not_at_b_p10)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #76397: origin
                    (not_at_b_p10)

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #76397: origin
                    (not_at_b_p10)

                    ; #78257: origin
                    (at_b_p9)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #49603: <==negation-removal== 76397 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #64488: origin
                    (not_at_b_p11)

                    ; #77500: origin
                    (at_b_p1)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #49603: origin
                    (at_b_p10)

                    ; #64488: origin
                    (not_at_b_p11)

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #56367: origin
                    (at_b_p11)

                    ; #64488: origin
                    (not_at_b_p11)

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #53590: origin
                    (at_b_p12)

                    ; #64488: origin
                    (not_at_b_p11)

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #64488: origin
                    (not_at_b_p11)

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #40199: origin
                    (at_b_p3)

                    ; #64488: origin
                    (not_at_b_p11)

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #62075: origin
                    (at_b_p4)

                    ; #64488: origin
                    (not_at_b_p11)

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #64488: origin
                    (not_at_b_p11)

                    ; #72251: origin
                    (at_b_p5)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #64488: origin
                    (not_at_b_p11)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #38566: origin
                    (at_b_p7)

                    ; #64488: origin
                    (not_at_b_p11)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #64488: origin
                    (not_at_b_p11)

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #64488: origin
                    (not_at_b_p11)

                    ; #78257: origin
                    (at_b_p9)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #56367: <==negation-removal== 64488 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #77500: origin
                    (at_b_p1)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #49603: origin
                    (at_b_p10)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #56367: origin
                    (at_b_p11)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #53590: origin
                    (at_b_p12)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #40199: origin
                    (at_b_p3)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #62075: origin
                    (at_b_p4)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #72251: origin
                    (at_b_p5)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #79535: origin
                    (not_at_b_p12)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #38566: origin
                    (at_b_p7)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #78257: origin
                    (at_b_p9)

                    ; #79535: origin
                    (not_at_b_p12)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #53590: <==negation-removal== 79535 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #77500: origin
                    (at_b_p1)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #49603: origin
                    (at_b_p10)

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #56367: origin
                    (at_b_p11)

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #53590: origin
                    (at_b_p12)

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #35675: origin
                    (not_at_b_p1)

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #40199: origin
                    (at_b_p3)

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #62075: origin
                    (at_b_p4)

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #72251: origin
                    (at_b_p5)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #38566: origin
                    (at_b_p7)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #35675: origin
                    (not_at_b_p1)

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #35675: origin
                    (not_at_b_p1)

                    ; #78257: origin
                    (at_b_p9)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #77500: <==negation-removal== 35675 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #77500: origin
                    (at_b_p1)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #49603: origin
                    (at_b_p10)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #56367: origin
                    (at_b_p11)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #53590: origin
                    (at_b_p12)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #40199: origin
                    (at_b_p3)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #62075: origin
                    (at_b_p4)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #72251: origin
                    (at_b_p5)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #79673: origin
                    (at_b_p6)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #38566: origin
                    (at_b_p7)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #78257: origin
                    (at_b_p9)

                    ; #88767: origin
                    (not_at_b_p2)

                    ; #24958: <==negation-removal== 88767 (pos)
                    (not (at_b_p2))

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #77500: origin
                    (at_b_p1)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #49603: origin
                    (at_b_p10)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #56367: origin
                    (at_b_p11)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #53590: origin
                    (at_b_p12)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #40199: origin
                    (at_b_p3)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #62075: origin
                    (at_b_p4)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #72251: origin
                    (at_b_p5)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #79495: origin
                    (not_at_b_p3)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #38566: origin
                    (at_b_p7)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #78257: origin
                    (at_b_p9)

                    ; #79495: origin
                    (not_at_b_p3)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #40199: <==negation-removal== 79495 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #50448: origin
                    (not_at_b_p4)

                    ; #77500: origin
                    (at_b_p1)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #49603: origin
                    (at_b_p10)

                    ; #50448: origin
                    (not_at_b_p4)

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #50448: origin
                    (not_at_b_p4)

                    ; #56367: origin
                    (at_b_p11)

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #50448: origin
                    (not_at_b_p4)

                    ; #53590: origin
                    (at_b_p12)

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #50448: origin
                    (not_at_b_p4)

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #40199: origin
                    (at_b_p3)

                    ; #50448: origin
                    (not_at_b_p4)

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #50448: origin
                    (not_at_b_p4)

                    ; #62075: origin
                    (at_b_p4)

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #50448: origin
                    (not_at_b_p4)

                    ; #72251: origin
                    (at_b_p5)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #50448: origin
                    (not_at_b_p4)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #38566: origin
                    (at_b_p7)

                    ; #50448: origin
                    (not_at_b_p4)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #50448: origin
                    (not_at_b_p4)

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #50448: origin
                    (not_at_b_p4)

                    ; #78257: origin
                    (at_b_p9)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #62075: <==negation-removal== 50448 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #77500: origin
                    (at_b_p1)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #49603: origin
                    (at_b_p10)

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #56367: origin
                    (at_b_p11)

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #53590: origin
                    (at_b_p12)

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #24958: origin
                    (at_b_p2)

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #40199: origin
                    (at_b_p3)

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #62075: origin
                    (at_b_p4)

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #72251: origin
                    (at_b_p5)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #38566: origin
                    (at_b_p7)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #26185: origin
                    (at_b_p8)

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #11426: origin
                    (not_at_b_p5)

                    ; #78257: origin
                    (at_b_p9)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #72251: <==negation-removal== 11426 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #77500: origin
                    (at_b_p1)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #49603: origin
                    (at_b_p10)

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #56367: origin
                    (at_b_p11)

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #53590: origin
                    (at_b_p12)

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #38489: origin
                    (not_at_b_p6)

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #40199: origin
                    (at_b_p3)

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #62075: origin
                    (at_b_p4)

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #72251: origin
                    (at_b_p5)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #38566: origin
                    (at_b_p7)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #38489: origin
                    (not_at_b_p6)

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #38489: origin
                    (not_at_b_p6)

                    ; #78257: origin
                    (at_b_p9)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #79673: <==negation-removal== 38489 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #77500: origin
                    (at_b_p1)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #49603: origin
                    (at_b_p10)

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #56367: origin
                    (at_b_p11)

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #53590: origin
                    (at_b_p12)

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #37020: origin
                    (not_at_b_p7)

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #40199: origin
                    (at_b_p3)

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #62075: origin
                    (at_b_p4)

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #72251: origin
                    (at_b_p5)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #38566: origin
                    (at_b_p7)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #37020: origin
                    (not_at_b_p7)

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #37020: origin
                    (not_at_b_p7)

                    ; #78257: origin
                    (at_b_p9)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #38566: <==negation-removal== 37020 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #77500: origin
                    (at_b_p1)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #49603: origin
                    (at_b_p10)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #56367: origin
                    (at_b_p11)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #53590: origin
                    (at_b_p12)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #40199: origin
                    (at_b_p3)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #62075: origin
                    (at_b_p4)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #72251: origin
                    (at_b_p5)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #78603: origin
                    (not_at_b_p8)

                    ; #79673: origin
                    (at_b_p6)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #38566: origin
                    (at_b_p7)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #78257: origin
                    (at_b_p9)

                    ; #78603: origin
                    (not_at_b_p8)

                    ; #26185: <==negation-removal== 78603 (pos)
                    (not (at_b_p8))

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #77500: origin
                    (at_b_p1)

                    ; #35675: <==negation-removal== 77500 (pos)
                    (not (not_at_b_p1))

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #49603: origin
                    (at_b_p10)

                    ; #76397: <==negation-removal== 49603 (pos)
                    (not (not_at_b_p10))

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #56367: origin
                    (at_b_p11)

                    ; #64488: <==negation-removal== 56367 (pos)
                    (not (not_at_b_p11))

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #53590: origin
                    (at_b_p12)

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))

                    ; #79535: <==negation-removal== 53590 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #24958: origin
                    (at_b_p2)

                    ; #35983: origin
                    (not_at_b_p9)

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))

                    ; #88767: <==negation-removal== 24958 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #40199: origin
                    (at_b_p3)

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))

                    ; #79495: <==negation-removal== 40199 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #62075: origin
                    (at_b_p4)

                    ; #50448: <==negation-removal== 62075 (pos)
                    (not (not_at_b_p4))

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #72251: origin
                    (at_b_p5)

                    ; #11426: <==negation-removal== 72251 (pos)
                    (not (not_at_b_p5))

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #79673: origin
                    (at_b_p6)

                    ; #38489: <==negation-removal== 79673 (pos)
                    (not (not_at_b_p6))

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #38566: origin
                    (at_b_p7)

                    ; #37020: <==negation-removal== 38566 (pos)
                    (not (not_at_b_p7))

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #26185: origin
                    (at_b_p8)

                    ; #35983: origin
                    (not_at_b_p9)

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))

                    ; #78603: <==negation-removal== 26185 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #35983: origin
                    (not_at_b_p9)

                    ; #78257: origin
                    (at_b_p9)

                    ; #35983: <==negation-removal== 78257 (pos)
                    (not (not_at_b_p9))

                    ; #78257: <==negation-removal== 35983 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #26172: origin
                    (at_c_p1)

                    ; #77477: origin
                    (not_at_c_p10)

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #76269: origin
                    (at_c_p10)

                    ; #77477: origin
                    (not_at_c_p10)

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #77477: origin
                    (not_at_c_p10)

                    ; #86268: origin
                    (at_c_p11)

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #77477: origin
                    (not_at_c_p10)

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #30313: origin
                    (at_c_p2)

                    ; #77477: origin
                    (not_at_c_p10)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #28853: origin
                    (at_c_p3)

                    ; #77477: origin
                    (not_at_c_p10)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #77477: origin
                    (not_at_c_p10)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #52863: origin
                    (at_c_p5)

                    ; #77477: origin
                    (not_at_c_p10)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #77477: origin
                    (not_at_c_p10)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #22312: origin
                    (at_c_p7)

                    ; #77477: origin
                    (not_at_c_p10)

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #59293: origin
                    (at_c_p8)

                    ; #77477: origin
                    (not_at_c_p10)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #77477: origin
                    (not_at_c_p10)

                    ; #87256: origin
                    (at_c_p9)

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))

                    ; #76269: <==negation-removal== 77477 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #26172: origin
                    (at_c_p1)

                    ; #85429: origin
                    (not_at_c_p11)

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #76269: origin
                    (at_c_p10)

                    ; #85429: origin
                    (not_at_c_p11)

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #85429: origin
                    (not_at_c_p11)

                    ; #86268: origin
                    (at_c_p11)

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #85429: origin
                    (not_at_c_p11)

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #30313: origin
                    (at_c_p2)

                    ; #85429: origin
                    (not_at_c_p11)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #28853: origin
                    (at_c_p3)

                    ; #85429: origin
                    (not_at_c_p11)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #84310: origin
                    (at_c_p4)

                    ; #85429: origin
                    (not_at_c_p11)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #52863: origin
                    (at_c_p5)

                    ; #85429: origin
                    (not_at_c_p11)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #85429: origin
                    (not_at_c_p11)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #22312: origin
                    (at_c_p7)

                    ; #85429: origin
                    (not_at_c_p11)

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #59293: origin
                    (at_c_p8)

                    ; #85429: origin
                    (not_at_c_p11)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #85429: origin
                    (not_at_c_p11)

                    ; #87256: origin
                    (at_c_p9)

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))

                    ; #86268: <==negation-removal== 85429 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #26172: origin
                    (at_c_p1)

                    ; #31602: origin
                    (not_at_c_p12)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #31602: origin
                    (not_at_c_p12)

                    ; #76269: origin
                    (at_c_p10)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #31602: origin
                    (not_at_c_p12)

                    ; #86268: origin
                    (at_c_p11)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #31602: origin
                    (not_at_c_p12)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #30313: origin
                    (at_c_p2)

                    ; #31602: origin
                    (not_at_c_p12)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #28853: origin
                    (at_c_p3)

                    ; #31602: origin
                    (not_at_c_p12)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #31602: origin
                    (not_at_c_p12)

                    ; #84310: origin
                    (at_c_p4)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #31602: origin
                    (not_at_c_p12)

                    ; #52863: origin
                    (at_c_p5)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #31602: origin
                    (not_at_c_p12)

                    ; #90946: origin
                    (at_c_p6)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #22312: origin
                    (at_c_p7)

                    ; #31602: origin
                    (not_at_c_p12)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #31602: origin
                    (not_at_c_p12)

                    ; #59293: origin
                    (at_c_p8)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #31602: origin
                    (not_at_c_p12)

                    ; #87256: origin
                    (at_c_p9)

                    ; #18191: <==negation-removal== 31602 (pos)
                    (not (at_c_p12))

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #26172: origin
                    (at_c_p1)

                    ; #62254: origin
                    (not_at_c_p1)

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #62254: origin
                    (not_at_c_p1)

                    ; #76269: origin
                    (at_c_p10)

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #62254: origin
                    (not_at_c_p1)

                    ; #86268: origin
                    (at_c_p11)

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #62254: origin
                    (not_at_c_p1)

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #30313: origin
                    (at_c_p2)

                    ; #62254: origin
                    (not_at_c_p1)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #28853: origin
                    (at_c_p3)

                    ; #62254: origin
                    (not_at_c_p1)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #62254: origin
                    (not_at_c_p1)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #52863: origin
                    (at_c_p5)

                    ; #62254: origin
                    (not_at_c_p1)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #62254: origin
                    (not_at_c_p1)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #22312: origin
                    (at_c_p7)

                    ; #62254: origin
                    (not_at_c_p1)

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #59293: origin
                    (at_c_p8)

                    ; #62254: origin
                    (not_at_c_p1)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #62254: origin
                    (not_at_c_p1)

                    ; #87256: origin
                    (at_c_p9)

                    ; #26172: <==negation-removal== 62254 (pos)
                    (not (at_c_p1))

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #26172: origin
                    (at_c_p1)

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #76269: origin
                    (at_c_p10)

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #86268: origin
                    (at_c_p11)

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #23193: origin
                    (not_at_c_p2)

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #30313: origin
                    (at_c_p2)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #28853: origin
                    (at_c_p3)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #52863: origin
                    (at_c_p5)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #22312: origin
                    (at_c_p7)

                    ; #23193: origin
                    (not_at_c_p2)

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #59293: origin
                    (at_c_p8)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #23193: origin
                    (not_at_c_p2)

                    ; #87256: origin
                    (at_c_p9)

                    ; #30313: <==negation-removal== 23193 (pos)
                    (not (at_c_p2))

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #26172: origin
                    (at_c_p1)

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #76269: origin
                    (at_c_p10)

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #86268: origin
                    (at_c_p11)

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #19883: origin
                    (not_at_c_p3)

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #30313: origin
                    (at_c_p2)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #28853: origin
                    (at_c_p3)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #52863: origin
                    (at_c_p5)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #22312: origin
                    (at_c_p7)

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #59293: origin
                    (at_c_p8)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #19883: origin
                    (not_at_c_p3)

                    ; #87256: origin
                    (at_c_p9)

                    ; #28853: <==negation-removal== 19883 (pos)
                    (not (at_c_p3))

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #26172: origin
                    (at_c_p1)

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #76269: origin
                    (at_c_p10)

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #86268: origin
                    (at_c_p11)

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #19925: origin
                    (not_at_c_p4)

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #30313: origin
                    (at_c_p2)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #28853: origin
                    (at_c_p3)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #52863: origin
                    (at_c_p5)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #22312: origin
                    (at_c_p7)

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #59293: origin
                    (at_c_p8)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #19925: origin
                    (not_at_c_p4)

                    ; #87256: origin
                    (at_c_p9)

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))

                    ; #84310: <==negation-removal== 19925 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #26172: origin
                    (at_c_p1)

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #76269: origin
                    (at_c_p10)

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #86268: origin
                    (at_c_p11)

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #21625: origin
                    (not_at_c_p5)

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #30313: origin
                    (at_c_p2)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #28853: origin
                    (at_c_p3)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #52863: origin
                    (at_c_p5)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #22312: origin
                    (at_c_p7)

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #59293: origin
                    (at_c_p8)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #21625: origin
                    (not_at_c_p5)

                    ; #87256: origin
                    (at_c_p9)

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))

                    ; #52863: <==negation-removal== 21625 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #26172: origin
                    (at_c_p1)

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #76269: origin
                    (at_c_p10)

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #86268: origin
                    (at_c_p11)

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #20364: origin
                    (not_at_c_p6)

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #30313: origin
                    (at_c_p2)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #28853: origin
                    (at_c_p3)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #52863: origin
                    (at_c_p5)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #22312: origin
                    (at_c_p7)

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #59293: origin
                    (at_c_p8)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #20364: origin
                    (not_at_c_p6)

                    ; #87256: origin
                    (at_c_p9)

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))

                    ; #90946: <==negation-removal== 20364 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #26172: origin
                    (at_c_p1)

                    ; #57831: origin
                    (not_at_c_p7)

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #57831: origin
                    (not_at_c_p7)

                    ; #76269: origin
                    (at_c_p10)

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #57831: origin
                    (not_at_c_p7)

                    ; #86268: origin
                    (at_c_p11)

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #57831: origin
                    (not_at_c_p7)

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #30313: origin
                    (at_c_p2)

                    ; #57831: origin
                    (not_at_c_p7)

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #28853: origin
                    (at_c_p3)

                    ; #57831: origin
                    (not_at_c_p7)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #57831: origin
                    (not_at_c_p7)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #52863: origin
                    (at_c_p5)

                    ; #57831: origin
                    (not_at_c_p7)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #57831: origin
                    (not_at_c_p7)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #22312: origin
                    (at_c_p7)

                    ; #57831: origin
                    (not_at_c_p7)

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #57831: origin
                    (not_at_c_p7)

                    ; #59293: origin
                    (at_c_p8)

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #57831: origin
                    (not_at_c_p7)

                    ; #87256: origin
                    (at_c_p9)

                    ; #22312: <==negation-removal== 57831 (pos)
                    (not (at_c_p7))

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #26172: origin
                    (at_c_p1)

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #76269: origin
                    (at_c_p10)

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #86268: origin
                    (at_c_p11)

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #23853: origin
                    (not_at_c_p8)

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #30313: origin
                    (at_c_p2)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #28853: origin
                    (at_c_p3)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #52863: origin
                    (at_c_p5)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #22312: origin
                    (at_c_p7)

                    ; #23853: origin
                    (not_at_c_p8)

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #59293: origin
                    (at_c_p8)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #23853: origin
                    (not_at_c_p8)

                    ; #87256: origin
                    (at_c_p9)

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))

                    ; #59293: <==negation-removal== 23853 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #26172: origin
                    (at_c_p1)

                    ; #44106: origin
                    (not_at_c_p9)

                    ; #62254: <==negation-removal== 26172 (pos)
                    (not (not_at_c_p1))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #44106: origin
                    (not_at_c_p9)

                    ; #76269: origin
                    (at_c_p10)

                    ; #77477: <==negation-removal== 76269 (pos)
                    (not (not_at_c_p10))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #44106: origin
                    (not_at_c_p9)

                    ; #86268: origin
                    (at_c_p11)

                    ; #85429: <==negation-removal== 86268 (pos)
                    (not (not_at_c_p11))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #18191: origin
                    (at_c_p12)

                    ; #44106: origin
                    (not_at_c_p9)

                    ; #31602: <==negation-removal== 18191 (pos)
                    (not (not_at_c_p12))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #30313: origin
                    (at_c_p2)

                    ; #44106: origin
                    (not_at_c_p9)

                    ; #23193: <==negation-removal== 30313 (pos)
                    (not (not_at_c_p2))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #28853: origin
                    (at_c_p3)

                    ; #44106: origin
                    (not_at_c_p9)

                    ; #19883: <==negation-removal== 28853 (pos)
                    (not (not_at_c_p3))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #44106: origin
                    (not_at_c_p9)

                    ; #84310: origin
                    (at_c_p4)

                    ; #19925: <==negation-removal== 84310 (pos)
                    (not (not_at_c_p4))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #44106: origin
                    (not_at_c_p9)

                    ; #52863: origin
                    (at_c_p5)

                    ; #21625: <==negation-removal== 52863 (pos)
                    (not (not_at_c_p5))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #44106: origin
                    (not_at_c_p9)

                    ; #90946: origin
                    (at_c_p6)

                    ; #20364: <==negation-removal== 90946 (pos)
                    (not (not_at_c_p6))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #22312: origin
                    (at_c_p7)

                    ; #44106: origin
                    (not_at_c_p9)

                    ; #57831: <==negation-removal== 22312 (pos)
                    (not (not_at_c_p7))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #44106: origin
                    (not_at_c_p9)

                    ; #59293: origin
                    (at_c_p8)

                    ; #23853: <==negation-removal== 59293 (pos)
                    (not (not_at_c_p8))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #44106: origin
                    (not_at_c_p9)

                    ; #87256: origin
                    (at_c_p9)

                    ; #44106: <==negation-removal== 87256 (pos)
                    (not (not_at_c_p9))

                    ; #87256: <==negation-removal== 44106 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #19221: <==commonly_known== 35644 (pos)
                    (Ba_checked_p10)

                    ; #28112: <==commonly_known== 50306 (neg)
                    (Pc_checked_p10)

                    ; #30624: <==commonly_known== 50306 (neg)
                    (Pa_checked_p10)

                    ; #35644: origin
                    (checked_p10)

                    ; #56851: <==closure== 65917 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #58755: <==closure== 86230 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #61397: <==commonly_known== 35644 (pos)
                    (Bb_checked_p10)

                    ; #65917: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #68586: <==commonly_known== 50306 (neg)
                    (Pb_checked_p10)

                    ; #83203: <==commonly_known== 35644 (pos)
                    (Bc_checked_p10)

                    ; #86230: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #11987: <==uncertain_firing== 65917 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #16747: <==negation-removal== 68586 (pos)
                    (not (Bb_not_checked_p10))

                    ; #31990: <==negation-removal== 83203 (pos)
                    (not (Pc_not_checked_p10))

                    ; #37879: <==uncertain_firing== 86230 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #42249: <==uncertain_firing== 56851 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #42821: <==negation-removal== 86230 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #49502: <==uncertain_firing== 58755 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #50306: <==negation-removal== 35644 (pos)
                    (not (not_checked_p10))

                    ; #54971: <==negation-removal== 28112 (pos)
                    (not (Bc_not_checked_p10))

                    ; #58729: <==negation-removal== 58755 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #68546: <==negation-removal== 61397 (pos)
                    (not (Pb_not_checked_p10))

                    ; #70955: <==negation-removal== 56851 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #74651: <==negation-removal== 19221 (pos)
                    (not (Pa_not_checked_p10))

                    ; #85521: <==negation-removal== 30624 (pos)
                    (not (Ba_not_checked_p10))

                    ; #86267: <==negation-removal== 65917 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14779: <==closure== 86416 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #15709: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #21044: <==commonly_known== 90105 (neg)
                    (Pb_checked_p11)

                    ; #38319: <==closure== 15709 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #47259: <==commonly_known== 90105 (neg)
                    (Pa_checked_p11)

                    ; #57261: <==commonly_known== 58199 (pos)
                    (Ba_checked_p11)

                    ; #58199: origin
                    (checked_p11)

                    ; #60551: <==commonly_known== 58199 (pos)
                    (Bb_checked_p11)

                    ; #80647: <==commonly_known== 90105 (neg)
                    (Pc_checked_p11)

                    ; #83333: <==commonly_known== 58199 (pos)
                    (Bc_checked_p11)

                    ; #86416: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #14103: <==negation-removal== 38319 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #16935: <==negation-removal== 57261 (pos)
                    (not (Pa_not_checked_p11))

                    ; #20473: <==uncertain_firing== 15709 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #22792: <==uncertain_firing== 14779 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #26127: <==negation-removal== 80647 (pos)
                    (not (Bc_not_checked_p11))

                    ; #34155: <==uncertain_firing== 38319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #38514: <==negation-removal== 60551 (pos)
                    (not (Pb_not_checked_p11))

                    ; #42432: <==negation-removal== 83333 (pos)
                    (not (Pc_not_checked_p11))

                    ; #61392: <==negation-removal== 86416 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #61640: <==negation-removal== 21044 (pos)
                    (not (Bb_not_checked_p11))

                    ; #65541: <==negation-removal== 47259 (pos)
                    (not (Ba_not_checked_p11))

                    ; #86069: <==negation-removal== 14779 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #89016: <==negation-removal== 15709 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #89190: <==uncertain_firing== 86416 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #90105: <==negation-removal== 58199 (pos)
                    (not (not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #30450: <==commonly_known== 37653 (neg)
                    (Pc_checked_p12)

                    ; #37788: <==commonly_known== 73394 (pos)
                    (Bc_checked_p12)

                    ; #38105: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #40892: <==commonly_known== 37653 (neg)
                    (Pb_checked_p12)

                    ; #42530: <==commonly_known== 73394 (pos)
                    (Ba_checked_p12)

                    ; #52179: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #72863: <==commonly_known== 73394 (pos)
                    (Bb_checked_p12)

                    ; #73394: origin
                    (checked_p12)

                    ; #82486: <==closure== 38105 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #84668: <==closure== 52179 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #86803: <==commonly_known== 37653 (neg)
                    (Pa_checked_p12)

                    ; #21841: <==uncertain_firing== 52179 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #29475: <==negation-removal== 30450 (pos)
                    (not (Bc_not_checked_p12))

                    ; #36623: <==negation-removal== 86803 (pos)
                    (not (Ba_not_checked_p12))

                    ; #37653: <==negation-removal== 73394 (pos)
                    (not (not_checked_p12))

                    ; #39119: <==negation-removal== 37788 (pos)
                    (not (Pc_not_checked_p12))

                    ; #42998: <==negation-removal== 52179 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #45958: <==negation-removal== 84668 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #47889: <==negation-removal== 38105 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #55776: <==negation-removal== 72863 (pos)
                    (not (Pb_not_checked_p12))

                    ; #55811: <==negation-removal== 42530 (pos)
                    (not (Pa_not_checked_p12))

                    ; #66886: <==uncertain_firing== 82486 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #68532: <==negation-removal== 82486 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #76740: <==uncertain_firing== 84668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #76756: <==negation-removal== 40892 (pos)
                    (not (Bb_not_checked_p12))

                    ; #89507: <==uncertain_firing== 38105 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17361: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #17718: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #28477: <==commonly_known== 74791 (neg)
                    (Pa_checked_p1)

                    ; #36583: <==commonly_known== 70405 (pos)
                    (Ba_checked_p1)

                    ; #48367: <==commonly_known== 70405 (pos)
                    (Bb_checked_p1)

                    ; #53878: <==commonly_known== 74791 (neg)
                    (Pc_checked_p1)

                    ; #61711: <==commonly_known== 70405 (pos)
                    (Bc_checked_p1)

                    ; #67348: <==commonly_known== 74791 (neg)
                    (Pb_checked_p1)

                    ; #70405: origin
                    (checked_p1)

                    ; #80270: <==closure== 17361 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #84558: <==closure== 17718 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #20760: <==uncertain_firing== 80270 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #21912: <==uncertain_firing== 17718 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #29526: <==negation-removal== 67348 (pos)
                    (not (Bb_not_checked_p1))

                    ; #41838: <==negation-removal== 80270 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #46013: <==negation-removal== 28477 (pos)
                    (not (Ba_not_checked_p1))

                    ; #49066: <==negation-removal== 48367 (pos)
                    (not (Pb_not_checked_p1))

                    ; #49932: <==uncertain_firing== 17361 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #51801: <==negation-removal== 17361 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #70782: <==negation-removal== 53878 (pos)
                    (not (Bc_not_checked_p1))

                    ; #71304: <==negation-removal== 36583 (pos)
                    (not (Pa_not_checked_p1))

                    ; #74069: <==negation-removal== 61711 (pos)
                    (not (Pc_not_checked_p1))

                    ; #74791: <==negation-removal== 70405 (pos)
                    (not (not_checked_p1))

                    ; #79183: <==negation-removal== 17718 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #81507: <==negation-removal== 84558 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #89290: <==uncertain_firing== 84558 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16661: <==closure== 80314 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #23507: <==commonly_known== 65619 (pos)
                    (Ba_checked_p2)

                    ; #36723: <==commonly_known== 83553 (neg)
                    (Pc_checked_p2)

                    ; #43104: <==commonly_known== 83553 (neg)
                    (Pb_checked_p2)

                    ; #59750: <==commonly_known== 65619 (pos)
                    (Bc_checked_p2)

                    ; #65619: origin
                    (checked_p2)

                    ; #67229: <==commonly_known== 83553 (neg)
                    (Pa_checked_p2)

                    ; #68254: <==closure== 81824 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #74807: <==commonly_known== 65619 (pos)
                    (Bb_checked_p2)

                    ; #80314: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #81824: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #13557: <==uncertain_firing== 81824 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #21731: <==negation-removal== 59750 (pos)
                    (not (Pc_not_checked_p2))

                    ; #22549: <==negation-removal== 81824 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #27834: <==negation-removal== 74807 (pos)
                    (not (Pb_not_checked_p2))

                    ; #31414: <==negation-removal== 16661 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #38286: <==negation-removal== 43104 (pos)
                    (not (Bb_not_checked_p2))

                    ; #44978: <==negation-removal== 23507 (pos)
                    (not (Pa_not_checked_p2))

                    ; #51470: <==negation-removal== 68254 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #52976: <==uncertain_firing== 68254 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #74069: <==negation-removal== 36723 (pos)
                    (not (Bc_not_checked_p2))

                    ; #77367: <==uncertain_firing== 80314 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #82266: <==negation-removal== 80314 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #83553: <==negation-removal== 65619 (pos)
                    (not (not_checked_p2))

                    ; #83591: <==negation-removal== 67229 (pos)
                    (not (Ba_not_checked_p2))

                    ; #91240: <==uncertain_firing== 16661 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #19908: <==commonly_known== 77001 (neg)
                    (Pc_checked_p3)

                    ; #24227: <==commonly_known== 77001 (neg)
                    (Pb_checked_p3)

                    ; #26168: <==closure== 36520 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #36520: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #37705: <==commonly_known== 65551 (pos)
                    (Ba_checked_p3)

                    ; #42142: <==closure== 60155 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #45144: <==commonly_known== 65551 (pos)
                    (Bb_checked_p3)

                    ; #60155: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #60485: <==commonly_known== 77001 (neg)
                    (Pa_checked_p3)

                    ; #65551: origin
                    (checked_p3)

                    ; #68692: <==commonly_known== 65551 (pos)
                    (Bc_checked_p3)

                    ; #35661: <==uncertain_firing== 26168 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #44660: <==negation-removal== 42142 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #55691: <==uncertain_firing== 36520 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #61502: <==negation-removal== 68692 (pos)
                    (not (Pc_not_checked_p3))

                    ; #61661: <==negation-removal== 36520 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #63992: <==uncertain_firing== 42142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #66597: <==negation-removal== 19908 (pos)
                    (not (Bc_not_checked_p3))

                    ; #71387: <==negation-removal== 37705 (pos)
                    (not (Pa_not_checked_p3))

                    ; #74206: <==negation-removal== 26168 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #74240: <==uncertain_firing== 60155 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #74680: <==negation-removal== 60485 (pos)
                    (not (Ba_not_checked_p3))

                    ; #77001: <==negation-removal== 65551 (pos)
                    (not (not_checked_p3))

                    ; #80863: <==negation-removal== 24227 (pos)
                    (not (Bb_not_checked_p3))

                    ; #82742: <==negation-removal== 60155 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #90306: <==negation-removal== 45144 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10632: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #11799: origin
                    (checked_p4)

                    ; #12685: <==commonly_known== 54366 (neg)
                    (Pa_checked_p4)

                    ; #22452: <==commonly_known== 54366 (neg)
                    (Pc_checked_p4)

                    ; #23695: <==commonly_known== 54366 (neg)
                    (Pb_checked_p4)

                    ; #33759: <==commonly_known== 11799 (pos)
                    (Bc_checked_p4)

                    ; #44519: <==commonly_known== 11799 (pos)
                    (Ba_checked_p4)

                    ; #50638: <==closure== 76143 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #70323: <==closure== 10632 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #76143: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #79514: <==commonly_known== 11799 (pos)
                    (Bb_checked_p4)

                    ; #14415: <==uncertain_firing== 70323 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15818: <==negation-removal== 50638 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #20700: <==negation-removal== 10632 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #23650: <==negation-removal== 76143 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #28414: <==negation-removal== 44519 (pos)
                    (not (Pa_not_checked_p4))

                    ; #31424: <==negation-removal== 12685 (pos)
                    (not (Ba_not_checked_p4))

                    ; #38091: <==uncertain_firing== 10632 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #38239: <==negation-removal== 70323 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #42603: <==negation-removal== 22452 (pos)
                    (not (Bc_not_checked_p4))

                    ; #54366: <==negation-removal== 11799 (pos)
                    (not (not_checked_p4))

                    ; #62107: <==uncertain_firing== 76143 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #68682: <==negation-removal== 23695 (pos)
                    (not (Bb_not_checked_p4))

                    ; #73552: <==negation-removal== 33759 (pos)
                    (not (Pc_not_checked_p4))

                    ; #76148: <==negation-removal== 79514 (pos)
                    (not (Pb_not_checked_p4))

                    ; #98687: <==uncertain_firing== 50638 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13873: <==closure== 24196 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #19008: origin
                    (checked_p5)

                    ; #23424: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #24196: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #44082: <==closure== 23424 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #45649: <==commonly_known== 55470 (neg)
                    (Pa_checked_p5)

                    ; #62980: <==commonly_known== 19008 (pos)
                    (Ba_checked_p5)

                    ; #64668: <==commonly_known== 55470 (neg)
                    (Pb_checked_p5)

                    ; #73403: <==commonly_known== 19008 (pos)
                    (Bc_checked_p5)

                    ; #84311: <==commonly_known== 55470 (neg)
                    (Pc_checked_p5)

                    ; #85431: <==commonly_known== 19008 (pos)
                    (Bb_checked_p5)

                    ; #19848: <==negation-removal== 23424 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #24981: <==uncertain_firing== 24196 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #37236: <==negation-removal== 62980 (pos)
                    (not (Pa_not_checked_p5))

                    ; #44433: <==uncertain_firing== 23424 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #45114: <==negation-removal== 64668 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48731: <==negation-removal== 45649 (pos)
                    (not (Ba_not_checked_p5))

                    ; #52257: <==negation-removal== 85431 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55470: <==negation-removal== 19008 (pos)
                    (not (not_checked_p5))

                    ; #62751: <==negation-removal== 24196 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #74008: <==negation-removal== 13873 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #74150: <==uncertain_firing== 13873 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #76216: <==negation-removal== 84311 (pos)
                    (not (Bc_not_checked_p5))

                    ; #79873: <==uncertain_firing== 44082 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #82900: <==negation-removal== 44082 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #89578: <==negation-removal== 73403 (pos)
                    (not (Pc_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10085: <==commonly_known== 51098 (pos)
                    (Bb_checked_p6)

                    ; #24166: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #29466: <==commonly_known== 49595 (neg)
                    (Pb_checked_p6)

                    ; #40870: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #51098: origin
                    (checked_p6)

                    ; #52296: <==closure== 24166 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #66968: <==closure== 40870 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #75262: <==commonly_known== 49595 (neg)
                    (Pa_checked_p6)

                    ; #77051: <==commonly_known== 49595 (neg)
                    (Pc_checked_p6)

                    ; #84263: <==commonly_known== 51098 (pos)
                    (Ba_checked_p6)

                    ; #85791: <==commonly_known== 51098 (pos)
                    (Bc_checked_p6)

                    ; #13535: <==uncertain_firing== 66968 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #14849: <==negation-removal== 75262 (pos)
                    (not (Ba_not_checked_p6))

                    ; #21415: <==uncertain_firing== 24166 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22339: <==negation-removal== 85791 (pos)
                    (not (Pc_not_checked_p6))

                    ; #27527: <==negation-removal== 66968 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #41422: <==negation-removal== 40870 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #49595: <==negation-removal== 51098 (pos)
                    (not (not_checked_p6))

                    ; #49665: <==negation-removal== 77051 (pos)
                    (not (Bc_not_checked_p6))

                    ; #51443: <==negation-removal== 84263 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55642: <==negation-removal== 29466 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63886: <==negation-removal== 52296 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #88631: <==uncertain_firing== 52296 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #88685: <==uncertain_firing== 40870 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #94028: <==negation-removal== 24166 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #98085: <==negation-removal== 10085 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #27473: <==closure== 30298 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #30298: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #49582: <==commonly_known== 91052 (pos)
                    (Bc_checked_p7)

                    ; #63043: <==commonly_known== 63191 (neg)
                    (Pb_checked_p7)

                    ; #68018: <==commonly_known== 91052 (pos)
                    (Ba_checked_p7)

                    ; #73135: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #78638: <==closure== 73135 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #79745: <==commonly_known== 63191 (neg)
                    (Pc_checked_p7)

                    ; #83687: <==commonly_known== 91052 (pos)
                    (Bb_checked_p7)

                    ; #85369: <==commonly_known== 63191 (neg)
                    (Pa_checked_p7)

                    ; #91052: origin
                    (checked_p7)

                    ; #15860: <==uncertain_firing== 78638 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #17381: <==uncertain_firing== 73135 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #26759: <==uncertain_firing== 27473 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #27109: <==negation-removal== 73135 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #27943: <==negation-removal== 27473 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #30196: <==negation-removal== 78638 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #39034: <==negation-removal== 49582 (pos)
                    (not (Pc_not_checked_p7))

                    ; #47519: <==negation-removal== 30298 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #57594: <==negation-removal== 63043 (pos)
                    (not (Bb_not_checked_p7))

                    ; #61932: <==uncertain_firing== 30298 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #63191: <==negation-removal== 91052 (pos)
                    (not (not_checked_p7))

                    ; #66571: <==negation-removal== 85369 (pos)
                    (not (Ba_not_checked_p7))

                    ; #70588: <==negation-removal== 68018 (pos)
                    (not (Pa_not_checked_p7))

                    ; #73917: <==negation-removal== 83687 (pos)
                    (not (Pb_not_checked_p7))

                    ; #87394: <==negation-removal== 79745 (pos)
                    (not (Bc_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12762: <==closure== 74995 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #14348: <==closure== 89134 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #27300: <==commonly_known== 84882 (neg)
                    (Pb_checked_p8)

                    ; #41734: origin
                    (checked_p8)

                    ; #51580: <==commonly_known== 41734 (pos)
                    (Ba_checked_p8)

                    ; #58387: <==commonly_known== 84882 (neg)
                    (Pa_checked_p8)

                    ; #74254: <==commonly_known== 41734 (pos)
                    (Bb_checked_p8)

                    ; #74995: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #85783: <==commonly_known== 41734 (pos)
                    (Bc_checked_p8)

                    ; #89134: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #90986: <==commonly_known== 84882 (neg)
                    (Pc_checked_p8)

                    ; #13120: <==negation-removal== 74995 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #30998: <==negation-removal== 85783 (pos)
                    (not (Pc_not_checked_p8))

                    ; #34112: <==negation-removal== 89134 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #37987: <==negation-removal== 58387 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38475: <==negation-removal== 14348 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63648: <==uncertain_firing== 12762 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #67193: <==negation-removal== 51580 (pos)
                    (not (Pa_not_checked_p8))

                    ; #70439: <==negation-removal== 90986 (pos)
                    (not (Bc_not_checked_p8))

                    ; #72221: <==negation-removal== 27300 (pos)
                    (not (Bb_not_checked_p8))

                    ; #73678: <==uncertain_firing== 89134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73743: <==uncertain_firing== 14348 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #82702: <==uncertain_firing== 74995 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #83891: <==negation-removal== 74254 (pos)
                    (not (Pb_not_checked_p8))

                    ; #84882: <==negation-removal== 41734 (pos)
                    (not (not_checked_p8))

                    ; #95017: <==negation-removal== 12762 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14247: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #17545: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #23538: origin
                    (checked_p9)

                    ; #25848: <==commonly_known== 23538 (pos)
                    (Bb_checked_p9)

                    ; #32578: <==commonly_known== 49569 (neg)
                    (Pa_checked_p9)

                    ; #37794: <==commonly_known== 49569 (neg)
                    (Pb_checked_p9)

                    ; #52206: <==closure== 14247 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #59009: <==closure== 17545 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #68522: <==commonly_known== 23538 (pos)
                    (Bc_checked_p9)

                    ; #80662: <==commonly_known== 23538 (pos)
                    (Ba_checked_p9)

                    ; #89939: <==commonly_known== 49569 (neg)
                    (Pc_checked_p9)

                    ; #18683: <==negation-removal== 25848 (pos)
                    (not (Pb_not_checked_p9))

                    ; #25834: <==uncertain_firing== 52206 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #29742: <==negation-removal== 17545 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #29790: <==negation-removal== 52206 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #43390: <==uncertain_firing== 17545 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #49569: <==negation-removal== 23538 (pos)
                    (not (not_checked_p9))

                    ; #56659: <==negation-removal== 59009 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #59831: <==negation-removal== 37794 (pos)
                    (not (Bb_not_checked_p9))

                    ; #68248: <==negation-removal== 32578 (pos)
                    (not (Ba_not_checked_p9))

                    ; #70288: <==negation-removal== 80662 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72773: <==negation-removal== 68522 (pos)
                    (not (Pc_not_checked_p9))

                    ; #78308: <==negation-removal== 89939 (pos)
                    (not (Bc_not_checked_p9))

                    ; #79887: <==uncertain_firing== 59009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #83008: <==uncertain_firing== 14247 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #88574: <==negation-removal== 14247 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #18682: <==closure== 45595 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #19221: <==commonly_known== 35644 (pos)
                    (Ba_checked_p10)

                    ; #28112: <==commonly_known== 50306 (neg)
                    (Pc_checked_p10)

                    ; #30624: <==commonly_known== 50306 (neg)
                    (Pa_checked_p10)

                    ; #35644: origin
                    (checked_p10)

                    ; #45595: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #58385: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #61397: <==commonly_known== 35644 (pos)
                    (Bb_checked_p10)

                    ; #68586: <==commonly_known== 50306 (neg)
                    (Pb_checked_p10)

                    ; #73419: <==closure== 58385 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #83203: <==commonly_known== 35644 (pos)
                    (Bc_checked_p10)

                    ; #11613: <==negation-removal== 73419 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #16747: <==negation-removal== 68586 (pos)
                    (not (Bb_not_checked_p10))

                    ; #31990: <==negation-removal== 83203 (pos)
                    (not (Pc_not_checked_p10))

                    ; #34825: <==uncertain_firing== 45595 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #45007: <==negation-removal== 58385 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #50043: <==uncertain_firing== 58385 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #50306: <==negation-removal== 35644 (pos)
                    (not (not_checked_p10))

                    ; #53909: <==uncertain_firing== 73419 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #54971: <==negation-removal== 28112 (pos)
                    (not (Bc_not_checked_p10))

                    ; #56747: <==negation-removal== 45595 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #68021: <==negation-removal== 18682 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #68546: <==negation-removal== 61397 (pos)
                    (not (Pb_not_checked_p10))

                    ; #74651: <==negation-removal== 19221 (pos)
                    (not (Pa_not_checked_p10))

                    ; #81330: <==uncertain_firing== 18682 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #85521: <==negation-removal== 30624 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #13399: <==closure== 54749 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #21044: <==commonly_known== 90105 (neg)
                    (Pb_checked_p11)

                    ; #46984: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #47259: <==commonly_known== 90105 (neg)
                    (Pa_checked_p11)

                    ; #54749: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #57261: <==commonly_known== 58199 (pos)
                    (Ba_checked_p11)

                    ; #58199: origin
                    (checked_p11)

                    ; #60551: <==commonly_known== 58199 (pos)
                    (Bb_checked_p11)

                    ; #77994: <==closure== 46984 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #80647: <==commonly_known== 90105 (neg)
                    (Pc_checked_p11)

                    ; #83333: <==commonly_known== 58199 (pos)
                    (Bc_checked_p11)

                    ; #11987: <==negation-removal== 46984 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #16935: <==negation-removal== 57261 (pos)
                    (not (Pa_not_checked_p11))

                    ; #18352: <==uncertain_firing== 13399 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #23116: <==negation-removal== 13399 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #26127: <==negation-removal== 80647 (pos)
                    (not (Bc_not_checked_p11))

                    ; #38514: <==negation-removal== 60551 (pos)
                    (not (Pb_not_checked_p11))

                    ; #39647: <==negation-removal== 54749 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #42432: <==negation-removal== 83333 (pos)
                    (not (Pc_not_checked_p11))

                    ; #53102: <==uncertain_firing== 46984 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #54632: <==negation-removal== 77994 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #61640: <==negation-removal== 21044 (pos)
                    (not (Bb_not_checked_p11))

                    ; #65541: <==negation-removal== 47259 (pos)
                    (not (Ba_not_checked_p11))

                    ; #68030: <==uncertain_firing== 54749 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #73138: <==uncertain_firing== 77994 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #90105: <==negation-removal== 58199 (pos)
                    (not (not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12173: <==closure== 32002 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #30450: <==commonly_known== 37653 (neg)
                    (Pc_checked_p12)

                    ; #32002: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #37788: <==commonly_known== 73394 (pos)
                    (Bc_checked_p12)

                    ; #40892: <==commonly_known== 37653 (neg)
                    (Pb_checked_p12)

                    ; #42530: <==commonly_known== 73394 (pos)
                    (Ba_checked_p12)

                    ; #72284: <==closure== 90808 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #72863: <==commonly_known== 73394 (pos)
                    (Bb_checked_p12)

                    ; #73394: origin
                    (checked_p12)

                    ; #86803: <==commonly_known== 37653 (neg)
                    (Pa_checked_p12)

                    ; #90808: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #29475: <==negation-removal== 30450 (pos)
                    (not (Bc_not_checked_p12))

                    ; #30359: <==negation-removal== 72284 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #36623: <==negation-removal== 86803 (pos)
                    (not (Ba_not_checked_p12))

                    ; #37653: <==negation-removal== 73394 (pos)
                    (not (not_checked_p12))

                    ; #39119: <==negation-removal== 37788 (pos)
                    (not (Pc_not_checked_p12))

                    ; #48329: <==uncertain_firing== 12173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #55478: <==uncertain_firing== 72284 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #55573: <==uncertain_firing== 32002 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #55776: <==negation-removal== 72863 (pos)
                    (not (Pb_not_checked_p12))

                    ; #55811: <==negation-removal== 42530 (pos)
                    (not (Pa_not_checked_p12))

                    ; #64604: <==negation-removal== 32002 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #65506: <==negation-removal== 90808 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #70639: <==uncertain_firing== 90808 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #76756: <==negation-removal== 40892 (pos)
                    (not (Bb_not_checked_p12))

                    ; #90912: <==negation-removal== 12173 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #27161: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #28477: <==commonly_known== 74791 (neg)
                    (Pa_checked_p1)

                    ; #36418: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #36583: <==commonly_known== 70405 (pos)
                    (Ba_checked_p1)

                    ; #44563: <==closure== 27161 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #48367: <==commonly_known== 70405 (pos)
                    (Bb_checked_p1)

                    ; #53878: <==commonly_known== 74791 (neg)
                    (Pc_checked_p1)

                    ; #61711: <==commonly_known== 70405 (pos)
                    (Bc_checked_p1)

                    ; #67348: <==commonly_known== 74791 (neg)
                    (Pb_checked_p1)

                    ; #70405: origin
                    (checked_p1)

                    ; #82161: <==closure== 36418 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11855: <==negation-removal== 82161 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #17120: <==uncertain_firing== 27161 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #29526: <==negation-removal== 67348 (pos)
                    (not (Bb_not_checked_p1))

                    ; #40116: <==negation-removal== 36418 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #46013: <==negation-removal== 28477 (pos)
                    (not (Ba_not_checked_p1))

                    ; #46794: <==uncertain_firing== 82161 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #49066: <==negation-removal== 48367 (pos)
                    (not (Pb_not_checked_p1))

                    ; #53655: <==uncertain_firing== 44563 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #59125: <==negation-removal== 44563 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #60772: <==negation-removal== 27161 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #70720: <==uncertain_firing== 36418 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #70782: <==negation-removal== 53878 (pos)
                    (not (Bc_not_checked_p1))

                    ; #71304: <==negation-removal== 36583 (pos)
                    (not (Pa_not_checked_p1))

                    ; #74069: <==negation-removal== 61711 (pos)
                    (not (Pc_not_checked_p1))

                    ; #74791: <==negation-removal== 70405 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17413: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #23507: <==commonly_known== 65619 (pos)
                    (Ba_checked_p2)

                    ; #36723: <==commonly_known== 83553 (neg)
                    (Pc_checked_p2)

                    ; #43104: <==commonly_known== 83553 (neg)
                    (Pb_checked_p2)

                    ; #59750: <==commonly_known== 65619 (pos)
                    (Bc_checked_p2)

                    ; #65619: origin
                    (checked_p2)

                    ; #67229: <==commonly_known== 83553 (neg)
                    (Pa_checked_p2)

                    ; #69610: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #74807: <==commonly_known== 65619 (pos)
                    (Bb_checked_p2)

                    ; #75479: <==closure== 17413 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #77245: <==closure== 69610 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #13716: <==uncertain_firing== 75479 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #21731: <==negation-removal== 59750 (pos)
                    (not (Pc_not_checked_p2))

                    ; #27834: <==negation-removal== 74807 (pos)
                    (not (Pb_not_checked_p2))

                    ; #38286: <==negation-removal== 43104 (pos)
                    (not (Bb_not_checked_p2))

                    ; #44913: <==uncertain_firing== 69610 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #44978: <==negation-removal== 23507 (pos)
                    (not (Pa_not_checked_p2))

                    ; #52122: <==negation-removal== 17413 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #59963: <==uncertain_firing== 77245 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60735: <==negation-removal== 77245 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #66799: <==uncertain_firing== 17413 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #70176: <==negation-removal== 69610 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #74069: <==negation-removal== 36723 (pos)
                    (not (Bc_not_checked_p2))

                    ; #83553: <==negation-removal== 65619 (pos)
                    (not (not_checked_p2))

                    ; #83591: <==negation-removal== 67229 (pos)
                    (not (Ba_not_checked_p2))

                    ; #84311: <==negation-removal== 75479 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16266: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #19908: <==commonly_known== 77001 (neg)
                    (Pc_checked_p3)

                    ; #24227: <==commonly_known== 77001 (neg)
                    (Pb_checked_p3)

                    ; #37705: <==commonly_known== 65551 (pos)
                    (Ba_checked_p3)

                    ; #45144: <==commonly_known== 65551 (pos)
                    (Bb_checked_p3)

                    ; #60485: <==commonly_known== 77001 (neg)
                    (Pa_checked_p3)

                    ; #62001: <==closure== 16266 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #65551: origin
                    (checked_p3)

                    ; #68692: <==commonly_known== 65551 (pos)
                    (Bc_checked_p3)

                    ; #77346: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #78704: <==closure== 77346 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #38098: <==uncertain_firing== 78704 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #41729: <==negation-removal== 78704 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #47760: <==uncertain_firing== 62001 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #50635: <==negation-removal== 16266 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #61502: <==negation-removal== 68692 (pos)
                    (not (Pc_not_checked_p3))

                    ; #66597: <==negation-removal== 19908 (pos)
                    (not (Bc_not_checked_p3))

                    ; #68240: <==uncertain_firing== 16266 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #71387: <==negation-removal== 37705 (pos)
                    (not (Pa_not_checked_p3))

                    ; #74680: <==negation-removal== 60485 (pos)
                    (not (Ba_not_checked_p3))

                    ; #76005: <==negation-removal== 77346 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #77001: <==negation-removal== 65551 (pos)
                    (not (not_checked_p3))

                    ; #80863: <==negation-removal== 24227 (pos)
                    (not (Bb_not_checked_p3))

                    ; #81815: <==uncertain_firing== 77346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #84016: <==negation-removal== 62001 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #90306: <==negation-removal== 45144 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11799: origin
                    (checked_p4)

                    ; #12685: <==commonly_known== 54366 (neg)
                    (Pa_checked_p4)

                    ; #22452: <==commonly_known== 54366 (neg)
                    (Pc_checked_p4)

                    ; #23695: <==commonly_known== 54366 (neg)
                    (Pb_checked_p4)

                    ; #25387: <==closure== 62742 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #33759: <==commonly_known== 11799 (pos)
                    (Bc_checked_p4)

                    ; #44519: <==commonly_known== 11799 (pos)
                    (Ba_checked_p4)

                    ; #62742: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #63456: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #65997: <==closure== 63456 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #79514: <==commonly_known== 11799 (pos)
                    (Bb_checked_p4)

                    ; #11375: <==uncertain_firing== 65997 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #12243: <==uncertain_firing== 25387 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #18255: <==negation-removal== 25387 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #28414: <==negation-removal== 44519 (pos)
                    (not (Pa_not_checked_p4))

                    ; #31424: <==negation-removal== 12685 (pos)
                    (not (Ba_not_checked_p4))

                    ; #34564: <==negation-removal== 63456 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #42603: <==negation-removal== 22452 (pos)
                    (not (Bc_not_checked_p4))

                    ; #54366: <==negation-removal== 11799 (pos)
                    (not (not_checked_p4))

                    ; #55714: <==negation-removal== 65997 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #58737: <==uncertain_firing== 62742 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #68682: <==negation-removal== 23695 (pos)
                    (not (Bb_not_checked_p4))

                    ; #73552: <==negation-removal== 33759 (pos)
                    (not (Pc_not_checked_p4))

                    ; #76148: <==negation-removal== 79514 (pos)
                    (not (Pb_not_checked_p4))

                    ; #77297: <==negation-removal== 62742 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #87247: <==uncertain_firing== 63456 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10120: <==closure== 70119 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #19008: origin
                    (checked_p5)

                    ; #45649: <==commonly_known== 55470 (neg)
                    (Pa_checked_p5)

                    ; #49454: <==closure== 89713 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #62980: <==commonly_known== 19008 (pos)
                    (Ba_checked_p5)

                    ; #64668: <==commonly_known== 55470 (neg)
                    (Pb_checked_p5)

                    ; #70119: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #73403: <==commonly_known== 19008 (pos)
                    (Bc_checked_p5)

                    ; #84311: <==commonly_known== 55470 (neg)
                    (Pc_checked_p5)

                    ; #85431: <==commonly_known== 19008 (pos)
                    (Bb_checked_p5)

                    ; #89713: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #22486: <==negation-removal== 10120 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #37236: <==negation-removal== 62980 (pos)
                    (not (Pa_not_checked_p5))

                    ; #39467: <==uncertain_firing== 10120 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #45114: <==negation-removal== 64668 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48731: <==negation-removal== 45649 (pos)
                    (not (Ba_not_checked_p5))

                    ; #52257: <==negation-removal== 85431 (pos)
                    (not (Pb_not_checked_p5))

                    ; #54339: <==uncertain_firing== 49454 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #55470: <==negation-removal== 19008 (pos)
                    (not (not_checked_p5))

                    ; #60397: <==negation-removal== 89713 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #61899: <==uncertain_firing== 89713 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #74035: <==uncertain_firing== 70119 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #76216: <==negation-removal== 84311 (pos)
                    (not (Bc_not_checked_p5))

                    ; #85683: <==negation-removal== 70119 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #87800: <==negation-removal== 49454 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #89578: <==negation-removal== 73403 (pos)
                    (not (Pc_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10085: <==commonly_known== 51098 (pos)
                    (Bb_checked_p6)

                    ; #29466: <==commonly_known== 49595 (neg)
                    (Pb_checked_p6)

                    ; #32603: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #39377: <==closure== 32603 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #51098: origin
                    (checked_p6)

                    ; #75262: <==commonly_known== 49595 (neg)
                    (Pa_checked_p6)

                    ; #77051: <==commonly_known== 49595 (neg)
                    (Pc_checked_p6)

                    ; #79499: <==closure== 80195 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #80195: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #84263: <==commonly_known== 51098 (pos)
                    (Ba_checked_p6)

                    ; #85791: <==commonly_known== 51098 (pos)
                    (Bc_checked_p6)

                    ; #14849: <==negation-removal== 75262 (pos)
                    (not (Ba_not_checked_p6))

                    ; #22339: <==negation-removal== 85791 (pos)
                    (not (Pc_not_checked_p6))

                    ; #25427: <==uncertain_firing== 79499 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #34421: <==uncertain_firing== 32603 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #34864: <==negation-removal== 39377 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #35249: <==uncertain_firing== 39377 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #49595: <==negation-removal== 51098 (pos)
                    (not (not_checked_p6))

                    ; #49665: <==negation-removal== 77051 (pos)
                    (not (Bc_not_checked_p6))

                    ; #51443: <==negation-removal== 84263 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55642: <==negation-removal== 29466 (pos)
                    (not (Bb_not_checked_p6))

                    ; #56566: <==uncertain_firing== 80195 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #67758: <==negation-removal== 79499 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #74760: <==negation-removal== 32603 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #78461: <==negation-removal== 80195 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #98085: <==negation-removal== 10085 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11931: <==closure== 87327 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #49582: <==commonly_known== 91052 (pos)
                    (Bc_checked_p7)

                    ; #63043: <==commonly_known== 63191 (neg)
                    (Pb_checked_p7)

                    ; #68018: <==commonly_known== 91052 (pos)
                    (Ba_checked_p7)

                    ; #75083: <==closure== 96114 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #79745: <==commonly_known== 63191 (neg)
                    (Pc_checked_p7)

                    ; #83687: <==commonly_known== 91052 (pos)
                    (Bb_checked_p7)

                    ; #85369: <==commonly_known== 63191 (neg)
                    (Pa_checked_p7)

                    ; #87327: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #91052: origin
                    (checked_p7)

                    ; #96114: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #20844: <==negation-removal== 11931 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #24846: <==uncertain_firing== 75083 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #31056: <==negation-removal== 87327 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #34106: <==uncertain_firing== 96114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #37796: <==negation-removal== 75083 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #39034: <==negation-removal== 49582 (pos)
                    (not (Pc_not_checked_p7))

                    ; #48380: <==uncertain_firing== 87327 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #50263: <==uncertain_firing== 11931 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #57594: <==negation-removal== 63043 (pos)
                    (not (Bb_not_checked_p7))

                    ; #63191: <==negation-removal== 91052 (pos)
                    (not (not_checked_p7))

                    ; #66571: <==negation-removal== 85369 (pos)
                    (not (Ba_not_checked_p7))

                    ; #69715: <==negation-removal== 96114 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #70588: <==negation-removal== 68018 (pos)
                    (not (Pa_not_checked_p7))

                    ; #73917: <==negation-removal== 83687 (pos)
                    (not (Pb_not_checked_p7))

                    ; #87394: <==negation-removal== 79745 (pos)
                    (not (Bc_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #27300: <==commonly_known== 84882 (neg)
                    (Pb_checked_p8)

                    ; #41734: origin
                    (checked_p8)

                    ; #49435: <==closure== 83891 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #51580: <==commonly_known== 41734 (pos)
                    (Ba_checked_p8)

                    ; #58387: <==commonly_known== 84882 (neg)
                    (Pa_checked_p8)

                    ; #70458: <==closure== 88432 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #74254: <==commonly_known== 41734 (pos)
                    (Bb_checked_p8)

                    ; #83891: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #85783: <==commonly_known== 41734 (pos)
                    (Bc_checked_p8)

                    ; #88432: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #90986: <==commonly_known== 84882 (neg)
                    (Pc_checked_p8)

                    ; #12368: <==uncertain_firing== 70458 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #30998: <==negation-removal== 85783 (pos)
                    (not (Pc_not_checked_p8))

                    ; #34770: <==negation-removal== 88432 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #37987: <==negation-removal== 58387 (pos)
                    (not (Ba_not_checked_p8))

                    ; #41188: <==negation-removal== 49435 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #55209: <==uncertain_firing== 83891 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #58744: <==negation-removal== 83891 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #67193: <==negation-removal== 51580 (pos)
                    (not (Pa_not_checked_p8))

                    ; #70439: <==negation-removal== 90986 (pos)
                    (not (Bc_not_checked_p8))

                    ; #72221: <==negation-removal== 27300 (pos)
                    (not (Bb_not_checked_p8))

                    ; #74646: <==uncertain_firing== 49435 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83891: <==negation-removal== 74254 (pos)
                    (not (Pb_not_checked_p8))

                    ; #84882: <==negation-removal== 41734 (pos)
                    (not (not_checked_p8))

                    ; #97803: <==uncertain_firing== 88432 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #98282: <==negation-removal== 70458 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #23538: origin
                    (checked_p9)

                    ; #25848: <==commonly_known== 23538 (pos)
                    (Bb_checked_p9)

                    ; #32578: <==commonly_known== 49569 (neg)
                    (Pa_checked_p9)

                    ; #37794: <==commonly_known== 49569 (neg)
                    (Pb_checked_p9)

                    ; #49225: <==closure== 70408 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #68522: <==commonly_known== 23538 (pos)
                    (Bc_checked_p9)

                    ; #70408: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #75263: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #80662: <==commonly_known== 23538 (pos)
                    (Ba_checked_p9)

                    ; #82122: <==closure== 75263 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #89939: <==commonly_known== 49569 (neg)
                    (Pc_checked_p9)

                    ; #11639: <==uncertain_firing== 75263 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #18683: <==negation-removal== 25848 (pos)
                    (not (Pb_not_checked_p9))

                    ; #27916: <==uncertain_firing== 49225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #40556: <==negation-removal== 82122 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #43099: <==negation-removal== 70408 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #43173: <==uncertain_firing== 70408 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #49569: <==negation-removal== 23538 (pos)
                    (not (not_checked_p9))

                    ; #58836: <==uncertain_firing== 82122 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #59831: <==negation-removal== 37794 (pos)
                    (not (Bb_not_checked_p9))

                    ; #68248: <==negation-removal== 32578 (pos)
                    (not (Ba_not_checked_p9))

                    ; #70288: <==negation-removal== 80662 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72773: <==negation-removal== 68522 (pos)
                    (not (Pc_not_checked_p9))

                    ; #78308: <==negation-removal== 89939 (pos)
                    (not (Bc_not_checked_p9))

                    ; #85864: <==negation-removal== 75263 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #86094: <==negation-removal== 49225 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #19221: <==commonly_known== 35644 (pos)
                    (Ba_checked_p10)

                    ; #26934: <==closure== 38671 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #28112: <==commonly_known== 50306 (neg)
                    (Pc_checked_p10)

                    ; #28758: <==closure== 61164 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #30624: <==commonly_known== 50306 (neg)
                    (Pa_checked_p10)

                    ; #35644: origin
                    (checked_p10)

                    ; #38671: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #61164: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #61397: <==commonly_known== 35644 (pos)
                    (Bb_checked_p10)

                    ; #68586: <==commonly_known== 50306 (neg)
                    (Pb_checked_p10)

                    ; #83203: <==commonly_known== 35644 (pos)
                    (Bc_checked_p10)

                    ; #14921: <==negation-removal== 26934 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #16747: <==negation-removal== 68586 (pos)
                    (not (Bb_not_checked_p10))

                    ; #18122: <==uncertain_firing== 38671 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22149: <==negation-removal== 38671 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22531: <==negation-removal== 28758 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #31990: <==negation-removal== 83203 (pos)
                    (not (Pc_not_checked_p10))

                    ; #34595: <==uncertain_firing== 61164 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #39796: <==uncertain_firing== 28758 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #43314: <==uncertain_firing== 26934 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #50306: <==negation-removal== 35644 (pos)
                    (not (not_checked_p10))

                    ; #50411: <==negation-removal== 61164 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #54971: <==negation-removal== 28112 (pos)
                    (not (Bc_not_checked_p10))

                    ; #68546: <==negation-removal== 61397 (pos)
                    (not (Pb_not_checked_p10))

                    ; #74651: <==negation-removal== 19221 (pos)
                    (not (Pa_not_checked_p10))

                    ; #85521: <==negation-removal== 30624 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #21044: <==commonly_known== 90105 (neg)
                    (Pb_checked_p11)

                    ; #43458: <==closure== 74301 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #47259: <==commonly_known== 90105 (neg)
                    (Pa_checked_p11)

                    ; #52861: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #57261: <==commonly_known== 58199 (pos)
                    (Ba_checked_p11)

                    ; #58199: origin
                    (checked_p11)

                    ; #60551: <==commonly_known== 58199 (pos)
                    (Bb_checked_p11)

                    ; #67354: <==closure== 52861 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #74301: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #80647: <==commonly_known== 90105 (neg)
                    (Pc_checked_p11)

                    ; #83333: <==commonly_known== 58199 (pos)
                    (Bc_checked_p11)

                    ; #12467: <==uncertain_firing== 67354 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #16935: <==negation-removal== 57261 (pos)
                    (not (Pa_not_checked_p11))

                    ; #23032: <==uncertain_firing== 43458 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #26127: <==negation-removal== 80647 (pos)
                    (not (Bc_not_checked_p11))

                    ; #35439: <==negation-removal== 52861 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #35836: <==negation-removal== 74301 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #38211: <==negation-removal== 43458 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #38514: <==negation-removal== 60551 (pos)
                    (not (Pb_not_checked_p11))

                    ; #42432: <==negation-removal== 83333 (pos)
                    (not (Pc_not_checked_p11))

                    ; #56033: <==negation-removal== 67354 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #61640: <==negation-removal== 21044 (pos)
                    (not (Bb_not_checked_p11))

                    ; #63440: <==uncertain_firing== 52861 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #65541: <==negation-removal== 47259 (pos)
                    (not (Ba_not_checked_p11))

                    ; #66877: <==uncertain_firing== 74301 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #90105: <==negation-removal== 58199 (pos)
                    (not (not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #27978: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #28748: <==closure== 27978 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #30450: <==commonly_known== 37653 (neg)
                    (Pc_checked_p12)

                    ; #37788: <==commonly_known== 73394 (pos)
                    (Bc_checked_p12)

                    ; #39250: <==closure== 82542 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #40892: <==commonly_known== 37653 (neg)
                    (Pb_checked_p12)

                    ; #42530: <==commonly_known== 73394 (pos)
                    (Ba_checked_p12)

                    ; #72863: <==commonly_known== 73394 (pos)
                    (Bb_checked_p12)

                    ; #73394: origin
                    (checked_p12)

                    ; #82542: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #86803: <==commonly_known== 37653 (neg)
                    (Pa_checked_p12)

                    ; #16182: <==uncertain_firing== 39250 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #18339: <==negation-removal== 27978 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #25427: <==uncertain_firing== 28748 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #27851: <==negation-removal== 82542 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #29475: <==negation-removal== 30450 (pos)
                    (not (Bc_not_checked_p12))

                    ; #30178: <==uncertain_firing== 82542 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #36623: <==negation-removal== 86803 (pos)
                    (not (Ba_not_checked_p12))

                    ; #37653: <==negation-removal== 73394 (pos)
                    (not (not_checked_p12))

                    ; #39119: <==negation-removal== 37788 (pos)
                    (not (Pc_not_checked_p12))

                    ; #55776: <==negation-removal== 72863 (pos)
                    (not (Pb_not_checked_p12))

                    ; #55811: <==negation-removal== 42530 (pos)
                    (not (Pa_not_checked_p12))

                    ; #62918: <==uncertain_firing== 27978 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #74945: <==negation-removal== 39250 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #76756: <==negation-removal== 40892 (pos)
                    (not (Bb_not_checked_p12))

                    ; #88239: <==negation-removal== 28748 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10952: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #21001: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #28477: <==commonly_known== 74791 (neg)
                    (Pa_checked_p1)

                    ; #34048: <==closure== 10952 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #36583: <==commonly_known== 70405 (pos)
                    (Ba_checked_p1)

                    ; #48367: <==commonly_known== 70405 (pos)
                    (Bb_checked_p1)

                    ; #53878: <==commonly_known== 74791 (neg)
                    (Pc_checked_p1)

                    ; #61711: <==commonly_known== 70405 (pos)
                    (Bc_checked_p1)

                    ; #67348: <==commonly_known== 74791 (neg)
                    (Pb_checked_p1)

                    ; #70405: origin
                    (checked_p1)

                    ; #86155: <==closure== 21001 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #12827: <==negation-removal== 21001 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #18313: <==negation-removal== 34048 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #22192: <==uncertain_firing== 86155 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #28463: <==negation-removal== 10952 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #29526: <==negation-removal== 67348 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42857: <==uncertain_firing== 10952 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #46013: <==negation-removal== 28477 (pos)
                    (not (Ba_not_checked_p1))

                    ; #46951: <==uncertain_firing== 21001 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #49066: <==negation-removal== 48367 (pos)
                    (not (Pb_not_checked_p1))

                    ; #51634: <==uncertain_firing== 34048 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #70782: <==negation-removal== 53878 (pos)
                    (not (Bc_not_checked_p1))

                    ; #71304: <==negation-removal== 36583 (pos)
                    (not (Pa_not_checked_p1))

                    ; #74069: <==negation-removal== 61711 (pos)
                    (not (Pc_not_checked_p1))

                    ; #74791: <==negation-removal== 70405 (pos)
                    (not (not_checked_p1))

                    ; #89378: <==negation-removal== 86155 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #23507: <==commonly_known== 65619 (pos)
                    (Ba_checked_p2)

                    ; #24929: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #36723: <==commonly_known== 83553 (neg)
                    (Pc_checked_p2)

                    ; #43104: <==commonly_known== 83553 (neg)
                    (Pb_checked_p2)

                    ; #46691: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #59750: <==commonly_known== 65619 (pos)
                    (Bc_checked_p2)

                    ; #64159: <==closure== 24929 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #65619: origin
                    (checked_p2)

                    ; #67229: <==commonly_known== 83553 (neg)
                    (Pa_checked_p2)

                    ; #71242: <==closure== 46691 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #74807: <==commonly_known== 65619 (pos)
                    (Bb_checked_p2)

                    ; #17659: <==uncertain_firing== 71242 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #21731: <==negation-removal== 59750 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26920: <==negation-removal== 24929 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #27834: <==negation-removal== 74807 (pos)
                    (not (Pb_not_checked_p2))

                    ; #35449: <==uncertain_firing== 24929 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #38286: <==negation-removal== 43104 (pos)
                    (not (Bb_not_checked_p2))

                    ; #44978: <==negation-removal== 23507 (pos)
                    (not (Pa_not_checked_p2))

                    ; #54216: <==negation-removal== 46691 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #55232: <==uncertain_firing== 64159 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #72350: <==negation-removal== 64159 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #74069: <==negation-removal== 36723 (pos)
                    (not (Bc_not_checked_p2))

                    ; #77279: <==negation-removal== 71242 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #77626: <==uncertain_firing== 46691 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #83553: <==negation-removal== 65619 (pos)
                    (not (not_checked_p2))

                    ; #83591: <==negation-removal== 67229 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12145: <==closure== 25751 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #19908: <==commonly_known== 77001 (neg)
                    (Pc_checked_p3)

                    ; #24227: <==commonly_known== 77001 (neg)
                    (Pb_checked_p3)

                    ; #25751: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #37705: <==commonly_known== 65551 (pos)
                    (Ba_checked_p3)

                    ; #45144: <==commonly_known== 65551 (pos)
                    (Bb_checked_p3)

                    ; #46336: <==closure== 58859 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #58859: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #60485: <==commonly_known== 77001 (neg)
                    (Pa_checked_p3)

                    ; #65551: origin
                    (checked_p3)

                    ; #68692: <==commonly_known== 65551 (pos)
                    (Bc_checked_p3)

                    ; #15761: <==negation-removal== 25751 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #24364: <==uncertain_firing== 46336 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #34046: <==negation-removal== 12145 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #57072: <==negation-removal== 46336 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #61502: <==negation-removal== 68692 (pos)
                    (not (Pc_not_checked_p3))

                    ; #65363: <==uncertain_firing== 12145 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #66432: <==uncertain_firing== 58859 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #66597: <==negation-removal== 19908 (pos)
                    (not (Bc_not_checked_p3))

                    ; #71387: <==negation-removal== 37705 (pos)
                    (not (Pa_not_checked_p3))

                    ; #73924: <==negation-removal== 58859 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #74680: <==negation-removal== 60485 (pos)
                    (not (Ba_not_checked_p3))

                    ; #77001: <==negation-removal== 65551 (pos)
                    (not (not_checked_p3))

                    ; #80863: <==negation-removal== 24227 (pos)
                    (not (Bb_not_checked_p3))

                    ; #90306: <==negation-removal== 45144 (pos)
                    (not (Pb_not_checked_p3))

                    ; #91112: <==uncertain_firing== 25751 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11799: origin
                    (checked_p4)

                    ; #12685: <==commonly_known== 54366 (neg)
                    (Pa_checked_p4)

                    ; #22452: <==commonly_known== 54366 (neg)
                    (Pc_checked_p4)

                    ; #23695: <==commonly_known== 54366 (neg)
                    (Pb_checked_p4)

                    ; #33759: <==commonly_known== 11799 (pos)
                    (Bc_checked_p4)

                    ; #44519: <==commonly_known== 11799 (pos)
                    (Ba_checked_p4)

                    ; #49306: <==closure== 74589 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #56563: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #74589: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #79514: <==commonly_known== 11799 (pos)
                    (Bb_checked_p4)

                    ; #87925: <==closure== 56563 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #15948: <==negation-removal== 49306 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #19530: <==uncertain_firing== 87925 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #20586: <==uncertain_firing== 74589 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #28044: <==negation-removal== 74589 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #28414: <==negation-removal== 44519 (pos)
                    (not (Pa_not_checked_p4))

                    ; #31424: <==negation-removal== 12685 (pos)
                    (not (Ba_not_checked_p4))

                    ; #33219: <==uncertain_firing== 49306 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #39639: <==uncertain_firing== 56563 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #42603: <==negation-removal== 22452 (pos)
                    (not (Bc_not_checked_p4))

                    ; #54366: <==negation-removal== 11799 (pos)
                    (not (not_checked_p4))

                    ; #67356: <==negation-removal== 56563 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #68682: <==negation-removal== 23695 (pos)
                    (not (Bb_not_checked_p4))

                    ; #71764: <==negation-removal== 87925 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #73552: <==negation-removal== 33759 (pos)
                    (not (Pc_not_checked_p4))

                    ; #76148: <==negation-removal== 79514 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10063: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #19008: origin
                    (checked_p5)

                    ; #24427: <==closure== 26132 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #26132: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #45649: <==commonly_known== 55470 (neg)
                    (Pa_checked_p5)

                    ; #62980: <==commonly_known== 19008 (pos)
                    (Ba_checked_p5)

                    ; #64668: <==commonly_known== 55470 (neg)
                    (Pb_checked_p5)

                    ; #73403: <==commonly_known== 19008 (pos)
                    (Bc_checked_p5)

                    ; #79512: <==closure== 10063 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #84311: <==commonly_known== 55470 (neg)
                    (Pc_checked_p5)

                    ; #85431: <==commonly_known== 19008 (pos)
                    (Bb_checked_p5)

                    ; #15022: <==uncertain_firing== 24427 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #16969: <==negation-removal== 10063 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #23230: <==negation-removal== 24427 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #30491: <==uncertain_firing== 79512 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #37236: <==negation-removal== 62980 (pos)
                    (not (Pa_not_checked_p5))

                    ; #38402: <==uncertain_firing== 26132 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #45114: <==negation-removal== 64668 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48731: <==negation-removal== 45649 (pos)
                    (not (Ba_not_checked_p5))

                    ; #52257: <==negation-removal== 85431 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55470: <==negation-removal== 19008 (pos)
                    (not (not_checked_p5))

                    ; #56014: <==uncertain_firing== 10063 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #70789: <==negation-removal== 26132 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #76216: <==negation-removal== 84311 (pos)
                    (not (Bc_not_checked_p5))

                    ; #89578: <==negation-removal== 73403 (pos)
                    (not (Pc_not_checked_p5))

                    ; #91977: <==negation-removal== 79512 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10085: <==commonly_known== 51098 (pos)
                    (Bb_checked_p6)

                    ; #29466: <==commonly_known== 49595 (neg)
                    (Pb_checked_p6)

                    ; #32461: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #51098: origin
                    (checked_p6)

                    ; #57392: <==closure== 91617 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #75262: <==commonly_known== 49595 (neg)
                    (Pa_checked_p6)

                    ; #75917: <==closure== 32461 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #77051: <==commonly_known== 49595 (neg)
                    (Pc_checked_p6)

                    ; #84263: <==commonly_known== 51098 (pos)
                    (Ba_checked_p6)

                    ; #85791: <==commonly_known== 51098 (pos)
                    (Bc_checked_p6)

                    ; #91617: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #12762: <==negation-removal== 57392 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #14849: <==negation-removal== 75262 (pos)
                    (not (Ba_not_checked_p6))

                    ; #15886: <==uncertain_firing== 91617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22339: <==negation-removal== 85791 (pos)
                    (not (Pc_not_checked_p6))

                    ; #39212: <==uncertain_firing== 75917 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #49595: <==negation-removal== 51098 (pos)
                    (not (not_checked_p6))

                    ; #49665: <==negation-removal== 77051 (pos)
                    (not (Bc_not_checked_p6))

                    ; #51443: <==negation-removal== 84263 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55642: <==negation-removal== 29466 (pos)
                    (not (Bb_not_checked_p6))

                    ; #62268: <==uncertain_firing== 57392 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #63678: <==uncertain_firing== 32461 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #77337: <==negation-removal== 91617 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #79976: <==negation-removal== 32461 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #84388: <==negation-removal== 75917 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #98085: <==negation-removal== 10085 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #24623: <==closure== 75608 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #44720: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #49582: <==commonly_known== 91052 (pos)
                    (Bc_checked_p7)

                    ; #50648: <==closure== 44720 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #63043: <==commonly_known== 63191 (neg)
                    (Pb_checked_p7)

                    ; #68018: <==commonly_known== 91052 (pos)
                    (Ba_checked_p7)

                    ; #75608: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #79745: <==commonly_known== 63191 (neg)
                    (Pc_checked_p7)

                    ; #83687: <==commonly_known== 91052 (pos)
                    (Bb_checked_p7)

                    ; #85369: <==commonly_known== 63191 (neg)
                    (Pa_checked_p7)

                    ; #91052: origin
                    (checked_p7)

                    ; #20146: <==uncertain_firing== 44720 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #26386: <==uncertain_firing== 24623 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39034: <==negation-removal== 49582 (pos)
                    (not (Pc_not_checked_p7))

                    ; #39403: <==uncertain_firing== 75608 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #57594: <==negation-removal== 63043 (pos)
                    (not (Bb_not_checked_p7))

                    ; #63191: <==negation-removal== 91052 (pos)
                    (not (not_checked_p7))

                    ; #66571: <==negation-removal== 85369 (pos)
                    (not (Ba_not_checked_p7))

                    ; #70588: <==negation-removal== 68018 (pos)
                    (not (Pa_not_checked_p7))

                    ; #73917: <==negation-removal== 83687 (pos)
                    (not (Pb_not_checked_p7))

                    ; #79546: <==negation-removal== 44720 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #82788: <==negation-removal== 24623 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #86645: <==uncertain_firing== 50648 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #87394: <==negation-removal== 79745 (pos)
                    (not (Bc_not_checked_p7))

                    ; #88524: <==negation-removal== 75608 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #88547: <==negation-removal== 50648 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #27300: <==commonly_known== 84882 (neg)
                    (Pb_checked_p8)

                    ; #41734: origin
                    (checked_p8)

                    ; #51580: <==commonly_known== 41734 (pos)
                    (Ba_checked_p8)

                    ; #54524: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #58387: <==commonly_known== 84882 (neg)
                    (Pa_checked_p8)

                    ; #67768: <==closure== 54524 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #74254: <==commonly_known== 41734 (pos)
                    (Bb_checked_p8)

                    ; #75102: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #81461: <==closure== 75102 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #85783: <==commonly_known== 41734 (pos)
                    (Bc_checked_p8)

                    ; #90986: <==commonly_known== 84882 (neg)
                    (Pc_checked_p8)

                    ; #21787: <==negation-removal== 81461 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #23450: <==negation-removal== 75102 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #30998: <==negation-removal== 85783 (pos)
                    (not (Pc_not_checked_p8))

                    ; #37987: <==negation-removal== 58387 (pos)
                    (not (Ba_not_checked_p8))

                    ; #53586: <==uncertain_firing== 81461 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #55852: <==uncertain_firing== 67768 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #61440: <==uncertain_firing== 54524 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #67193: <==negation-removal== 51580 (pos)
                    (not (Pa_not_checked_p8))

                    ; #70439: <==negation-removal== 90986 (pos)
                    (not (Bc_not_checked_p8))

                    ; #71842: <==negation-removal== 67768 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #72221: <==negation-removal== 27300 (pos)
                    (not (Bb_not_checked_p8))

                    ; #76138: <==uncertain_firing== 75102 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #83891: <==negation-removal== 74254 (pos)
                    (not (Pb_not_checked_p8))

                    ; #84748: <==negation-removal== 54524 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #84882: <==negation-removal== 41734 (pos)
                    (not (not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13864: <==closure== 17405 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #17405: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #23538: origin
                    (checked_p9)

                    ; #25848: <==commonly_known== 23538 (pos)
                    (Bb_checked_p9)

                    ; #32578: <==commonly_known== 49569 (neg)
                    (Pa_checked_p9)

                    ; #37794: <==commonly_known== 49569 (neg)
                    (Pb_checked_p9)

                    ; #65998: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #68522: <==commonly_known== 23538 (pos)
                    (Bc_checked_p9)

                    ; #80662: <==commonly_known== 23538 (pos)
                    (Ba_checked_p9)

                    ; #89939: <==commonly_known== 49569 (neg)
                    (Pc_checked_p9)

                    ; #94357: <==closure== 65998 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #18683: <==negation-removal== 25848 (pos)
                    (not (Pb_not_checked_p9))

                    ; #18747: <==uncertain_firing== 94357 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #37901: <==uncertain_firing== 17405 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #49569: <==negation-removal== 23538 (pos)
                    (not (not_checked_p9))

                    ; #50281: <==uncertain_firing== 13864 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #57383: <==negation-removal== 13864 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #59430: <==uncertain_firing== 65998 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #59831: <==negation-removal== 37794 (pos)
                    (not (Bb_not_checked_p9))

                    ; #67646: <==negation-removal== 94357 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #68248: <==negation-removal== 32578 (pos)
                    (not (Ba_not_checked_p9))

                    ; #70288: <==negation-removal== 80662 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72773: <==negation-removal== 68522 (pos)
                    (not (Pc_not_checked_p9))

                    ; #73220: <==negation-removal== 65998 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #78308: <==negation-removal== 89939 (pos)
                    (not (Bc_not_checked_p9))

                    ; #86835: <==negation-removal== 17405 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))))

)