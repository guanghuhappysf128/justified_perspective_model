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
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #19373: origin
                    (Bb_survivorat_s_p10)

                    ; #23143: <==closure== 44800 (pos)
                    (Pc_survivorat_s_p10)

                    ; #44800: origin
                    (Bc_survivorat_s_p10)

                    ; #50506: origin
                    (Ba_survivorat_s_p10)

                    ; #52122: <==closure== 50506 (pos)
                    (Pa_survivorat_s_p10)

                    ; #77778: <==closure== 19373 (pos)
                    (Pb_survivorat_s_p10)

                    ; #11275: <==negation-removal== 50506 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #26903: <==negation-removal== 77778 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #57383: <==negation-removal== 44800 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #61981: <==negation-removal== 52122 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #80307: <==negation-removal== 19373 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #86095: <==negation-removal== 23143 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #19373: origin
                    (Bb_survivorat_s_p10)

                    ; #23143: <==closure== 44800 (pos)
                    (Pc_survivorat_s_p10)

                    ; #44800: origin
                    (Bc_survivorat_s_p10)

                    ; #50506: origin
                    (Ba_survivorat_s_p10)

                    ; #52122: <==closure== 50506 (pos)
                    (Pa_survivorat_s_p10)

                    ; #77778: <==closure== 19373 (pos)
                    (Pb_survivorat_s_p10)

                    ; #11275: <==negation-removal== 50506 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #26903: <==negation-removal== 77778 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #57383: <==negation-removal== 44800 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #61981: <==negation-removal== 52122 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #80307: <==negation-removal== 19373 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #86095: <==negation-removal== 23143 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #19373: origin
                    (Bb_survivorat_s_p10)

                    ; #23143: <==closure== 44800 (pos)
                    (Pc_survivorat_s_p10)

                    ; #44800: origin
                    (Bc_survivorat_s_p10)

                    ; #50506: origin
                    (Ba_survivorat_s_p10)

                    ; #52122: <==closure== 50506 (pos)
                    (Pa_survivorat_s_p10)

                    ; #77778: <==closure== 19373 (pos)
                    (Pb_survivorat_s_p10)

                    ; #11275: <==negation-removal== 50506 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #26903: <==negation-removal== 77778 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #57383: <==negation-removal== 44800 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #61981: <==negation-removal== 52122 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #80307: <==negation-removal== 19373 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #86095: <==negation-removal== 23143 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #25323: <==closure== 61872 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28529: origin
                    (Bb_survivorat_s_p11)

                    ; #30308: <==closure== 28529 (pos)
                    (Pb_survivorat_s_p11)

                    ; #61872: origin
                    (Bc_survivorat_s_p11)

                    ; #67718: origin
                    (Ba_survivorat_s_p11)

                    ; #91074: <==closure== 67718 (pos)
                    (Pa_survivorat_s_p11)

                    ; #11631: <==negation-removal== 91074 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #16645: <==negation-removal== 25323 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #20077: <==negation-removal== 30308 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #27899: <==negation-removal== 28529 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #30395: <==negation-removal== 61872 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #53221: <==negation-removal== 67718 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #25323: <==closure== 61872 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28529: origin
                    (Bb_survivorat_s_p11)

                    ; #30308: <==closure== 28529 (pos)
                    (Pb_survivorat_s_p11)

                    ; #61872: origin
                    (Bc_survivorat_s_p11)

                    ; #67718: origin
                    (Ba_survivorat_s_p11)

                    ; #91074: <==closure== 67718 (pos)
                    (Pa_survivorat_s_p11)

                    ; #11631: <==negation-removal== 91074 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #16645: <==negation-removal== 25323 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #20077: <==negation-removal== 30308 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #27899: <==negation-removal== 28529 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #30395: <==negation-removal== 61872 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #53221: <==negation-removal== 67718 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #25323: <==closure== 61872 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28529: origin
                    (Bb_survivorat_s_p11)

                    ; #30308: <==closure== 28529 (pos)
                    (Pb_survivorat_s_p11)

                    ; #61872: origin
                    (Bc_survivorat_s_p11)

                    ; #67718: origin
                    (Ba_survivorat_s_p11)

                    ; #91074: <==closure== 67718 (pos)
                    (Pa_survivorat_s_p11)

                    ; #11631: <==negation-removal== 91074 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #16645: <==negation-removal== 25323 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #20077: <==negation-removal== 30308 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #27899: <==negation-removal== 28529 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #30395: <==negation-removal== 61872 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #53221: <==negation-removal== 67718 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #15846: origin
                    (Bb_survivorat_s_p12)

                    ; #27677: origin
                    (Bc_survivorat_s_p12)

                    ; #38323: origin
                    (Ba_survivorat_s_p12)

                    ; #65151: <==closure== 38323 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79581: <==closure== 27677 (pos)
                    (Pc_survivorat_s_p12)

                    ; #87374: <==closure== 15846 (pos)
                    (Pb_survivorat_s_p12)

                    ; #14283: <==negation-removal== 87374 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #15526: <==negation-removal== 65151 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #21026: <==negation-removal== 15846 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #22765: <==negation-removal== 27677 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #86478: <==negation-removal== 38323 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #90333: <==negation-removal== 79581 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #15846: origin
                    (Bb_survivorat_s_p12)

                    ; #27677: origin
                    (Bc_survivorat_s_p12)

                    ; #38323: origin
                    (Ba_survivorat_s_p12)

                    ; #65151: <==closure== 38323 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79581: <==closure== 27677 (pos)
                    (Pc_survivorat_s_p12)

                    ; #87374: <==closure== 15846 (pos)
                    (Pb_survivorat_s_p12)

                    ; #14283: <==negation-removal== 87374 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #15526: <==negation-removal== 65151 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #21026: <==negation-removal== 15846 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #22765: <==negation-removal== 27677 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #86478: <==negation-removal== 38323 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #90333: <==negation-removal== 79581 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #15846: origin
                    (Bb_survivorat_s_p12)

                    ; #27677: origin
                    (Bc_survivorat_s_p12)

                    ; #38323: origin
                    (Ba_survivorat_s_p12)

                    ; #65151: <==closure== 38323 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79581: <==closure== 27677 (pos)
                    (Pc_survivorat_s_p12)

                    ; #87374: <==closure== 15846 (pos)
                    (Pb_survivorat_s_p12)

                    ; #14283: <==negation-removal== 87374 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #15526: <==negation-removal== 65151 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #21026: <==negation-removal== 15846 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #22765: <==negation-removal== 27677 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #86478: <==negation-removal== 38323 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #90333: <==negation-removal== 79581 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #10402: <==closure== 66567 (pos)
                    (Pc_survivorat_s_p1)

                    ; #53620: <==closure== 76266 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66567: origin
                    (Bc_survivorat_s_p1)

                    ; #71241: origin
                    (Ba_survivorat_s_p1)

                    ; #76266: origin
                    (Bb_survivorat_s_p1)

                    ; #90938: <==closure== 71241 (pos)
                    (Pa_survivorat_s_p1)

                    ; #25878: <==negation-removal== 10402 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64466: <==negation-removal== 66567 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #67482: <==negation-removal== 71241 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #79828: <==negation-removal== 53620 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #81795: <==negation-removal== 90938 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #88804: <==negation-removal== 76266 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #10402: <==closure== 66567 (pos)
                    (Pc_survivorat_s_p1)

                    ; #53620: <==closure== 76266 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66567: origin
                    (Bc_survivorat_s_p1)

                    ; #71241: origin
                    (Ba_survivorat_s_p1)

                    ; #76266: origin
                    (Bb_survivorat_s_p1)

                    ; #90938: <==closure== 71241 (pos)
                    (Pa_survivorat_s_p1)

                    ; #25878: <==negation-removal== 10402 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64466: <==negation-removal== 66567 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #67482: <==negation-removal== 71241 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #79828: <==negation-removal== 53620 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #81795: <==negation-removal== 90938 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #88804: <==negation-removal== 76266 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #10402: <==closure== 66567 (pos)
                    (Pc_survivorat_s_p1)

                    ; #53620: <==closure== 76266 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66567: origin
                    (Bc_survivorat_s_p1)

                    ; #71241: origin
                    (Ba_survivorat_s_p1)

                    ; #76266: origin
                    (Bb_survivorat_s_p1)

                    ; #90938: <==closure== 71241 (pos)
                    (Pa_survivorat_s_p1)

                    ; #25878: <==negation-removal== 10402 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64466: <==negation-removal== 66567 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #67482: <==negation-removal== 71241 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #79828: <==negation-removal== 53620 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #81795: <==negation-removal== 90938 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #88804: <==negation-removal== 76266 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #29403: <==closure== 76465 (pos)
                    (Pc_survivorat_s_p2)

                    ; #36476: origin
                    (Bb_survivorat_s_p2)

                    ; #49820: origin
                    (Ba_survivorat_s_p2)

                    ; #51287: <==closure== 36476 (pos)
                    (Pb_survivorat_s_p2)

                    ; #76465: origin
                    (Bc_survivorat_s_p2)

                    ; #80980: <==closure== 49820 (pos)
                    (Pa_survivorat_s_p2)

                    ; #11473: <==negation-removal== 76465 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #18459: <==negation-removal== 51287 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #27563: <==negation-removal== 49820 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #32391: <==negation-removal== 36476 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #37586: <==negation-removal== 29403 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #78336: <==negation-removal== 80980 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #29403: <==closure== 76465 (pos)
                    (Pc_survivorat_s_p2)

                    ; #36476: origin
                    (Bb_survivorat_s_p2)

                    ; #49820: origin
                    (Ba_survivorat_s_p2)

                    ; #51287: <==closure== 36476 (pos)
                    (Pb_survivorat_s_p2)

                    ; #76465: origin
                    (Bc_survivorat_s_p2)

                    ; #80980: <==closure== 49820 (pos)
                    (Pa_survivorat_s_p2)

                    ; #11473: <==negation-removal== 76465 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #18459: <==negation-removal== 51287 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #27563: <==negation-removal== 49820 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #32391: <==negation-removal== 36476 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #37586: <==negation-removal== 29403 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #78336: <==negation-removal== 80980 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #29403: <==closure== 76465 (pos)
                    (Pc_survivorat_s_p2)

                    ; #36476: origin
                    (Bb_survivorat_s_p2)

                    ; #49820: origin
                    (Ba_survivorat_s_p2)

                    ; #51287: <==closure== 36476 (pos)
                    (Pb_survivorat_s_p2)

                    ; #76465: origin
                    (Bc_survivorat_s_p2)

                    ; #80980: <==closure== 49820 (pos)
                    (Pa_survivorat_s_p2)

                    ; #11473: <==negation-removal== 76465 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #18459: <==negation-removal== 51287 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #27563: <==negation-removal== 49820 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #32391: <==negation-removal== 36476 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #37586: <==negation-removal== 29403 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #78336: <==negation-removal== 80980 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #41732: origin
                    (Bb_survivorat_s_p3)

                    ; #60718: origin
                    (Bc_survivorat_s_p3)

                    ; #75898: <==closure== 90218 (pos)
                    (Pa_survivorat_s_p3)

                    ; #86076: <==closure== 41732 (pos)
                    (Pb_survivorat_s_p3)

                    ; #88345: <==closure== 60718 (pos)
                    (Pc_survivorat_s_p3)

                    ; #90218: origin
                    (Ba_survivorat_s_p3)

                    ; #27248: <==negation-removal== 88345 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #39214: <==negation-removal== 90218 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #40924: <==negation-removal== 41732 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #43754: <==negation-removal== 86076 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #44541: <==negation-removal== 60718 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #66063: <==negation-removal== 75898 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #41732: origin
                    (Bb_survivorat_s_p3)

                    ; #60718: origin
                    (Bc_survivorat_s_p3)

                    ; #75898: <==closure== 90218 (pos)
                    (Pa_survivorat_s_p3)

                    ; #86076: <==closure== 41732 (pos)
                    (Pb_survivorat_s_p3)

                    ; #88345: <==closure== 60718 (pos)
                    (Pc_survivorat_s_p3)

                    ; #90218: origin
                    (Ba_survivorat_s_p3)

                    ; #27248: <==negation-removal== 88345 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #39214: <==negation-removal== 90218 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #40924: <==negation-removal== 41732 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #43754: <==negation-removal== 86076 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #44541: <==negation-removal== 60718 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #66063: <==negation-removal== 75898 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #41732: origin
                    (Bb_survivorat_s_p3)

                    ; #60718: origin
                    (Bc_survivorat_s_p3)

                    ; #75898: <==closure== 90218 (pos)
                    (Pa_survivorat_s_p3)

                    ; #86076: <==closure== 41732 (pos)
                    (Pb_survivorat_s_p3)

                    ; #88345: <==closure== 60718 (pos)
                    (Pc_survivorat_s_p3)

                    ; #90218: origin
                    (Ba_survivorat_s_p3)

                    ; #27248: <==negation-removal== 88345 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #39214: <==negation-removal== 90218 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #40924: <==negation-removal== 41732 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #43754: <==negation-removal== 86076 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #44541: <==negation-removal== 60718 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #66063: <==negation-removal== 75898 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #41846: <==closure== 43400 (pos)
                    (Pa_survivorat_s_p4)

                    ; #43400: origin
                    (Ba_survivorat_s_p4)

                    ; #64428: <==closure== 74931 (pos)
                    (Pc_survivorat_s_p4)

                    ; #74931: origin
                    (Bc_survivorat_s_p4)

                    ; #76304: <==closure== 89757 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89757: origin
                    (Bb_survivorat_s_p4)

                    ; #36611: <==negation-removal== 76304 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #42665: <==negation-removal== 41846 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #45319: <==negation-removal== 43400 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #50110: <==negation-removal== 89757 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #72065: <==negation-removal== 64428 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #72204: <==negation-removal== 74931 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #41846: <==closure== 43400 (pos)
                    (Pa_survivorat_s_p4)

                    ; #43400: origin
                    (Ba_survivorat_s_p4)

                    ; #64428: <==closure== 74931 (pos)
                    (Pc_survivorat_s_p4)

                    ; #74931: origin
                    (Bc_survivorat_s_p4)

                    ; #76304: <==closure== 89757 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89757: origin
                    (Bb_survivorat_s_p4)

                    ; #36611: <==negation-removal== 76304 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #42665: <==negation-removal== 41846 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #45319: <==negation-removal== 43400 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #50110: <==negation-removal== 89757 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #72065: <==negation-removal== 64428 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #72204: <==negation-removal== 74931 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #41846: <==closure== 43400 (pos)
                    (Pa_survivorat_s_p4)

                    ; #43400: origin
                    (Ba_survivorat_s_p4)

                    ; #64428: <==closure== 74931 (pos)
                    (Pc_survivorat_s_p4)

                    ; #74931: origin
                    (Bc_survivorat_s_p4)

                    ; #76304: <==closure== 89757 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89757: origin
                    (Bb_survivorat_s_p4)

                    ; #36611: <==negation-removal== 76304 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #42665: <==negation-removal== 41846 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #45319: <==negation-removal== 43400 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #50110: <==negation-removal== 89757 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #72065: <==negation-removal== 64428 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #72204: <==negation-removal== 74931 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #13409: origin
                    (Bc_survivorat_s_p5)

                    ; #22572: origin
                    (Ba_survivorat_s_p5)

                    ; #38041: origin
                    (Bb_survivorat_s_p5)

                    ; #44793: <==closure== 13409 (pos)
                    (Pc_survivorat_s_p5)

                    ; #64086: <==closure== 38041 (pos)
                    (Pb_survivorat_s_p5)

                    ; #77388: <==closure== 22572 (pos)
                    (Pa_survivorat_s_p5)

                    ; #30111: <==negation-removal== 64086 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #39725: <==negation-removal== 77388 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #48851: <==negation-removal== 38041 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60091: <==negation-removal== 22572 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #63808: <==negation-removal== 13409 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #70285: <==negation-removal== 44793 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #13409: origin
                    (Bc_survivorat_s_p5)

                    ; #22572: origin
                    (Ba_survivorat_s_p5)

                    ; #38041: origin
                    (Bb_survivorat_s_p5)

                    ; #44793: <==closure== 13409 (pos)
                    (Pc_survivorat_s_p5)

                    ; #64086: <==closure== 38041 (pos)
                    (Pb_survivorat_s_p5)

                    ; #77388: <==closure== 22572 (pos)
                    (Pa_survivorat_s_p5)

                    ; #30111: <==negation-removal== 64086 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #39725: <==negation-removal== 77388 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #48851: <==negation-removal== 38041 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60091: <==negation-removal== 22572 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #63808: <==negation-removal== 13409 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #70285: <==negation-removal== 44793 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #13409: origin
                    (Bc_survivorat_s_p5)

                    ; #22572: origin
                    (Ba_survivorat_s_p5)

                    ; #38041: origin
                    (Bb_survivorat_s_p5)

                    ; #44793: <==closure== 13409 (pos)
                    (Pc_survivorat_s_p5)

                    ; #64086: <==closure== 38041 (pos)
                    (Pb_survivorat_s_p5)

                    ; #77388: <==closure== 22572 (pos)
                    (Pa_survivorat_s_p5)

                    ; #30111: <==negation-removal== 64086 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #39725: <==negation-removal== 77388 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #48851: <==negation-removal== 38041 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60091: <==negation-removal== 22572 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #63808: <==negation-removal== 13409 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #70285: <==negation-removal== 44793 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #22200: origin
                    (Bb_survivorat_s_p6)

                    ; #60150: <==closure== 77109 (pos)
                    (Pa_survivorat_s_p6)

                    ; #69119: <==closure== 69266 (pos)
                    (Pc_survivorat_s_p6)

                    ; #69266: origin
                    (Bc_survivorat_s_p6)

                    ; #77109: origin
                    (Ba_survivorat_s_p6)

                    ; #90005: <==closure== 22200 (pos)
                    (Pb_survivorat_s_p6)

                    ; #10324: <==negation-removal== 69266 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #81671: <==negation-removal== 90005 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83401: <==negation-removal== 77109 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #89627: <==negation-removal== 22200 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #89699: <==negation-removal== 69119 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91049: <==negation-removal== 60150 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #22200: origin
                    (Bb_survivorat_s_p6)

                    ; #60150: <==closure== 77109 (pos)
                    (Pa_survivorat_s_p6)

                    ; #69119: <==closure== 69266 (pos)
                    (Pc_survivorat_s_p6)

                    ; #69266: origin
                    (Bc_survivorat_s_p6)

                    ; #77109: origin
                    (Ba_survivorat_s_p6)

                    ; #90005: <==closure== 22200 (pos)
                    (Pb_survivorat_s_p6)

                    ; #10324: <==negation-removal== 69266 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #81671: <==negation-removal== 90005 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83401: <==negation-removal== 77109 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #89627: <==negation-removal== 22200 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #89699: <==negation-removal== 69119 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91049: <==negation-removal== 60150 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #22200: origin
                    (Bb_survivorat_s_p6)

                    ; #60150: <==closure== 77109 (pos)
                    (Pa_survivorat_s_p6)

                    ; #69119: <==closure== 69266 (pos)
                    (Pc_survivorat_s_p6)

                    ; #69266: origin
                    (Bc_survivorat_s_p6)

                    ; #77109: origin
                    (Ba_survivorat_s_p6)

                    ; #90005: <==closure== 22200 (pos)
                    (Pb_survivorat_s_p6)

                    ; #10324: <==negation-removal== 69266 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #81671: <==negation-removal== 90005 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83401: <==negation-removal== 77109 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #89627: <==negation-removal== 22200 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #89699: <==negation-removal== 69119 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91049: <==negation-removal== 60150 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #17109: <==closure== 38652 (pos)
                    (Pb_survivorat_s_p7)

                    ; #37002: origin
                    (Bc_survivorat_s_p7)

                    ; #38652: origin
                    (Bb_survivorat_s_p7)

                    ; #47316: <==closure== 63593 (pos)
                    (Pa_survivorat_s_p7)

                    ; #63593: origin
                    (Ba_survivorat_s_p7)

                    ; #77838: <==closure== 37002 (pos)
                    (Pc_survivorat_s_p7)

                    ; #21682: <==negation-removal== 38652 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23379: <==negation-removal== 17109 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #24690: <==negation-removal== 63593 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #35498: <==negation-removal== 37002 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #61363: <==negation-removal== 77838 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #78953: <==negation-removal== 47316 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #17109: <==closure== 38652 (pos)
                    (Pb_survivorat_s_p7)

                    ; #37002: origin
                    (Bc_survivorat_s_p7)

                    ; #38652: origin
                    (Bb_survivorat_s_p7)

                    ; #47316: <==closure== 63593 (pos)
                    (Pa_survivorat_s_p7)

                    ; #63593: origin
                    (Ba_survivorat_s_p7)

                    ; #77838: <==closure== 37002 (pos)
                    (Pc_survivorat_s_p7)

                    ; #21682: <==negation-removal== 38652 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23379: <==negation-removal== 17109 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #24690: <==negation-removal== 63593 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #35498: <==negation-removal== 37002 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #61363: <==negation-removal== 77838 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #78953: <==negation-removal== 47316 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #17109: <==closure== 38652 (pos)
                    (Pb_survivorat_s_p7)

                    ; #37002: origin
                    (Bc_survivorat_s_p7)

                    ; #38652: origin
                    (Bb_survivorat_s_p7)

                    ; #47316: <==closure== 63593 (pos)
                    (Pa_survivorat_s_p7)

                    ; #63593: origin
                    (Ba_survivorat_s_p7)

                    ; #77838: <==closure== 37002 (pos)
                    (Pc_survivorat_s_p7)

                    ; #21682: <==negation-removal== 38652 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23379: <==negation-removal== 17109 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #24690: <==negation-removal== 63593 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #35498: <==negation-removal== 37002 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #61363: <==negation-removal== 77838 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #78953: <==negation-removal== 47316 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #11302: <==closure== 44237 (pos)
                    (Pa_survivorat_s_p8)

                    ; #14110: origin
                    (Bc_survivorat_s_p8)

                    ; #33309: origin
                    (Bb_survivorat_s_p8)

                    ; #44237: origin
                    (Ba_survivorat_s_p8)

                    ; #66581: <==closure== 33309 (pos)
                    (Pb_survivorat_s_p8)

                    ; #75460: <==closure== 14110 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21901: <==negation-removal== 66581 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #38831: <==negation-removal== 44237 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #52820: <==negation-removal== 11302 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #62613: <==negation-removal== 14110 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #73822: <==negation-removal== 33309 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #84312: <==negation-removal== 75460 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #11302: <==closure== 44237 (pos)
                    (Pa_survivorat_s_p8)

                    ; #14110: origin
                    (Bc_survivorat_s_p8)

                    ; #33309: origin
                    (Bb_survivorat_s_p8)

                    ; #44237: origin
                    (Ba_survivorat_s_p8)

                    ; #66581: <==closure== 33309 (pos)
                    (Pb_survivorat_s_p8)

                    ; #75460: <==closure== 14110 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21901: <==negation-removal== 66581 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #38831: <==negation-removal== 44237 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #52820: <==negation-removal== 11302 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #62613: <==negation-removal== 14110 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #73822: <==negation-removal== 33309 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #84312: <==negation-removal== 75460 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #11302: <==closure== 44237 (pos)
                    (Pa_survivorat_s_p8)

                    ; #14110: origin
                    (Bc_survivorat_s_p8)

                    ; #33309: origin
                    (Bb_survivorat_s_p8)

                    ; #44237: origin
                    (Ba_survivorat_s_p8)

                    ; #66581: <==closure== 33309 (pos)
                    (Pb_survivorat_s_p8)

                    ; #75460: <==closure== 14110 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21901: <==negation-removal== 66581 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #38831: <==negation-removal== 44237 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #52820: <==negation-removal== 11302 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #62613: <==negation-removal== 14110 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #73822: <==negation-removal== 33309 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #84312: <==negation-removal== 75460 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #13948: origin
                    (Ba_survivorat_s_p9)

                    ; #19803: <==closure== 24113 (pos)
                    (Pc_survivorat_s_p9)

                    ; #24113: origin
                    (Bc_survivorat_s_p9)

                    ; #37218: <==closure== 65803 (pos)
                    (Pb_survivorat_s_p9)

                    ; #65803: origin
                    (Bb_survivorat_s_p9)

                    ; #72370: <==closure== 13948 (pos)
                    (Pa_survivorat_s_p9)

                    ; #39126: <==negation-removal== 19803 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #62090: <==negation-removal== 72370 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #74164: <==negation-removal== 13948 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #74475: <==negation-removal== 65803 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #76477: <==negation-removal== 37218 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79640: <==negation-removal== 24113 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #13948: origin
                    (Ba_survivorat_s_p9)

                    ; #19803: <==closure== 24113 (pos)
                    (Pc_survivorat_s_p9)

                    ; #24113: origin
                    (Bc_survivorat_s_p9)

                    ; #37218: <==closure== 65803 (pos)
                    (Pb_survivorat_s_p9)

                    ; #65803: origin
                    (Bb_survivorat_s_p9)

                    ; #72370: <==closure== 13948 (pos)
                    (Pa_survivorat_s_p9)

                    ; #39126: <==negation-removal== 19803 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #62090: <==negation-removal== 72370 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #74164: <==negation-removal== 13948 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #74475: <==negation-removal== 65803 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #76477: <==negation-removal== 37218 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79640: <==negation-removal== 24113 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #13948: origin
                    (Ba_survivorat_s_p9)

                    ; #19803: <==closure== 24113 (pos)
                    (Pc_survivorat_s_p9)

                    ; #24113: origin
                    (Bc_survivorat_s_p9)

                    ; #37218: <==closure== 65803 (pos)
                    (Pb_survivorat_s_p9)

                    ; #65803: origin
                    (Bb_survivorat_s_p9)

                    ; #72370: <==closure== 13948 (pos)
                    (Pa_survivorat_s_p9)

                    ; #39126: <==negation-removal== 19803 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #62090: <==negation-removal== 72370 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #74164: <==negation-removal== 13948 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #74475: <==negation-removal== 65803 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #76477: <==negation-removal== 37218 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #79640: <==negation-removal== 24113 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #31184: origin
                    (at_a_p10)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #19416: origin
                    (not_at_a_p10)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #83192: origin
                    (at_a_p12)

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #47467: origin
                    (at_a_p2)

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #83579: origin
                    (at_a_p3)

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #75732: origin
                    (at_a_p4)

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #44765: origin
                    (at_a_p5)

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #69445: origin
                    (at_a_p6)

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #19416: origin
                    (not_at_a_p10)

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #80883: origin
                    (at_a_p8)

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #19416: origin
                    (not_at_a_p10)

                    ; #87790: origin
                    (at_a_p9)

                    ; #31184: <==negation-removal== 19416 (pos)
                    (not (at_a_p10))

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #31184: origin
                    (at_a_p10)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #19219: origin
                    (at_a_p11)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #83192: origin
                    (at_a_p12)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #47467: origin
                    (at_a_p2)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #83579: origin
                    (at_a_p3)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #75732: origin
                    (at_a_p4)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #44765: origin
                    (at_a_p5)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #69445: origin
                    (at_a_p6)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #18779: origin
                    (at_a_p7)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #80883: origin
                    (at_a_p8)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #12476: origin
                    (not_at_a_p11)

                    ; #87790: origin
                    (at_a_p9)

                    ; #19219: <==negation-removal== 12476 (pos)
                    (not (at_a_p11))

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #44302: origin
                    (not_at_a_p12)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #31184: origin
                    (at_a_p10)

                    ; #44302: origin
                    (not_at_a_p12)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #44302: origin
                    (not_at_a_p12)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #44302: origin
                    (not_at_a_p12)

                    ; #83192: origin
                    (at_a_p12)

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #44302: origin
                    (not_at_a_p12)

                    ; #47467: origin
                    (at_a_p2)

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #44302: origin
                    (not_at_a_p12)

                    ; #83579: origin
                    (at_a_p3)

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #44302: origin
                    (not_at_a_p12)

                    ; #75732: origin
                    (at_a_p4)

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #44302: origin
                    (not_at_a_p12)

                    ; #44765: origin
                    (at_a_p5)

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #44302: origin
                    (not_at_a_p12)

                    ; #69445: origin
                    (at_a_p6)

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #44302: origin
                    (not_at_a_p12)

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #44302: origin
                    (not_at_a_p12)

                    ; #80883: origin
                    (at_a_p8)

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #44302: origin
                    (not_at_a_p12)

                    ; #87790: origin
                    (at_a_p9)

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))

                    ; #83192: <==negation-removal== 44302 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #31184: origin
                    (at_a_p10)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #19219: origin
                    (at_a_p11)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #83192: origin
                    (at_a_p12)

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #47467: origin
                    (at_a_p2)

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #83579: origin
                    (at_a_p3)

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #75732: origin
                    (at_a_p4)

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #44765: origin
                    (at_a_p5)

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #69445: origin
                    (at_a_p6)

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #18779: origin
                    (at_a_p7)

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #80883: origin
                    (at_a_p8)

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #14219: origin
                    (not_at_a_p1)

                    ; #87790: origin
                    (at_a_p9)

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))

                    ; #89860: <==negation-removal== 14219 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #74794: origin
                    (not_at_a_p2)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #31184: origin
                    (at_a_p10)

                    ; #74794: origin
                    (not_at_a_p2)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #74794: origin
                    (not_at_a_p2)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #74794: origin
                    (not_at_a_p2)

                    ; #83192: origin
                    (at_a_p12)

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #47467: origin
                    (at_a_p2)

                    ; #74794: origin
                    (not_at_a_p2)

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #74794: origin
                    (not_at_a_p2)

                    ; #83579: origin
                    (at_a_p3)

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #74794: origin
                    (not_at_a_p2)

                    ; #75732: origin
                    (at_a_p4)

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #44765: origin
                    (at_a_p5)

                    ; #74794: origin
                    (not_at_a_p2)

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #69445: origin
                    (at_a_p6)

                    ; #74794: origin
                    (not_at_a_p2)

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #74794: origin
                    (not_at_a_p2)

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #74794: origin
                    (not_at_a_p2)

                    ; #80883: origin
                    (at_a_p8)

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #74794: origin
                    (not_at_a_p2)

                    ; #87790: origin
                    (at_a_p9)

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))

                    ; #47467: <==negation-removal== 74794 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #54246: origin
                    (not_at_a_p3)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #31184: origin
                    (at_a_p10)

                    ; #54246: origin
                    (not_at_a_p3)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #54246: origin
                    (not_at_a_p3)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #54246: origin
                    (not_at_a_p3)

                    ; #83192: origin
                    (at_a_p12)

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #47467: origin
                    (at_a_p2)

                    ; #54246: origin
                    (not_at_a_p3)

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #54246: origin
                    (not_at_a_p3)

                    ; #83579: origin
                    (at_a_p3)

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #54246: origin
                    (not_at_a_p3)

                    ; #75732: origin
                    (at_a_p4)

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #44765: origin
                    (at_a_p5)

                    ; #54246: origin
                    (not_at_a_p3)

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #54246: origin
                    (not_at_a_p3)

                    ; #69445: origin
                    (at_a_p6)

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #54246: origin
                    (not_at_a_p3)

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #54246: origin
                    (not_at_a_p3)

                    ; #80883: origin
                    (at_a_p8)

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #54246: origin
                    (not_at_a_p3)

                    ; #87790: origin
                    (at_a_p9)

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))

                    ; #83579: <==negation-removal== 54246 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #36265: origin
                    (not_at_a_p4)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #31184: origin
                    (at_a_p10)

                    ; #36265: origin
                    (not_at_a_p4)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #36265: origin
                    (not_at_a_p4)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #36265: origin
                    (not_at_a_p4)

                    ; #83192: origin
                    (at_a_p12)

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #36265: origin
                    (not_at_a_p4)

                    ; #47467: origin
                    (at_a_p2)

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #36265: origin
                    (not_at_a_p4)

                    ; #83579: origin
                    (at_a_p3)

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #36265: origin
                    (not_at_a_p4)

                    ; #75732: origin
                    (at_a_p4)

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #36265: origin
                    (not_at_a_p4)

                    ; #44765: origin
                    (at_a_p5)

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #36265: origin
                    (not_at_a_p4)

                    ; #69445: origin
                    (at_a_p6)

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #36265: origin
                    (not_at_a_p4)

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #36265: origin
                    (not_at_a_p4)

                    ; #80883: origin
                    (at_a_p8)

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #36265: origin
                    (not_at_a_p4)

                    ; #87790: origin
                    (at_a_p9)

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))

                    ; #75732: <==negation-removal== 36265 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #32197: origin
                    (not_at_a_p5)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #31184: origin
                    (at_a_p10)

                    ; #32197: origin
                    (not_at_a_p5)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #32197: origin
                    (not_at_a_p5)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #32197: origin
                    (not_at_a_p5)

                    ; #83192: origin
                    (at_a_p12)

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #32197: origin
                    (not_at_a_p5)

                    ; #47467: origin
                    (at_a_p2)

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #32197: origin
                    (not_at_a_p5)

                    ; #83579: origin
                    (at_a_p3)

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #32197: origin
                    (not_at_a_p5)

                    ; #75732: origin
                    (at_a_p4)

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #32197: origin
                    (not_at_a_p5)

                    ; #44765: origin
                    (at_a_p5)

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #32197: origin
                    (not_at_a_p5)

                    ; #69445: origin
                    (at_a_p6)

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #32197: origin
                    (not_at_a_p5)

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #32197: origin
                    (not_at_a_p5)

                    ; #80883: origin
                    (at_a_p8)

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #32197: origin
                    (not_at_a_p5)

                    ; #87790: origin
                    (at_a_p9)

                    ; #44765: <==negation-removal== 32197 (pos)
                    (not (at_a_p5))

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #53270: origin
                    (not_at_a_p6)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #31184: origin
                    (at_a_p10)

                    ; #53270: origin
                    (not_at_a_p6)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #53270: origin
                    (not_at_a_p6)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #53270: origin
                    (not_at_a_p6)

                    ; #83192: origin
                    (at_a_p12)

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #47467: origin
                    (at_a_p2)

                    ; #53270: origin
                    (not_at_a_p6)

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #53270: origin
                    (not_at_a_p6)

                    ; #83579: origin
                    (at_a_p3)

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #53270: origin
                    (not_at_a_p6)

                    ; #75732: origin
                    (at_a_p4)

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #44765: origin
                    (at_a_p5)

                    ; #53270: origin
                    (not_at_a_p6)

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #53270: origin
                    (not_at_a_p6)

                    ; #69445: origin
                    (at_a_p6)

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #53270: origin
                    (not_at_a_p6)

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #53270: origin
                    (not_at_a_p6)

                    ; #80883: origin
                    (at_a_p8)

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #53270: origin
                    (not_at_a_p6)

                    ; #87790: origin
                    (at_a_p9)

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))

                    ; #69445: <==negation-removal== 53270 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #35032: origin
                    (not_at_a_p7)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #31184: origin
                    (at_a_p10)

                    ; #35032: origin
                    (not_at_a_p7)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #35032: origin
                    (not_at_a_p7)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #35032: origin
                    (not_at_a_p7)

                    ; #83192: origin
                    (at_a_p12)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #35032: origin
                    (not_at_a_p7)

                    ; #47467: origin
                    (at_a_p2)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #35032: origin
                    (not_at_a_p7)

                    ; #83579: origin
                    (at_a_p3)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #35032: origin
                    (not_at_a_p7)

                    ; #75732: origin
                    (at_a_p4)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #35032: origin
                    (not_at_a_p7)

                    ; #44765: origin
                    (at_a_p5)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #35032: origin
                    (not_at_a_p7)

                    ; #69445: origin
                    (at_a_p6)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #35032: origin
                    (not_at_a_p7)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #35032: origin
                    (not_at_a_p7)

                    ; #80883: origin
                    (at_a_p8)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #35032: origin
                    (not_at_a_p7)

                    ; #87790: origin
                    (at_a_p9)

                    ; #18779: <==negation-removal== 35032 (pos)
                    (not (at_a_p7))

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #32183: origin
                    (not_at_a_p8)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #31184: origin
                    (at_a_p10)

                    ; #32183: origin
                    (not_at_a_p8)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #32183: origin
                    (not_at_a_p8)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #32183: origin
                    (not_at_a_p8)

                    ; #83192: origin
                    (at_a_p12)

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #32183: origin
                    (not_at_a_p8)

                    ; #47467: origin
                    (at_a_p2)

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #32183: origin
                    (not_at_a_p8)

                    ; #83579: origin
                    (at_a_p3)

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #32183: origin
                    (not_at_a_p8)

                    ; #75732: origin
                    (at_a_p4)

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #32183: origin
                    (not_at_a_p8)

                    ; #44765: origin
                    (at_a_p5)

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #32183: origin
                    (not_at_a_p8)

                    ; #69445: origin
                    (at_a_p6)

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #32183: origin
                    (not_at_a_p8)

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #32183: origin
                    (not_at_a_p8)

                    ; #80883: origin
                    (at_a_p8)

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #32183: origin
                    (not_at_a_p8)

                    ; #87790: origin
                    (at_a_p9)

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))

                    ; #80883: <==negation-removal== 32183 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #45631: origin
                    (not_at_a_p9)

                    ; #89860: origin
                    (at_a_p1)

                    ; #14219: <==negation-removal== 89860 (pos)
                    (not (not_at_a_p1))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #31184: origin
                    (at_a_p10)

                    ; #45631: origin
                    (not_at_a_p9)

                    ; #19416: <==negation-removal== 31184 (pos)
                    (not (not_at_a_p10))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #19219: origin
                    (at_a_p11)

                    ; #45631: origin
                    (not_at_a_p9)

                    ; #12476: <==negation-removal== 19219 (pos)
                    (not (not_at_a_p11))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #45631: origin
                    (not_at_a_p9)

                    ; #83192: origin
                    (at_a_p12)

                    ; #44302: <==negation-removal== 83192 (pos)
                    (not (not_at_a_p12))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #45631: origin
                    (not_at_a_p9)

                    ; #47467: origin
                    (at_a_p2)

                    ; #74794: <==negation-removal== 47467 (pos)
                    (not (not_at_a_p2))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #45631: origin
                    (not_at_a_p9)

                    ; #83579: origin
                    (at_a_p3)

                    ; #54246: <==negation-removal== 83579 (pos)
                    (not (not_at_a_p3))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #45631: origin
                    (not_at_a_p9)

                    ; #75732: origin
                    (at_a_p4)

                    ; #36265: <==negation-removal== 75732 (pos)
                    (not (not_at_a_p4))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #44765: origin
                    (at_a_p5)

                    ; #45631: origin
                    (not_at_a_p9)

                    ; #32197: <==negation-removal== 44765 (pos)
                    (not (not_at_a_p5))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #45631: origin
                    (not_at_a_p9)

                    ; #69445: origin
                    (at_a_p6)

                    ; #53270: <==negation-removal== 69445 (pos)
                    (not (not_at_a_p6))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #18779: origin
                    (at_a_p7)

                    ; #45631: origin
                    (not_at_a_p9)

                    ; #35032: <==negation-removal== 18779 (pos)
                    (not (not_at_a_p7))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #45631: origin
                    (not_at_a_p9)

                    ; #80883: origin
                    (at_a_p8)

                    ; #32183: <==negation-removal== 80883 (pos)
                    (not (not_at_a_p8))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #45631: origin
                    (not_at_a_p9)

                    ; #87790: origin
                    (at_a_p9)

                    ; #45631: <==negation-removal== 87790 (pos)
                    (not (not_at_a_p9))

                    ; #87790: <==negation-removal== 45631 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #55412: origin
                    (at_b_p1)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #31612: origin
                    (at_b_p10)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #29774: origin
                    (not_at_b_p10)

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #53694: origin
                    (at_b_p12)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #34766: origin
                    (at_b_p2)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #74589: origin
                    (at_b_p3)

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #46930: origin
                    (at_b_p5)

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #67047: origin
                    (at_b_p6)

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #33576: origin
                    (at_b_p7)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #70040: origin
                    (at_b_p8)

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #29774: origin
                    (not_at_b_p10)

                    ; #32950: origin
                    (at_b_p9)

                    ; #31612: <==negation-removal== 29774 (pos)
                    (not (at_b_p10))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #55412: origin
                    (at_b_p1)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #31612: origin
                    (at_b_p10)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #53694: origin
                    (at_b_p12)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #34766: origin
                    (at_b_p2)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #74589: origin
                    (at_b_p3)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #87484: origin
                    (at_b_p4)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #46930: origin
                    (at_b_p5)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #67047: origin
                    (at_b_p6)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #33576: origin
                    (at_b_p7)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #70040: origin
                    (at_b_p8)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #32950: origin
                    (at_b_p9)

                    ; #91246: origin
                    (not_at_b_p11)

                    ; #11035: <==negation-removal== 91246 (pos)
                    (not (at_b_p11))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #55412: origin
                    (at_b_p1)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #31612: origin
                    (at_b_p10)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #24502: origin
                    (not_at_b_p12)

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #53694: origin
                    (at_b_p12)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #34766: origin
                    (at_b_p2)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #74589: origin
                    (at_b_p3)

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #46930: origin
                    (at_b_p5)

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #67047: origin
                    (at_b_p6)

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #33576: origin
                    (at_b_p7)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #70040: origin
                    (at_b_p8)

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #24502: origin
                    (not_at_b_p12)

                    ; #32950: origin
                    (at_b_p9)

                    ; #53694: <==negation-removal== 24502 (pos)
                    (not (at_b_p12))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #55412: origin
                    (at_b_p1)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #31612: origin
                    (at_b_p10)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #15025: origin
                    (not_at_b_p1)

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #53694: origin
                    (at_b_p12)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #34766: origin
                    (at_b_p2)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #74589: origin
                    (at_b_p3)

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #46930: origin
                    (at_b_p5)

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #67047: origin
                    (at_b_p6)

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #33576: origin
                    (at_b_p7)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #70040: origin
                    (at_b_p8)

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #15025: origin
                    (not_at_b_p1)

                    ; #32950: origin
                    (at_b_p9)

                    ; #55412: <==negation-removal== 15025 (pos)
                    (not (at_b_p1))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #55412: origin
                    (at_b_p1)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #31612: origin
                    (at_b_p10)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #28039: origin
                    (not_at_b_p2)

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #53694: origin
                    (at_b_p12)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #34766: origin
                    (at_b_p2)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #74589: origin
                    (at_b_p3)

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #46930: origin
                    (at_b_p5)

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #67047: origin
                    (at_b_p6)

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #33576: origin
                    (at_b_p7)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #70040: origin
                    (at_b_p8)

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #28039: origin
                    (not_at_b_p2)

                    ; #32950: origin
                    (at_b_p9)

                    ; #34766: <==negation-removal== 28039 (pos)
                    (not (at_b_p2))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #39587: origin
                    (not_at_b_p3)

                    ; #55412: origin
                    (at_b_p1)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #31612: origin
                    (at_b_p10)

                    ; #39587: origin
                    (not_at_b_p3)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #39587: origin
                    (not_at_b_p3)

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #39587: origin
                    (not_at_b_p3)

                    ; #53694: origin
                    (at_b_p12)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #34766: origin
                    (at_b_p2)

                    ; #39587: origin
                    (not_at_b_p3)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #39587: origin
                    (not_at_b_p3)

                    ; #74589: origin
                    (at_b_p3)

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #39587: origin
                    (not_at_b_p3)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #39587: origin
                    (not_at_b_p3)

                    ; #46930: origin
                    (at_b_p5)

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #39587: origin
                    (not_at_b_p3)

                    ; #67047: origin
                    (at_b_p6)

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #33576: origin
                    (at_b_p7)

                    ; #39587: origin
                    (not_at_b_p3)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #39587: origin
                    (not_at_b_p3)

                    ; #70040: origin
                    (at_b_p8)

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #32950: origin
                    (at_b_p9)

                    ; #39587: origin
                    (not_at_b_p3)

                    ; #74589: <==negation-removal== 39587 (pos)
                    (not (at_b_p3))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #55412: origin
                    (at_b_p1)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #31612: origin
                    (at_b_p10)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #25352: origin
                    (not_at_b_p4)

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #53694: origin
                    (at_b_p12)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #34766: origin
                    (at_b_p2)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #74589: origin
                    (at_b_p3)

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #46930: origin
                    (at_b_p5)

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #67047: origin
                    (at_b_p6)

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #33576: origin
                    (at_b_p7)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #70040: origin
                    (at_b_p8)

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #25352: origin
                    (not_at_b_p4)

                    ; #32950: origin
                    (at_b_p9)

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))

                    ; #87484: <==negation-removal== 25352 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #55412: origin
                    (at_b_p1)

                    ; #63232: origin
                    (not_at_b_p5)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #31612: origin
                    (at_b_p10)

                    ; #63232: origin
                    (not_at_b_p5)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #63232: origin
                    (not_at_b_p5)

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #53694: origin
                    (at_b_p12)

                    ; #63232: origin
                    (not_at_b_p5)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #34766: origin
                    (at_b_p2)

                    ; #63232: origin
                    (not_at_b_p5)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #63232: origin
                    (not_at_b_p5)

                    ; #74589: origin
                    (at_b_p3)

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #63232: origin
                    (not_at_b_p5)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #46930: origin
                    (at_b_p5)

                    ; #63232: origin
                    (not_at_b_p5)

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #63232: origin
                    (not_at_b_p5)

                    ; #67047: origin
                    (at_b_p6)

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #33576: origin
                    (at_b_p7)

                    ; #63232: origin
                    (not_at_b_p5)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #63232: origin
                    (not_at_b_p5)

                    ; #70040: origin
                    (at_b_p8)

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #32950: origin
                    (at_b_p9)

                    ; #63232: origin
                    (not_at_b_p5)

                    ; #46930: <==negation-removal== 63232 (pos)
                    (not (at_b_p5))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #55412: origin
                    (at_b_p1)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #31612: origin
                    (at_b_p10)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #53694: origin
                    (at_b_p12)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #34766: origin
                    (at_b_p2)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #74589: origin
                    (at_b_p3)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #82082: origin
                    (not_at_b_p6)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #46930: origin
                    (at_b_p5)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #67047: origin
                    (at_b_p6)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #33576: origin
                    (at_b_p7)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #70040: origin
                    (at_b_p8)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #32950: origin
                    (at_b_p9)

                    ; #82082: origin
                    (not_at_b_p6)

                    ; #67047: <==negation-removal== 82082 (pos)
                    (not (at_b_p6))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #55412: origin
                    (at_b_p1)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #31612: origin
                    (at_b_p10)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #18236: origin
                    (not_at_b_p7)

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #53694: origin
                    (at_b_p12)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #34766: origin
                    (at_b_p2)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #74589: origin
                    (at_b_p3)

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #46930: origin
                    (at_b_p5)

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #67047: origin
                    (at_b_p6)

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #33576: origin
                    (at_b_p7)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #70040: origin
                    (at_b_p8)

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #18236: origin
                    (not_at_b_p7)

                    ; #32950: origin
                    (at_b_p9)

                    ; #33576: <==negation-removal== 18236 (pos)
                    (not (at_b_p7))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #47239: origin
                    (not_at_b_p8)

                    ; #55412: origin
                    (at_b_p1)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #31612: origin
                    (at_b_p10)

                    ; #47239: origin
                    (not_at_b_p8)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #47239: origin
                    (not_at_b_p8)

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #47239: origin
                    (not_at_b_p8)

                    ; #53694: origin
                    (at_b_p12)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #34766: origin
                    (at_b_p2)

                    ; #47239: origin
                    (not_at_b_p8)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #47239: origin
                    (not_at_b_p8)

                    ; #74589: origin
                    (at_b_p3)

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #47239: origin
                    (not_at_b_p8)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #46930: origin
                    (at_b_p5)

                    ; #47239: origin
                    (not_at_b_p8)

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #47239: origin
                    (not_at_b_p8)

                    ; #67047: origin
                    (at_b_p6)

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #33576: origin
                    (at_b_p7)

                    ; #47239: origin
                    (not_at_b_p8)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #47239: origin
                    (not_at_b_p8)

                    ; #70040: origin
                    (at_b_p8)

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #32950: origin
                    (at_b_p9)

                    ; #47239: origin
                    (not_at_b_p8)

                    ; #70040: <==negation-removal== 47239 (pos)
                    (not (at_b_p8))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #55412: origin
                    (at_b_p1)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #15025: <==negation-removal== 55412 (pos)
                    (not (not_at_b_p1))

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #31612: origin
                    (at_b_p10)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #29774: <==negation-removal== 31612 (pos)
                    (not (not_at_b_p10))

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #11035: origin
                    (at_b_p11)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))

                    ; #91246: <==negation-removal== 11035 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #53694: origin
                    (at_b_p12)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #24502: <==negation-removal== 53694 (pos)
                    (not (not_at_b_p12))

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #34766: origin
                    (at_b_p2)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #28039: <==negation-removal== 34766 (pos)
                    (not (not_at_b_p2))

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #74589: origin
                    (at_b_p3)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))

                    ; #39587: <==negation-removal== 74589 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #81121: origin
                    (not_at_b_p9)

                    ; #87484: origin
                    (at_b_p4)

                    ; #25352: <==negation-removal== 87484 (pos)
                    (not (not_at_b_p4))

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #46930: origin
                    (at_b_p5)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))

                    ; #63232: <==negation-removal== 46930 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #67047: origin
                    (at_b_p6)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))

                    ; #82082: <==negation-removal== 67047 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #33576: origin
                    (at_b_p7)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #18236: <==negation-removal== 33576 (pos)
                    (not (not_at_b_p7))

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #70040: origin
                    (at_b_p8)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))

                    ; #47239: <==negation-removal== 70040 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #32950: origin
                    (at_b_p9)

                    ; #81121: origin
                    (not_at_b_p9)

                    ; #32950: <==negation-removal== 81121 (pos)
                    (not (at_b_p9))

                    ; #81121: <==negation-removal== 32950 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #54651: origin
                    (not_at_c_p10)

                    ; #56182: origin
                    (at_c_p1)

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #54651: origin
                    (not_at_c_p10)

                    ; #92052: origin
                    (at_c_p10)

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #54651: origin
                    (not_at_c_p10)

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #54651: origin
                    (not_at_c_p10)

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #54651: origin
                    (not_at_c_p10)

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #54651: origin
                    (not_at_c_p10)

                    ; #59589: origin
                    (at_c_p3)

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #54651: origin
                    (not_at_c_p10)

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #54651: origin
                    (not_at_c_p10)

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #54651: origin
                    (not_at_c_p10)

                    ; #83850: origin
                    (at_c_p6)

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #54651: origin
                    (not_at_c_p10)

                    ; #69202: origin
                    (at_c_p7)

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #54651: origin
                    (not_at_c_p10)

                    ; #54801: origin
                    (at_c_p8)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #54651: origin
                    (not_at_c_p10)

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))

                    ; #92052: <==negation-removal== 54651 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #56182: origin
                    (at_c_p1)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #83435: origin
                    (not_at_c_p11)

                    ; #92052: origin
                    (at_c_p10)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #59589: origin
                    (at_c_p3)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #83435: origin
                    (not_at_c_p11)

                    ; #83850: origin
                    (at_c_p6)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #69202: origin
                    (at_c_p7)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #54801: origin
                    (at_c_p8)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #83435: origin
                    (not_at_c_p11)

                    ; #36165: <==negation-removal== 83435 (pos)
                    (not (at_c_p11))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #48721: origin
                    (not_at_c_p12)

                    ; #56182: origin
                    (at_c_p1)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #48721: origin
                    (not_at_c_p12)

                    ; #92052: origin
                    (at_c_p10)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #48721: origin
                    (not_at_c_p12)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #48721: origin
                    (not_at_c_p12)

                    ; #49712: origin
                    (at_c_p12)

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #48721: origin
                    (not_at_c_p12)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #48721: origin
                    (not_at_c_p12)

                    ; #59589: origin
                    (at_c_p3)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #48721: origin
                    (not_at_c_p12)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #48721: origin
                    (not_at_c_p12)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #48721: origin
                    (not_at_c_p12)

                    ; #83850: origin
                    (at_c_p6)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #48721: origin
                    (not_at_c_p12)

                    ; #69202: origin
                    (at_c_p7)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #48721: origin
                    (not_at_c_p12)

                    ; #54801: origin
                    (at_c_p8)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #48721: origin
                    (not_at_c_p12)

                    ; #49712: <==negation-removal== 48721 (pos)
                    (not (at_c_p12))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #56182: origin
                    (at_c_p1)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #71758: origin
                    (not_at_c_p1)

                    ; #92052: origin
                    (at_c_p10)

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #59589: origin
                    (at_c_p3)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #71758: origin
                    (not_at_c_p1)

                    ; #83850: origin
                    (at_c_p6)

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #69202: origin
                    (at_c_p7)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #54801: origin
                    (at_c_p8)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #71758: origin
                    (not_at_c_p1)

                    ; #56182: <==negation-removal== 71758 (pos)
                    (not (at_c_p1))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #56182: origin
                    (at_c_p1)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #78221: origin
                    (not_at_c_p2)

                    ; #92052: origin
                    (at_c_p10)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #59589: origin
                    (at_c_p3)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #78221: origin
                    (not_at_c_p2)

                    ; #83850: origin
                    (at_c_p6)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #69202: origin
                    (at_c_p7)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #54801: origin
                    (at_c_p8)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #78221: origin
                    (not_at_c_p2)

                    ; #26157: <==negation-removal== 78221 (pos)
                    (not (at_c_p2))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #56182: origin
                    (at_c_p1)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #85516: origin
                    (not_at_c_p3)

                    ; #92052: origin
                    (at_c_p10)

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #59589: origin
                    (at_c_p3)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #83850: origin
                    (at_c_p6)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #69202: origin
                    (at_c_p7)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #54801: origin
                    (at_c_p8)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #85516: origin
                    (not_at_c_p3)

                    ; #59589: <==negation-removal== 85516 (pos)
                    (not (at_c_p3))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #56182: origin
                    (at_c_p1)

                    ; #66005: origin
                    (not_at_c_p4)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #66005: origin
                    (not_at_c_p4)

                    ; #92052: origin
                    (at_c_p10)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #66005: origin
                    (not_at_c_p4)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #66005: origin
                    (not_at_c_p4)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #66005: origin
                    (not_at_c_p4)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #59589: origin
                    (at_c_p3)

                    ; #66005: origin
                    (not_at_c_p4)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #66005: origin
                    (not_at_c_p4)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #66005: origin
                    (not_at_c_p4)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #66005: origin
                    (not_at_c_p4)

                    ; #83850: origin
                    (at_c_p6)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #66005: origin
                    (not_at_c_p4)

                    ; #69202: origin
                    (at_c_p7)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #54801: origin
                    (at_c_p8)

                    ; #66005: origin
                    (not_at_c_p4)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #66005: origin
                    (not_at_c_p4)

                    ; #26730: <==negation-removal== 66005 (pos)
                    (not (at_c_p4))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #56182: origin
                    (at_c_p1)

                    ; #68361: origin
                    (not_at_c_p5)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #68361: origin
                    (not_at_c_p5)

                    ; #92052: origin
                    (at_c_p10)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #68361: origin
                    (not_at_c_p5)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #68361: origin
                    (not_at_c_p5)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #68361: origin
                    (not_at_c_p5)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #59589: origin
                    (at_c_p3)

                    ; #68361: origin
                    (not_at_c_p5)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #68361: origin
                    (not_at_c_p5)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #68361: origin
                    (not_at_c_p5)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #68361: origin
                    (not_at_c_p5)

                    ; #83850: origin
                    (at_c_p6)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #68361: origin
                    (not_at_c_p5)

                    ; #69202: origin
                    (at_c_p7)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #54801: origin
                    (at_c_p8)

                    ; #68361: origin
                    (not_at_c_p5)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #68361: origin
                    (not_at_c_p5)

                    ; #13114: <==negation-removal== 68361 (pos)
                    (not (at_c_p5))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #56182: origin
                    (at_c_p1)

                    ; #60858: origin
                    (not_at_c_p6)

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #60858: origin
                    (not_at_c_p6)

                    ; #92052: origin
                    (at_c_p10)

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #60858: origin
                    (not_at_c_p6)

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #60858: origin
                    (not_at_c_p6)

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #60858: origin
                    (not_at_c_p6)

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #59589: origin
                    (at_c_p3)

                    ; #60858: origin
                    (not_at_c_p6)

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #60858: origin
                    (not_at_c_p6)

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #60858: origin
                    (not_at_c_p6)

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #60858: origin
                    (not_at_c_p6)

                    ; #83850: origin
                    (at_c_p6)

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #60858: origin
                    (not_at_c_p6)

                    ; #69202: origin
                    (at_c_p7)

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #54801: origin
                    (at_c_p8)

                    ; #60858: origin
                    (not_at_c_p6)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #60858: origin
                    (not_at_c_p6)

                    ; #83850: <==negation-removal== 60858 (pos)
                    (not (at_c_p6))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #56182: origin
                    (at_c_p1)

                    ; #68197: origin
                    (not_at_c_p7)

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #68197: origin
                    (not_at_c_p7)

                    ; #92052: origin
                    (at_c_p10)

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #68197: origin
                    (not_at_c_p7)

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #68197: origin
                    (not_at_c_p7)

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #68197: origin
                    (not_at_c_p7)

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #59589: origin
                    (at_c_p3)

                    ; #68197: origin
                    (not_at_c_p7)

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #68197: origin
                    (not_at_c_p7)

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #68197: origin
                    (not_at_c_p7)

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #68197: origin
                    (not_at_c_p7)

                    ; #83850: origin
                    (at_c_p6)

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #68197: origin
                    (not_at_c_p7)

                    ; #69202: origin
                    (at_c_p7)

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #54801: origin
                    (at_c_p8)

                    ; #68197: origin
                    (not_at_c_p7)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #68197: origin
                    (not_at_c_p7)

                    ; #69202: <==negation-removal== 68197 (pos)
                    (not (at_c_p7))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #56182: origin
                    (at_c_p1)

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #92052: origin
                    (at_c_p10)

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #36165: origin
                    (at_c_p11)

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #49712: origin
                    (at_c_p12)

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #26157: origin
                    (at_c_p2)

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #59589: origin
                    (at_c_p3)

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #26730: origin
                    (at_c_p4)

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #13114: origin
                    (at_c_p5)

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #83850: origin
                    (at_c_p6)

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #69202: origin
                    (at_c_p7)

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #54801: origin
                    (at_c_p8)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #12880: origin
                    (not_at_c_p8)

                    ; #40113: origin
                    (at_c_p9)

                    ; #54801: <==negation-removal== 12880 (pos)
                    (not (at_c_p8))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #56182: origin
                    (at_c_p1)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #71758: <==negation-removal== 56182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #87492: origin
                    (not_at_c_p9)

                    ; #92052: origin
                    (at_c_p10)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #54651: <==negation-removal== 92052 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #36165: origin
                    (at_c_p11)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #83435: <==negation-removal== 36165 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #49712: origin
                    (at_c_p12)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #48721: <==negation-removal== 49712 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #26157: origin
                    (at_c_p2)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #78221: <==negation-removal== 26157 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #59589: origin
                    (at_c_p3)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #85516: <==negation-removal== 59589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #26730: origin
                    (at_c_p4)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #66005: <==negation-removal== 26730 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #13114: origin
                    (at_c_p5)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #68361: <==negation-removal== 13114 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #83850: origin
                    (at_c_p6)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #60858: <==negation-removal== 83850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #69202: origin
                    (at_c_p7)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #68197: <==negation-removal== 69202 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #54801: origin
                    (at_c_p8)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #12880: <==negation-removal== 54801 (pos)
                    (not (not_at_c_p8))

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #40113: origin
                    (at_c_p9)

                    ; #87492: origin
                    (not_at_c_p9)

                    ; #40113: <==negation-removal== 87492 (pos)
                    (not (at_c_p9))

                    ; #87492: <==negation-removal== 40113 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #25685: <==commonly_known== 54303 (neg)
                    (Pb_checked_p10)

                    ; #33117: <==commonly_known== 42933 (pos)
                    (Bc_checked_p10)

                    ; #39051: <==closure== 86603 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #40526: <==commonly_known== 54303 (neg)
                    (Pc_checked_p10)

                    ; #41703: <==commonly_known== 42933 (pos)
                    (Ba_checked_p10)

                    ; #42933: origin
                    (checked_p10)

                    ; #54236: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #65834: <==closure== 54236 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #75111: <==commonly_known== 42933 (pos)
                    (Bb_checked_p10)

                    ; #86603: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #86636: <==commonly_known== 54303 (neg)
                    (Pa_checked_p10)

                    ; #19770: <==negation-removal== 40526 (pos)
                    (not (Bc_not_checked_p10))

                    ; #20094: <==negation-removal== 86636 (pos)
                    (not (Ba_not_checked_p10))

                    ; #20656: <==negation-removal== 54236 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #38063: <==negation-removal== 41703 (pos)
                    (not (Pa_not_checked_p10))

                    ; #45407: <==uncertain_firing== 86603 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #46094: <==negation-removal== 33117 (pos)
                    (not (Pc_not_checked_p10))

                    ; #47006: <==negation-removal== 86603 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #47031: <==uncertain_firing== 54236 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #47128: <==uncertain_firing== 65834 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #54303: <==negation-removal== 42933 (pos)
                    (not (not_checked_p10))

                    ; #55637: <==negation-removal== 39051 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #56363: <==uncertain_firing== 39051 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #62258: <==negation-removal== 25685 (pos)
                    (not (Bb_not_checked_p10))

                    ; #75686: <==negation-removal== 75111 (pos)
                    (not (Pb_not_checked_p10))

                    ; #86506: <==negation-removal== 65834 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15236: <==closure== 69228 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #25928: <==commonly_known== 11817 (neg)
                    (Pa_checked_p11)

                    ; #33168: <==closure== 72218 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #36242: <==commonly_known== 58840 (pos)
                    (Ba_checked_p11)

                    ; #43102: <==commonly_known== 11817 (neg)
                    (Pc_checked_p11)

                    ; #45404: <==commonly_known== 11817 (neg)
                    (Pb_checked_p11)

                    ; #58840: origin
                    (checked_p11)

                    ; #69228: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #72218: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #81917: <==commonly_known== 58840 (pos)
                    (Bc_checked_p11)

                    ; #87803: <==commonly_known== 58840 (pos)
                    (Bb_checked_p11)

                    ; #11817: <==negation-removal== 58840 (pos)
                    (not (not_checked_p11))

                    ; #12565: <==uncertain_firing== 72218 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #21080: <==uncertain_firing== 33168 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #26093: <==negation-removal== 33168 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #35974: <==negation-removal== 87803 (pos)
                    (not (Pb_not_checked_p11))

                    ; #37080: <==negation-removal== 43102 (pos)
                    (not (Bc_not_checked_p11))

                    ; #46372: <==uncertain_firing== 15236 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #47632: <==negation-removal== 15236 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #52239: <==negation-removal== 81917 (pos)
                    (not (Pc_not_checked_p11))

                    ; #52926: <==negation-removal== 72218 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #54042: <==uncertain_firing== 69228 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #56203: <==negation-removal== 25928 (pos)
                    (not (Ba_not_checked_p11))

                    ; #58932: <==negation-removal== 69228 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #64442: <==negation-removal== 36242 (pos)
                    (not (Pa_not_checked_p11))

                    ; #69879: <==negation-removal== 45404 (pos)
                    (not (Bb_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11460: <==commonly_known== 46758 (neg)
                    (Pa_checked_p12)

                    ; #11598: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #15095: <==commonly_known== 43951 (pos)
                    (Bb_checked_p12)

                    ; #28565: <==commonly_known== 43951 (pos)
                    (Ba_checked_p12)

                    ; #31404: <==commonly_known== 43951 (pos)
                    (Bc_checked_p12)

                    ; #42106: <==closure== 89155 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #43951: origin
                    (checked_p12)

                    ; #51701: <==commonly_known== 46758 (neg)
                    (Pb_checked_p12)

                    ; #63005: <==closure== 11598 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #86277: <==commonly_known== 46758 (neg)
                    (Pc_checked_p12)

                    ; #89155: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #22720: <==negation-removal== 86277 (pos)
                    (not (Bc_not_checked_p12))

                    ; #27709: <==negation-removal== 28565 (pos)
                    (not (Pa_not_checked_p12))

                    ; #31728: <==uncertain_firing== 42106 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #37879: <==uncertain_firing== 63005 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #42839: <==negation-removal== 63005 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #44399: <==negation-removal== 11598 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #45262: <==uncertain_firing== 11598 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #46758: <==negation-removal== 43951 (pos)
                    (not (not_checked_p12))

                    ; #59996: <==negation-removal== 15095 (pos)
                    (not (Pb_not_checked_p12))

                    ; #61884: <==negation-removal== 89155 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #72619: <==negation-removal== 42106 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #74022: <==uncertain_firing== 89155 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #78958: <==negation-removal== 31404 (pos)
                    (not (Pc_not_checked_p12))

                    ; #79600: <==negation-removal== 51701 (pos)
                    (not (Bb_not_checked_p12))

                    ; #93852: <==negation-removal== 11460 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13540: <==commonly_known== 87072 (neg)
                    (Pa_checked_p1)

                    ; #17126: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #17806: <==commonly_known== 87072 (neg)
                    (Pc_checked_p1)

                    ; #34158: <==commonly_known== 88091 (pos)
                    (Ba_checked_p1)

                    ; #43345: <==closure== 17126 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #49325: <==commonly_known== 87072 (neg)
                    (Pb_checked_p1)

                    ; #55120: <==commonly_known== 88091 (pos)
                    (Bc_checked_p1)

                    ; #77138: <==commonly_known== 88091 (pos)
                    (Bb_checked_p1)

                    ; #85242: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #88091: origin
                    (checked_p1)

                    ; #88142: <==closure== 85242 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #17566: <==negation-removal== 55120 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24654: <==negation-removal== 77138 (pos)
                    (not (Pb_not_checked_p1))

                    ; #25051: <==negation-removal== 17126 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #35657: <==negation-removal== 13540 (pos)
                    (not (Ba_not_checked_p1))

                    ; #44262: <==uncertain_firing== 17126 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #52112: <==negation-removal== 88142 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #58410: <==uncertain_firing== 43345 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58939: <==uncertain_firing== 88142 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #59684: <==negation-removal== 34158 (pos)
                    (not (Pa_not_checked_p1))

                    ; #69428: <==negation-removal== 17806 (pos)
                    (not (Bc_not_checked_p1))

                    ; #73973: <==negation-removal== 85242 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #74954: <==uncertain_firing== 85242 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #76066: <==negation-removal== 43345 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #83567: <==negation-removal== 49325 (pos)
                    (not (Bb_not_checked_p1))

                    ; #87072: <==negation-removal== 88091 (pos)
                    (not (not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11299: <==commonly_known== 33086 (pos)
                    (Bb_checked_p2)

                    ; #16429: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #18871: <==commonly_known== 38825 (neg)
                    (Pa_checked_p2)

                    ; #20425: <==commonly_known== 33086 (pos)
                    (Bc_checked_p2)

                    ; #28755: <==commonly_known== 38825 (neg)
                    (Pb_checked_p2)

                    ; #33086: origin
                    (checked_p2)

                    ; #54996: <==commonly_known== 33086 (pos)
                    (Ba_checked_p2)

                    ; #57041: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #63751: <==commonly_known== 38825 (neg)
                    (Pc_checked_p2)

                    ; #86634: <==closure== 57041 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #91216: <==closure== 16429 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #15226: <==negation-removal== 63751 (pos)
                    (not (Bc_not_checked_p2))

                    ; #21869: <==negation-removal== 16429 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #22258: <==negation-removal== 11299 (pos)
                    (not (Pb_not_checked_p2))

                    ; #23661: <==uncertain_firing== 91216 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27076: <==negation-removal== 91216 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #31595: <==negation-removal== 57041 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #34550: <==negation-removal== 18871 (pos)
                    (not (Ba_not_checked_p2))

                    ; #38429: <==uncertain_firing== 86634 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #38825: <==negation-removal== 33086 (pos)
                    (not (not_checked_p2))

                    ; #39723: <==negation-removal== 28755 (pos)
                    (not (Bb_not_checked_p2))

                    ; #50282: <==uncertain_firing== 57041 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #57583: <==negation-removal== 20425 (pos)
                    (not (Pc_not_checked_p2))

                    ; #59515: <==negation-removal== 86634 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #65585: <==uncertain_firing== 16429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #90598: <==negation-removal== 54996 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12765: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #18314: <==commonly_known== 88373 (pos)
                    (Bb_checked_p3)

                    ; #34660: <==commonly_known== 40520 (neg)
                    (Pb_checked_p3)

                    ; #36445: <==closure== 81143 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #41905: <==commonly_known== 40520 (neg)
                    (Pc_checked_p3)

                    ; #53459: <==commonly_known== 88373 (pos)
                    (Bc_checked_p3)

                    ; #53896: <==commonly_known== 40520 (neg)
                    (Pa_checked_p3)

                    ; #61428: <==commonly_known== 88373 (pos)
                    (Ba_checked_p3)

                    ; #81143: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #88373: origin
                    (checked_p3)

                    ; #91423: <==closure== 12765 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #15349: <==uncertain_firing== 81143 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #29911: <==negation-removal== 53459 (pos)
                    (not (Pc_not_checked_p3))

                    ; #31200: <==negation-removal== 81143 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #32855: <==negation-removal== 36445 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #34526: <==negation-removal== 41905 (pos)
                    (not (Bc_not_checked_p3))

                    ; #36875: <==negation-removal== 12765 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #39705: <==negation-removal== 18314 (pos)
                    (not (Pb_not_checked_p3))

                    ; #40520: <==negation-removal== 88373 (pos)
                    (not (not_checked_p3))

                    ; #56569: <==uncertain_firing== 12765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #77214: <==negation-removal== 53896 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79801: <==uncertain_firing== 36445 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #84356: <==negation-removal== 91423 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #86986: <==negation-removal== 61428 (pos)
                    (not (Pa_not_checked_p3))

                    ; #88976: <==uncertain_firing== 91423 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #97267: <==negation-removal== 34660 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13935: <==commonly_known== 54790 (neg)
                    (Pb_checked_p4)

                    ; #34209: <==closure== 68694 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #36600: <==commonly_known== 69633 (pos)
                    (Bb_checked_p4)

                    ; #41186: <==commonly_known== 69633 (pos)
                    (Bc_checked_p4)

                    ; #61291: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #63654: <==commonly_known== 54790 (neg)
                    (Pc_checked_p4)

                    ; #68694: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #69633: origin
                    (checked_p4)

                    ; #81993: <==closure== 61291 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #86046: <==commonly_known== 69633 (pos)
                    (Ba_checked_p4)

                    ; #87615: <==commonly_known== 54790 (neg)
                    (Pa_checked_p4)

                    ; #12182: <==negation-removal== 34209 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #16848: <==negation-removal== 68694 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #20470: <==uncertain_firing== 68694 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #22236: <==uncertain_firing== 81993 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #23742: <==negation-removal== 61291 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #28064: <==negation-removal== 41186 (pos)
                    (not (Pc_not_checked_p4))

                    ; #28323: <==uncertain_firing== 34209 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #28405: <==negation-removal== 87615 (pos)
                    (not (Ba_not_checked_p4))

                    ; #30149: <==negation-removal== 81993 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41460: <==negation-removal== 13935 (pos)
                    (not (Bb_not_checked_p4))

                    ; #45215: <==negation-removal== 86046 (pos)
                    (not (Pa_not_checked_p4))

                    ; #45253: <==uncertain_firing== 61291 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #54790: <==negation-removal== 69633 (pos)
                    (not (not_checked_p4))

                    ; #55784: <==negation-removal== 36600 (pos)
                    (not (Pb_not_checked_p4))

                    ; #72026: <==negation-removal== 63654 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10740: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #15684: <==commonly_known== 63350 (neg)
                    (Pa_checked_p5)

                    ; #25031: <==commonly_known== 72772 (pos)
                    (Ba_checked_p5)

                    ; #25759: <==closure== 55309 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #51238: <==commonly_known== 72772 (pos)
                    (Bc_checked_p5)

                    ; #52578: <==commonly_known== 72772 (pos)
                    (Bb_checked_p5)

                    ; #55309: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #64862: <==commonly_known== 63350 (neg)
                    (Pc_checked_p5)

                    ; #72772: origin
                    (checked_p5)

                    ; #81132: <==closure== 10740 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #84091: <==commonly_known== 63350 (neg)
                    (Pb_checked_p5)

                    ; #15757: <==negation-removal== 55309 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #18438: <==uncertain_firing== 10740 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #23454: <==negation-removal== 10740 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #27331: <==negation-removal== 51238 (pos)
                    (not (Pc_not_checked_p5))

                    ; #27971: <==negation-removal== 64862 (pos)
                    (not (Bc_not_checked_p5))

                    ; #42042: <==uncertain_firing== 55309 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #42247: <==negation-removal== 25759 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63350: <==negation-removal== 72772 (pos)
                    (not (not_checked_p5))

                    ; #63618: <==negation-removal== 25031 (pos)
                    (not (Pa_not_checked_p5))

                    ; #64112: <==uncertain_firing== 81132 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #70757: <==negation-removal== 52578 (pos)
                    (not (Pb_not_checked_p5))

                    ; #77049: <==negation-removal== 15684 (pos)
                    (not (Ba_not_checked_p5))

                    ; #83446: <==negation-removal== 84091 (pos)
                    (not (Bb_not_checked_p5))

                    ; #85299: <==uncertain_firing== 25759 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #88963: <==negation-removal== 81132 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11439: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #16748: origin
                    (checked_p6)

                    ; #30814: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #40562: <==closure== 30814 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #61974: <==commonly_known== 21854 (neg)
                    (Pb_checked_p6)

                    ; #69261: <==commonly_known== 21854 (neg)
                    (Pc_checked_p6)

                    ; #75854: <==commonly_known== 21854 (neg)
                    (Pa_checked_p6)

                    ; #78472: <==commonly_known== 16748 (pos)
                    (Ba_checked_p6)

                    ; #84000: <==commonly_known== 16748 (pos)
                    (Bc_checked_p6)

                    ; #84515: <==closure== 11439 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #90596: <==commonly_known== 16748 (pos)
                    (Bb_checked_p6)

                    ; #15276: <==uncertain_firing== 30814 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #17337: <==negation-removal== 40562 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #21854: <==negation-removal== 16748 (pos)
                    (not (not_checked_p6))

                    ; #26840: <==negation-removal== 84000 (pos)
                    (not (Pc_not_checked_p6))

                    ; #28188: <==negation-removal== 75854 (pos)
                    (not (Ba_not_checked_p6))

                    ; #33749: <==uncertain_firing== 11439 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #36397: <==uncertain_firing== 84515 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #37116: <==negation-removal== 78472 (pos)
                    (not (Pa_not_checked_p6))

                    ; #47615: <==negation-removal== 11439 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #55064: <==negation-removal== 30814 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #65544: <==negation-removal== 69261 (pos)
                    (not (Bc_not_checked_p6))

                    ; #68936: <==negation-removal== 84515 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #72071: <==negation-removal== 61974 (pos)
                    (not (Bb_not_checked_p6))

                    ; #85474: <==negation-removal== 90596 (pos)
                    (not (Pb_not_checked_p6))

                    ; #85833: <==uncertain_firing== 40562 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10777: <==commonly_known== 53096 (neg)
                    (Pc_checked_p7)

                    ; #24374: <==commonly_known== 53096 (neg)
                    (Pb_checked_p7)

                    ; #34627: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #37118: <==commonly_known== 87807 (pos)
                    (Ba_checked_p7)

                    ; #51614: <==commonly_known== 53096 (neg)
                    (Pa_checked_p7)

                    ; #52407: <==commonly_known== 87807 (pos)
                    (Bc_checked_p7)

                    ; #57253: <==closure== 34627 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #65772: <==commonly_known== 87807 (pos)
                    (Bb_checked_p7)

                    ; #75343: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #87807: origin
                    (checked_p7)

                    ; #91290: <==closure== 75343 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #10634: <==negation-removal== 57253 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #13239: <==negation-removal== 52407 (pos)
                    (not (Pc_not_checked_p7))

                    ; #15582: <==negation-removal== 91290 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #22426: <==negation-removal== 65772 (pos)
                    (not (Pb_not_checked_p7))

                    ; #24715: <==negation-removal== 10777 (pos)
                    (not (Bc_not_checked_p7))

                    ; #34237: <==negation-removal== 37118 (pos)
                    (not (Pa_not_checked_p7))

                    ; #51786: <==uncertain_firing== 34627 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #53096: <==negation-removal== 87807 (pos)
                    (not (not_checked_p7))

                    ; #54612: <==uncertain_firing== 57253 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #55625: <==negation-removal== 34627 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #58337: <==negation-removal== 51614 (pos)
                    (not (Ba_not_checked_p7))

                    ; #61423: <==negation-removal== 75343 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #66368: <==negation-removal== 24374 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67279: <==uncertain_firing== 91290 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #77367: <==uncertain_firing== 75343 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16305: <==commonly_known== 62644 (pos)
                    (Bb_checked_p8)

                    ; #22742: <==commonly_known== 62644 (pos)
                    (Bc_checked_p8)

                    ; #40812: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #42532: <==commonly_known== 66930 (neg)
                    (Pa_checked_p8)

                    ; #48299: <==closure== 40812 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #50839: <==commonly_known== 62644 (pos)
                    (Ba_checked_p8)

                    ; #58005: <==commonly_known== 66930 (neg)
                    (Pb_checked_p8)

                    ; #62644: origin
                    (checked_p8)

                    ; #62835: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #81869: <==closure== 62835 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #82999: <==commonly_known== 66930 (neg)
                    (Pc_checked_p8)

                    ; #11904: <==negation-removal== 48299 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #14481: <==negation-removal== 42532 (pos)
                    (not (Ba_not_checked_p8))

                    ; #21922: <==negation-removal== 82999 (pos)
                    (not (Bc_not_checked_p8))

                    ; #25268: <==negation-removal== 62835 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #27043: <==uncertain_firing== 62835 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #28779: <==negation-removal== 22742 (pos)
                    (not (Pc_not_checked_p8))

                    ; #30182: <==negation-removal== 58005 (pos)
                    (not (Bb_not_checked_p8))

                    ; #40335: <==uncertain_firing== 40812 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42348: <==negation-removal== 16305 (pos)
                    (not (Pb_not_checked_p8))

                    ; #46165: <==negation-removal== 81869 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #50307: <==uncertain_firing== 48299 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #62519: <==uncertain_firing== 81869 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #64808: <==negation-removal== 40812 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #66930: <==negation-removal== 62644 (pos)
                    (not (not_checked_p8))

                    ; #75756: <==negation-removal== 50839 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10553: <==commonly_known== 79065 (pos)
                    (Ba_checked_p9)

                    ; #16435: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #16898: <==commonly_known== 16449 (neg)
                    (Pa_checked_p9)

                    ; #20702: <==closure== 16435 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #29844: <==commonly_known== 79065 (pos)
                    (Bb_checked_p9)

                    ; #38097: <==commonly_known== 16449 (neg)
                    (Pb_checked_p9)

                    ; #61195: <==commonly_known== 16449 (neg)
                    (Pc_checked_p9)

                    ; #61972: <==commonly_known== 79065 (pos)
                    (Bc_checked_p9)

                    ; #63607: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #79065: origin
                    (checked_p9)

                    ; #81978: <==closure== 63607 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #16449: <==negation-removal== 79065 (pos)
                    (not (not_checked_p9))

                    ; #17896: <==negation-removal== 29844 (pos)
                    (not (Pb_not_checked_p9))

                    ; #23692: <==uncertain_firing== 63607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #25713: <==negation-removal== 16898 (pos)
                    (not (Ba_not_checked_p9))

                    ; #29632: <==negation-removal== 61195 (pos)
                    (not (Bc_not_checked_p9))

                    ; #36901: <==uncertain_firing== 81978 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #54238: <==uncertain_firing== 20702 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #60640: <==uncertain_firing== 16435 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #61703: <==negation-removal== 81978 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #69942: <==negation-removal== 61972 (pos)
                    (not (Pc_not_checked_p9))

                    ; #77462: <==negation-removal== 10553 (pos)
                    (not (Pa_not_checked_p9))

                    ; #78712: <==negation-removal== 16435 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #80902: <==negation-removal== 20702 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #86039: <==negation-removal== 38097 (pos)
                    (not (Bb_not_checked_p9))

                    ; #92141: <==negation-removal== 63607 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #17412: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #18310: <==closure== 21887 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #21887: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #25685: <==commonly_known== 54303 (neg)
                    (Pb_checked_p10)

                    ; #33117: <==commonly_known== 42933 (pos)
                    (Bc_checked_p10)

                    ; #40526: <==commonly_known== 54303 (neg)
                    (Pc_checked_p10)

                    ; #41703: <==commonly_known== 42933 (pos)
                    (Ba_checked_p10)

                    ; #42933: origin
                    (checked_p10)

                    ; #75111: <==commonly_known== 42933 (pos)
                    (Bb_checked_p10)

                    ; #76925: <==closure== 17412 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #86636: <==commonly_known== 54303 (neg)
                    (Pa_checked_p10)

                    ; #19770: <==negation-removal== 40526 (pos)
                    (not (Bc_not_checked_p10))

                    ; #20094: <==negation-removal== 86636 (pos)
                    (not (Ba_not_checked_p10))

                    ; #38063: <==negation-removal== 41703 (pos)
                    (not (Pa_not_checked_p10))

                    ; #46051: <==negation-removal== 17412 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #46094: <==negation-removal== 33117 (pos)
                    (not (Pc_not_checked_p10))

                    ; #54303: <==negation-removal== 42933 (pos)
                    (not (not_checked_p10))

                    ; #55049: <==negation-removal== 21887 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #55090: <==uncertain_firing== 18310 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #62258: <==negation-removal== 25685 (pos)
                    (not (Bb_not_checked_p10))

                    ; #69247: <==uncertain_firing== 76925 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #75672: <==uncertain_firing== 21887 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #75686: <==negation-removal== 75111 (pos)
                    (not (Pb_not_checked_p10))

                    ; #79934: <==uncertain_firing== 17412 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #87024: <==negation-removal== 76925 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #92407: <==negation-removal== 18310 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #21388: <==closure== 88819 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #25928: <==commonly_known== 11817 (neg)
                    (Pa_checked_p11)

                    ; #36242: <==commonly_known== 58840 (pos)
                    (Ba_checked_p11)

                    ; #43102: <==commonly_known== 11817 (neg)
                    (Pc_checked_p11)

                    ; #45404: <==commonly_known== 11817 (neg)
                    (Pb_checked_p11)

                    ; #58840: origin
                    (checked_p11)

                    ; #67673: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #81917: <==commonly_known== 58840 (pos)
                    (Bc_checked_p11)

                    ; #87803: <==commonly_known== 58840 (pos)
                    (Bb_checked_p11)

                    ; #88819: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #99510: <==closure== 67673 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #11817: <==negation-removal== 58840 (pos)
                    (not (not_checked_p11))

                    ; #11948: <==negation-removal== 88819 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #23719: <==negation-removal== 67673 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #35974: <==negation-removal== 87803 (pos)
                    (not (Pb_not_checked_p11))

                    ; #37080: <==negation-removal== 43102 (pos)
                    (not (Bc_not_checked_p11))

                    ; #39408: <==uncertain_firing== 67673 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #45661: <==uncertain_firing== 88819 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #47390: <==uncertain_firing== 21388 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #47596: <==negation-removal== 21388 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #52239: <==negation-removal== 81917 (pos)
                    (not (Pc_not_checked_p11))

                    ; #56203: <==negation-removal== 25928 (pos)
                    (not (Ba_not_checked_p11))

                    ; #58125: <==uncertain_firing== 99510 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #64442: <==negation-removal== 36242 (pos)
                    (not (Pa_not_checked_p11))

                    ; #69879: <==negation-removal== 45404 (pos)
                    (not (Bb_not_checked_p11))

                    ; #90898: <==negation-removal== 99510 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11460: <==commonly_known== 46758 (neg)
                    (Pa_checked_p12)

                    ; #15095: <==commonly_known== 43951 (pos)
                    (Bb_checked_p12)

                    ; #28565: <==commonly_known== 43951 (pos)
                    (Ba_checked_p12)

                    ; #31404: <==commonly_known== 43951 (pos)
                    (Bc_checked_p12)

                    ; #40613: <==closure== 85107 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #41876: <==closure== 90392 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #43951: origin
                    (checked_p12)

                    ; #51701: <==commonly_known== 46758 (neg)
                    (Pb_checked_p12)

                    ; #85107: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #86277: <==commonly_known== 46758 (neg)
                    (Pc_checked_p12)

                    ; #90392: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #22720: <==negation-removal== 86277 (pos)
                    (not (Bc_not_checked_p12))

                    ; #27709: <==negation-removal== 28565 (pos)
                    (not (Pa_not_checked_p12))

                    ; #37138: <==negation-removal== 40613 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #46454: <==negation-removal== 41876 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #46758: <==negation-removal== 43951 (pos)
                    (not (not_checked_p12))

                    ; #59996: <==negation-removal== 15095 (pos)
                    (not (Pb_not_checked_p12))

                    ; #60669: <==negation-removal== 90392 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #63718: <==negation-removal== 85107 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #64032: <==uncertain_firing== 85107 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #68369: <==uncertain_firing== 41876 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #70081: <==uncertain_firing== 40613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #78958: <==negation-removal== 31404 (pos)
                    (not (Pc_not_checked_p12))

                    ; #79600: <==negation-removal== 51701 (pos)
                    (not (Bb_not_checked_p12))

                    ; #83409: <==uncertain_firing== 90392 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #93852: <==negation-removal== 11460 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13540: <==commonly_known== 87072 (neg)
                    (Pa_checked_p1)

                    ; #17806: <==commonly_known== 87072 (neg)
                    (Pc_checked_p1)

                    ; #24803: <==closure== 80007 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #34158: <==commonly_known== 88091 (pos)
                    (Ba_checked_p1)

                    ; #49325: <==commonly_known== 87072 (neg)
                    (Pb_checked_p1)

                    ; #55120: <==commonly_known== 88091 (pos)
                    (Bc_checked_p1)

                    ; #66723: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #77138: <==commonly_known== 88091 (pos)
                    (Bb_checked_p1)

                    ; #80007: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #88091: origin
                    (checked_p1)

                    ; #89973: <==closure== 66723 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #16226: <==negation-removal== 80007 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #17566: <==negation-removal== 55120 (pos)
                    (not (Pc_not_checked_p1))

                    ; #17839: <==uncertain_firing== 24803 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #23924: <==negation-removal== 24803 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #24654: <==negation-removal== 77138 (pos)
                    (not (Pb_not_checked_p1))

                    ; #29679: <==uncertain_firing== 66723 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #35657: <==negation-removal== 13540 (pos)
                    (not (Ba_not_checked_p1))

                    ; #59684: <==negation-removal== 34158 (pos)
                    (not (Pa_not_checked_p1))

                    ; #59702: <==uncertain_firing== 89973 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #60204: <==negation-removal== 89973 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #69059: <==negation-removal== 66723 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #69428: <==negation-removal== 17806 (pos)
                    (not (Bc_not_checked_p1))

                    ; #83567: <==negation-removal== 49325 (pos)
                    (not (Bb_not_checked_p1))

                    ; #86518: <==uncertain_firing== 80007 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #87072: <==negation-removal== 88091 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11299: <==commonly_known== 33086 (pos)
                    (Bb_checked_p2)

                    ; #18871: <==commonly_known== 38825 (neg)
                    (Pa_checked_p2)

                    ; #20425: <==commonly_known== 33086 (pos)
                    (Bc_checked_p2)

                    ; #23746: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #27253: <==closure== 31486 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #28755: <==commonly_known== 38825 (neg)
                    (Pb_checked_p2)

                    ; #31486: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #33086: origin
                    (checked_p2)

                    ; #54996: <==commonly_known== 33086 (pos)
                    (Ba_checked_p2)

                    ; #63113: <==closure== 23746 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #63751: <==commonly_known== 38825 (neg)
                    (Pc_checked_p2)

                    ; #15226: <==negation-removal== 63751 (pos)
                    (not (Bc_not_checked_p2))

                    ; #22258: <==negation-removal== 11299 (pos)
                    (not (Pb_not_checked_p2))

                    ; #30738: <==uncertain_firing== 23746 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #34550: <==negation-removal== 18871 (pos)
                    (not (Ba_not_checked_p2))

                    ; #38174: <==negation-removal== 23746 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #38825: <==negation-removal== 33086 (pos)
                    (not (not_checked_p2))

                    ; #38964: <==negation-removal== 31486 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #39723: <==negation-removal== 28755 (pos)
                    (not (Bb_not_checked_p2))

                    ; #49399: <==negation-removal== 63113 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #50821: <==uncertain_firing== 63113 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #57583: <==negation-removal== 20425 (pos)
                    (not (Pc_not_checked_p2))

                    ; #61475: <==uncertain_firing== 27253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #64427: <==negation-removal== 27253 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #90598: <==negation-removal== 54996 (pos)
                    (not (Pa_not_checked_p2))

                    ; #91395: <==uncertain_firing== 31486 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #18314: <==commonly_known== 88373 (pos)
                    (Bb_checked_p3)

                    ; #34429: <==closure== 79601 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #34660: <==commonly_known== 40520 (neg)
                    (Pb_checked_p3)

                    ; #38452: <==closure== 72295 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #41905: <==commonly_known== 40520 (neg)
                    (Pc_checked_p3)

                    ; #53459: <==commonly_known== 88373 (pos)
                    (Bc_checked_p3)

                    ; #53896: <==commonly_known== 40520 (neg)
                    (Pa_checked_p3)

                    ; #61428: <==commonly_known== 88373 (pos)
                    (Ba_checked_p3)

                    ; #72295: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #79601: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #88373: origin
                    (checked_p3)

                    ; #10496: <==negation-removal== 79601 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #16411: <==negation-removal== 38452 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #29911: <==negation-removal== 53459 (pos)
                    (not (Pc_not_checked_p3))

                    ; #34526: <==negation-removal== 41905 (pos)
                    (not (Bc_not_checked_p3))

                    ; #39705: <==negation-removal== 18314 (pos)
                    (not (Pb_not_checked_p3))

                    ; #39898: <==negation-removal== 34429 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #40520: <==negation-removal== 88373 (pos)
                    (not (not_checked_p3))

                    ; #44946: <==uncertain_firing== 34429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #57956: <==uncertain_firing== 79601 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #77214: <==negation-removal== 53896 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79385: <==uncertain_firing== 38452 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #81380: <==negation-removal== 72295 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #83386: <==uncertain_firing== 72295 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #86986: <==negation-removal== 61428 (pos)
                    (not (Pa_not_checked_p3))

                    ; #97267: <==negation-removal== 34660 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13935: <==commonly_known== 54790 (neg)
                    (Pb_checked_p4)

                    ; #19395: <==closure== 28117 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #28117: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #36600: <==commonly_known== 69633 (pos)
                    (Bb_checked_p4)

                    ; #41186: <==commonly_known== 69633 (pos)
                    (Bc_checked_p4)

                    ; #63654: <==commonly_known== 54790 (neg)
                    (Pc_checked_p4)

                    ; #65858: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #69633: origin
                    (checked_p4)

                    ; #86046: <==commonly_known== 69633 (pos)
                    (Ba_checked_p4)

                    ; #87615: <==commonly_known== 54790 (neg)
                    (Pa_checked_p4)

                    ; #90265: <==closure== 65858 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #18921: <==negation-removal== 28117 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #26388: <==negation-removal== 90265 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #28064: <==negation-removal== 41186 (pos)
                    (not (Pc_not_checked_p4))

                    ; #28321: <==uncertain_firing== 65858 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #28405: <==negation-removal== 87615 (pos)
                    (not (Ba_not_checked_p4))

                    ; #41460: <==negation-removal== 13935 (pos)
                    (not (Bb_not_checked_p4))

                    ; #41923: <==negation-removal== 19395 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #45215: <==negation-removal== 86046 (pos)
                    (not (Pa_not_checked_p4))

                    ; #54790: <==negation-removal== 69633 (pos)
                    (not (not_checked_p4))

                    ; #55784: <==negation-removal== 36600 (pos)
                    (not (Pb_not_checked_p4))

                    ; #72026: <==negation-removal== 63654 (pos)
                    (not (Bc_not_checked_p4))

                    ; #80121: <==uncertain_firing== 90265 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #84762: <==uncertain_firing== 28117 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #88168: <==uncertain_firing== 19395 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #92078: <==negation-removal== 65858 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10712: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #15684: <==commonly_known== 63350 (neg)
                    (Pa_checked_p5)

                    ; #24564: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #25031: <==commonly_known== 72772 (pos)
                    (Ba_checked_p5)

                    ; #28861: <==closure== 10712 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #38484: <==closure== 24564 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #51238: <==commonly_known== 72772 (pos)
                    (Bc_checked_p5)

                    ; #52578: <==commonly_known== 72772 (pos)
                    (Bb_checked_p5)

                    ; #64862: <==commonly_known== 63350 (neg)
                    (Pc_checked_p5)

                    ; #72772: origin
                    (checked_p5)

                    ; #84091: <==commonly_known== 63350 (neg)
                    (Pb_checked_p5)

                    ; #14330: <==negation-removal== 38484 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #15961: <==uncertain_firing== 24564 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #20682: <==uncertain_firing== 10712 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #27331: <==negation-removal== 51238 (pos)
                    (not (Pc_not_checked_p5))

                    ; #27971: <==negation-removal== 64862 (pos)
                    (not (Bc_not_checked_p5))

                    ; #59509: <==uncertain_firing== 28861 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #61503: <==negation-removal== 28861 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62439: <==uncertain_firing== 38484 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #62805: <==negation-removal== 24564 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #63350: <==negation-removal== 72772 (pos)
                    (not (not_checked_p5))

                    ; #63618: <==negation-removal== 25031 (pos)
                    (not (Pa_not_checked_p5))

                    ; #70757: <==negation-removal== 52578 (pos)
                    (not (Pb_not_checked_p5))

                    ; #77049: <==negation-removal== 15684 (pos)
                    (not (Ba_not_checked_p5))

                    ; #83446: <==negation-removal== 84091 (pos)
                    (not (Bb_not_checked_p5))

                    ; #85830: <==negation-removal== 10712 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10321: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #13424: <==closure== 73317 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #16748: origin
                    (checked_p6)

                    ; #61974: <==commonly_known== 21854 (neg)
                    (Pb_checked_p6)

                    ; #69261: <==commonly_known== 21854 (neg)
                    (Pc_checked_p6)

                    ; #73317: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #73765: <==closure== 10321 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #75854: <==commonly_known== 21854 (neg)
                    (Pa_checked_p6)

                    ; #78472: <==commonly_known== 16748 (pos)
                    (Ba_checked_p6)

                    ; #84000: <==commonly_known== 16748 (pos)
                    (Bc_checked_p6)

                    ; #90596: <==commonly_known== 16748 (pos)
                    (Bb_checked_p6)

                    ; #21854: <==negation-removal== 16748 (pos)
                    (not (not_checked_p6))

                    ; #26840: <==negation-removal== 84000 (pos)
                    (not (Pc_not_checked_p6))

                    ; #28188: <==negation-removal== 75854 (pos)
                    (not (Ba_not_checked_p6))

                    ; #28576: <==negation-removal== 13424 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #30601: <==uncertain_firing== 73765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #37116: <==negation-removal== 78472 (pos)
                    (not (Pa_not_checked_p6))

                    ; #59324: <==uncertain_firing== 73317 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #60683: <==negation-removal== 10321 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62051: <==uncertain_firing== 13424 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #65544: <==negation-removal== 69261 (pos)
                    (not (Bc_not_checked_p6))

                    ; #66664: <==negation-removal== 73317 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #72071: <==negation-removal== 61974 (pos)
                    (not (Bb_not_checked_p6))

                    ; #77873: <==negation-removal== 73765 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #84291: <==uncertain_firing== 10321 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #85474: <==negation-removal== 90596 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10777: <==commonly_known== 53096 (neg)
                    (Pc_checked_p7)

                    ; #24374: <==commonly_known== 53096 (neg)
                    (Pb_checked_p7)

                    ; #35140: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #37118: <==commonly_known== 87807 (pos)
                    (Ba_checked_p7)

                    ; #49650: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #51614: <==commonly_known== 53096 (neg)
                    (Pa_checked_p7)

                    ; #52407: <==commonly_known== 87807 (pos)
                    (Bc_checked_p7)

                    ; #65772: <==commonly_known== 87807 (pos)
                    (Bb_checked_p7)

                    ; #82204: <==closure== 49650 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #87807: origin
                    (checked_p7)

                    ; #93600: <==closure== 35140 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #11595: <==negation-removal== 93600 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #13239: <==negation-removal== 52407 (pos)
                    (not (Pc_not_checked_p7))

                    ; #22426: <==negation-removal== 65772 (pos)
                    (not (Pb_not_checked_p7))

                    ; #24715: <==negation-removal== 10777 (pos)
                    (not (Bc_not_checked_p7))

                    ; #34237: <==negation-removal== 37118 (pos)
                    (not (Pa_not_checked_p7))

                    ; #36012: <==negation-removal== 49650 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #42267: <==negation-removal== 82204 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #44038: <==uncertain_firing== 49650 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #47909: <==uncertain_firing== 35140 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #53096: <==negation-removal== 87807 (pos)
                    (not (not_checked_p7))

                    ; #58337: <==negation-removal== 51614 (pos)
                    (not (Ba_not_checked_p7))

                    ; #62331: <==uncertain_firing== 93600 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #65830: <==negation-removal== 35140 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #66368: <==negation-removal== 24374 (pos)
                    (not (Bb_not_checked_p7))

                    ; #82060: <==uncertain_firing== 82204 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16305: <==commonly_known== 62644 (pos)
                    (Bb_checked_p8)

                    ; #22742: <==commonly_known== 62644 (pos)
                    (Bc_checked_p8)

                    ; #33252: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #38285: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #42532: <==commonly_known== 66930 (neg)
                    (Pa_checked_p8)

                    ; #44455: <==closure== 33252 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #50839: <==commonly_known== 62644 (pos)
                    (Ba_checked_p8)

                    ; #58005: <==commonly_known== 66930 (neg)
                    (Pb_checked_p8)

                    ; #62644: origin
                    (checked_p8)

                    ; #73440: <==closure== 38285 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #82999: <==commonly_known== 66930 (neg)
                    (Pc_checked_p8)

                    ; #14481: <==negation-removal== 42532 (pos)
                    (not (Ba_not_checked_p8))

                    ; #16971: <==uncertain_firing== 73440 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #21922: <==negation-removal== 82999 (pos)
                    (not (Bc_not_checked_p8))

                    ; #28779: <==negation-removal== 22742 (pos)
                    (not (Pc_not_checked_p8))

                    ; #30182: <==negation-removal== 58005 (pos)
                    (not (Bb_not_checked_p8))

                    ; #33778: <==negation-removal== 33252 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #42348: <==negation-removal== 16305 (pos)
                    (not (Pb_not_checked_p8))

                    ; #45385: <==uncertain_firing== 44455 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #49948: <==negation-removal== 44455 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #60309: <==negation-removal== 73440 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #66930: <==negation-removal== 62644 (pos)
                    (not (not_checked_p8))

                    ; #75756: <==negation-removal== 50839 (pos)
                    (not (Pa_not_checked_p8))

                    ; #79648: <==negation-removal== 38285 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #84638: <==uncertain_firing== 38285 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #89133: <==uncertain_firing== 33252 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10553: <==commonly_known== 79065 (pos)
                    (Ba_checked_p9)

                    ; #16898: <==commonly_known== 16449 (neg)
                    (Pa_checked_p9)

                    ; #29844: <==commonly_known== 79065 (pos)
                    (Bb_checked_p9)

                    ; #38097: <==commonly_known== 16449 (neg)
                    (Pb_checked_p9)

                    ; #42158: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #46688: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #61195: <==commonly_known== 16449 (neg)
                    (Pc_checked_p9)

                    ; #61972: <==commonly_known== 79065 (pos)
                    (Bc_checked_p9)

                    ; #62585: <==closure== 42158 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #77233: <==closure== 46688 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #79065: origin
                    (checked_p9)

                    ; #16449: <==negation-removal== 79065 (pos)
                    (not (not_checked_p9))

                    ; #17896: <==negation-removal== 29844 (pos)
                    (not (Pb_not_checked_p9))

                    ; #18728: <==negation-removal== 42158 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #25713: <==negation-removal== 16898 (pos)
                    (not (Ba_not_checked_p9))

                    ; #26624: <==negation-removal== 62585 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #29632: <==negation-removal== 61195 (pos)
                    (not (Bc_not_checked_p9))

                    ; #38008: <==negation-removal== 46688 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #40256: <==negation-removal== 77233 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #46039: <==uncertain_firing== 42158 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #48084: <==uncertain_firing== 62585 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #53263: <==uncertain_firing== 77233 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #54485: <==uncertain_firing== 46688 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69942: <==negation-removal== 61972 (pos)
                    (not (Pc_not_checked_p9))

                    ; #77462: <==negation-removal== 10553 (pos)
                    (not (Pa_not_checked_p9))

                    ; #86039: <==negation-removal== 38097 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #25685: <==commonly_known== 54303 (neg)
                    (Pb_checked_p10)

                    ; #33117: <==commonly_known== 42933 (pos)
                    (Bc_checked_p10)

                    ; #40526: <==commonly_known== 54303 (neg)
                    (Pc_checked_p10)

                    ; #41703: <==commonly_known== 42933 (pos)
                    (Ba_checked_p10)

                    ; #42933: origin
                    (checked_p10)

                    ; #59064: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #75111: <==commonly_known== 42933 (pos)
                    (Bb_checked_p10)

                    ; #81250: <==closure== 89073 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86636: <==commonly_known== 54303 (neg)
                    (Pa_checked_p10)

                    ; #87913: <==closure== 59064 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #89073: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #18852: <==uncertain_firing== 87913 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #19770: <==negation-removal== 40526 (pos)
                    (not (Bc_not_checked_p10))

                    ; #20094: <==negation-removal== 86636 (pos)
                    (not (Ba_not_checked_p10))

                    ; #20349: <==negation-removal== 89073 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #33266: <==uncertain_firing== 81250 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #38063: <==negation-removal== 41703 (pos)
                    (not (Pa_not_checked_p10))

                    ; #46094: <==negation-removal== 33117 (pos)
                    (not (Pc_not_checked_p10))

                    ; #54303: <==negation-removal== 42933 (pos)
                    (not (not_checked_p10))

                    ; #56786: <==negation-removal== 87913 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #62258: <==negation-removal== 25685 (pos)
                    (not (Bb_not_checked_p10))

                    ; #72528: <==negation-removal== 59064 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #75686: <==negation-removal== 75111 (pos)
                    (not (Pb_not_checked_p10))

                    ; #80123: <==uncertain_firing== 89073 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #83365: <==uncertain_firing== 59064 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #87684: <==negation-removal== 81250 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #24846: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #25928: <==commonly_known== 11817 (neg)
                    (Pa_checked_p11)

                    ; #31496: <==closure== 24846 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #36242: <==commonly_known== 58840 (pos)
                    (Ba_checked_p11)

                    ; #43102: <==commonly_known== 11817 (neg)
                    (Pc_checked_p11)

                    ; #45404: <==commonly_known== 11817 (neg)
                    (Pb_checked_p11)

                    ; #54056: <==closure== 61423 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #58840: origin
                    (checked_p11)

                    ; #61423: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #81917: <==commonly_known== 58840 (pos)
                    (Bc_checked_p11)

                    ; #87803: <==commonly_known== 58840 (pos)
                    (Bb_checked_p11)

                    ; #11817: <==negation-removal== 58840 (pos)
                    (not (not_checked_p11))

                    ; #21986: <==uncertain_firing== 54056 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #35974: <==negation-removal== 87803 (pos)
                    (not (Pb_not_checked_p11))

                    ; #36135: <==uncertain_firing== 61423 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #37080: <==negation-removal== 43102 (pos)
                    (not (Bc_not_checked_p11))

                    ; #37705: <==negation-removal== 54056 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #39873: <==uncertain_firing== 31496 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #44295: <==negation-removal== 31496 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #52239: <==negation-removal== 81917 (pos)
                    (not (Pc_not_checked_p11))

                    ; #56203: <==negation-removal== 25928 (pos)
                    (not (Ba_not_checked_p11))

                    ; #56509: <==negation-removal== 24846 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #64442: <==negation-removal== 36242 (pos)
                    (not (Pa_not_checked_p11))

                    ; #69879: <==negation-removal== 45404 (pos)
                    (not (Bb_not_checked_p11))

                    ; #72144: <==negation-removal== 61423 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #73670: <==uncertain_firing== 24846 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11460: <==commonly_known== 46758 (neg)
                    (Pa_checked_p12)

                    ; #15095: <==commonly_known== 43951 (pos)
                    (Bb_checked_p12)

                    ; #21154: <==closure== 66185 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #28565: <==commonly_known== 43951 (pos)
                    (Ba_checked_p12)

                    ; #31404: <==commonly_known== 43951 (pos)
                    (Bc_checked_p12)

                    ; #43951: origin
                    (checked_p12)

                    ; #46913: <==closure== 92223 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #51701: <==commonly_known== 46758 (neg)
                    (Pb_checked_p12)

                    ; #66185: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #86277: <==commonly_known== 46758 (neg)
                    (Pc_checked_p12)

                    ; #92223: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #14856: <==negation-removal== 21154 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #22720: <==negation-removal== 86277 (pos)
                    (not (Bc_not_checked_p12))

                    ; #24020: <==negation-removal== 92223 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #27709: <==negation-removal== 28565 (pos)
                    (not (Pa_not_checked_p12))

                    ; #32392: <==negation-removal== 66185 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #46758: <==negation-removal== 43951 (pos)
                    (not (not_checked_p12))

                    ; #49027: <==uncertain_firing== 21154 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #50763: <==uncertain_firing== 46913 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #59996: <==negation-removal== 15095 (pos)
                    (not (Pb_not_checked_p12))

                    ; #61565: <==uncertain_firing== 66185 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #69431: <==uncertain_firing== 92223 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #78518: <==negation-removal== 46913 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #78958: <==negation-removal== 31404 (pos)
                    (not (Pc_not_checked_p12))

                    ; #79600: <==negation-removal== 51701 (pos)
                    (not (Bb_not_checked_p12))

                    ; #93852: <==negation-removal== 11460 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10421: <==closure== 77587 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #13540: <==commonly_known== 87072 (neg)
                    (Pa_checked_p1)

                    ; #17806: <==commonly_known== 87072 (neg)
                    (Pc_checked_p1)

                    ; #34158: <==commonly_known== 88091 (pos)
                    (Ba_checked_p1)

                    ; #49325: <==commonly_known== 87072 (neg)
                    (Pb_checked_p1)

                    ; #55120: <==commonly_known== 88091 (pos)
                    (Bc_checked_p1)

                    ; #63282: <==closure== 86483 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #77138: <==commonly_known== 88091 (pos)
                    (Bb_checked_p1)

                    ; #77587: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #86483: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #88091: origin
                    (checked_p1)

                    ; #15024: <==negation-removal== 77587 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #15599: <==uncertain_firing== 77587 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #17566: <==negation-removal== 55120 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24654: <==negation-removal== 77138 (pos)
                    (not (Pb_not_checked_p1))

                    ; #29397: <==negation-removal== 86483 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #35657: <==negation-removal== 13540 (pos)
                    (not (Ba_not_checked_p1))

                    ; #41018: <==negation-removal== 63282 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #43736: <==negation-removal== 10421 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #45475: <==uncertain_firing== 63282 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #59684: <==negation-removal== 34158 (pos)
                    (not (Pa_not_checked_p1))

                    ; #69418: <==uncertain_firing== 10421 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #69428: <==negation-removal== 17806 (pos)
                    (not (Bc_not_checked_p1))

                    ; #70776: <==uncertain_firing== 86483 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #83567: <==negation-removal== 49325 (pos)
                    (not (Bb_not_checked_p1))

                    ; #87072: <==negation-removal== 88091 (pos)
                    (not (not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11299: <==commonly_known== 33086 (pos)
                    (Bb_checked_p2)

                    ; #18871: <==commonly_known== 38825 (neg)
                    (Pa_checked_p2)

                    ; #20425: <==commonly_known== 33086 (pos)
                    (Bc_checked_p2)

                    ; #28755: <==commonly_known== 38825 (neg)
                    (Pb_checked_p2)

                    ; #33086: origin
                    (checked_p2)

                    ; #45616: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #48681: <==closure== 63611 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #54996: <==commonly_known== 33086 (pos)
                    (Ba_checked_p2)

                    ; #63611: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #63751: <==commonly_known== 38825 (neg)
                    (Pc_checked_p2)

                    ; #72937: <==closure== 45616 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #14389: <==negation-removal== 48681 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #15226: <==negation-removal== 63751 (pos)
                    (not (Bc_not_checked_p2))

                    ; #19772: <==uncertain_firing== 63611 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #22258: <==negation-removal== 11299 (pos)
                    (not (Pb_not_checked_p2))

                    ; #34550: <==negation-removal== 18871 (pos)
                    (not (Ba_not_checked_p2))

                    ; #38825: <==negation-removal== 33086 (pos)
                    (not (not_checked_p2))

                    ; #39723: <==negation-removal== 28755 (pos)
                    (not (Bb_not_checked_p2))

                    ; #51795: <==uncertain_firing== 45616 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #57583: <==negation-removal== 20425 (pos)
                    (not (Pc_not_checked_p2))

                    ; #59375: <==negation-removal== 63611 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #66150: <==negation-removal== 45616 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #72502: <==uncertain_firing== 48681 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #76202: <==negation-removal== 72937 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #76940: <==uncertain_firing== 72937 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #90598: <==negation-removal== 54996 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #10097: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #11614: <==closure== 10097 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #12646: <==closure== 41686 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #18314: <==commonly_known== 88373 (pos)
                    (Bb_checked_p3)

                    ; #34660: <==commonly_known== 40520 (neg)
                    (Pb_checked_p3)

                    ; #41686: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #41905: <==commonly_known== 40520 (neg)
                    (Pc_checked_p3)

                    ; #53459: <==commonly_known== 88373 (pos)
                    (Bc_checked_p3)

                    ; #53896: <==commonly_known== 40520 (neg)
                    (Pa_checked_p3)

                    ; #61428: <==commonly_known== 88373 (pos)
                    (Ba_checked_p3)

                    ; #88373: origin
                    (checked_p3)

                    ; #21399: <==uncertain_firing== 11614 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #29911: <==negation-removal== 53459 (pos)
                    (not (Pc_not_checked_p3))

                    ; #31762: <==uncertain_firing== 12646 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #34526: <==negation-removal== 41905 (pos)
                    (not (Bc_not_checked_p3))

                    ; #39705: <==negation-removal== 18314 (pos)
                    (not (Pb_not_checked_p3))

                    ; #40520: <==negation-removal== 88373 (pos)
                    (not (not_checked_p3))

                    ; #70674: <==negation-removal== 12646 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #71953: <==negation-removal== 10097 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #75463: <==negation-removal== 11614 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #75495: <==negation-removal== 41686 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #77214: <==negation-removal== 53896 (pos)
                    (not (Ba_not_checked_p3))

                    ; #86174: <==uncertain_firing== 10097 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #86986: <==negation-removal== 61428 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89908: <==uncertain_firing== 41686 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #97267: <==negation-removal== 34660 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12230: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #13935: <==commonly_known== 54790 (neg)
                    (Pb_checked_p4)

                    ; #36600: <==commonly_known== 69633 (pos)
                    (Bb_checked_p4)

                    ; #41186: <==commonly_known== 69633 (pos)
                    (Bc_checked_p4)

                    ; #59029: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #60005: <==closure== 59029 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #63654: <==commonly_known== 54790 (neg)
                    (Pc_checked_p4)

                    ; #66605: <==closure== 12230 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #69633: origin
                    (checked_p4)

                    ; #86046: <==commonly_known== 69633 (pos)
                    (Ba_checked_p4)

                    ; #87615: <==commonly_known== 54790 (neg)
                    (Pa_checked_p4)

                    ; #28064: <==negation-removal== 41186 (pos)
                    (not (Pc_not_checked_p4))

                    ; #28405: <==negation-removal== 87615 (pos)
                    (not (Ba_not_checked_p4))

                    ; #32109: <==uncertain_firing== 12230 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #41003: <==negation-removal== 66605 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #41460: <==negation-removal== 13935 (pos)
                    (not (Bb_not_checked_p4))

                    ; #45215: <==negation-removal== 86046 (pos)
                    (not (Pa_not_checked_p4))

                    ; #54790: <==negation-removal== 69633 (pos)
                    (not (not_checked_p4))

                    ; #55784: <==negation-removal== 36600 (pos)
                    (not (Pb_not_checked_p4))

                    ; #57547: <==uncertain_firing== 66605 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #57834: <==uncertain_firing== 60005 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #66711: <==negation-removal== 59029 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #72026: <==negation-removal== 63654 (pos)
                    (not (Bc_not_checked_p4))

                    ; #72933: <==uncertain_firing== 59029 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #80776: <==negation-removal== 12230 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #92094: <==negation-removal== 60005 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #15684: <==commonly_known== 63350 (neg)
                    (Pa_checked_p5)

                    ; #25031: <==commonly_known== 72772 (pos)
                    (Ba_checked_p5)

                    ; #49800: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #51238: <==commonly_known== 72772 (pos)
                    (Bc_checked_p5)

                    ; #52578: <==commonly_known== 72772 (pos)
                    (Bb_checked_p5)

                    ; #64073: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #64862: <==commonly_known== 63350 (neg)
                    (Pc_checked_p5)

                    ; #72772: origin
                    (checked_p5)

                    ; #74187: <==closure== 64073 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #83696: <==closure== 49800 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #84091: <==commonly_known== 63350 (neg)
                    (Pb_checked_p5)

                    ; #27331: <==negation-removal== 51238 (pos)
                    (not (Pc_not_checked_p5))

                    ; #27971: <==negation-removal== 64862 (pos)
                    (not (Bc_not_checked_p5))

                    ; #29224: <==uncertain_firing== 49800 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #37935: <==negation-removal== 49800 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #48170: <==negation-removal== 74187 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #48186: <==uncertain_firing== 83696 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61049: <==negation-removal== 83696 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #63350: <==negation-removal== 72772 (pos)
                    (not (not_checked_p5))

                    ; #63618: <==negation-removal== 25031 (pos)
                    (not (Pa_not_checked_p5))

                    ; #67241: <==uncertain_firing== 64073 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #70757: <==negation-removal== 52578 (pos)
                    (not (Pb_not_checked_p5))

                    ; #73286: <==uncertain_firing== 74187 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #77049: <==negation-removal== 15684 (pos)
                    (not (Ba_not_checked_p5))

                    ; #83446: <==negation-removal== 84091 (pos)
                    (not (Bb_not_checked_p5))

                    ; #84526: <==negation-removal== 64073 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16748: origin
                    (checked_p6)

                    ; #19344: <==closure== 31290 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #27334: <==closure== 76879 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #31290: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #61974: <==commonly_known== 21854 (neg)
                    (Pb_checked_p6)

                    ; #69261: <==commonly_known== 21854 (neg)
                    (Pc_checked_p6)

                    ; #75854: <==commonly_known== 21854 (neg)
                    (Pa_checked_p6)

                    ; #76879: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #78472: <==commonly_known== 16748 (pos)
                    (Ba_checked_p6)

                    ; #84000: <==commonly_known== 16748 (pos)
                    (Bc_checked_p6)

                    ; #90596: <==commonly_known== 16748 (pos)
                    (Bb_checked_p6)

                    ; #15363: <==negation-removal== 27334 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #21854: <==negation-removal== 16748 (pos)
                    (not (not_checked_p6))

                    ; #26840: <==negation-removal== 84000 (pos)
                    (not (Pc_not_checked_p6))

                    ; #28188: <==negation-removal== 75854 (pos)
                    (not (Ba_not_checked_p6))

                    ; #31623: <==uncertain_firing== 19344 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #37116: <==negation-removal== 78472 (pos)
                    (not (Pa_not_checked_p6))

                    ; #37580: <==uncertain_firing== 31290 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #41787: <==negation-removal== 76879 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #65237: <==negation-removal== 19344 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #65544: <==negation-removal== 69261 (pos)
                    (not (Bc_not_checked_p6))

                    ; #66072: <==negation-removal== 31290 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #72071: <==negation-removal== 61974 (pos)
                    (not (Bb_not_checked_p6))

                    ; #77128: <==uncertain_firing== 27334 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #80121: <==uncertain_firing== 76879 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #85474: <==negation-removal== 90596 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10777: <==commonly_known== 53096 (neg)
                    (Pc_checked_p7)

                    ; #24374: <==commonly_known== 53096 (neg)
                    (Pb_checked_p7)

                    ; #37118: <==commonly_known== 87807 (pos)
                    (Ba_checked_p7)

                    ; #43369: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #44796: <==closure== 87640 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #51614: <==commonly_known== 53096 (neg)
                    (Pa_checked_p7)

                    ; #52407: <==commonly_known== 87807 (pos)
                    (Bc_checked_p7)

                    ; #61709: <==closure== 43369 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #65772: <==commonly_known== 87807 (pos)
                    (Bb_checked_p7)

                    ; #87640: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #87807: origin
                    (checked_p7)

                    ; #11816: <==negation-removal== 44796 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #13239: <==negation-removal== 52407 (pos)
                    (not (Pc_not_checked_p7))

                    ; #22426: <==negation-removal== 65772 (pos)
                    (not (Pb_not_checked_p7))

                    ; #23017: <==negation-removal== 87640 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #24715: <==negation-removal== 10777 (pos)
                    (not (Bc_not_checked_p7))

                    ; #34237: <==negation-removal== 37118 (pos)
                    (not (Pa_not_checked_p7))

                    ; #53096: <==negation-removal== 87807 (pos)
                    (not (not_checked_p7))

                    ; #58337: <==negation-removal== 51614 (pos)
                    (not (Ba_not_checked_p7))

                    ; #59524: <==uncertain_firing== 43369 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #63298: <==uncertain_firing== 61709 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #66368: <==negation-removal== 24374 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67317: <==negation-removal== 43369 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #75033: <==uncertain_firing== 87640 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #75151: <==negation-removal== 61709 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #89676: <==uncertain_firing== 44796 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16305: <==commonly_known== 62644 (pos)
                    (Bb_checked_p8)

                    ; #22522: <==closure== 42261 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #22742: <==commonly_known== 62644 (pos)
                    (Bc_checked_p8)

                    ; #42261: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #42532: <==commonly_known== 66930 (neg)
                    (Pa_checked_p8)

                    ; #50839: <==commonly_known== 62644 (pos)
                    (Ba_checked_p8)

                    ; #55256: <==closure== 72335 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #58005: <==commonly_known== 66930 (neg)
                    (Pb_checked_p8)

                    ; #62644: origin
                    (checked_p8)

                    ; #72335: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #82999: <==commonly_known== 66930 (neg)
                    (Pc_checked_p8)

                    ; #14481: <==negation-removal== 42532 (pos)
                    (not (Ba_not_checked_p8))

                    ; #18818: <==negation-removal== 22522 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #21922: <==negation-removal== 82999 (pos)
                    (not (Bc_not_checked_p8))

                    ; #24107: <==negation-removal== 42261 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #28779: <==negation-removal== 22742 (pos)
                    (not (Pc_not_checked_p8))

                    ; #30182: <==negation-removal== 58005 (pos)
                    (not (Bb_not_checked_p8))

                    ; #36707: <==negation-removal== 72335 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #42348: <==negation-removal== 16305 (pos)
                    (not (Pb_not_checked_p8))

                    ; #65083: <==uncertain_firing== 22522 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #65776: <==negation-removal== 55256 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #66930: <==negation-removal== 62644 (pos)
                    (not (not_checked_p8))

                    ; #70628: <==uncertain_firing== 55256 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #73733: <==uncertain_firing== 72335 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #75756: <==negation-removal== 50839 (pos)
                    (not (Pa_not_checked_p8))

                    ; #97129: <==uncertain_firing== 42261 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10553: <==commonly_known== 79065 (pos)
                    (Ba_checked_p9)

                    ; #16898: <==commonly_known== 16449 (neg)
                    (Pa_checked_p9)

                    ; #17492: <==closure== 62992 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #29844: <==commonly_known== 79065 (pos)
                    (Bb_checked_p9)

                    ; #38097: <==commonly_known== 16449 (neg)
                    (Pb_checked_p9)

                    ; #48694: <==closure== 92328 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #61195: <==commonly_known== 16449 (neg)
                    (Pc_checked_p9)

                    ; #61972: <==commonly_known== 79065 (pos)
                    (Bc_checked_p9)

                    ; #62992: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #79065: origin
                    (checked_p9)

                    ; #92328: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #15839: <==uncertain_firing== 62992 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #16449: <==negation-removal== 79065 (pos)
                    (not (not_checked_p9))

                    ; #17155: <==uncertain_firing== 48694 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #17896: <==negation-removal== 29844 (pos)
                    (not (Pb_not_checked_p9))

                    ; #25713: <==negation-removal== 16898 (pos)
                    (not (Ba_not_checked_p9))

                    ; #29632: <==negation-removal== 61195 (pos)
                    (not (Bc_not_checked_p9))

                    ; #31850: <==negation-removal== 92328 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #32208: <==negation-removal== 62992 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50284: <==uncertain_firing== 92328 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #64595: <==negation-removal== 17492 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #69942: <==negation-removal== 61972 (pos)
                    (not (Pc_not_checked_p9))

                    ; #71017: <==negation-removal== 48694 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #76024: <==uncertain_firing== 17492 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #77462: <==negation-removal== 10553 (pos)
                    (not (Pa_not_checked_p9))

                    ; #86039: <==negation-removal== 38097 (pos)
                    (not (Bb_not_checked_p9))))

)