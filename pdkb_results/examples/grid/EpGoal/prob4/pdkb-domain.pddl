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
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #40021: origin
                    (Bb_survivorat_s_p10)

                    ; #40061: origin
                    (Bc_survivorat_s_p10)

                    ; #47814: <==closure== 50189 (pos)
                    (Pa_survivorat_s_p10)

                    ; #50189: origin
                    (Ba_survivorat_s_p10)

                    ; #52249: <==closure== 40061 (pos)
                    (Pc_survivorat_s_p10)

                    ; #76315: <==closure== 40021 (pos)
                    (Pb_survivorat_s_p10)

                    ; #19562: <==negation-removal== 40021 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #32714: <==negation-removal== 76315 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #38583: <==negation-removal== 50189 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #47379: <==negation-removal== 52249 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #54661: <==negation-removal== 47814 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #69359: <==negation-removal== 40061 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #40021: origin
                    (Bb_survivorat_s_p10)

                    ; #40061: origin
                    (Bc_survivorat_s_p10)

                    ; #47814: <==closure== 50189 (pos)
                    (Pa_survivorat_s_p10)

                    ; #50189: origin
                    (Ba_survivorat_s_p10)

                    ; #52249: <==closure== 40061 (pos)
                    (Pc_survivorat_s_p10)

                    ; #76315: <==closure== 40021 (pos)
                    (Pb_survivorat_s_p10)

                    ; #19562: <==negation-removal== 40021 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #32714: <==negation-removal== 76315 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #38583: <==negation-removal== 50189 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #47379: <==negation-removal== 52249 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #54661: <==negation-removal== 47814 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #69359: <==negation-removal== 40061 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #40021: origin
                    (Bb_survivorat_s_p10)

                    ; #40061: origin
                    (Bc_survivorat_s_p10)

                    ; #47814: <==closure== 50189 (pos)
                    (Pa_survivorat_s_p10)

                    ; #50189: origin
                    (Ba_survivorat_s_p10)

                    ; #52249: <==closure== 40061 (pos)
                    (Pc_survivorat_s_p10)

                    ; #76315: <==closure== 40021 (pos)
                    (Pb_survivorat_s_p10)

                    ; #19562: <==negation-removal== 40021 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #32714: <==negation-removal== 76315 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #38583: <==negation-removal== 50189 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #47379: <==negation-removal== 52249 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #54661: <==negation-removal== 47814 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #69359: <==negation-removal== 40061 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #16532: <==closure== 23929 (pos)
                    (Pc_survivorat_s_p11)

                    ; #23929: origin
                    (Bc_survivorat_s_p11)

                    ; #29199: <==closure== 30835 (pos)
                    (Pb_survivorat_s_p11)

                    ; #30835: origin
                    (Bb_survivorat_s_p11)

                    ; #72607: origin
                    (Ba_survivorat_s_p11)

                    ; #83747: <==closure== 72607 (pos)
                    (Pa_survivorat_s_p11)

                    ; #25624: <==negation-removal== 16532 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #28913: <==negation-removal== 29199 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #29890: <==negation-removal== 23929 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #31792: <==negation-removal== 30835 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #55006: <==negation-removal== 72607 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #63764: <==negation-removal== 83747 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #16532: <==closure== 23929 (pos)
                    (Pc_survivorat_s_p11)

                    ; #23929: origin
                    (Bc_survivorat_s_p11)

                    ; #29199: <==closure== 30835 (pos)
                    (Pb_survivorat_s_p11)

                    ; #30835: origin
                    (Bb_survivorat_s_p11)

                    ; #72607: origin
                    (Ba_survivorat_s_p11)

                    ; #83747: <==closure== 72607 (pos)
                    (Pa_survivorat_s_p11)

                    ; #25624: <==negation-removal== 16532 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #28913: <==negation-removal== 29199 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #29890: <==negation-removal== 23929 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #31792: <==negation-removal== 30835 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #55006: <==negation-removal== 72607 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #63764: <==negation-removal== 83747 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #16532: <==closure== 23929 (pos)
                    (Pc_survivorat_s_p11)

                    ; #23929: origin
                    (Bc_survivorat_s_p11)

                    ; #29199: <==closure== 30835 (pos)
                    (Pb_survivorat_s_p11)

                    ; #30835: origin
                    (Bb_survivorat_s_p11)

                    ; #72607: origin
                    (Ba_survivorat_s_p11)

                    ; #83747: <==closure== 72607 (pos)
                    (Pa_survivorat_s_p11)

                    ; #25624: <==negation-removal== 16532 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #28913: <==negation-removal== 29199 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #29890: <==negation-removal== 23929 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #31792: <==negation-removal== 30835 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #55006: <==negation-removal== 72607 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #63764: <==negation-removal== 83747 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #19800: <==closure== 41629 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41629: origin
                    (Bb_survivorat_s_p12)

                    ; #51110: <==closure== 51150 (pos)
                    (Pc_survivorat_s_p12)

                    ; #51150: origin
                    (Bc_survivorat_s_p12)

                    ; #85704: origin
                    (Ba_survivorat_s_p12)

                    ; #89167: <==closure== 85704 (pos)
                    (Pa_survivorat_s_p12)

                    ; #21499: <==negation-removal== 19800 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #40823: <==negation-removal== 51150 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #56406: <==negation-removal== 51110 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #59702: <==negation-removal== 85704 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #69135: <==negation-removal== 41629 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #77447: <==negation-removal== 89167 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #19800: <==closure== 41629 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41629: origin
                    (Bb_survivorat_s_p12)

                    ; #51110: <==closure== 51150 (pos)
                    (Pc_survivorat_s_p12)

                    ; #51150: origin
                    (Bc_survivorat_s_p12)

                    ; #85704: origin
                    (Ba_survivorat_s_p12)

                    ; #89167: <==closure== 85704 (pos)
                    (Pa_survivorat_s_p12)

                    ; #21499: <==negation-removal== 19800 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #40823: <==negation-removal== 51150 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #56406: <==negation-removal== 51110 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #59702: <==negation-removal== 85704 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #69135: <==negation-removal== 41629 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #77447: <==negation-removal== 89167 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #19800: <==closure== 41629 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41629: origin
                    (Bb_survivorat_s_p12)

                    ; #51110: <==closure== 51150 (pos)
                    (Pc_survivorat_s_p12)

                    ; #51150: origin
                    (Bc_survivorat_s_p12)

                    ; #85704: origin
                    (Ba_survivorat_s_p12)

                    ; #89167: <==closure== 85704 (pos)
                    (Pa_survivorat_s_p12)

                    ; #21499: <==negation-removal== 19800 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #40823: <==negation-removal== 51150 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #56406: <==negation-removal== 51110 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #59702: <==negation-removal== 85704 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #69135: <==negation-removal== 41629 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #77447: <==negation-removal== 89167 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #11855: <==closure== 47231 (pos)
                    (Pa_survivorat_s_p1)

                    ; #47231: origin
                    (Ba_survivorat_s_p1)

                    ; #51463: origin
                    (Bb_survivorat_s_p1)

                    ; #62147: <==closure== 51463 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63755: origin
                    (Bc_survivorat_s_p1)

                    ; #84055: <==closure== 63755 (pos)
                    (Pc_survivorat_s_p1)

                    ; #12274: <==negation-removal== 84055 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #21341: <==negation-removal== 47231 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #37075: <==negation-removal== 11855 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75229: <==negation-removal== 51463 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #78580: <==negation-removal== 63755 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #87174: <==negation-removal== 62147 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #11855: <==closure== 47231 (pos)
                    (Pa_survivorat_s_p1)

                    ; #47231: origin
                    (Ba_survivorat_s_p1)

                    ; #51463: origin
                    (Bb_survivorat_s_p1)

                    ; #62147: <==closure== 51463 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63755: origin
                    (Bc_survivorat_s_p1)

                    ; #84055: <==closure== 63755 (pos)
                    (Pc_survivorat_s_p1)

                    ; #12274: <==negation-removal== 84055 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #21341: <==negation-removal== 47231 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #37075: <==negation-removal== 11855 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75229: <==negation-removal== 51463 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #78580: <==negation-removal== 63755 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #87174: <==negation-removal== 62147 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #11855: <==closure== 47231 (pos)
                    (Pa_survivorat_s_p1)

                    ; #47231: origin
                    (Ba_survivorat_s_p1)

                    ; #51463: origin
                    (Bb_survivorat_s_p1)

                    ; #62147: <==closure== 51463 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63755: origin
                    (Bc_survivorat_s_p1)

                    ; #84055: <==closure== 63755 (pos)
                    (Pc_survivorat_s_p1)

                    ; #12274: <==negation-removal== 84055 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #21341: <==negation-removal== 47231 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #37075: <==negation-removal== 11855 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75229: <==negation-removal== 51463 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #78580: <==negation-removal== 63755 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #87174: <==negation-removal== 62147 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #35033: <==closure== 48043 (pos)
                    (Pb_survivorat_s_p2)

                    ; #39191: origin
                    (Ba_survivorat_s_p2)

                    ; #46735: <==closure== 82838 (pos)
                    (Pc_survivorat_s_p2)

                    ; #48043: origin
                    (Bb_survivorat_s_p2)

                    ; #72751: <==closure== 39191 (pos)
                    (Pa_survivorat_s_p2)

                    ; #82838: origin
                    (Bc_survivorat_s_p2)

                    ; #17516: <==negation-removal== 82838 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #27349: <==negation-removal== 39191 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #41177: <==negation-removal== 48043 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #55441: <==negation-removal== 46735 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #77023: <==negation-removal== 72751 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #87183: <==negation-removal== 35033 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #35033: <==closure== 48043 (pos)
                    (Pb_survivorat_s_p2)

                    ; #39191: origin
                    (Ba_survivorat_s_p2)

                    ; #46735: <==closure== 82838 (pos)
                    (Pc_survivorat_s_p2)

                    ; #48043: origin
                    (Bb_survivorat_s_p2)

                    ; #72751: <==closure== 39191 (pos)
                    (Pa_survivorat_s_p2)

                    ; #82838: origin
                    (Bc_survivorat_s_p2)

                    ; #17516: <==negation-removal== 82838 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #27349: <==negation-removal== 39191 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #41177: <==negation-removal== 48043 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #55441: <==negation-removal== 46735 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #77023: <==negation-removal== 72751 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #87183: <==negation-removal== 35033 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #35033: <==closure== 48043 (pos)
                    (Pb_survivorat_s_p2)

                    ; #39191: origin
                    (Ba_survivorat_s_p2)

                    ; #46735: <==closure== 82838 (pos)
                    (Pc_survivorat_s_p2)

                    ; #48043: origin
                    (Bb_survivorat_s_p2)

                    ; #72751: <==closure== 39191 (pos)
                    (Pa_survivorat_s_p2)

                    ; #82838: origin
                    (Bc_survivorat_s_p2)

                    ; #17516: <==negation-removal== 82838 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #27349: <==negation-removal== 39191 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #41177: <==negation-removal== 48043 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #55441: <==negation-removal== 46735 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #77023: <==negation-removal== 72751 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #87183: <==negation-removal== 35033 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #13854: <==closure== 16067 (pos)
                    (Pb_survivorat_s_p3)

                    ; #16067: origin
                    (Bb_survivorat_s_p3)

                    ; #31385: <==closure== 37350 (pos)
                    (Pc_survivorat_s_p3)

                    ; #37350: origin
                    (Bc_survivorat_s_p3)

                    ; #51224: <==closure== 64349 (pos)
                    (Pa_survivorat_s_p3)

                    ; #64349: origin
                    (Ba_survivorat_s_p3)

                    ; #44069: <==negation-removal== 37350 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #47831: <==negation-removal== 16067 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63719: <==negation-removal== 13854 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #69420: <==negation-removal== 31385 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #72200: <==negation-removal== 51224 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #91503: <==negation-removal== 64349 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #13854: <==closure== 16067 (pos)
                    (Pb_survivorat_s_p3)

                    ; #16067: origin
                    (Bb_survivorat_s_p3)

                    ; #31385: <==closure== 37350 (pos)
                    (Pc_survivorat_s_p3)

                    ; #37350: origin
                    (Bc_survivorat_s_p3)

                    ; #51224: <==closure== 64349 (pos)
                    (Pa_survivorat_s_p3)

                    ; #64349: origin
                    (Ba_survivorat_s_p3)

                    ; #44069: <==negation-removal== 37350 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #47831: <==negation-removal== 16067 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63719: <==negation-removal== 13854 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #69420: <==negation-removal== 31385 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #72200: <==negation-removal== 51224 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #91503: <==negation-removal== 64349 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #13854: <==closure== 16067 (pos)
                    (Pb_survivorat_s_p3)

                    ; #16067: origin
                    (Bb_survivorat_s_p3)

                    ; #31385: <==closure== 37350 (pos)
                    (Pc_survivorat_s_p3)

                    ; #37350: origin
                    (Bc_survivorat_s_p3)

                    ; #51224: <==closure== 64349 (pos)
                    (Pa_survivorat_s_p3)

                    ; #64349: origin
                    (Ba_survivorat_s_p3)

                    ; #44069: <==negation-removal== 37350 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #47831: <==negation-removal== 16067 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63719: <==negation-removal== 13854 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #69420: <==negation-removal== 31385 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #72200: <==negation-removal== 51224 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #91503: <==negation-removal== 64349 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #19773: origin
                    (Bc_survivorat_s_p4)

                    ; #23223: origin
                    (Bb_survivorat_s_p4)

                    ; #23316: <==closure== 85818 (pos)
                    (Pa_survivorat_s_p4)

                    ; #40754: <==closure== 23223 (pos)
                    (Pb_survivorat_s_p4)

                    ; #77120: <==closure== 19773 (pos)
                    (Pc_survivorat_s_p4)

                    ; #85818: origin
                    (Ba_survivorat_s_p4)

                    ; #19077: <==negation-removal== 23223 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38444: <==negation-removal== 23316 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #42527: <==negation-removal== 85818 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #46610: <==negation-removal== 19773 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #65574: <==negation-removal== 77120 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #93987: <==negation-removal== 40754 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #19773: origin
                    (Bc_survivorat_s_p4)

                    ; #23223: origin
                    (Bb_survivorat_s_p4)

                    ; #23316: <==closure== 85818 (pos)
                    (Pa_survivorat_s_p4)

                    ; #40754: <==closure== 23223 (pos)
                    (Pb_survivorat_s_p4)

                    ; #77120: <==closure== 19773 (pos)
                    (Pc_survivorat_s_p4)

                    ; #85818: origin
                    (Ba_survivorat_s_p4)

                    ; #19077: <==negation-removal== 23223 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38444: <==negation-removal== 23316 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #42527: <==negation-removal== 85818 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #46610: <==negation-removal== 19773 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #65574: <==negation-removal== 77120 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #93987: <==negation-removal== 40754 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #19773: origin
                    (Bc_survivorat_s_p4)

                    ; #23223: origin
                    (Bb_survivorat_s_p4)

                    ; #23316: <==closure== 85818 (pos)
                    (Pa_survivorat_s_p4)

                    ; #40754: <==closure== 23223 (pos)
                    (Pb_survivorat_s_p4)

                    ; #77120: <==closure== 19773 (pos)
                    (Pc_survivorat_s_p4)

                    ; #85818: origin
                    (Ba_survivorat_s_p4)

                    ; #19077: <==negation-removal== 23223 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38444: <==negation-removal== 23316 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #42527: <==negation-removal== 85818 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #46610: <==negation-removal== 19773 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #65574: <==negation-removal== 77120 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #93987: <==negation-removal== 40754 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #11202: origin
                    (Ba_survivorat_s_p5)

                    ; #46095: origin
                    (Bb_survivorat_s_p5)

                    ; #62938: <==closure== 46095 (pos)
                    (Pb_survivorat_s_p5)

                    ; #85863: <==closure== 11202 (pos)
                    (Pa_survivorat_s_p5)

                    ; #86286: origin
                    (Bc_survivorat_s_p5)

                    ; #91025: <==closure== 86286 (pos)
                    (Pc_survivorat_s_p5)

                    ; #13595: <==negation-removal== 62938 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #16912: <==negation-removal== 86286 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #38702: <==negation-removal== 46095 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #73781: <==negation-removal== 91025 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #77709: <==negation-removal== 85863 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81828: <==negation-removal== 11202 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #11202: origin
                    (Ba_survivorat_s_p5)

                    ; #46095: origin
                    (Bb_survivorat_s_p5)

                    ; #62938: <==closure== 46095 (pos)
                    (Pb_survivorat_s_p5)

                    ; #85863: <==closure== 11202 (pos)
                    (Pa_survivorat_s_p5)

                    ; #86286: origin
                    (Bc_survivorat_s_p5)

                    ; #91025: <==closure== 86286 (pos)
                    (Pc_survivorat_s_p5)

                    ; #13595: <==negation-removal== 62938 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #16912: <==negation-removal== 86286 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #38702: <==negation-removal== 46095 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #73781: <==negation-removal== 91025 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #77709: <==negation-removal== 85863 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81828: <==negation-removal== 11202 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #11202: origin
                    (Ba_survivorat_s_p5)

                    ; #46095: origin
                    (Bb_survivorat_s_p5)

                    ; #62938: <==closure== 46095 (pos)
                    (Pb_survivorat_s_p5)

                    ; #85863: <==closure== 11202 (pos)
                    (Pa_survivorat_s_p5)

                    ; #86286: origin
                    (Bc_survivorat_s_p5)

                    ; #91025: <==closure== 86286 (pos)
                    (Pc_survivorat_s_p5)

                    ; #13595: <==negation-removal== 62938 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #16912: <==negation-removal== 86286 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #38702: <==negation-removal== 46095 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #73781: <==negation-removal== 91025 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #77709: <==negation-removal== 85863 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81828: <==negation-removal== 11202 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #22549: origin
                    (Ba_survivorat_s_p6)

                    ; #53826: origin
                    (Bc_survivorat_s_p6)

                    ; #60235: <==closure== 81784 (pos)
                    (Pb_survivorat_s_p6)

                    ; #68396: <==closure== 53826 (pos)
                    (Pc_survivorat_s_p6)

                    ; #81409: <==closure== 22549 (pos)
                    (Pa_survivorat_s_p6)

                    ; #81784: origin
                    (Bb_survivorat_s_p6)

                    ; #37113: <==negation-removal== 68396 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #38219: <==negation-removal== 81409 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #60531: <==negation-removal== 81784 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #68833: <==negation-removal== 60235 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #74220: <==negation-removal== 53826 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #87379: <==negation-removal== 22549 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #22549: origin
                    (Ba_survivorat_s_p6)

                    ; #53826: origin
                    (Bc_survivorat_s_p6)

                    ; #60235: <==closure== 81784 (pos)
                    (Pb_survivorat_s_p6)

                    ; #68396: <==closure== 53826 (pos)
                    (Pc_survivorat_s_p6)

                    ; #81409: <==closure== 22549 (pos)
                    (Pa_survivorat_s_p6)

                    ; #81784: origin
                    (Bb_survivorat_s_p6)

                    ; #37113: <==negation-removal== 68396 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #38219: <==negation-removal== 81409 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #60531: <==negation-removal== 81784 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #68833: <==negation-removal== 60235 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #74220: <==negation-removal== 53826 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #87379: <==negation-removal== 22549 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #22549: origin
                    (Ba_survivorat_s_p6)

                    ; #53826: origin
                    (Bc_survivorat_s_p6)

                    ; #60235: <==closure== 81784 (pos)
                    (Pb_survivorat_s_p6)

                    ; #68396: <==closure== 53826 (pos)
                    (Pc_survivorat_s_p6)

                    ; #81409: <==closure== 22549 (pos)
                    (Pa_survivorat_s_p6)

                    ; #81784: origin
                    (Bb_survivorat_s_p6)

                    ; #37113: <==negation-removal== 68396 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #38219: <==negation-removal== 81409 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #60531: <==negation-removal== 81784 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #68833: <==negation-removal== 60235 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #74220: <==negation-removal== 53826 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #87379: <==negation-removal== 22549 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #25895: <==closure== 52472 (pos)
                    (Pa_survivorat_s_p7)

                    ; #30509: <==closure== 88712 (pos)
                    (Pc_survivorat_s_p7)

                    ; #35917: origin
                    (Bb_survivorat_s_p7)

                    ; #52472: origin
                    (Ba_survivorat_s_p7)

                    ; #71199: <==closure== 35917 (pos)
                    (Pb_survivorat_s_p7)

                    ; #88712: origin
                    (Bc_survivorat_s_p7)

                    ; #13697: <==negation-removal== 25895 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #34128: <==negation-removal== 30509 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #64576: <==negation-removal== 35917 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #76942: <==negation-removal== 88712 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91600: <==negation-removal== 71199 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #96208: <==negation-removal== 52472 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #25895: <==closure== 52472 (pos)
                    (Pa_survivorat_s_p7)

                    ; #30509: <==closure== 88712 (pos)
                    (Pc_survivorat_s_p7)

                    ; #35917: origin
                    (Bb_survivorat_s_p7)

                    ; #52472: origin
                    (Ba_survivorat_s_p7)

                    ; #71199: <==closure== 35917 (pos)
                    (Pb_survivorat_s_p7)

                    ; #88712: origin
                    (Bc_survivorat_s_p7)

                    ; #13697: <==negation-removal== 25895 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #34128: <==negation-removal== 30509 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #64576: <==negation-removal== 35917 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #76942: <==negation-removal== 88712 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91600: <==negation-removal== 71199 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #96208: <==negation-removal== 52472 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #25895: <==closure== 52472 (pos)
                    (Pa_survivorat_s_p7)

                    ; #30509: <==closure== 88712 (pos)
                    (Pc_survivorat_s_p7)

                    ; #35917: origin
                    (Bb_survivorat_s_p7)

                    ; #52472: origin
                    (Ba_survivorat_s_p7)

                    ; #71199: <==closure== 35917 (pos)
                    (Pb_survivorat_s_p7)

                    ; #88712: origin
                    (Bc_survivorat_s_p7)

                    ; #13697: <==negation-removal== 25895 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #34128: <==negation-removal== 30509 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #64576: <==negation-removal== 35917 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #76942: <==negation-removal== 88712 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #91600: <==negation-removal== 71199 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #96208: <==negation-removal== 52472 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #18140: origin
                    (Bb_survivorat_s_p8)

                    ; #55384: <==closure== 67873 (pos)
                    (Pa_survivorat_s_p8)

                    ; #67278: origin
                    (Bc_survivorat_s_p8)

                    ; #67873: origin
                    (Ba_survivorat_s_p8)

                    ; #69562: <==closure== 67278 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80124: <==closure== 18140 (pos)
                    (Pb_survivorat_s_p8)

                    ; #16253: <==negation-removal== 80124 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #26011: <==negation-removal== 67278 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #32100: <==negation-removal== 55384 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #70264: <==negation-removal== 18140 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #78044: <==negation-removal== 67873 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #98428: <==negation-removal== 69562 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #18140: origin
                    (Bb_survivorat_s_p8)

                    ; #55384: <==closure== 67873 (pos)
                    (Pa_survivorat_s_p8)

                    ; #67278: origin
                    (Bc_survivorat_s_p8)

                    ; #67873: origin
                    (Ba_survivorat_s_p8)

                    ; #69562: <==closure== 67278 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80124: <==closure== 18140 (pos)
                    (Pb_survivorat_s_p8)

                    ; #16253: <==negation-removal== 80124 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #26011: <==negation-removal== 67278 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #32100: <==negation-removal== 55384 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #70264: <==negation-removal== 18140 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #78044: <==negation-removal== 67873 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #98428: <==negation-removal== 69562 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #18140: origin
                    (Bb_survivorat_s_p8)

                    ; #55384: <==closure== 67873 (pos)
                    (Pa_survivorat_s_p8)

                    ; #67278: origin
                    (Bc_survivorat_s_p8)

                    ; #67873: origin
                    (Ba_survivorat_s_p8)

                    ; #69562: <==closure== 67278 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80124: <==closure== 18140 (pos)
                    (Pb_survivorat_s_p8)

                    ; #16253: <==negation-removal== 80124 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #26011: <==negation-removal== 67278 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #32100: <==negation-removal== 55384 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #70264: <==negation-removal== 18140 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #78044: <==negation-removal== 67873 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #98428: <==negation-removal== 69562 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #19321: <==closure== 57211 (pos)
                    (Pa_survivorat_s_p9)

                    ; #48842: <==closure== 64250 (pos)
                    (Pb_survivorat_s_p9)

                    ; #57211: origin
                    (Ba_survivorat_s_p9)

                    ; #60053: origin
                    (Bc_survivorat_s_p9)

                    ; #64250: origin
                    (Bb_survivorat_s_p9)

                    ; #82083: <==closure== 60053 (pos)
                    (Pc_survivorat_s_p9)

                    ; #26694: <==negation-removal== 64250 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #36837: <==negation-removal== 48842 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #81662: <==negation-removal== 60053 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #81916: <==negation-removal== 19321 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #91471: <==negation-removal== 82083 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #95236: <==negation-removal== 57211 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #19321: <==closure== 57211 (pos)
                    (Pa_survivorat_s_p9)

                    ; #48842: <==closure== 64250 (pos)
                    (Pb_survivorat_s_p9)

                    ; #57211: origin
                    (Ba_survivorat_s_p9)

                    ; #60053: origin
                    (Bc_survivorat_s_p9)

                    ; #64250: origin
                    (Bb_survivorat_s_p9)

                    ; #82083: <==closure== 60053 (pos)
                    (Pc_survivorat_s_p9)

                    ; #26694: <==negation-removal== 64250 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #36837: <==negation-removal== 48842 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #81662: <==negation-removal== 60053 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #81916: <==negation-removal== 19321 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #91471: <==negation-removal== 82083 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #95236: <==negation-removal== 57211 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #19321: <==closure== 57211 (pos)
                    (Pa_survivorat_s_p9)

                    ; #48842: <==closure== 64250 (pos)
                    (Pb_survivorat_s_p9)

                    ; #57211: origin
                    (Ba_survivorat_s_p9)

                    ; #60053: origin
                    (Bc_survivorat_s_p9)

                    ; #64250: origin
                    (Bb_survivorat_s_p9)

                    ; #82083: <==closure== 60053 (pos)
                    (Pc_survivorat_s_p9)

                    ; #26694: <==negation-removal== 64250 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #36837: <==negation-removal== 48842 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #81662: <==negation-removal== 60053 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #81916: <==negation-removal== 19321 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #91471: <==negation-removal== 82083 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #95236: <==negation-removal== 57211 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #44252: origin
                    (at_a_p1)

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #62409: origin
                    (at_a_p10)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #34586: origin
                    (not_at_a_p10)

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #65250: origin
                    (at_a_p12)

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #51290: origin
                    (at_a_p2)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #55128: origin
                    (at_a_p4)

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #34586: origin
                    (not_at_a_p10)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #63900: origin
                    (at_a_p6)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #48894: origin
                    (at_a_p7)

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #89348: origin
                    (at_a_p8)

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #34586: origin
                    (not_at_a_p10)

                    ; #48386: origin
                    (at_a_p9)

                    ; #62409: <==negation-removal== 34586 (pos)
                    (not (at_a_p10))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #44252: origin
                    (at_a_p1)

                    ; #47131: origin
                    (not_at_a_p11)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #47131: origin
                    (not_at_a_p11)

                    ; #62409: origin
                    (at_a_p10)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #47131: origin
                    (not_at_a_p11)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #47131: origin
                    (not_at_a_p11)

                    ; #65250: origin
                    (at_a_p12)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #47131: origin
                    (not_at_a_p11)

                    ; #51290: origin
                    (at_a_p2)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #47131: origin
                    (not_at_a_p11)

                    ; #76884: origin
                    (at_a_p3)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #47131: origin
                    (not_at_a_p11)

                    ; #55128: origin
                    (at_a_p4)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #47131: origin
                    (not_at_a_p11)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #47131: origin
                    (not_at_a_p11)

                    ; #63900: origin
                    (at_a_p6)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #47131: origin
                    (not_at_a_p11)

                    ; #48894: origin
                    (at_a_p7)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #47131: origin
                    (not_at_a_p11)

                    ; #89348: origin
                    (at_a_p8)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #47131: origin
                    (not_at_a_p11)

                    ; #48386: origin
                    (at_a_p9)

                    ; #14272: <==negation-removal== 47131 (pos)
                    (not (at_a_p11))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #44252: origin
                    (at_a_p1)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #62409: origin
                    (at_a_p10)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #65250: origin
                    (at_a_p12)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #51290: origin
                    (at_a_p2)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #68808: origin
                    (not_at_a_p12)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #55128: origin
                    (at_a_p4)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #63900: origin
                    (at_a_p6)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #48894: origin
                    (at_a_p7)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #68808: origin
                    (not_at_a_p12)

                    ; #89348: origin
                    (at_a_p8)

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #48386: origin
                    (at_a_p9)

                    ; #68808: origin
                    (not_at_a_p12)

                    ; #65250: <==negation-removal== 68808 (pos)
                    (not (at_a_p12))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #44252: origin
                    (at_a_p1)

                    ; #52649: origin
                    (not_at_a_p1)

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #52649: origin
                    (not_at_a_p1)

                    ; #62409: origin
                    (at_a_p10)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #52649: origin
                    (not_at_a_p1)

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #52649: origin
                    (not_at_a_p1)

                    ; #65250: origin
                    (at_a_p12)

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #51290: origin
                    (at_a_p2)

                    ; #52649: origin
                    (not_at_a_p1)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #52649: origin
                    (not_at_a_p1)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #52649: origin
                    (not_at_a_p1)

                    ; #55128: origin
                    (at_a_p4)

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #52649: origin
                    (not_at_a_p1)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #52649: origin
                    (not_at_a_p1)

                    ; #63900: origin
                    (at_a_p6)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #48894: origin
                    (at_a_p7)

                    ; #52649: origin
                    (not_at_a_p1)

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #52649: origin
                    (not_at_a_p1)

                    ; #89348: origin
                    (at_a_p8)

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #48386: origin
                    (at_a_p9)

                    ; #52649: origin
                    (not_at_a_p1)

                    ; #44252: <==negation-removal== 52649 (pos)
                    (not (at_a_p1))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #44252: origin
                    (at_a_p1)

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #62409: origin
                    (at_a_p10)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #34091: origin
                    (not_at_a_p2)

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #65250: origin
                    (at_a_p12)

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #51290: origin
                    (at_a_p2)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #55128: origin
                    (at_a_p4)

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #34091: origin
                    (not_at_a_p2)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #63900: origin
                    (at_a_p6)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #48894: origin
                    (at_a_p7)

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #89348: origin
                    (at_a_p8)

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #34091: origin
                    (not_at_a_p2)

                    ; #48386: origin
                    (at_a_p9)

                    ; #51290: <==negation-removal== 34091 (pos)
                    (not (at_a_p2))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #44252: origin
                    (at_a_p1)

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #62409: origin
                    (at_a_p10)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #26704: origin
                    (not_at_a_p3)

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #65250: origin
                    (at_a_p12)

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #51290: origin
                    (at_a_p2)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #55128: origin
                    (at_a_p4)

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #26704: origin
                    (not_at_a_p3)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #63900: origin
                    (at_a_p6)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #48894: origin
                    (at_a_p7)

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #89348: origin
                    (at_a_p8)

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #26704: origin
                    (not_at_a_p3)

                    ; #48386: origin
                    (at_a_p9)

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))

                    ; #76884: <==negation-removal== 26704 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #44252: origin
                    (at_a_p1)

                    ; #53902: origin
                    (not_at_a_p4)

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #53902: origin
                    (not_at_a_p4)

                    ; #62409: origin
                    (at_a_p10)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #53902: origin
                    (not_at_a_p4)

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #53902: origin
                    (not_at_a_p4)

                    ; #65250: origin
                    (at_a_p12)

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #51290: origin
                    (at_a_p2)

                    ; #53902: origin
                    (not_at_a_p4)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #53902: origin
                    (not_at_a_p4)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #53902: origin
                    (not_at_a_p4)

                    ; #55128: origin
                    (at_a_p4)

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #53902: origin
                    (not_at_a_p4)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #53902: origin
                    (not_at_a_p4)

                    ; #63900: origin
                    (at_a_p6)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #48894: origin
                    (at_a_p7)

                    ; #53902: origin
                    (not_at_a_p4)

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #53902: origin
                    (not_at_a_p4)

                    ; #89348: origin
                    (at_a_p8)

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #48386: origin
                    (at_a_p9)

                    ; #53902: origin
                    (not_at_a_p4)

                    ; #55128: <==negation-removal== 53902 (pos)
                    (not (at_a_p4))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #44252: origin
                    (at_a_p1)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #62409: origin
                    (at_a_p10)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #22270: origin
                    (not_at_a_p5)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #65250: origin
                    (at_a_p12)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #51290: origin
                    (at_a_p2)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #76884: origin
                    (at_a_p3)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #55128: origin
                    (at_a_p4)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #23945: origin
                    (at_a_p5)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #63900: origin
                    (at_a_p6)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #48894: origin
                    (at_a_p7)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #89348: origin
                    (at_a_p8)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #22270: origin
                    (not_at_a_p5)

                    ; #48386: origin
                    (at_a_p9)

                    ; #23945: <==negation-removal== 22270 (pos)
                    (not (at_a_p5))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #44252: origin
                    (at_a_p1)

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #62409: origin
                    (at_a_p10)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #27152: origin
                    (not_at_a_p6)

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #65250: origin
                    (at_a_p12)

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #51290: origin
                    (at_a_p2)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #55128: origin
                    (at_a_p4)

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #27152: origin
                    (not_at_a_p6)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #63900: origin
                    (at_a_p6)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #48894: origin
                    (at_a_p7)

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #89348: origin
                    (at_a_p8)

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #27152: origin
                    (not_at_a_p6)

                    ; #48386: origin
                    (at_a_p9)

                    ; #63900: <==negation-removal== 27152 (pos)
                    (not (at_a_p6))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #44252: origin
                    (at_a_p1)

                    ; #52931: origin
                    (not_at_a_p7)

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #52931: origin
                    (not_at_a_p7)

                    ; #62409: origin
                    (at_a_p10)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #52931: origin
                    (not_at_a_p7)

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #52931: origin
                    (not_at_a_p7)

                    ; #65250: origin
                    (at_a_p12)

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #51290: origin
                    (at_a_p2)

                    ; #52931: origin
                    (not_at_a_p7)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #52931: origin
                    (not_at_a_p7)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #52931: origin
                    (not_at_a_p7)

                    ; #55128: origin
                    (at_a_p4)

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #52931: origin
                    (not_at_a_p7)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #52931: origin
                    (not_at_a_p7)

                    ; #63900: origin
                    (at_a_p6)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #48894: origin
                    (at_a_p7)

                    ; #52931: origin
                    (not_at_a_p7)

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #52931: origin
                    (not_at_a_p7)

                    ; #89348: origin
                    (at_a_p8)

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #48386: origin
                    (at_a_p9)

                    ; #52931: origin
                    (not_at_a_p7)

                    ; #48894: <==negation-removal== 52931 (pos)
                    (not (at_a_p7))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #44252: origin
                    (at_a_p1)

                    ; #46558: origin
                    (not_at_a_p8)

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #46558: origin
                    (not_at_a_p8)

                    ; #62409: origin
                    (at_a_p10)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #46558: origin
                    (not_at_a_p8)

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #46558: origin
                    (not_at_a_p8)

                    ; #65250: origin
                    (at_a_p12)

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #46558: origin
                    (not_at_a_p8)

                    ; #51290: origin
                    (at_a_p2)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #46558: origin
                    (not_at_a_p8)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #46558: origin
                    (not_at_a_p8)

                    ; #55128: origin
                    (at_a_p4)

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #46558: origin
                    (not_at_a_p8)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #46558: origin
                    (not_at_a_p8)

                    ; #63900: origin
                    (at_a_p6)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #46558: origin
                    (not_at_a_p8)

                    ; #48894: origin
                    (at_a_p7)

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #46558: origin
                    (not_at_a_p8)

                    ; #89348: origin
                    (at_a_p8)

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #46558: origin
                    (not_at_a_p8)

                    ; #48386: origin
                    (at_a_p9)

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))

                    ; #89348: <==negation-removal== 46558 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #44252: origin
                    (at_a_p1)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))

                    ; #52649: <==negation-removal== 44252 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #62409: origin
                    (at_a_p10)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #34586: <==negation-removal== 62409 (pos)
                    (not (not_at_a_p10))

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #14272: origin
                    (at_a_p11)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #47131: <==negation-removal== 14272 (pos)
                    (not (not_at_a_p11))

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #65250: origin
                    (at_a_p12)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))

                    ; #68808: <==negation-removal== 65250 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #51290: origin
                    (at_a_p2)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #34091: <==negation-removal== 51290 (pos)
                    (not (not_at_a_p2))

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #69400: origin
                    (not_at_a_p9)

                    ; #76884: origin
                    (at_a_p3)

                    ; #26704: <==negation-removal== 76884 (pos)
                    (not (not_at_a_p3))

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #55128: origin
                    (at_a_p4)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))

                    ; #53902: <==negation-removal== 55128 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #23945: origin
                    (at_a_p5)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #22270: <==negation-removal== 23945 (pos)
                    (not (not_at_a_p5))

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #63900: origin
                    (at_a_p6)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #27152: <==negation-removal== 63900 (pos)
                    (not (not_at_a_p6))

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #48894: origin
                    (at_a_p7)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))

                    ; #52931: <==negation-removal== 48894 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #69400: origin
                    (not_at_a_p9)

                    ; #89348: origin
                    (at_a_p8)

                    ; #46558: <==negation-removal== 89348 (pos)
                    (not (not_at_a_p8))

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #48386: origin
                    (at_a_p9)

                    ; #69400: origin
                    (not_at_a_p9)

                    ; #48386: <==negation-removal== 69400 (pos)
                    (not (at_a_p9))

                    ; #69400: <==negation-removal== 48386 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #18275: origin
                    (at_b_p1)

                    ; #49816: origin
                    (not_at_b_p10)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #49816: origin
                    (not_at_b_p10)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #26394: origin
                    (at_b_p11)

                    ; #49816: origin
                    (not_at_b_p10)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #49816: origin
                    (not_at_b_p10)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #49816: origin
                    (not_at_b_p10)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #40477: origin
                    (at_b_p3)

                    ; #49816: origin
                    (not_at_b_p10)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #49816: origin
                    (not_at_b_p10)

                    ; #52341: origin
                    (at_b_p4)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #18053: origin
                    (at_b_p5)

                    ; #49816: origin
                    (not_at_b_p10)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #49816: origin
                    (not_at_b_p10)

                    ; #49960: origin
                    (at_b_p6)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #28704: origin
                    (at_b_p7)

                    ; #49816: origin
                    (not_at_b_p10)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #49816: origin
                    (not_at_b_p10)

                    ; #64128: origin
                    (at_b_p8)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #49816: origin
                    (not_at_b_p10)

                    ; #68813: origin
                    (at_b_p9)

                    ; #14678: <==negation-removal== 49816 (pos)
                    (not (at_b_p10))

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #18275: origin
                    (at_b_p1)

                    ; #38624: origin
                    (not_at_b_p11)

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #38624: origin
                    (not_at_b_p11)

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #26394: origin
                    (at_b_p11)

                    ; #38624: origin
                    (not_at_b_p11)

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #38624: origin
                    (not_at_b_p11)

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #38624: origin
                    (not_at_b_p11)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #38624: origin
                    (not_at_b_p11)

                    ; #40477: origin
                    (at_b_p3)

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #38624: origin
                    (not_at_b_p11)

                    ; #52341: origin
                    (at_b_p4)

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #18053: origin
                    (at_b_p5)

                    ; #38624: origin
                    (not_at_b_p11)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #38624: origin
                    (not_at_b_p11)

                    ; #49960: origin
                    (at_b_p6)

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #28704: origin
                    (at_b_p7)

                    ; #38624: origin
                    (not_at_b_p11)

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #38624: origin
                    (not_at_b_p11)

                    ; #64128: origin
                    (at_b_p8)

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #38624: origin
                    (not_at_b_p11)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #26394: <==negation-removal== 38624 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #18275: origin
                    (at_b_p1)

                    ; #63857: origin
                    (not_at_b_p12)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #63857: origin
                    (not_at_b_p12)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #26394: origin
                    (at_b_p11)

                    ; #63857: origin
                    (not_at_b_p12)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #63857: origin
                    (not_at_b_p12)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #63857: origin
                    (not_at_b_p12)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #40477: origin
                    (at_b_p3)

                    ; #63857: origin
                    (not_at_b_p12)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #52341: origin
                    (at_b_p4)

                    ; #63857: origin
                    (not_at_b_p12)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #18053: origin
                    (at_b_p5)

                    ; #63857: origin
                    (not_at_b_p12)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #49960: origin
                    (at_b_p6)

                    ; #63857: origin
                    (not_at_b_p12)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #28704: origin
                    (at_b_p7)

                    ; #63857: origin
                    (not_at_b_p12)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #63857: origin
                    (not_at_b_p12)

                    ; #64128: origin
                    (at_b_p8)

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #63857: origin
                    (not_at_b_p12)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #16084: <==negation-removal== 63857 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #18275: origin
                    (at_b_p1)

                    ; #51986: origin
                    (not_at_b_p1)

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #51986: origin
                    (not_at_b_p1)

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #26394: origin
                    (at_b_p11)

                    ; #51986: origin
                    (not_at_b_p1)

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #51986: origin
                    (not_at_b_p1)

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #51986: origin
                    (not_at_b_p1)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #40477: origin
                    (at_b_p3)

                    ; #51986: origin
                    (not_at_b_p1)

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #51986: origin
                    (not_at_b_p1)

                    ; #52341: origin
                    (at_b_p4)

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #18053: origin
                    (at_b_p5)

                    ; #51986: origin
                    (not_at_b_p1)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #49960: origin
                    (at_b_p6)

                    ; #51986: origin
                    (not_at_b_p1)

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #28704: origin
                    (at_b_p7)

                    ; #51986: origin
                    (not_at_b_p1)

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #51986: origin
                    (not_at_b_p1)

                    ; #64128: origin
                    (at_b_p8)

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #51986: origin
                    (not_at_b_p1)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #18275: <==negation-removal== 51986 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #18275: origin
                    (at_b_p1)

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #14849: origin
                    (not_at_b_p2)

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #26394: origin
                    (at_b_p11)

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #16084: origin
                    (at_b_p12)

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #40477: origin
                    (at_b_p3)

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #52341: origin
                    (at_b_p4)

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #18053: origin
                    (at_b_p5)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #49960: origin
                    (at_b_p6)

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #28704: origin
                    (at_b_p7)

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #64128: origin
                    (at_b_p8)

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #14849: origin
                    (not_at_b_p2)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #67799: <==negation-removal== 14849 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #18275: origin
                    (at_b_p1)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #26394: origin
                    (at_b_p11)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #65561: origin
                    (not_at_b_p3)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #40477: origin
                    (at_b_p3)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #52341: origin
                    (at_b_p4)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #18053: origin
                    (at_b_p5)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #49960: origin
                    (at_b_p6)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #28704: origin
                    (at_b_p7)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #64128: origin
                    (at_b_p8)

                    ; #65561: origin
                    (not_at_b_p3)

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #65561: origin
                    (not_at_b_p3)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #40477: <==negation-removal== 65561 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #18275: origin
                    (at_b_p1)

                    ; #36745: origin
                    (not_at_b_p4)

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #36745: origin
                    (not_at_b_p4)

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #26394: origin
                    (at_b_p11)

                    ; #36745: origin
                    (not_at_b_p4)

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #36745: origin
                    (not_at_b_p4)

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #36745: origin
                    (not_at_b_p4)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #36745: origin
                    (not_at_b_p4)

                    ; #40477: origin
                    (at_b_p3)

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #36745: origin
                    (not_at_b_p4)

                    ; #52341: origin
                    (at_b_p4)

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #18053: origin
                    (at_b_p5)

                    ; #36745: origin
                    (not_at_b_p4)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #36745: origin
                    (not_at_b_p4)

                    ; #49960: origin
                    (at_b_p6)

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #28704: origin
                    (at_b_p7)

                    ; #36745: origin
                    (not_at_b_p4)

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #36745: origin
                    (not_at_b_p4)

                    ; #64128: origin
                    (at_b_p8)

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #36745: origin
                    (not_at_b_p4)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #52341: <==negation-removal== 36745 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #18275: origin
                    (at_b_p1)

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #17615: origin
                    (not_at_b_p5)

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #26394: origin
                    (at_b_p11)

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #17615: origin
                    (not_at_b_p5)

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #40477: origin
                    (at_b_p3)

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #52341: origin
                    (at_b_p4)

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #18053: origin
                    (at_b_p5)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #49960: origin
                    (at_b_p6)

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #28704: origin
                    (at_b_p7)

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #64128: origin
                    (at_b_p8)

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #17615: origin
                    (not_at_b_p5)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #18053: <==negation-removal== 17615 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #18275: origin
                    (at_b_p1)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #26394: origin
                    (at_b_p11)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #67799: origin
                    (at_b_p2)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #40477: origin
                    (at_b_p3)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #52341: origin
                    (at_b_p4)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #18053: origin
                    (at_b_p5)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #49960: origin
                    (at_b_p6)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #28704: origin
                    (at_b_p7)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #64128: origin
                    (at_b_p8)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #68813: origin
                    (at_b_p9)

                    ; #94782: origin
                    (not_at_b_p6)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #49960: <==negation-removal== 94782 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #18275: origin
                    (at_b_p1)

                    ; #31106: origin
                    (not_at_b_p7)

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #31106: origin
                    (not_at_b_p7)

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #26394: origin
                    (at_b_p11)

                    ; #31106: origin
                    (not_at_b_p7)

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #31106: origin
                    (not_at_b_p7)

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #31106: origin
                    (not_at_b_p7)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #31106: origin
                    (not_at_b_p7)

                    ; #40477: origin
                    (at_b_p3)

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #31106: origin
                    (not_at_b_p7)

                    ; #52341: origin
                    (at_b_p4)

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #18053: origin
                    (at_b_p5)

                    ; #31106: origin
                    (not_at_b_p7)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #31106: origin
                    (not_at_b_p7)

                    ; #49960: origin
                    (at_b_p6)

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #28704: origin
                    (at_b_p7)

                    ; #31106: origin
                    (not_at_b_p7)

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #31106: origin
                    (not_at_b_p7)

                    ; #64128: origin
                    (at_b_p8)

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #31106: origin
                    (not_at_b_p7)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #28704: <==negation-removal== 31106 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #18275: origin
                    (at_b_p1)

                    ; #28965: origin
                    (not_at_b_p8)

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #28965: origin
                    (not_at_b_p8)

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #26394: origin
                    (at_b_p11)

                    ; #28965: origin
                    (not_at_b_p8)

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #16084: origin
                    (at_b_p12)

                    ; #28965: origin
                    (not_at_b_p8)

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #28965: origin
                    (not_at_b_p8)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #28965: origin
                    (not_at_b_p8)

                    ; #40477: origin
                    (at_b_p3)

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #28965: origin
                    (not_at_b_p8)

                    ; #52341: origin
                    (at_b_p4)

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #18053: origin
                    (at_b_p5)

                    ; #28965: origin
                    (not_at_b_p8)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #28965: origin
                    (not_at_b_p8)

                    ; #49960: origin
                    (at_b_p6)

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #28704: origin
                    (at_b_p7)

                    ; #28965: origin
                    (not_at_b_p8)

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #28965: origin
                    (not_at_b_p8)

                    ; #64128: origin
                    (at_b_p8)

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #28965: origin
                    (not_at_b_p8)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #64128: <==negation-removal== 28965 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #18275: origin
                    (at_b_p1)

                    ; #51986: <==negation-removal== 18275 (pos)
                    (not (not_at_b_p1))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #14678: origin
                    (at_b_p10)

                    ; #15774: origin
                    (not_at_b_p9)

                    ; #49816: <==negation-removal== 14678 (pos)
                    (not (not_at_b_p10))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #26394: origin
                    (at_b_p11)

                    ; #38624: <==negation-removal== 26394 (pos)
                    (not (not_at_b_p11))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #16084: origin
                    (at_b_p12)

                    ; #63857: <==negation-removal== 16084 (pos)
                    (not (not_at_b_p12))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #67799: origin
                    (at_b_p2)

                    ; #14849: <==negation-removal== 67799 (pos)
                    (not (not_at_b_p2))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #40477: origin
                    (at_b_p3)

                    ; #65561: <==negation-removal== 40477 (pos)
                    (not (not_at_b_p3))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #52341: origin
                    (at_b_p4)

                    ; #36745: <==negation-removal== 52341 (pos)
                    (not (not_at_b_p4))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #18053: origin
                    (at_b_p5)

                    ; #17615: <==negation-removal== 18053 (pos)
                    (not (not_at_b_p5))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #49960: origin
                    (at_b_p6)

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))

                    ; #94782: <==negation-removal== 49960 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #28704: origin
                    (at_b_p7)

                    ; #31106: <==negation-removal== 28704 (pos)
                    (not (not_at_b_p7))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #64128: origin
                    (at_b_p8)

                    ; #28965: <==negation-removal== 64128 (pos)
                    (not (not_at_b_p8))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #15774: origin
                    (not_at_b_p9)

                    ; #68813: origin
                    (at_b_p9)

                    ; #15774: <==negation-removal== 68813 (pos)
                    (not (not_at_b_p9))

                    ; #68813: <==negation-removal== 15774 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #25832: origin
                    (not_at_c_p10)

                    ; #52699: origin
                    (at_c_p1)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #25832: origin
                    (not_at_c_p10)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #25832: origin
                    (not_at_c_p10)

                    ; #61205: origin
                    (at_c_p11)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #25832: origin
                    (not_at_c_p10)

                    ; #27554: origin
                    (at_c_p12)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #25832: origin
                    (not_at_c_p10)

                    ; #41671: origin
                    (at_c_p2)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #25832: origin
                    (not_at_c_p10)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #25832: origin
                    (not_at_c_p10)

                    ; #57073: origin
                    (at_c_p4)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #25832: origin
                    (not_at_c_p10)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #25832: origin
                    (not_at_c_p10)

                    ; #61264: origin
                    (at_c_p6)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #25832: origin
                    (not_at_c_p10)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #25832: origin
                    (not_at_c_p10)

                    ; #86003: origin
                    (at_c_p8)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #25832: origin
                    (not_at_c_p10)

                    ; #48300: origin
                    (at_c_p9)

                    ; #12289: <==negation-removal== 25832 (pos)
                    (not (at_c_p10))

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #27918: origin
                    (not_at_c_p11)

                    ; #52699: origin
                    (at_c_p1)

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #27918: origin
                    (not_at_c_p11)

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #27918: origin
                    (not_at_c_p11)

                    ; #61205: origin
                    (at_c_p11)

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #27554: origin
                    (at_c_p12)

                    ; #27918: origin
                    (not_at_c_p11)

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #27918: origin
                    (not_at_c_p11)

                    ; #41671: origin
                    (at_c_p2)

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #27918: origin
                    (not_at_c_p11)

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #27918: origin
                    (not_at_c_p11)

                    ; #57073: origin
                    (at_c_p4)

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #27918: origin
                    (not_at_c_p11)

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #27918: origin
                    (not_at_c_p11)

                    ; #61264: origin
                    (at_c_p6)

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #27918: origin
                    (not_at_c_p11)

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #27918: origin
                    (not_at_c_p11)

                    ; #86003: origin
                    (at_c_p8)

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #27918: origin
                    (not_at_c_p11)

                    ; #48300: origin
                    (at_c_p9)

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))

                    ; #61205: <==negation-removal== 27918 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #42574: origin
                    (not_at_c_p12)

                    ; #52699: origin
                    (at_c_p1)

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #42574: origin
                    (not_at_c_p12)

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #42574: origin
                    (not_at_c_p12)

                    ; #61205: origin
                    (at_c_p11)

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #27554: origin
                    (at_c_p12)

                    ; #42574: origin
                    (not_at_c_p12)

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #41671: origin
                    (at_c_p2)

                    ; #42574: origin
                    (not_at_c_p12)

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #42574: origin
                    (not_at_c_p12)

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #42574: origin
                    (not_at_c_p12)

                    ; #57073: origin
                    (at_c_p4)

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #42574: origin
                    (not_at_c_p12)

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #42574: origin
                    (not_at_c_p12)

                    ; #61264: origin
                    (at_c_p6)

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #42574: origin
                    (not_at_c_p12)

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #42574: origin
                    (not_at_c_p12)

                    ; #86003: origin
                    (at_c_p8)

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #42574: origin
                    (not_at_c_p12)

                    ; #48300: origin
                    (at_c_p9)

                    ; #27554: <==negation-removal== 42574 (pos)
                    (not (at_c_p12))

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #17767: origin
                    (not_at_c_p1)

                    ; #52699: origin
                    (at_c_p1)

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #17767: origin
                    (not_at_c_p1)

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #17767: origin
                    (not_at_c_p1)

                    ; #61205: origin
                    (at_c_p11)

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #17767: origin
                    (not_at_c_p1)

                    ; #27554: origin
                    (at_c_p12)

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #17767: origin
                    (not_at_c_p1)

                    ; #41671: origin
                    (at_c_p2)

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #17767: origin
                    (not_at_c_p1)

                    ; #19927: origin
                    (at_c_p3)

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #17767: origin
                    (not_at_c_p1)

                    ; #57073: origin
                    (at_c_p4)

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #17767: origin
                    (not_at_c_p1)

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #17767: origin
                    (not_at_c_p1)

                    ; #61264: origin
                    (at_c_p6)

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #17767: origin
                    (not_at_c_p1)

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #17767: origin
                    (not_at_c_p1)

                    ; #86003: origin
                    (at_c_p8)

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #17767: origin
                    (not_at_c_p1)

                    ; #48300: origin
                    (at_c_p9)

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))

                    ; #52699: <==negation-removal== 17767 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #52699: origin
                    (at_c_p1)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #61205: origin
                    (at_c_p11)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #27554: origin
                    (at_c_p12)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #41671: origin
                    (at_c_p2)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #57073: origin
                    (at_c_p4)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #61264: origin
                    (at_c_p6)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #68368: origin
                    (not_at_c_p2)

                    ; #86003: origin
                    (at_c_p8)

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #48300: origin
                    (at_c_p9)

                    ; #68368: origin
                    (not_at_c_p2)

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))

                    ; #41671: <==negation-removal== 68368 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #24988: origin
                    (not_at_c_p3)

                    ; #52699: origin
                    (at_c_p1)

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #24988: origin
                    (not_at_c_p3)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #24988: origin
                    (not_at_c_p3)

                    ; #61205: origin
                    (at_c_p11)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #24988: origin
                    (not_at_c_p3)

                    ; #27554: origin
                    (at_c_p12)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #24988: origin
                    (not_at_c_p3)

                    ; #41671: origin
                    (at_c_p2)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #24988: origin
                    (not_at_c_p3)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #24988: origin
                    (not_at_c_p3)

                    ; #57073: origin
                    (at_c_p4)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #24988: origin
                    (not_at_c_p3)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #24988: origin
                    (not_at_c_p3)

                    ; #61264: origin
                    (at_c_p6)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #24988: origin
                    (not_at_c_p3)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #24988: origin
                    (not_at_c_p3)

                    ; #86003: origin
                    (at_c_p8)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #24988: origin
                    (not_at_c_p3)

                    ; #48300: origin
                    (at_c_p9)

                    ; #19927: <==negation-removal== 24988 (pos)
                    (not (at_c_p3))

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #52699: origin
                    (at_c_p1)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #61205: origin
                    (at_c_p11)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #27554: origin
                    (at_c_p12)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #41671: origin
                    (at_c_p2)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #57073: origin
                    (at_c_p4)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #61264: origin
                    (at_c_p6)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #61856: origin
                    (not_at_c_p4)

                    ; #86003: origin
                    (at_c_p8)

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #48300: origin
                    (at_c_p9)

                    ; #61856: origin
                    (not_at_c_p4)

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))

                    ; #57073: <==negation-removal== 61856 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #52699: origin
                    (at_c_p1)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #61205: origin
                    (at_c_p11)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #27554: origin
                    (at_c_p12)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #41671: origin
                    (at_c_p2)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #57073: origin
                    (at_c_p4)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #61264: origin
                    (at_c_p6)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #61703: origin
                    (not_at_c_p5)

                    ; #86003: origin
                    (at_c_p8)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #48300: origin
                    (at_c_p9)

                    ; #61703: origin
                    (not_at_c_p5)

                    ; #12479: <==negation-removal== 61703 (pos)
                    (not (at_c_p5))

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #26865: origin
                    (not_at_c_p6)

                    ; #52699: origin
                    (at_c_p1)

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #26865: origin
                    (not_at_c_p6)

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #26865: origin
                    (not_at_c_p6)

                    ; #61205: origin
                    (at_c_p11)

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #26865: origin
                    (not_at_c_p6)

                    ; #27554: origin
                    (at_c_p12)

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #26865: origin
                    (not_at_c_p6)

                    ; #41671: origin
                    (at_c_p2)

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #26865: origin
                    (not_at_c_p6)

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #26865: origin
                    (not_at_c_p6)

                    ; #57073: origin
                    (at_c_p4)

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #26865: origin
                    (not_at_c_p6)

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #26865: origin
                    (not_at_c_p6)

                    ; #61264: origin
                    (at_c_p6)

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #26865: origin
                    (not_at_c_p6)

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #26865: origin
                    (not_at_c_p6)

                    ; #86003: origin
                    (at_c_p8)

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #26865: origin
                    (not_at_c_p6)

                    ; #48300: origin
                    (at_c_p9)

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))

                    ; #61264: <==negation-removal== 26865 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #52699: origin
                    (at_c_p1)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #61205: origin
                    (at_c_p11)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #27554: origin
                    (at_c_p12)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #41671: origin
                    (at_c_p2)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #57073: origin
                    (at_c_p4)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #61264: origin
                    (at_c_p6)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #67316: origin
                    (not_at_c_p7)

                    ; #86003: origin
                    (at_c_p8)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #48300: origin
                    (at_c_p9)

                    ; #67316: origin
                    (not_at_c_p7)

                    ; #17499: <==negation-removal== 67316 (pos)
                    (not (at_c_p7))

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #23047: origin
                    (not_at_c_p8)

                    ; #52699: origin
                    (at_c_p1)

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #23047: origin
                    (not_at_c_p8)

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #23047: origin
                    (not_at_c_p8)

                    ; #61205: origin
                    (at_c_p11)

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #23047: origin
                    (not_at_c_p8)

                    ; #27554: origin
                    (at_c_p12)

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #23047: origin
                    (not_at_c_p8)

                    ; #41671: origin
                    (at_c_p2)

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #23047: origin
                    (not_at_c_p8)

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #23047: origin
                    (not_at_c_p8)

                    ; #57073: origin
                    (at_c_p4)

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #23047: origin
                    (not_at_c_p8)

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #23047: origin
                    (not_at_c_p8)

                    ; #61264: origin
                    (at_c_p6)

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #23047: origin
                    (not_at_c_p8)

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #23047: origin
                    (not_at_c_p8)

                    ; #86003: origin
                    (at_c_p8)

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #23047: origin
                    (not_at_c_p8)

                    ; #48300: origin
                    (at_c_p9)

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))

                    ; #86003: <==negation-removal== 23047 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #28587: origin
                    (not_at_c_p9)

                    ; #52699: origin
                    (at_c_p1)

                    ; #17767: <==negation-removal== 52699 (pos)
                    (not (not_at_c_p1))

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #12289: origin
                    (at_c_p10)

                    ; #28587: origin
                    (not_at_c_p9)

                    ; #25832: <==negation-removal== 12289 (pos)
                    (not (not_at_c_p10))

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #28587: origin
                    (not_at_c_p9)

                    ; #61205: origin
                    (at_c_p11)

                    ; #27918: <==negation-removal== 61205 (pos)
                    (not (not_at_c_p11))

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #27554: origin
                    (at_c_p12)

                    ; #28587: origin
                    (not_at_c_p9)

                    ; #42574: <==negation-removal== 27554 (pos)
                    (not (not_at_c_p12))

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #28587: origin
                    (not_at_c_p9)

                    ; #41671: origin
                    (at_c_p2)

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))

                    ; #68368: <==negation-removal== 41671 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #19927: origin
                    (at_c_p3)

                    ; #28587: origin
                    (not_at_c_p9)

                    ; #24988: <==negation-removal== 19927 (pos)
                    (not (not_at_c_p3))

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #28587: origin
                    (not_at_c_p9)

                    ; #57073: origin
                    (at_c_p4)

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))

                    ; #61856: <==negation-removal== 57073 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #12479: origin
                    (at_c_p5)

                    ; #28587: origin
                    (not_at_c_p9)

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))

                    ; #61703: <==negation-removal== 12479 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #28587: origin
                    (not_at_c_p9)

                    ; #61264: origin
                    (at_c_p6)

                    ; #26865: <==negation-removal== 61264 (pos)
                    (not (not_at_c_p6))

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #17499: origin
                    (at_c_p7)

                    ; #28587: origin
                    (not_at_c_p9)

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))

                    ; #67316: <==negation-removal== 17499 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #28587: origin
                    (not_at_c_p9)

                    ; #86003: origin
                    (at_c_p8)

                    ; #23047: <==negation-removal== 86003 (pos)
                    (not (not_at_c_p8))

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #28587: origin
                    (not_at_c_p9)

                    ; #48300: origin
                    (at_c_p9)

                    ; #28587: <==negation-removal== 48300 (pos)
                    (not (not_at_c_p9))

                    ; #48300: <==negation-removal== 28587 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #16139: <==commonly_known== 58650 (neg)
                    (Pa_checked_p10)

                    ; #21500: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #22592: <==commonly_known== 58650 (neg)
                    (Pb_checked_p10)

                    ; #24781: origin
                    (checked_p10)

                    ; #25724: <==commonly_known== 24781 (pos)
                    (Ba_checked_p10)

                    ; #35199: <==commonly_known== 24781 (pos)
                    (Bc_checked_p10)

                    ; #42128: <==commonly_known== 58650 (neg)
                    (Pc_checked_p10)

                    ; #45855: <==commonly_known== 24781 (pos)
                    (Bb_checked_p10)

                    ; #50824: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #66305: <==closure== 50824 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #76039: <==closure== 21500 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #10685: <==uncertain_firing== 21500 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #14842: <==negation-removal== 35199 (pos)
                    (not (Pc_not_checked_p10))

                    ; #25903: <==negation-removal== 42128 (pos)
                    (not (Bc_not_checked_p10))

                    ; #30837: <==uncertain_firing== 76039 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #35072: <==uncertain_firing== 50824 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #40797: <==negation-removal== 25724 (pos)
                    (not (Pa_not_checked_p10))

                    ; #58650: <==negation-removal== 24781 (pos)
                    (not (not_checked_p10))

                    ; #62137: <==negation-removal== 66305 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #68238: <==negation-removal== 76039 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #77234: <==uncertain_firing== 66305 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #79442: <==negation-removal== 21500 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #81115: <==negation-removal== 22592 (pos)
                    (not (Bb_not_checked_p10))

                    ; #86269: <==negation-removal== 50824 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #87678: <==negation-removal== 16139 (pos)
                    (not (Ba_not_checked_p10))

                    ; #96176: <==negation-removal== 45855 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #16516: <==commonly_known== 75134 (neg)
                    (Pc_checked_p11)

                    ; #18470: <==commonly_known== 75134 (neg)
                    (Pb_checked_p11)

                    ; #21498: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #21513: origin
                    (checked_p11)

                    ; #28354: <==closure== 45000 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #42363: <==commonly_known== 21513 (pos)
                    (Ba_checked_p11)

                    ; #42513: <==commonly_known== 21513 (pos)
                    (Bb_checked_p11)

                    ; #45000: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #69478: <==commonly_known== 21513 (pos)
                    (Bc_checked_p11)

                    ; #78737: <==commonly_known== 75134 (neg)
                    (Pa_checked_p11)

                    ; #78890: <==closure== 21498 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #17411: <==negation-removal== 78890 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #19112: <==negation-removal== 42363 (pos)
                    (not (Pa_not_checked_p11))

                    ; #19287: <==negation-removal== 45000 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #38086: <==negation-removal== 18470 (pos)
                    (not (Bb_not_checked_p11))

                    ; #63896: <==negation-removal== 16516 (pos)
                    (not (Bc_not_checked_p11))

                    ; #63988: <==uncertain_firing== 45000 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #64922: <==negation-removal== 69478 (pos)
                    (not (Pc_not_checked_p11))

                    ; #67876: <==negation-removal== 21498 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #73333: <==uncertain_firing== 28354 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #75134: <==negation-removal== 21513 (pos)
                    (not (not_checked_p11))

                    ; #81275: <==negation-removal== 28354 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #82056: <==uncertain_firing== 78890 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #82417: <==negation-removal== 42513 (pos)
                    (not (Pb_not_checked_p11))

                    ; #87088: <==uncertain_firing== 21498 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #90717: <==negation-removal== 78737 (pos)
                    (not (Ba_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16245: <==closure== 42017 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #22972: <==commonly_known== 52440 (pos)
                    (Bc_checked_p12)

                    ; #29708: <==commonly_known== 52440 (pos)
                    (Bb_checked_p12)

                    ; #42017: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #44722: <==closure== 61314 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #52440: origin
                    (checked_p12)

                    ; #58824: <==commonly_known== 34732 (neg)
                    (Pc_checked_p12)

                    ; #61314: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #62100: <==commonly_known== 34732 (neg)
                    (Pb_checked_p12)

                    ; #64199: <==commonly_known== 34732 (neg)
                    (Pa_checked_p12)

                    ; #65729: <==commonly_known== 52440 (pos)
                    (Ba_checked_p12)

                    ; #30161: <==negation-removal== 64199 (pos)
                    (not (Ba_not_checked_p12))

                    ; #30896: <==negation-removal== 29708 (pos)
                    (not (Pb_not_checked_p12))

                    ; #32891: <==uncertain_firing== 61314 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #34732: <==negation-removal== 52440 (pos)
                    (not (not_checked_p12))

                    ; #48182: <==negation-removal== 44722 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #53052: <==negation-removal== 16245 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #54108: <==negation-removal== 61314 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #57036: <==negation-removal== 42017 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #59380: <==negation-removal== 58824 (pos)
                    (not (Bc_not_checked_p12))

                    ; #74148: <==negation-removal== 62100 (pos)
                    (not (Bb_not_checked_p12))

                    ; #78242: <==uncertain_firing== 16245 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #80555: <==negation-removal== 65729 (pos)
                    (not (Pa_not_checked_p12))

                    ; #82797: <==uncertain_firing== 44722 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #89810: <==negation-removal== 22972 (pos)
                    (not (Pc_not_checked_p12))

                    ; #91100: <==uncertain_firing== 42017 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11808: <==commonly_known== 56023 (pos)
                    (Ba_checked_p1)

                    ; #20528: <==commonly_known== 34490 (neg)
                    (Pa_checked_p1)

                    ; #31982: <==commonly_known== 56023 (pos)
                    (Bb_checked_p1)

                    ; #34624: <==commonly_known== 34490 (neg)
                    (Pc_checked_p1)

                    ; #42410: <==closure== 83087 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #51264: <==commonly_known== 56023 (pos)
                    (Bc_checked_p1)

                    ; #56023: origin
                    (checked_p1)

                    ; #57523: <==closure== 87157 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #59003: <==commonly_known== 34490 (neg)
                    (Pb_checked_p1)

                    ; #83087: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #87157: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #13462: <==uncertain_firing== 42410 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #14452: <==uncertain_firing== 87157 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #14510: <==negation-removal== 20528 (pos)
                    (not (Ba_not_checked_p1))

                    ; #19711: <==negation-removal== 34624 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30640: <==negation-removal== 83087 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #34490: <==negation-removal== 56023 (pos)
                    (not (not_checked_p1))

                    ; #39255: <==negation-removal== 59003 (pos)
                    (not (Bb_not_checked_p1))

                    ; #40127: <==uncertain_firing== 57523 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #46212: <==negation-removal== 57523 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #47367: <==negation-removal== 87157 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #56656: <==negation-removal== 31982 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57243: <==negation-removal== 51264 (pos)
                    (not (Pc_not_checked_p1))

                    ; #67361: <==negation-removal== 42410 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #76087: <==negation-removal== 11808 (pos)
                    (not (Pa_not_checked_p1))

                    ; #77081: <==uncertain_firing== 83087 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17946: <==commonly_known== 79598 (neg)
                    (Pa_checked_p2)

                    ; #29663: <==commonly_known== 79598 (neg)
                    (Pc_checked_p2)

                    ; #35187: <==closure== 77904 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #41903: origin
                    (checked_p2)

                    ; #43038: <==commonly_known== 41903 (pos)
                    (Ba_checked_p2)

                    ; #50081: <==closure== 59724 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #59724: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #61237: <==commonly_known== 79598 (neg)
                    (Pb_checked_p2)

                    ; #74072: <==commonly_known== 41903 (pos)
                    (Bb_checked_p2)

                    ; #77904: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #84866: <==commonly_known== 41903 (pos)
                    (Bc_checked_p2)

                    ; #18397: <==negation-removal== 43038 (pos)
                    (not (Pa_not_checked_p2))

                    ; #18816: <==negation-removal== 29663 (pos)
                    (not (Bc_not_checked_p2))

                    ; #19499: <==negation-removal== 35187 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #30275: <==negation-removal== 17946 (pos)
                    (not (Ba_not_checked_p2))

                    ; #33350: <==uncertain_firing== 50081 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #36688: <==negation-removal== 74072 (pos)
                    (not (Pb_not_checked_p2))

                    ; #40721: <==negation-removal== 84866 (pos)
                    (not (Pc_not_checked_p2))

                    ; #54583: <==uncertain_firing== 77904 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #55012: <==negation-removal== 61237 (pos)
                    (not (Bb_not_checked_p2))

                    ; #57321: <==negation-removal== 77904 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #59053: <==uncertain_firing== 35187 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #62750: <==negation-removal== 59724 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #69030: <==uncertain_firing== 59724 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #76984: <==negation-removal== 50081 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #79598: <==negation-removal== 41903 (pos)
                    (not (not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12697: <==commonly_known== 86033 (pos)
                    (Bc_checked_p3)

                    ; #44376: <==commonly_known== 86033 (pos)
                    (Ba_checked_p3)

                    ; #57299: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #59509: <==commonly_known== 86033 (pos)
                    (Bb_checked_p3)

                    ; #61783: <==closure== 57299 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #68497: <==closure== 75636 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #75636: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #79385: <==commonly_known== 82969 (neg)
                    (Pc_checked_p3)

                    ; #80693: <==commonly_known== 82969 (neg)
                    (Pa_checked_p3)

                    ; #83051: <==commonly_known== 82969 (neg)
                    (Pb_checked_p3)

                    ; #86033: origin
                    (checked_p3)

                    ; #15970: <==negation-removal== 79385 (pos)
                    (not (Bc_not_checked_p3))

                    ; #20416: <==negation-removal== 61783 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #28650: <==uncertain_firing== 68497 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #29380: <==negation-removal== 57299 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #40281: <==negation-removal== 68497 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #46719: <==negation-removal== 12697 (pos)
                    (not (Pc_not_checked_p3))

                    ; #51828: <==negation-removal== 44376 (pos)
                    (not (Pa_not_checked_p3))

                    ; #52238: <==uncertain_firing== 75636 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #57107: <==uncertain_firing== 61783 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #63933: <==negation-removal== 83051 (pos)
                    (not (Bb_not_checked_p3))

                    ; #65355: <==uncertain_firing== 57299 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #65361: <==negation-removal== 75636 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #68432: <==negation-removal== 80693 (pos)
                    (not (Ba_not_checked_p3))

                    ; #82969: <==negation-removal== 86033 (pos)
                    (not (not_checked_p3))

                    ; #87077: <==negation-removal== 59509 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13333: <==commonly_known== 21064 (pos)
                    (Ba_checked_p4)

                    ; #18448: <==commonly_known== 32306 (neg)
                    (Pc_checked_p4)

                    ; #21064: origin
                    (checked_p4)

                    ; #21345: <==commonly_known== 32306 (neg)
                    (Pa_checked_p4)

                    ; #34289: <==commonly_known== 21064 (pos)
                    (Bb_checked_p4)

                    ; #43502: <==commonly_known== 21064 (pos)
                    (Bc_checked_p4)

                    ; #43520: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #58217: <==closure== 43520 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #77081: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #82141: <==commonly_known== 32306 (neg)
                    (Pb_checked_p4)

                    ; #82691: <==closure== 77081 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #16453: <==uncertain_firing== 77081 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #25732: <==negation-removal== 43520 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #32306: <==negation-removal== 21064 (pos)
                    (not (not_checked_p4))

                    ; #36782: <==negation-removal== 82691 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #40790: <==negation-removal== 77081 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #41986: <==negation-removal== 21345 (pos)
                    (not (Ba_not_checked_p4))

                    ; #46853: <==uncertain_firing== 82691 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #50444: <==negation-removal== 18448 (pos)
                    (not (Bc_not_checked_p4))

                    ; #53370: <==uncertain_firing== 58217 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #53819: <==uncertain_firing== 43520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #56578: <==negation-removal== 58217 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #60533: <==negation-removal== 34289 (pos)
                    (not (Pb_not_checked_p4))

                    ; #64159: <==negation-removal== 43502 (pos)
                    (not (Pc_not_checked_p4))

                    ; #66426: <==negation-removal== 13333 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86703: <==negation-removal== 82141 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19637: <==closure== 89717 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #29590: <==commonly_known== 23959 (neg)
                    (Pa_checked_p5)

                    ; #30790: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #32159: <==commonly_known== 23959 (neg)
                    (Pb_checked_p5)

                    ; #32903: <==closure== 30790 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #58439: <==commonly_known== 64468 (pos)
                    (Bb_checked_p5)

                    ; #64468: origin
                    (checked_p5)

                    ; #67639: <==commonly_known== 64468 (pos)
                    (Bc_checked_p5)

                    ; #85329: <==commonly_known== 23959 (neg)
                    (Pc_checked_p5)

                    ; #89717: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #91248: <==commonly_known== 64468 (pos)
                    (Ba_checked_p5)

                    ; #19531: <==uncertain_firing== 30790 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #23959: <==negation-removal== 64468 (pos)
                    (not (not_checked_p5))

                    ; #24618: <==negation-removal== 32903 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #34155: <==negation-removal== 19637 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #46317: <==uncertain_firing== 19637 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #48806: <==negation-removal== 30790 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #55950: <==negation-removal== 58439 (pos)
                    (not (Pb_not_checked_p5))

                    ; #60754: <==uncertain_firing== 89717 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #62005: <==uncertain_firing== 32903 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #62759: <==negation-removal== 91248 (pos)
                    (not (Pa_not_checked_p5))

                    ; #69719: <==negation-removal== 89717 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #79364: <==negation-removal== 29590 (pos)
                    (not (Ba_not_checked_p5))

                    ; #83697: <==negation-removal== 85329 (pos)
                    (not (Bc_not_checked_p5))

                    ; #85878: <==negation-removal== 32159 (pos)
                    (not (Bb_not_checked_p5))

                    ; #93109: <==negation-removal== 67639 (pos)
                    (not (Pc_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #15485: <==commonly_known== 91113 (pos)
                    (Bc_checked_p6)

                    ; #23847: <==commonly_known== 91113 (pos)
                    (Ba_checked_p6)

                    ; #26195: <==closure== 53018 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #31058: <==closure== 63067 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #31513: <==commonly_known== 48105 (neg)
                    (Pa_checked_p6)

                    ; #53018: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #63067: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #69736: <==commonly_known== 48105 (neg)
                    (Pc_checked_p6)

                    ; #71276: <==commonly_known== 48105 (neg)
                    (Pb_checked_p6)

                    ; #91113: origin
                    (checked_p6)

                    ; #91720: <==commonly_known== 91113 (pos)
                    (Bb_checked_p6)

                    ; #14185: <==uncertain_firing== 53018 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #19564: <==uncertain_firing== 26195 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #21310: <==negation-removal== 26195 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #27816: <==negation-removal== 53018 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #28850: <==negation-removal== 71276 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37167: <==negation-removal== 31058 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #48105: <==negation-removal== 91113 (pos)
                    (not (not_checked_p6))

                    ; #49513: <==negation-removal== 23847 (pos)
                    (not (Pa_not_checked_p6))

                    ; #53265: <==negation-removal== 63067 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #53642: <==negation-removal== 69736 (pos)
                    (not (Bc_not_checked_p6))

                    ; #62046: <==negation-removal== 15485 (pos)
                    (not (Pc_not_checked_p6))

                    ; #62732: <==uncertain_firing== 63067 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #64996: <==uncertain_firing== 31058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #67429: <==negation-removal== 31513 (pos)
                    (not (Ba_not_checked_p6))

                    ; #91770: <==negation-removal== 91720 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14516: <==closure== 56176 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #28704: <==commonly_known== 64550 (pos)
                    (Bb_checked_p7)

                    ; #40302: <==commonly_known== 64550 (pos)
                    (Ba_checked_p7)

                    ; #41420: <==closure== 71943 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #43296: <==commonly_known== 74671 (neg)
                    (Pc_checked_p7)

                    ; #56176: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #64550: origin
                    (checked_p7)

                    ; #71494: <==commonly_known== 74671 (neg)
                    (Pb_checked_p7)

                    ; #71943: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #85397: <==commonly_known== 74671 (neg)
                    (Pa_checked_p7)

                    ; #91372: <==commonly_known== 64550 (pos)
                    (Bc_checked_p7)

                    ; #11351: <==negation-removal== 71494 (pos)
                    (not (Bb_not_checked_p7))

                    ; #11938: <==negation-removal== 14516 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #21503: <==negation-removal== 56176 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #30722: <==negation-removal== 41420 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #31459: <==negation-removal== 28704 (pos)
                    (not (Pb_not_checked_p7))

                    ; #32527: <==uncertain_firing== 71943 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #44119: <==uncertain_firing== 56176 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47997: <==negation-removal== 71943 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #50155: <==uncertain_firing== 14516 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #50472: <==negation-removal== 40302 (pos)
                    (not (Pa_not_checked_p7))

                    ; #50733: <==negation-removal== 85397 (pos)
                    (not (Ba_not_checked_p7))

                    ; #53144: <==negation-removal== 43296 (pos)
                    (not (Bc_not_checked_p7))

                    ; #74671: <==negation-removal== 64550 (pos)
                    (not (not_checked_p7))

                    ; #78231: <==uncertain_firing== 41420 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #83497: <==negation-removal== 91372 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12365: <==commonly_known== 66796 (neg)
                    (Pb_checked_p8)

                    ; #18816: <==commonly_known== 86671 (pos)
                    (Ba_checked_p8)

                    ; #28841: <==commonly_known== 66796 (neg)
                    (Pa_checked_p8)

                    ; #37713: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #49283: <==commonly_known== 86671 (pos)
                    (Bb_checked_p8)

                    ; #52261: <==commonly_known== 66796 (neg)
                    (Pc_checked_p8)

                    ; #54989: <==commonly_known== 86671 (pos)
                    (Bc_checked_p8)

                    ; #56185: <==closure== 37713 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #65360: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #69220: <==closure== 65360 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #86671: origin
                    (checked_p8)

                    ; #15843: <==uncertain_firing== 37713 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #16575: <==negation-removal== 69220 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #18586: <==negation-removal== 18816 (pos)
                    (not (Pa_not_checked_p8))

                    ; #22319: <==uncertain_firing== 65360 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #23766: <==negation-removal== 37713 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #31892: <==negation-removal== 65360 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #37438: <==negation-removal== 28841 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42587: <==negation-removal== 54989 (pos)
                    (not (Pc_not_checked_p8))

                    ; #47699: <==uncertain_firing== 69220 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #50314: <==negation-removal== 49283 (pos)
                    (not (Pb_not_checked_p8))

                    ; #51771: <==negation-removal== 56185 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #56955: <==negation-removal== 52261 (pos)
                    (not (Bc_not_checked_p8))

                    ; #66796: <==negation-removal== 86671 (pos)
                    (not (not_checked_p8))

                    ; #85377: <==negation-removal== 12365 (pos)
                    (not (Bb_not_checked_p8))

                    ; #91267: <==uncertain_firing== 56185 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10072: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #22207: <==closure== 68937 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #29701: <==closure== 10072 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #37830: <==commonly_known== 44718 (neg)
                    (Pc_checked_p9)

                    ; #50142: <==commonly_known== 84786 (pos)
                    (Bc_checked_p9)

                    ; #53818: <==commonly_known== 84786 (pos)
                    (Bb_checked_p9)

                    ; #61515: <==commonly_known== 84786 (pos)
                    (Ba_checked_p9)

                    ; #68937: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #72366: <==commonly_known== 44718 (neg)
                    (Pb_checked_p9)

                    ; #81033: <==commonly_known== 44718 (neg)
                    (Pa_checked_p9)

                    ; #84786: origin
                    (checked_p9)

                    ; #13445: <==uncertain_firing== 22207 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #14669: <==negation-removal== 61515 (pos)
                    (not (Pa_not_checked_p9))

                    ; #15176: <==negation-removal== 22207 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #21101: <==negation-removal== 10072 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #23997: <==negation-removal== 68937 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #38102: <==negation-removal== 50142 (pos)
                    (not (Pc_not_checked_p9))

                    ; #41952: <==negation-removal== 37830 (pos)
                    (not (Bc_not_checked_p9))

                    ; #42319: <==negation-removal== 29701 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #44718: <==negation-removal== 84786 (pos)
                    (not (not_checked_p9))

                    ; #49506: <==uncertain_firing== 29701 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #52718: <==uncertain_firing== 10072 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #62466: <==uncertain_firing== 68937 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #72371: <==negation-removal== 72366 (pos)
                    (not (Bb_not_checked_p9))

                    ; #89388: <==negation-removal== 53818 (pos)
                    (not (Pb_not_checked_p9))

                    ; #91497: <==negation-removal== 81033 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #16139: <==commonly_known== 58650 (neg)
                    (Pa_checked_p10)

                    ; #22592: <==commonly_known== 58650 (neg)
                    (Pb_checked_p10)

                    ; #24769: <==closure== 56229 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #24781: origin
                    (checked_p10)

                    ; #25724: <==commonly_known== 24781 (pos)
                    (Ba_checked_p10)

                    ; #35199: <==commonly_known== 24781 (pos)
                    (Bc_checked_p10)

                    ; #42128: <==commonly_known== 58650 (neg)
                    (Pc_checked_p10)

                    ; #45855: <==commonly_known== 24781 (pos)
                    (Bb_checked_p10)

                    ; #56229: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #68472: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #70751: <==closure== 68472 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #14789: <==negation-removal== 56229 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #14842: <==negation-removal== 35199 (pos)
                    (not (Pc_not_checked_p10))

                    ; #22459: <==uncertain_firing== 24769 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #25903: <==negation-removal== 42128 (pos)
                    (not (Bc_not_checked_p10))

                    ; #26675: <==negation-removal== 24769 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #30614: <==uncertain_firing== 56229 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #31576: <==negation-removal== 70751 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #40730: <==uncertain_firing== 68472 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #40797: <==negation-removal== 25724 (pos)
                    (not (Pa_not_checked_p10))

                    ; #58650: <==negation-removal== 24781 (pos)
                    (not (not_checked_p10))

                    ; #65540: <==negation-removal== 68472 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #69981: <==uncertain_firing== 70751 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #81115: <==negation-removal== 22592 (pos)
                    (not (Bb_not_checked_p10))

                    ; #87678: <==negation-removal== 16139 (pos)
                    (not (Ba_not_checked_p10))

                    ; #96176: <==negation-removal== 45855 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #16516: <==commonly_known== 75134 (neg)
                    (Pc_checked_p11)

                    ; #18470: <==commonly_known== 75134 (neg)
                    (Pb_checked_p11)

                    ; #19870: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #21513: origin
                    (checked_p11)

                    ; #38604: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #42363: <==commonly_known== 21513 (pos)
                    (Ba_checked_p11)

                    ; #42513: <==commonly_known== 21513 (pos)
                    (Bb_checked_p11)

                    ; #56175: <==closure== 19870 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #69478: <==commonly_known== 21513 (pos)
                    (Bc_checked_p11)

                    ; #78737: <==commonly_known== 75134 (neg)
                    (Pa_checked_p11)

                    ; #90406: <==closure== 38604 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #13138: <==uncertain_firing== 56175 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #17315: <==uncertain_firing== 38604 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #19112: <==negation-removal== 42363 (pos)
                    (not (Pa_not_checked_p11))

                    ; #35733: <==uncertain_firing== 19870 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #36130: <==uncertain_firing== 90406 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #38086: <==negation-removal== 18470 (pos)
                    (not (Bb_not_checked_p11))

                    ; #43490: <==negation-removal== 56175 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #63896: <==negation-removal== 16516 (pos)
                    (not (Bc_not_checked_p11))

                    ; #64922: <==negation-removal== 69478 (pos)
                    (not (Pc_not_checked_p11))

                    ; #66909: <==negation-removal== 90406 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #75134: <==negation-removal== 21513 (pos)
                    (not (not_checked_p11))

                    ; #76378: <==negation-removal== 19870 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #80108: <==negation-removal== 38604 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #82417: <==negation-removal== 42513 (pos)
                    (not (Pb_not_checked_p11))

                    ; #90717: <==negation-removal== 78737 (pos)
                    (not (Ba_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #22972: <==commonly_known== 52440 (pos)
                    (Bc_checked_p12)

                    ; #29708: <==commonly_known== 52440 (pos)
                    (Bb_checked_p12)

                    ; #32964: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #52440: origin
                    (checked_p12)

                    ; #58824: <==commonly_known== 34732 (neg)
                    (Pc_checked_p12)

                    ; #62100: <==commonly_known== 34732 (neg)
                    (Pb_checked_p12)

                    ; #64199: <==commonly_known== 34732 (neg)
                    (Pa_checked_p12)

                    ; #64940: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #65729: <==commonly_known== 52440 (pos)
                    (Ba_checked_p12)

                    ; #69650: <==closure== 64940 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #83002: <==closure== 32964 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #25991: <==negation-removal== 32964 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #29506: <==negation-removal== 64940 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #30161: <==negation-removal== 64199 (pos)
                    (not (Ba_not_checked_p12))

                    ; #30896: <==negation-removal== 29708 (pos)
                    (not (Pb_not_checked_p12))

                    ; #34732: <==negation-removal== 52440 (pos)
                    (not (not_checked_p12))

                    ; #39886: <==uncertain_firing== 83002 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41038: <==negation-removal== 83002 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41299: <==uncertain_firing== 69650 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #54561: <==uncertain_firing== 64940 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #57893: <==uncertain_firing== 32964 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #59380: <==negation-removal== 58824 (pos)
                    (not (Bc_not_checked_p12))

                    ; #66487: <==negation-removal== 69650 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #74148: <==negation-removal== 62100 (pos)
                    (not (Bb_not_checked_p12))

                    ; #80555: <==negation-removal== 65729 (pos)
                    (not (Pa_not_checked_p12))

                    ; #89810: <==negation-removal== 22972 (pos)
                    (not (Pc_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11808: <==commonly_known== 56023 (pos)
                    (Ba_checked_p1)

                    ; #20528: <==commonly_known== 34490 (neg)
                    (Pa_checked_p1)

                    ; #29617: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #31982: <==commonly_known== 56023 (pos)
                    (Bb_checked_p1)

                    ; #34346: <==closure== 29617 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #34624: <==commonly_known== 34490 (neg)
                    (Pc_checked_p1)

                    ; #51264: <==commonly_known== 56023 (pos)
                    (Bc_checked_p1)

                    ; #56023: origin
                    (checked_p1)

                    ; #59003: <==commonly_known== 34490 (neg)
                    (Pb_checked_p1)

                    ; #59553: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #87272: <==closure== 59553 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #10495: <==negation-removal== 29617 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #14510: <==negation-removal== 20528 (pos)
                    (not (Ba_not_checked_p1))

                    ; #19711: <==negation-removal== 34624 (pos)
                    (not (Bc_not_checked_p1))

                    ; #34490: <==negation-removal== 56023 (pos)
                    (not (not_checked_p1))

                    ; #39255: <==negation-removal== 59003 (pos)
                    (not (Bb_not_checked_p1))

                    ; #39416: <==uncertain_firing== 59553 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #56656: <==negation-removal== 31982 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57243: <==negation-removal== 51264 (pos)
                    (not (Pc_not_checked_p1))

                    ; #64933: <==negation-removal== 34346 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #76087: <==negation-removal== 11808 (pos)
                    (not (Pa_not_checked_p1))

                    ; #80105: <==uncertain_firing== 87272 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #83866: <==uncertain_firing== 29617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #87635: <==negation-removal== 59553 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #88695: <==uncertain_firing== 34346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #90782: <==negation-removal== 87272 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17946: <==commonly_known== 79598 (neg)
                    (Pa_checked_p2)

                    ; #27994: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #29663: <==commonly_known== 79598 (neg)
                    (Pc_checked_p2)

                    ; #41903: origin
                    (checked_p2)

                    ; #43038: <==commonly_known== 41903 (pos)
                    (Ba_checked_p2)

                    ; #61237: <==commonly_known== 79598 (neg)
                    (Pb_checked_p2)

                    ; #63998: <==closure== 27994 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #74072: <==commonly_known== 41903 (pos)
                    (Bb_checked_p2)

                    ; #78088: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #81365: <==closure== 78088 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #84866: <==commonly_known== 41903 (pos)
                    (Bc_checked_p2)

                    ; #18397: <==negation-removal== 43038 (pos)
                    (not (Pa_not_checked_p2))

                    ; #18816: <==negation-removal== 29663 (pos)
                    (not (Bc_not_checked_p2))

                    ; #22931: <==negation-removal== 78088 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #30275: <==negation-removal== 17946 (pos)
                    (not (Ba_not_checked_p2))

                    ; #35064: <==negation-removal== 27994 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #36688: <==negation-removal== 74072 (pos)
                    (not (Pb_not_checked_p2))

                    ; #39158: <==uncertain_firing== 78088 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #40721: <==negation-removal== 84866 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43219: <==uncertain_firing== 81365 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #55012: <==negation-removal== 61237 (pos)
                    (not (Bb_not_checked_p2))

                    ; #64593: <==negation-removal== 63998 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #75908: <==uncertain_firing== 27994 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #75921: <==uncertain_firing== 63998 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #79391: <==negation-removal== 81365 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #79598: <==negation-removal== 41903 (pos)
                    (not (not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12697: <==commonly_known== 86033 (pos)
                    (Bc_checked_p3)

                    ; #25318: <==closure== 37435 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #32367: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #37435: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #44376: <==commonly_known== 86033 (pos)
                    (Ba_checked_p3)

                    ; #44967: <==closure== 32367 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #59509: <==commonly_known== 86033 (pos)
                    (Bb_checked_p3)

                    ; #79385: <==commonly_known== 82969 (neg)
                    (Pc_checked_p3)

                    ; #80693: <==commonly_known== 82969 (neg)
                    (Pa_checked_p3)

                    ; #83051: <==commonly_known== 82969 (neg)
                    (Pb_checked_p3)

                    ; #86033: origin
                    (checked_p3)

                    ; #15970: <==negation-removal== 79385 (pos)
                    (not (Bc_not_checked_p3))

                    ; #29881: <==uncertain_firing== 25318 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #34836: <==negation-removal== 25318 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #40210: <==negation-removal== 37435 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #46719: <==negation-removal== 12697 (pos)
                    (not (Pc_not_checked_p3))

                    ; #51123: <==negation-removal== 44967 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #51828: <==negation-removal== 44376 (pos)
                    (not (Pa_not_checked_p3))

                    ; #58002: <==uncertain_firing== 37435 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #61341: <==uncertain_firing== 32367 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #63933: <==negation-removal== 83051 (pos)
                    (not (Bb_not_checked_p3))

                    ; #64311: <==negation-removal== 32367 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #66226: <==uncertain_firing== 44967 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #68432: <==negation-removal== 80693 (pos)
                    (not (Ba_not_checked_p3))

                    ; #82969: <==negation-removal== 86033 (pos)
                    (not (not_checked_p3))

                    ; #87077: <==negation-removal== 59509 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13333: <==commonly_known== 21064 (pos)
                    (Ba_checked_p4)

                    ; #18448: <==commonly_known== 32306 (neg)
                    (Pc_checked_p4)

                    ; #20304: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #21064: origin
                    (checked_p4)

                    ; #21345: <==commonly_known== 32306 (neg)
                    (Pa_checked_p4)

                    ; #27228: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #34289: <==commonly_known== 21064 (pos)
                    (Bb_checked_p4)

                    ; #35257: <==closure== 27228 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #43502: <==commonly_known== 21064 (pos)
                    (Bc_checked_p4)

                    ; #82141: <==commonly_known== 32306 (neg)
                    (Pb_checked_p4)

                    ; #88198: <==closure== 20304 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #18764: <==negation-removal== 27228 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #29821: <==uncertain_firing== 20304 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #32306: <==negation-removal== 21064 (pos)
                    (not (not_checked_p4))

                    ; #38335: <==negation-removal== 35257 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #41986: <==negation-removal== 21345 (pos)
                    (not (Ba_not_checked_p4))

                    ; #50444: <==negation-removal== 18448 (pos)
                    (not (Bc_not_checked_p4))

                    ; #50685: <==uncertain_firing== 88198 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #52758: <==uncertain_firing== 27228 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #54206: <==uncertain_firing== 35257 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #60533: <==negation-removal== 34289 (pos)
                    (not (Pb_not_checked_p4))

                    ; #64159: <==negation-removal== 43502 (pos)
                    (not (Pc_not_checked_p4))

                    ; #66426: <==negation-removal== 13333 (pos)
                    (not (Pa_not_checked_p4))

                    ; #82168: <==negation-removal== 20304 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #86703: <==negation-removal== 82141 (pos)
                    (not (Bb_not_checked_p4))

                    ; #89234: <==negation-removal== 88198 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #20650: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #29590: <==commonly_known== 23959 (neg)
                    (Pa_checked_p5)

                    ; #32159: <==commonly_known== 23959 (neg)
                    (Pb_checked_p5)

                    ; #58439: <==commonly_known== 64468 (pos)
                    (Bb_checked_p5)

                    ; #59832: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #64468: origin
                    (checked_p5)

                    ; #66541: <==closure== 20650 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #67639: <==commonly_known== 64468 (pos)
                    (Bc_checked_p5)

                    ; #85329: <==commonly_known== 23959 (neg)
                    (Pc_checked_p5)

                    ; #90991: <==closure== 59832 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #91248: <==commonly_known== 64468 (pos)
                    (Ba_checked_p5)

                    ; #23959: <==negation-removal== 64468 (pos)
                    (not (not_checked_p5))

                    ; #37473: <==uncertain_firing== 90991 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #50692: <==uncertain_firing== 20650 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #55950: <==negation-removal== 58439 (pos)
                    (not (Pb_not_checked_p5))

                    ; #62534: <==uncertain_firing== 66541 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62759: <==negation-removal== 91248 (pos)
                    (not (Pa_not_checked_p5))

                    ; #65233: <==negation-removal== 59832 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #79364: <==negation-removal== 29590 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81644: <==negation-removal== 66541 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #83403: <==negation-removal== 90991 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #83697: <==negation-removal== 85329 (pos)
                    (not (Bc_not_checked_p5))

                    ; #85878: <==negation-removal== 32159 (pos)
                    (not (Bb_not_checked_p5))

                    ; #91698: <==uncertain_firing== 59832 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #93109: <==negation-removal== 67639 (pos)
                    (not (Pc_not_checked_p5))

                    ; #98045: <==negation-removal== 20650 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #15485: <==commonly_known== 91113 (pos)
                    (Bc_checked_p6)

                    ; #16078: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #23847: <==commonly_known== 91113 (pos)
                    (Ba_checked_p6)

                    ; #31220: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #31513: <==commonly_known== 48105 (neg)
                    (Pa_checked_p6)

                    ; #64747: <==closure== 31220 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #69736: <==commonly_known== 48105 (neg)
                    (Pc_checked_p6)

                    ; #71276: <==commonly_known== 48105 (neg)
                    (Pb_checked_p6)

                    ; #87465: <==closure== 16078 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #91113: origin
                    (checked_p6)

                    ; #91720: <==commonly_known== 91113 (pos)
                    (Bb_checked_p6)

                    ; #13492: <==uncertain_firing== 31220 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #28850: <==negation-removal== 71276 (pos)
                    (not (Bb_not_checked_p6))

                    ; #42513: <==uncertain_firing== 16078 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #47845: <==uncertain_firing== 64747 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #48105: <==negation-removal== 91113 (pos)
                    (not (not_checked_p6))

                    ; #49513: <==negation-removal== 23847 (pos)
                    (not (Pa_not_checked_p6))

                    ; #53642: <==negation-removal== 69736 (pos)
                    (not (Bc_not_checked_p6))

                    ; #54291: <==negation-removal== 64747 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #54662: <==uncertain_firing== 87465 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #59886: <==negation-removal== 16078 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62046: <==negation-removal== 15485 (pos)
                    (not (Pc_not_checked_p6))

                    ; #67429: <==negation-removal== 31513 (pos)
                    (not (Ba_not_checked_p6))

                    ; #74093: <==negation-removal== 31220 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #89632: <==negation-removal== 87465 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #91770: <==negation-removal== 91720 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #28704: <==commonly_known== 64550 (pos)
                    (Bb_checked_p7)

                    ; #40302: <==commonly_known== 64550 (pos)
                    (Ba_checked_p7)

                    ; #43296: <==commonly_known== 74671 (neg)
                    (Pc_checked_p7)

                    ; #44765: <==closure== 67817 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #64550: origin
                    (checked_p7)

                    ; #67817: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #70922: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #71494: <==commonly_known== 74671 (neg)
                    (Pb_checked_p7)

                    ; #83315: <==closure== 70922 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #85397: <==commonly_known== 74671 (neg)
                    (Pa_checked_p7)

                    ; #91372: <==commonly_known== 64550 (pos)
                    (Bc_checked_p7)

                    ; #11051: <==uncertain_firing== 67817 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #11351: <==negation-removal== 71494 (pos)
                    (not (Bb_not_checked_p7))

                    ; #17153: <==negation-removal== 44765 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #30956: <==uncertain_firing== 83315 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #31459: <==negation-removal== 28704 (pos)
                    (not (Pb_not_checked_p7))

                    ; #50472: <==negation-removal== 40302 (pos)
                    (not (Pa_not_checked_p7))

                    ; #50733: <==negation-removal== 85397 (pos)
                    (not (Ba_not_checked_p7))

                    ; #52954: <==uncertain_firing== 70922 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #53144: <==negation-removal== 43296 (pos)
                    (not (Bc_not_checked_p7))

                    ; #56168: <==negation-removal== 67817 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #73449: <==negation-removal== 83315 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #74671: <==negation-removal== 64550 (pos)
                    (not (not_checked_p7))

                    ; #79476: <==negation-removal== 70922 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #83497: <==negation-removal== 91372 (pos)
                    (not (Pc_not_checked_p7))

                    ; #85251: <==uncertain_firing== 44765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10245: <==closure== 35048 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #12365: <==commonly_known== 66796 (neg)
                    (Pb_checked_p8)

                    ; #18816: <==commonly_known== 86671 (pos)
                    (Ba_checked_p8)

                    ; #28841: <==commonly_known== 66796 (neg)
                    (Pa_checked_p8)

                    ; #28960: <==closure== 50650 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #35048: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #49283: <==commonly_known== 86671 (pos)
                    (Bb_checked_p8)

                    ; #50650: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #52261: <==commonly_known== 66796 (neg)
                    (Pc_checked_p8)

                    ; #54989: <==commonly_known== 86671 (pos)
                    (Bc_checked_p8)

                    ; #86671: origin
                    (checked_p8)

                    ; #18586: <==negation-removal== 18816 (pos)
                    (not (Pa_not_checked_p8))

                    ; #35847: <==uncertain_firing== 35048 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #37438: <==negation-removal== 28841 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38508: <==uncertain_firing== 28960 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #41581: <==negation-removal== 35048 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #42587: <==negation-removal== 54989 (pos)
                    (not (Pc_not_checked_p8))

                    ; #50314: <==negation-removal== 49283 (pos)
                    (not (Pb_not_checked_p8))

                    ; #55041: <==uncertain_firing== 50650 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #56955: <==negation-removal== 52261 (pos)
                    (not (Bc_not_checked_p8))

                    ; #61943: <==uncertain_firing== 10245 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #66796: <==negation-removal== 86671 (pos)
                    (not (not_checked_p8))

                    ; #76184: <==negation-removal== 10245 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #77125: <==negation-removal== 50650 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #85377: <==negation-removal== 12365 (pos)
                    (not (Bb_not_checked_p8))

                    ; #91177: <==negation-removal== 28960 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #30105: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #35319: <==closure== 43157 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #37830: <==commonly_known== 44718 (neg)
                    (Pc_checked_p9)

                    ; #42742: <==closure== 30105 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #43157: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #50142: <==commonly_known== 84786 (pos)
                    (Bc_checked_p9)

                    ; #53818: <==commonly_known== 84786 (pos)
                    (Bb_checked_p9)

                    ; #61515: <==commonly_known== 84786 (pos)
                    (Ba_checked_p9)

                    ; #72366: <==commonly_known== 44718 (neg)
                    (Pb_checked_p9)

                    ; #81033: <==commonly_known== 44718 (neg)
                    (Pa_checked_p9)

                    ; #84786: origin
                    (checked_p9)

                    ; #14669: <==negation-removal== 61515 (pos)
                    (not (Pa_not_checked_p9))

                    ; #14787: <==negation-removal== 30105 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #32788: <==negation-removal== 42742 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #38102: <==negation-removal== 50142 (pos)
                    (not (Pc_not_checked_p9))

                    ; #41952: <==negation-removal== 37830 (pos)
                    (not (Bc_not_checked_p9))

                    ; #42361: <==uncertain_firing== 30105 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #43799: <==negation-removal== 43157 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #44718: <==negation-removal== 84786 (pos)
                    (not (not_checked_p9))

                    ; #58927: <==uncertain_firing== 35319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #66922: <==uncertain_firing== 43157 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #72371: <==negation-removal== 72366 (pos)
                    (not (Bb_not_checked_p9))

                    ; #89388: <==negation-removal== 53818 (pos)
                    (not (Pb_not_checked_p9))

                    ; #90461: <==uncertain_firing== 42742 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #91497: <==negation-removal== 81033 (pos)
                    (not (Ba_not_checked_p9))

                    ; #99074: <==negation-removal== 35319 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #16139: <==commonly_known== 58650 (neg)
                    (Pa_checked_p10)

                    ; #22592: <==commonly_known== 58650 (neg)
                    (Pb_checked_p10)

                    ; #24781: origin
                    (checked_p10)

                    ; #25724: <==commonly_known== 24781 (pos)
                    (Ba_checked_p10)

                    ; #35199: <==commonly_known== 24781 (pos)
                    (Bc_checked_p10)

                    ; #39407: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #42128: <==commonly_known== 58650 (neg)
                    (Pc_checked_p10)

                    ; #45855: <==commonly_known== 24781 (pos)
                    (Bb_checked_p10)

                    ; #72024: <==closure== 74271 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #74271: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #75932: <==closure== 39407 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #11767: <==uncertain_firing== 74271 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #14842: <==negation-removal== 35199 (pos)
                    (not (Pc_not_checked_p10))

                    ; #25903: <==negation-removal== 42128 (pos)
                    (not (Bc_not_checked_p10))

                    ; #27298: <==negation-removal== 75932 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #40797: <==negation-removal== 25724 (pos)
                    (not (Pa_not_checked_p10))

                    ; #44325: <==negation-removal== 39407 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #51353: <==negation-removal== 74271 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #58650: <==negation-removal== 24781 (pos)
                    (not (not_checked_p10))

                    ; #61874: <==uncertain_firing== 72024 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67865: <==uncertain_firing== 39407 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #71062: <==negation-removal== 72024 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #72645: <==uncertain_firing== 75932 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #81115: <==negation-removal== 22592 (pos)
                    (not (Bb_not_checked_p10))

                    ; #87678: <==negation-removal== 16139 (pos)
                    (not (Ba_not_checked_p10))

                    ; #96176: <==negation-removal== 45855 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #16516: <==commonly_known== 75134 (neg)
                    (Pc_checked_p11)

                    ; #18470: <==commonly_known== 75134 (neg)
                    (Pb_checked_p11)

                    ; #21513: origin
                    (checked_p11)

                    ; #25672: <==closure== 91437 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #42363: <==commonly_known== 21513 (pos)
                    (Ba_checked_p11)

                    ; #42513: <==commonly_known== 21513 (pos)
                    (Bb_checked_p11)

                    ; #54381: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #69478: <==commonly_known== 21513 (pos)
                    (Bc_checked_p11)

                    ; #78737: <==commonly_known== 75134 (neg)
                    (Pa_checked_p11)

                    ; #84924: <==closure== 54381 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #91437: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #11381: <==negation-removal== 91437 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #19112: <==negation-removal== 42363 (pos)
                    (not (Pa_not_checked_p11))

                    ; #36625: <==negation-removal== 25672 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #38086: <==negation-removal== 18470 (pos)
                    (not (Bb_not_checked_p11))

                    ; #63896: <==negation-removal== 16516 (pos)
                    (not (Bc_not_checked_p11))

                    ; #64922: <==negation-removal== 69478 (pos)
                    (not (Pc_not_checked_p11))

                    ; #66127: <==uncertain_firing== 91437 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #66489: <==uncertain_firing== 25672 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #73343: <==uncertain_firing== 84924 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #75134: <==negation-removal== 21513 (pos)
                    (not (not_checked_p11))

                    ; #82417: <==negation-removal== 42513 (pos)
                    (not (Pb_not_checked_p11))

                    ; #82505: <==negation-removal== 84924 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #84852: <==negation-removal== 54381 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #90717: <==negation-removal== 78737 (pos)
                    (not (Ba_not_checked_p11))

                    ; #90845: <==uncertain_firing== 54381 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #14980: <==closure== 19462 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #19462: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #22972: <==commonly_known== 52440 (pos)
                    (Bc_checked_p12)

                    ; #29708: <==commonly_known== 52440 (pos)
                    (Bb_checked_p12)

                    ; #44984: <==closure== 70732 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #52440: origin
                    (checked_p12)

                    ; #58824: <==commonly_known== 34732 (neg)
                    (Pc_checked_p12)

                    ; #62100: <==commonly_known== 34732 (neg)
                    (Pb_checked_p12)

                    ; #64199: <==commonly_known== 34732 (neg)
                    (Pa_checked_p12)

                    ; #65729: <==commonly_known== 52440 (pos)
                    (Ba_checked_p12)

                    ; #70732: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #30161: <==negation-removal== 64199 (pos)
                    (not (Ba_not_checked_p12))

                    ; #30896: <==negation-removal== 29708 (pos)
                    (not (Pb_not_checked_p12))

                    ; #34732: <==negation-removal== 52440 (pos)
                    (not (not_checked_p12))

                    ; #37748: <==uncertain_firing== 19462 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #46148: <==uncertain_firing== 44984 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #50386: <==negation-removal== 70732 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #59056: <==negation-removal== 14980 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #59380: <==negation-removal== 58824 (pos)
                    (not (Bc_not_checked_p12))

                    ; #61685: <==negation-removal== 44984 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #72762: <==uncertain_firing== 14980 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #74148: <==negation-removal== 62100 (pos)
                    (not (Bb_not_checked_p12))

                    ; #80555: <==negation-removal== 65729 (pos)
                    (not (Pa_not_checked_p12))

                    ; #89634: <==negation-removal== 19462 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #89810: <==negation-removal== 22972 (pos)
                    (not (Pc_not_checked_p12))

                    ; #90928: <==uncertain_firing== 70732 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11808: <==commonly_known== 56023 (pos)
                    (Ba_checked_p1)

                    ; #13297: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #13908: <==closure== 15865 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #15865: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #20528: <==commonly_known== 34490 (neg)
                    (Pa_checked_p1)

                    ; #31982: <==commonly_known== 56023 (pos)
                    (Bb_checked_p1)

                    ; #34624: <==commonly_known== 34490 (neg)
                    (Pc_checked_p1)

                    ; #51264: <==commonly_known== 56023 (pos)
                    (Bc_checked_p1)

                    ; #56023: origin
                    (checked_p1)

                    ; #59003: <==commonly_known== 34490 (neg)
                    (Pb_checked_p1)

                    ; #61193: <==closure== 13297 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #12384: <==negation-removal== 13297 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #14510: <==negation-removal== 20528 (pos)
                    (not (Ba_not_checked_p1))

                    ; #16328: <==uncertain_firing== 13908 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #19711: <==negation-removal== 34624 (pos)
                    (not (Bc_not_checked_p1))

                    ; #34490: <==negation-removal== 56023 (pos)
                    (not (not_checked_p1))

                    ; #35058: <==uncertain_firing== 13297 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #36248: <==uncertain_firing== 15865 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #39255: <==negation-removal== 59003 (pos)
                    (not (Bb_not_checked_p1))

                    ; #47085: <==uncertain_firing== 61193 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #53647: <==negation-removal== 13908 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #56656: <==negation-removal== 31982 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57243: <==negation-removal== 51264 (pos)
                    (not (Pc_not_checked_p1))

                    ; #57839: <==negation-removal== 61193 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71063: <==negation-removal== 15865 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #76087: <==negation-removal== 11808 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17946: <==commonly_known== 79598 (neg)
                    (Pa_checked_p2)

                    ; #23450: <==closure== 65552 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #26646: <==closure== 66046 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29663: <==commonly_known== 79598 (neg)
                    (Pc_checked_p2)

                    ; #41903: origin
                    (checked_p2)

                    ; #43038: <==commonly_known== 41903 (pos)
                    (Ba_checked_p2)

                    ; #61237: <==commonly_known== 79598 (neg)
                    (Pb_checked_p2)

                    ; #65552: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #66046: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #74072: <==commonly_known== 41903 (pos)
                    (Bb_checked_p2)

                    ; #84866: <==commonly_known== 41903 (pos)
                    (Bc_checked_p2)

                    ; #14587: <==uncertain_firing== 26646 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #18397: <==negation-removal== 43038 (pos)
                    (not (Pa_not_checked_p2))

                    ; #18816: <==negation-removal== 29663 (pos)
                    (not (Bc_not_checked_p2))

                    ; #29237: <==uncertain_firing== 65552 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #30275: <==negation-removal== 17946 (pos)
                    (not (Ba_not_checked_p2))

                    ; #31157: <==uncertain_firing== 66046 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #31307: <==negation-removal== 66046 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #36688: <==negation-removal== 74072 (pos)
                    (not (Pb_not_checked_p2))

                    ; #40721: <==negation-removal== 84866 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43779: <==uncertain_firing== 23450 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #55012: <==negation-removal== 61237 (pos)
                    (not (Bb_not_checked_p2))

                    ; #77864: <==negation-removal== 26646 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #79598: <==negation-removal== 41903 (pos)
                    (not (not_checked_p2))

                    ; #82088: <==negation-removal== 23450 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #90772: <==negation-removal== 65552 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12697: <==commonly_known== 86033 (pos)
                    (Bc_checked_p3)

                    ; #19727: <==closure== 67486 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #23554: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #44376: <==commonly_known== 86033 (pos)
                    (Ba_checked_p3)

                    ; #55081: <==closure== 23554 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #59509: <==commonly_known== 86033 (pos)
                    (Bb_checked_p3)

                    ; #67486: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #79385: <==commonly_known== 82969 (neg)
                    (Pc_checked_p3)

                    ; #80693: <==commonly_known== 82969 (neg)
                    (Pa_checked_p3)

                    ; #83051: <==commonly_known== 82969 (neg)
                    (Pb_checked_p3)

                    ; #86033: origin
                    (checked_p3)

                    ; #15970: <==negation-removal== 79385 (pos)
                    (not (Bc_not_checked_p3))

                    ; #34316: <==uncertain_firing== 67486 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #35091: <==negation-removal== 23554 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #46719: <==negation-removal== 12697 (pos)
                    (not (Pc_not_checked_p3))

                    ; #51828: <==negation-removal== 44376 (pos)
                    (not (Pa_not_checked_p3))

                    ; #56461: <==negation-removal== 19727 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #59990: <==negation-removal== 55081 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #63933: <==negation-removal== 83051 (pos)
                    (not (Bb_not_checked_p3))

                    ; #68432: <==negation-removal== 80693 (pos)
                    (not (Ba_not_checked_p3))

                    ; #69689: <==uncertain_firing== 19727 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #71784: <==uncertain_firing== 55081 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #75707: <==uncertain_firing== 23554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #81777: <==negation-removal== 67486 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #82969: <==negation-removal== 86033 (pos)
                    (not (not_checked_p3))

                    ; #87077: <==negation-removal== 59509 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11836: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #13333: <==commonly_known== 21064 (pos)
                    (Ba_checked_p4)

                    ; #18448: <==commonly_known== 32306 (neg)
                    (Pc_checked_p4)

                    ; #21064: origin
                    (checked_p4)

                    ; #21345: <==commonly_known== 32306 (neg)
                    (Pa_checked_p4)

                    ; #34289: <==commonly_known== 21064 (pos)
                    (Bb_checked_p4)

                    ; #42095: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #43502: <==commonly_known== 21064 (pos)
                    (Bc_checked_p4)

                    ; #64020: <==closure== 11836 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #82141: <==commonly_known== 32306 (neg)
                    (Pb_checked_p4)

                    ; #99446: <==closure== 42095 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #19953: <==uncertain_firing== 11836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #32306: <==negation-removal== 21064 (pos)
                    (not (not_checked_p4))

                    ; #40313: <==negation-removal== 64020 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #41765: <==negation-removal== 11836 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #41986: <==negation-removal== 21345 (pos)
                    (not (Ba_not_checked_p4))

                    ; #50444: <==negation-removal== 18448 (pos)
                    (not (Bc_not_checked_p4))

                    ; #58839: <==negation-removal== 42095 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #58874: <==uncertain_firing== 64020 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #60533: <==negation-removal== 34289 (pos)
                    (not (Pb_not_checked_p4))

                    ; #64159: <==negation-removal== 43502 (pos)
                    (not (Pc_not_checked_p4))

                    ; #66426: <==negation-removal== 13333 (pos)
                    (not (Pa_not_checked_p4))

                    ; #66883: <==negation-removal== 99446 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #75286: <==uncertain_firing== 42095 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #80413: <==uncertain_firing== 99446 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #86703: <==negation-removal== 82141 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #29439: <==closure== 78802 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #29590: <==commonly_known== 23959 (neg)
                    (Pa_checked_p5)

                    ; #32159: <==commonly_known== 23959 (neg)
                    (Pb_checked_p5)

                    ; #58439: <==commonly_known== 64468 (pos)
                    (Bb_checked_p5)

                    ; #64468: origin
                    (checked_p5)

                    ; #67639: <==commonly_known== 64468 (pos)
                    (Bc_checked_p5)

                    ; #71965: <==closure== 82936 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #78802: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #82936: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #85329: <==commonly_known== 23959 (neg)
                    (Pc_checked_p5)

                    ; #91248: <==commonly_known== 64468 (pos)
                    (Ba_checked_p5)

                    ; #12040: <==uncertain_firing== 29439 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #19044: <==negation-removal== 71965 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #23959: <==negation-removal== 64468 (pos)
                    (not (not_checked_p5))

                    ; #24127: <==uncertain_firing== 71965 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #24560: <==negation-removal== 29439 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #30129: <==uncertain_firing== 82936 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #55950: <==negation-removal== 58439 (pos)
                    (not (Pb_not_checked_p5))

                    ; #62759: <==negation-removal== 91248 (pos)
                    (not (Pa_not_checked_p5))

                    ; #63781: <==negation-removal== 78802 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #79364: <==negation-removal== 29590 (pos)
                    (not (Ba_not_checked_p5))

                    ; #83697: <==negation-removal== 85329 (pos)
                    (not (Bc_not_checked_p5))

                    ; #83810: <==negation-removal== 82936 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #85878: <==negation-removal== 32159 (pos)
                    (not (Bb_not_checked_p5))

                    ; #89983: <==uncertain_firing== 78802 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #93109: <==negation-removal== 67639 (pos)
                    (not (Pc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13170: <==closure== 90351 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #15485: <==commonly_known== 91113 (pos)
                    (Bc_checked_p6)

                    ; #23847: <==commonly_known== 91113 (pos)
                    (Ba_checked_p6)

                    ; #31513: <==commonly_known== 48105 (neg)
                    (Pa_checked_p6)

                    ; #62230: <==closure== 86363 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #69736: <==commonly_known== 48105 (neg)
                    (Pc_checked_p6)

                    ; #71276: <==commonly_known== 48105 (neg)
                    (Pb_checked_p6)

                    ; #86363: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #90351: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #91113: origin
                    (checked_p6)

                    ; #91720: <==commonly_known== 91113 (pos)
                    (Bb_checked_p6)

                    ; #15189: <==uncertain_firing== 13170 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #24105: <==uncertain_firing== 62230 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #26568: <==negation-removal== 13170 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #28850: <==negation-removal== 71276 (pos)
                    (not (Bb_not_checked_p6))

                    ; #48105: <==negation-removal== 91113 (pos)
                    (not (not_checked_p6))

                    ; #49513: <==negation-removal== 23847 (pos)
                    (not (Pa_not_checked_p6))

                    ; #53642: <==negation-removal== 69736 (pos)
                    (not (Bc_not_checked_p6))

                    ; #55623: <==negation-removal== 86363 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #60741: <==negation-removal== 90351 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #62046: <==negation-removal== 15485 (pos)
                    (not (Pc_not_checked_p6))

                    ; #67429: <==negation-removal== 31513 (pos)
                    (not (Ba_not_checked_p6))

                    ; #72696: <==uncertain_firing== 90351 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #73833: <==uncertain_firing== 86363 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #77751: <==negation-removal== 62230 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #91770: <==negation-removal== 91720 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10791: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #18007: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #28704: <==commonly_known== 64550 (pos)
                    (Bb_checked_p7)

                    ; #40302: <==commonly_known== 64550 (pos)
                    (Ba_checked_p7)

                    ; #41916: <==closure== 10791 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #43296: <==commonly_known== 74671 (neg)
                    (Pc_checked_p7)

                    ; #50547: <==closure== 18007 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #64550: origin
                    (checked_p7)

                    ; #71494: <==commonly_known== 74671 (neg)
                    (Pb_checked_p7)

                    ; #85397: <==commonly_known== 74671 (neg)
                    (Pa_checked_p7)

                    ; #91372: <==commonly_known== 64550 (pos)
                    (Bc_checked_p7)

                    ; #11351: <==negation-removal== 71494 (pos)
                    (not (Bb_not_checked_p7))

                    ; #15196: <==negation-removal== 50547 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #26925: <==uncertain_firing== 41916 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #31459: <==negation-removal== 28704 (pos)
                    (not (Pb_not_checked_p7))

                    ; #47110: <==negation-removal== 18007 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #48878: <==negation-removal== 41916 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #50472: <==negation-removal== 40302 (pos)
                    (not (Pa_not_checked_p7))

                    ; #50733: <==negation-removal== 85397 (pos)
                    (not (Ba_not_checked_p7))

                    ; #53144: <==negation-removal== 43296 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65405: <==uncertain_firing== 10791 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #74671: <==negation-removal== 64550 (pos)
                    (not (not_checked_p7))

                    ; #75999: <==negation-removal== 10791 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #83497: <==negation-removal== 91372 (pos)
                    (not (Pc_not_checked_p7))

                    ; #84206: <==uncertain_firing== 50547 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #94909: <==uncertain_firing== 18007 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12365: <==commonly_known== 66796 (neg)
                    (Pb_checked_p8)

                    ; #18816: <==commonly_known== 86671 (pos)
                    (Ba_checked_p8)

                    ; #23921: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #28841: <==commonly_known== 66796 (neg)
                    (Pa_checked_p8)

                    ; #49283: <==commonly_known== 86671 (pos)
                    (Bb_checked_p8)

                    ; #50050: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #52261: <==commonly_known== 66796 (neg)
                    (Pc_checked_p8)

                    ; #54989: <==commonly_known== 86671 (pos)
                    (Bc_checked_p8)

                    ; #56544: <==closure== 23921 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #66267: <==closure== 50050 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #86671: origin
                    (checked_p8)

                    ; #13395: <==negation-removal== 23921 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #18435: <==uncertain_firing== 56544 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #18586: <==negation-removal== 18816 (pos)
                    (not (Pa_not_checked_p8))

                    ; #32934: <==uncertain_firing== 66267 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #37438: <==negation-removal== 28841 (pos)
                    (not (Ba_not_checked_p8))

                    ; #39546: <==negation-removal== 66267 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #42587: <==negation-removal== 54989 (pos)
                    (not (Pc_not_checked_p8))

                    ; #43627: <==uncertain_firing== 50050 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #50314: <==negation-removal== 49283 (pos)
                    (not (Pb_not_checked_p8))

                    ; #56955: <==negation-removal== 52261 (pos)
                    (not (Bc_not_checked_p8))

                    ; #66416: <==uncertain_firing== 23921 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #66796: <==negation-removal== 86671 (pos)
                    (not (not_checked_p8))

                    ; #77364: <==negation-removal== 56544 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #82725: <==negation-removal== 50050 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #85377: <==negation-removal== 12365 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #24696: <==closure== 67870 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #37830: <==commonly_known== 44718 (neg)
                    (Pc_checked_p9)

                    ; #39134: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #47961: <==closure== 39134 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #50142: <==commonly_known== 84786 (pos)
                    (Bc_checked_p9)

                    ; #53818: <==commonly_known== 84786 (pos)
                    (Bb_checked_p9)

                    ; #61515: <==commonly_known== 84786 (pos)
                    (Ba_checked_p9)

                    ; #67870: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #72366: <==commonly_known== 44718 (neg)
                    (Pb_checked_p9)

                    ; #81033: <==commonly_known== 44718 (neg)
                    (Pa_checked_p9)

                    ; #84786: origin
                    (checked_p9)

                    ; #10366: <==uncertain_firing== 67870 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #14669: <==negation-removal== 61515 (pos)
                    (not (Pa_not_checked_p9))

                    ; #29116: <==negation-removal== 39134 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #34072: <==negation-removal== 24696 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #38102: <==negation-removal== 50142 (pos)
                    (not (Pc_not_checked_p9))

                    ; #41952: <==negation-removal== 37830 (pos)
                    (not (Bc_not_checked_p9))

                    ; #44718: <==negation-removal== 84786 (pos)
                    (not (not_checked_p9))

                    ; #51504: <==uncertain_firing== 24696 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #72371: <==negation-removal== 72366 (pos)
                    (not (Bb_not_checked_p9))

                    ; #78721: <==negation-removal== 67870 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #82339: <==negation-removal== 47961 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #84672: <==uncertain_firing== 39134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #85445: <==uncertain_firing== 47961 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #89388: <==negation-removal== 53818 (pos)
                    (not (Pb_not_checked_p9))

                    ; #91497: <==negation-removal== 81033 (pos)
                    (not (Ba_not_checked_p9))))

)