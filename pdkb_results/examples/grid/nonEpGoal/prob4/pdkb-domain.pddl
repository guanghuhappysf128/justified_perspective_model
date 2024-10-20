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
                    ; #31670: <==closure== 59100 (pos)
                    (Pa_survivorat_s_p10)

                    ; #40705: <==closure== 90617 (pos)
                    (Pb_survivorat_s_p10)

                    ; #42728: origin
                    (Bc_survivorat_s_p10)

                    ; #59100: origin
                    (Ba_survivorat_s_p10)

                    ; #76647: <==closure== 42728 (pos)
                    (Pc_survivorat_s_p10)

                    ; #90617: origin
                    (Bb_survivorat_s_p10)

                    ; #10670: <==negation-removal== 31670 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42970: <==negation-removal== 76647 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #73945: <==negation-removal== 40705 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #77948: <==negation-removal== 42728 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #82569: <==negation-removal== 59100 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #92177: <==negation-removal== 90617 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #31670: <==closure== 59100 (pos)
                    (Pa_survivorat_s_p10)

                    ; #40705: <==closure== 90617 (pos)
                    (Pb_survivorat_s_p10)

                    ; #42728: origin
                    (Bc_survivorat_s_p10)

                    ; #59100: origin
                    (Ba_survivorat_s_p10)

                    ; #76647: <==closure== 42728 (pos)
                    (Pc_survivorat_s_p10)

                    ; #90617: origin
                    (Bb_survivorat_s_p10)

                    ; #10670: <==negation-removal== 31670 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42970: <==negation-removal== 76647 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #73945: <==negation-removal== 40705 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #77948: <==negation-removal== 42728 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #82569: <==negation-removal== 59100 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #92177: <==negation-removal== 90617 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (at_c_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #31670: <==closure== 59100 (pos)
                    (Pa_survivorat_s_p10)

                    ; #40705: <==closure== 90617 (pos)
                    (Pb_survivorat_s_p10)

                    ; #42728: origin
                    (Bc_survivorat_s_p10)

                    ; #59100: origin
                    (Ba_survivorat_s_p10)

                    ; #76647: <==closure== 42728 (pos)
                    (Pc_survivorat_s_p10)

                    ; #90617: origin
                    (Bb_survivorat_s_p10)

                    ; #10670: <==negation-removal== 31670 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42970: <==negation-removal== 76647 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #73945: <==negation-removal== 40705 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #77948: <==negation-removal== 42728 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #82569: <==negation-removal== 59100 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #92177: <==negation-removal== 90617 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #17791: <==closure== 57705 (pos)
                    (Pc_survivorat_s_p11)

                    ; #26200: <==closure== 62232 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45139: origin
                    (Ba_survivorat_s_p11)

                    ; #57705: origin
                    (Bc_survivorat_s_p11)

                    ; #62232: origin
                    (Bb_survivorat_s_p11)

                    ; #78788: <==closure== 45139 (pos)
                    (Pa_survivorat_s_p11)

                    ; #17597: <==negation-removal== 78788 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #36678: <==negation-removal== 57705 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #43794: <==negation-removal== 62232 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #56080: <==negation-removal== 45139 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #57275: <==negation-removal== 17791 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #90886: <==negation-removal== 26200 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #17791: <==closure== 57705 (pos)
                    (Pc_survivorat_s_p11)

                    ; #26200: <==closure== 62232 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45139: origin
                    (Ba_survivorat_s_p11)

                    ; #57705: origin
                    (Bc_survivorat_s_p11)

                    ; #62232: origin
                    (Bb_survivorat_s_p11)

                    ; #78788: <==closure== 45139 (pos)
                    (Pa_survivorat_s_p11)

                    ; #17597: <==negation-removal== 78788 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #36678: <==negation-removal== 57705 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #43794: <==negation-removal== 62232 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #56080: <==negation-removal== 45139 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #57275: <==negation-removal== 17791 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #90886: <==negation-removal== 26200 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #17791: <==closure== 57705 (pos)
                    (Pc_survivorat_s_p11)

                    ; #26200: <==closure== 62232 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45139: origin
                    (Ba_survivorat_s_p11)

                    ; #57705: origin
                    (Bc_survivorat_s_p11)

                    ; #62232: origin
                    (Bb_survivorat_s_p11)

                    ; #78788: <==closure== 45139 (pos)
                    (Pa_survivorat_s_p11)

                    ; #17597: <==negation-removal== 78788 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #36678: <==negation-removal== 57705 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #43794: <==negation-removal== 62232 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #56080: <==negation-removal== 45139 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #57275: <==negation-removal== 17791 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #90886: <==negation-removal== 26200 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #20755: <==closure== 41742 (pos)
                    (Pc_survivorat_s_p12)

                    ; #41742: origin
                    (Bc_survivorat_s_p12)

                    ; #50642: <==closure== 79761 (pos)
                    (Pb_survivorat_s_p12)

                    ; #74676: <==closure== 90776 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79761: origin
                    (Bb_survivorat_s_p12)

                    ; #90776: origin
                    (Ba_survivorat_s_p12)

                    ; #12599: <==negation-removal== 41742 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #23262: <==negation-removal== 90776 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #56067: <==negation-removal== 50642 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #65884: <==negation-removal== 74676 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #74764: <==negation-removal== 79761 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #90958: <==negation-removal== 20755 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #20755: <==closure== 41742 (pos)
                    (Pc_survivorat_s_p12)

                    ; #41742: origin
                    (Bc_survivorat_s_p12)

                    ; #50642: <==closure== 79761 (pos)
                    (Pb_survivorat_s_p12)

                    ; #74676: <==closure== 90776 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79761: origin
                    (Bb_survivorat_s_p12)

                    ; #90776: origin
                    (Ba_survivorat_s_p12)

                    ; #12599: <==negation-removal== 41742 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #23262: <==negation-removal== 90776 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #56067: <==negation-removal== 50642 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #65884: <==negation-removal== 74676 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #74764: <==negation-removal== 79761 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #90958: <==negation-removal== 20755 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #20755: <==closure== 41742 (pos)
                    (Pc_survivorat_s_p12)

                    ; #41742: origin
                    (Bc_survivorat_s_p12)

                    ; #50642: <==closure== 79761 (pos)
                    (Pb_survivorat_s_p12)

                    ; #74676: <==closure== 90776 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79761: origin
                    (Bb_survivorat_s_p12)

                    ; #90776: origin
                    (Ba_survivorat_s_p12)

                    ; #12599: <==negation-removal== 41742 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #23262: <==negation-removal== 90776 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #56067: <==negation-removal== 50642 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #65884: <==negation-removal== 74676 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #74764: <==negation-removal== 79761 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #90958: <==negation-removal== 20755 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #20654: origin
                    (Bc_survivorat_s_p1)

                    ; #23982: <==closure== 20654 (pos)
                    (Pc_survivorat_s_p1)

                    ; #41019: <==closure== 75302 (pos)
                    (Pa_survivorat_s_p1)

                    ; #67249: <==closure== 72451 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72451: origin
                    (Bb_survivorat_s_p1)

                    ; #75302: origin
                    (Ba_survivorat_s_p1)

                    ; #27364: <==negation-removal== 75302 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #59327: <==negation-removal== 67249 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #65469: <==negation-removal== 72451 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #65867: <==negation-removal== 41019 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #67965: <==negation-removal== 23982 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #87829: <==negation-removal== 20654 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #20654: origin
                    (Bc_survivorat_s_p1)

                    ; #23982: <==closure== 20654 (pos)
                    (Pc_survivorat_s_p1)

                    ; #41019: <==closure== 75302 (pos)
                    (Pa_survivorat_s_p1)

                    ; #67249: <==closure== 72451 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72451: origin
                    (Bb_survivorat_s_p1)

                    ; #75302: origin
                    (Ba_survivorat_s_p1)

                    ; #27364: <==negation-removal== 75302 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #59327: <==negation-removal== 67249 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #65469: <==negation-removal== 72451 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #65867: <==negation-removal== 41019 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #67965: <==negation-removal== 23982 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #87829: <==negation-removal== 20654 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #20654: origin
                    (Bc_survivorat_s_p1)

                    ; #23982: <==closure== 20654 (pos)
                    (Pc_survivorat_s_p1)

                    ; #41019: <==closure== 75302 (pos)
                    (Pa_survivorat_s_p1)

                    ; #67249: <==closure== 72451 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72451: origin
                    (Bb_survivorat_s_p1)

                    ; #75302: origin
                    (Ba_survivorat_s_p1)

                    ; #27364: <==negation-removal== 75302 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #59327: <==negation-removal== 67249 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #65469: <==negation-removal== 72451 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #65867: <==negation-removal== 41019 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #67965: <==negation-removal== 23982 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #87829: <==negation-removal== 20654 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #16100: origin
                    (Bc_survivorat_s_p2)

                    ; #52194: origin
                    (Bb_survivorat_s_p2)

                    ; #63874: <==closure== 94579 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71499: <==closure== 52194 (pos)
                    (Pb_survivorat_s_p2)

                    ; #79671: <==closure== 16100 (pos)
                    (Pc_survivorat_s_p2)

                    ; #94579: origin
                    (Ba_survivorat_s_p2)

                    ; #18315: <==negation-removal== 71499 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #19371: <==negation-removal== 94579 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #43431: <==negation-removal== 79671 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #51706: <==negation-removal== 16100 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #53582: <==negation-removal== 63874 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71062: <==negation-removal== 52194 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #16100: origin
                    (Bc_survivorat_s_p2)

                    ; #52194: origin
                    (Bb_survivorat_s_p2)

                    ; #63874: <==closure== 94579 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71499: <==closure== 52194 (pos)
                    (Pb_survivorat_s_p2)

                    ; #79671: <==closure== 16100 (pos)
                    (Pc_survivorat_s_p2)

                    ; #94579: origin
                    (Ba_survivorat_s_p2)

                    ; #18315: <==negation-removal== 71499 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #19371: <==negation-removal== 94579 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #43431: <==negation-removal== 79671 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #51706: <==negation-removal== 16100 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #53582: <==negation-removal== 63874 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71062: <==negation-removal== 52194 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #16100: origin
                    (Bc_survivorat_s_p2)

                    ; #52194: origin
                    (Bb_survivorat_s_p2)

                    ; #63874: <==closure== 94579 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71499: <==closure== 52194 (pos)
                    (Pb_survivorat_s_p2)

                    ; #79671: <==closure== 16100 (pos)
                    (Pc_survivorat_s_p2)

                    ; #94579: origin
                    (Ba_survivorat_s_p2)

                    ; #18315: <==negation-removal== 71499 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #19371: <==negation-removal== 94579 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #43431: <==negation-removal== 79671 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #51706: <==negation-removal== 16100 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #53582: <==negation-removal== 63874 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71062: <==negation-removal== 52194 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #27568: origin
                    (Bc_survivorat_s_p3)

                    ; #28463: <==closure== 27568 (pos)
                    (Pc_survivorat_s_p3)

                    ; #59134: <==closure== 91179 (pos)
                    (Pa_survivorat_s_p3)

                    ; #73153: <==closure== 75006 (pos)
                    (Pb_survivorat_s_p3)

                    ; #75006: origin
                    (Bb_survivorat_s_p3)

                    ; #91179: origin
                    (Ba_survivorat_s_p3)

                    ; #48158: <==negation-removal== 28463 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #55595: <==negation-removal== 91179 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #65785: <==negation-removal== 73153 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #65799: <==negation-removal== 59134 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88746: <==negation-removal== 75006 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #88970: <==negation-removal== 27568 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #27568: origin
                    (Bc_survivorat_s_p3)

                    ; #28463: <==closure== 27568 (pos)
                    (Pc_survivorat_s_p3)

                    ; #59134: <==closure== 91179 (pos)
                    (Pa_survivorat_s_p3)

                    ; #73153: <==closure== 75006 (pos)
                    (Pb_survivorat_s_p3)

                    ; #75006: origin
                    (Bb_survivorat_s_p3)

                    ; #91179: origin
                    (Ba_survivorat_s_p3)

                    ; #48158: <==negation-removal== 28463 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #55595: <==negation-removal== 91179 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #65785: <==negation-removal== 73153 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #65799: <==negation-removal== 59134 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88746: <==negation-removal== 75006 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #88970: <==negation-removal== 27568 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #27568: origin
                    (Bc_survivorat_s_p3)

                    ; #28463: <==closure== 27568 (pos)
                    (Pc_survivorat_s_p3)

                    ; #59134: <==closure== 91179 (pos)
                    (Pa_survivorat_s_p3)

                    ; #73153: <==closure== 75006 (pos)
                    (Pb_survivorat_s_p3)

                    ; #75006: origin
                    (Bb_survivorat_s_p3)

                    ; #91179: origin
                    (Ba_survivorat_s_p3)

                    ; #48158: <==negation-removal== 28463 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #55595: <==negation-removal== 91179 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #65785: <==negation-removal== 73153 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #65799: <==negation-removal== 59134 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88746: <==negation-removal== 75006 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #88970: <==negation-removal== 27568 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #24199: origin
                    (Ba_survivorat_s_p4)

                    ; #26961: origin
                    (Bb_survivorat_s_p4)

                    ; #60295: <==closure== 24199 (pos)
                    (Pa_survivorat_s_p4)

                    ; #63500: origin
                    (Bc_survivorat_s_p4)

                    ; #78005: <==closure== 26961 (pos)
                    (Pb_survivorat_s_p4)

                    ; #80643: <==closure== 63500 (pos)
                    (Pc_survivorat_s_p4)

                    ; #16189: <==negation-removal== 80643 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28827: <==negation-removal== 78005 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #39551: <==negation-removal== 26961 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #41642: <==negation-removal== 63500 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56579: <==negation-removal== 24199 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60350: <==negation-removal== 60295 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #24199: origin
                    (Ba_survivorat_s_p4)

                    ; #26961: origin
                    (Bb_survivorat_s_p4)

                    ; #60295: <==closure== 24199 (pos)
                    (Pa_survivorat_s_p4)

                    ; #63500: origin
                    (Bc_survivorat_s_p4)

                    ; #78005: <==closure== 26961 (pos)
                    (Pb_survivorat_s_p4)

                    ; #80643: <==closure== 63500 (pos)
                    (Pc_survivorat_s_p4)

                    ; #16189: <==negation-removal== 80643 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28827: <==negation-removal== 78005 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #39551: <==negation-removal== 26961 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #41642: <==negation-removal== 63500 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56579: <==negation-removal== 24199 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60350: <==negation-removal== 60295 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #24199: origin
                    (Ba_survivorat_s_p4)

                    ; #26961: origin
                    (Bb_survivorat_s_p4)

                    ; #60295: <==closure== 24199 (pos)
                    (Pa_survivorat_s_p4)

                    ; #63500: origin
                    (Bc_survivorat_s_p4)

                    ; #78005: <==closure== 26961 (pos)
                    (Pb_survivorat_s_p4)

                    ; #80643: <==closure== 63500 (pos)
                    (Pc_survivorat_s_p4)

                    ; #16189: <==negation-removal== 80643 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28827: <==negation-removal== 78005 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #39551: <==negation-removal== 26961 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #41642: <==negation-removal== 63500 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #56579: <==negation-removal== 24199 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60350: <==negation-removal== 60295 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #42839: origin
                    (Bc_survivorat_s_p5)

                    ; #46887: <==closure== 42839 (pos)
                    (Pc_survivorat_s_p5)

                    ; #57168: origin
                    (Ba_survivorat_s_p5)

                    ; #67300: origin
                    (Bb_survivorat_s_p5)

                    ; #76603: <==closure== 67300 (pos)
                    (Pb_survivorat_s_p5)

                    ; #86102: <==closure== 57168 (pos)
                    (Pa_survivorat_s_p5)

                    ; #24893: <==negation-removal== 46887 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #42436: <==negation-removal== 57168 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #68946: <==negation-removal== 86102 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #76803: <==negation-removal== 76603 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #80787: <==negation-removal== 67300 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #86138: <==negation-removal== 42839 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #42839: origin
                    (Bc_survivorat_s_p5)

                    ; #46887: <==closure== 42839 (pos)
                    (Pc_survivorat_s_p5)

                    ; #57168: origin
                    (Ba_survivorat_s_p5)

                    ; #67300: origin
                    (Bb_survivorat_s_p5)

                    ; #76603: <==closure== 67300 (pos)
                    (Pb_survivorat_s_p5)

                    ; #86102: <==closure== 57168 (pos)
                    (Pa_survivorat_s_p5)

                    ; #24893: <==negation-removal== 46887 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #42436: <==negation-removal== 57168 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #68946: <==negation-removal== 86102 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #76803: <==negation-removal== 76603 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #80787: <==negation-removal== 67300 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #86138: <==negation-removal== 42839 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #42839: origin
                    (Bc_survivorat_s_p5)

                    ; #46887: <==closure== 42839 (pos)
                    (Pc_survivorat_s_p5)

                    ; #57168: origin
                    (Ba_survivorat_s_p5)

                    ; #67300: origin
                    (Bb_survivorat_s_p5)

                    ; #76603: <==closure== 67300 (pos)
                    (Pb_survivorat_s_p5)

                    ; #86102: <==closure== 57168 (pos)
                    (Pa_survivorat_s_p5)

                    ; #24893: <==negation-removal== 46887 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #42436: <==negation-removal== 57168 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #68946: <==negation-removal== 86102 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #76803: <==negation-removal== 76603 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #80787: <==negation-removal== 67300 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #86138: <==negation-removal== 42839 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #10249: origin
                    (Ba_survivorat_s_p6)

                    ; #27848: <==closure== 90063 (pos)
                    (Pc_survivorat_s_p6)

                    ; #46203: <==closure== 62645 (pos)
                    (Pb_survivorat_s_p6)

                    ; #62645: origin
                    (Bb_survivorat_s_p6)

                    ; #64520: <==closure== 10249 (pos)
                    (Pa_survivorat_s_p6)

                    ; #90063: origin
                    (Bc_survivorat_s_p6)

                    ; #31387: <==negation-removal== 62645 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #50001: <==negation-removal== 27848 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56349: <==negation-removal== 10249 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83322: <==negation-removal== 90063 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #86024: <==negation-removal== 46203 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #86336: <==negation-removal== 64520 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #10249: origin
                    (Ba_survivorat_s_p6)

                    ; #27848: <==closure== 90063 (pos)
                    (Pc_survivorat_s_p6)

                    ; #46203: <==closure== 62645 (pos)
                    (Pb_survivorat_s_p6)

                    ; #62645: origin
                    (Bb_survivorat_s_p6)

                    ; #64520: <==closure== 10249 (pos)
                    (Pa_survivorat_s_p6)

                    ; #90063: origin
                    (Bc_survivorat_s_p6)

                    ; #31387: <==negation-removal== 62645 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #50001: <==negation-removal== 27848 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56349: <==negation-removal== 10249 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83322: <==negation-removal== 90063 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #86024: <==negation-removal== 46203 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #86336: <==negation-removal== 64520 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #10249: origin
                    (Ba_survivorat_s_p6)

                    ; #27848: <==closure== 90063 (pos)
                    (Pc_survivorat_s_p6)

                    ; #46203: <==closure== 62645 (pos)
                    (Pb_survivorat_s_p6)

                    ; #62645: origin
                    (Bb_survivorat_s_p6)

                    ; #64520: <==closure== 10249 (pos)
                    (Pa_survivorat_s_p6)

                    ; #90063: origin
                    (Bc_survivorat_s_p6)

                    ; #31387: <==negation-removal== 62645 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #50001: <==negation-removal== 27848 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56349: <==negation-removal== 10249 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83322: <==negation-removal== 90063 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #86024: <==negation-removal== 46203 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #86336: <==negation-removal== 64520 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #49140: origin
                    (Ba_survivorat_s_p7)

                    ; #49793: <==closure== 87864 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50357: <==closure== 59714 (pos)
                    (Pc_survivorat_s_p7)

                    ; #59714: origin
                    (Bc_survivorat_s_p7)

                    ; #72135: <==closure== 49140 (pos)
                    (Pa_survivorat_s_p7)

                    ; #87864: origin
                    (Bb_survivorat_s_p7)

                    ; #28749: <==negation-removal== 49793 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #37089: <==negation-removal== 50357 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #41774: <==negation-removal== 59714 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #67155: <==negation-removal== 87864 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67382: <==negation-removal== 49140 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68178: <==negation-removal== 72135 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #49140: origin
                    (Ba_survivorat_s_p7)

                    ; #49793: <==closure== 87864 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50357: <==closure== 59714 (pos)
                    (Pc_survivorat_s_p7)

                    ; #59714: origin
                    (Bc_survivorat_s_p7)

                    ; #72135: <==closure== 49140 (pos)
                    (Pa_survivorat_s_p7)

                    ; #87864: origin
                    (Bb_survivorat_s_p7)

                    ; #28749: <==negation-removal== 49793 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #37089: <==negation-removal== 50357 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #41774: <==negation-removal== 59714 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #67155: <==negation-removal== 87864 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67382: <==negation-removal== 49140 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68178: <==negation-removal== 72135 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #49140: origin
                    (Ba_survivorat_s_p7)

                    ; #49793: <==closure== 87864 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50357: <==closure== 59714 (pos)
                    (Pc_survivorat_s_p7)

                    ; #59714: origin
                    (Bc_survivorat_s_p7)

                    ; #72135: <==closure== 49140 (pos)
                    (Pa_survivorat_s_p7)

                    ; #87864: origin
                    (Bb_survivorat_s_p7)

                    ; #28749: <==negation-removal== 49793 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #37089: <==negation-removal== 50357 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #41774: <==negation-removal== 59714 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #67155: <==negation-removal== 87864 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67382: <==negation-removal== 49140 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68178: <==negation-removal== 72135 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #11707: <==closure== 69792 (pos)
                    (Pb_survivorat_s_p8)

                    ; #15261: origin
                    (Ba_survivorat_s_p8)

                    ; #28406: origin
                    (Bc_survivorat_s_p8)

                    ; #48506: <==closure== 28406 (pos)
                    (Pc_survivorat_s_p8)

                    ; #50078: <==closure== 15261 (pos)
                    (Pa_survivorat_s_p8)

                    ; #69792: origin
                    (Bb_survivorat_s_p8)

                    ; #20469: <==negation-removal== 11707 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #23321: <==negation-removal== 48506 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #29363: <==negation-removal== 50078 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #58262: <==negation-removal== 28406 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64067: <==negation-removal== 15261 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #71969: <==negation-removal== 69792 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #11707: <==closure== 69792 (pos)
                    (Pb_survivorat_s_p8)

                    ; #15261: origin
                    (Ba_survivorat_s_p8)

                    ; #28406: origin
                    (Bc_survivorat_s_p8)

                    ; #48506: <==closure== 28406 (pos)
                    (Pc_survivorat_s_p8)

                    ; #50078: <==closure== 15261 (pos)
                    (Pa_survivorat_s_p8)

                    ; #69792: origin
                    (Bb_survivorat_s_p8)

                    ; #20469: <==negation-removal== 11707 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #23321: <==negation-removal== 48506 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #29363: <==negation-removal== 50078 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #58262: <==negation-removal== 28406 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64067: <==negation-removal== 15261 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #71969: <==negation-removal== 69792 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #11707: <==closure== 69792 (pos)
                    (Pb_survivorat_s_p8)

                    ; #15261: origin
                    (Ba_survivorat_s_p8)

                    ; #28406: origin
                    (Bc_survivorat_s_p8)

                    ; #48506: <==closure== 28406 (pos)
                    (Pc_survivorat_s_p8)

                    ; #50078: <==closure== 15261 (pos)
                    (Pa_survivorat_s_p8)

                    ; #69792: origin
                    (Bb_survivorat_s_p8)

                    ; #20469: <==negation-removal== 11707 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #23321: <==negation-removal== 48506 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #29363: <==negation-removal== 50078 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #58262: <==negation-removal== 28406 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #64067: <==negation-removal== 15261 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #71969: <==negation-removal== 69792 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #24685: <==closure== 42442 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41997: origin
                    (Bb_survivorat_s_p9)

                    ; #42442: origin
                    (Ba_survivorat_s_p9)

                    ; #44587: <==closure== 41997 (pos)
                    (Pb_survivorat_s_p9)

                    ; #57299: origin
                    (Bc_survivorat_s_p9)

                    ; #86239: <==closure== 57299 (pos)
                    (Pc_survivorat_s_p9)

                    ; #11848: <==negation-removal== 86239 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #20961: <==negation-removal== 24685 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #26036: <==negation-removal== 57299 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #53773: <==negation-removal== 44587 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #80021: <==negation-removal== 42442 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #95869: <==negation-removal== 41997 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #24685: <==closure== 42442 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41997: origin
                    (Bb_survivorat_s_p9)

                    ; #42442: origin
                    (Ba_survivorat_s_p9)

                    ; #44587: <==closure== 41997 (pos)
                    (Pb_survivorat_s_p9)

                    ; #57299: origin
                    (Bc_survivorat_s_p9)

                    ; #86239: <==closure== 57299 (pos)
                    (Pc_survivorat_s_p9)

                    ; #11848: <==negation-removal== 86239 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #20961: <==negation-removal== 24685 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #26036: <==negation-removal== 57299 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #53773: <==negation-removal== 44587 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #80021: <==negation-removal== 42442 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #95869: <==negation-removal== 41997 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #24685: <==closure== 42442 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41997: origin
                    (Bb_survivorat_s_p9)

                    ; #42442: origin
                    (Ba_survivorat_s_p9)

                    ; #44587: <==closure== 41997 (pos)
                    (Pb_survivorat_s_p9)

                    ; #57299: origin
                    (Bc_survivorat_s_p9)

                    ; #86239: <==closure== 57299 (pos)
                    (Pc_survivorat_s_p9)

                    ; #11848: <==negation-removal== 86239 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #20961: <==negation-removal== 24685 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #26036: <==negation-removal== 57299 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #53773: <==negation-removal== 44587 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #80021: <==negation-removal== 42442 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #95869: <==negation-removal== 41997 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #21182: origin
                    (at_a_p1)

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #44486: origin
                    (at_a_p10)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #72952: origin
                    (at_a_p11)

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #77911: origin
                    (at_a_p12)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #47966: origin
                    (at_a_p2)

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #51336: origin
                    (at_a_p4)

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #85309: origin
                    (at_a_p5)

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #66396: origin
                    (at_a_p6)

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #55406: origin
                    (at_a_p7)

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #77455: origin
                    (at_a_p8)

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #18655: origin
                    (not_at_a_p10)

                    ; #27601: origin
                    (at_a_p9)

                    ; #44486: <==negation-removal== 18655 (pos)
                    (not (at_a_p10))

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #63317: origin
                    (not_at_a_p11)

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #44486: origin
                    (at_a_p10)

                    ; #63317: origin
                    (not_at_a_p11)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #63317: origin
                    (not_at_a_p11)

                    ; #72952: origin
                    (at_a_p11)

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #63317: origin
                    (not_at_a_p11)

                    ; #77911: origin
                    (at_a_p12)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #47966: origin
                    (at_a_p2)

                    ; #63317: origin
                    (not_at_a_p11)

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #63317: origin
                    (not_at_a_p11)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #51336: origin
                    (at_a_p4)

                    ; #63317: origin
                    (not_at_a_p11)

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #63317: origin
                    (not_at_a_p11)

                    ; #85309: origin
                    (at_a_p5)

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #63317: origin
                    (not_at_a_p11)

                    ; #66396: origin
                    (at_a_p6)

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #55406: origin
                    (at_a_p7)

                    ; #63317: origin
                    (not_at_a_p11)

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #63317: origin
                    (not_at_a_p11)

                    ; #77455: origin
                    (at_a_p8)

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #27601: origin
                    (at_a_p9)

                    ; #63317: origin
                    (not_at_a_p11)

                    ; #72952: <==negation-removal== 63317 (pos)
                    (not (at_a_p11))

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #24337: origin
                    (not_at_a_p12)

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #44486: origin
                    (at_a_p10)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #72952: origin
                    (at_a_p11)

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #77911: origin
                    (at_a_p12)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #47966: origin
                    (at_a_p2)

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #51336: origin
                    (at_a_p4)

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #85309: origin
                    (at_a_p5)

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #66396: origin
                    (at_a_p6)

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #55406: origin
                    (at_a_p7)

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #77455: origin
                    (at_a_p8)

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #24337: origin
                    (not_at_a_p12)

                    ; #27601: origin
                    (at_a_p9)

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))

                    ; #77911: <==negation-removal== 24337 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #53386: origin
                    (not_at_a_p1)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #44486: origin
                    (at_a_p10)

                    ; #53386: origin
                    (not_at_a_p1)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #53386: origin
                    (not_at_a_p1)

                    ; #72952: origin
                    (at_a_p11)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #53386: origin
                    (not_at_a_p1)

                    ; #77911: origin
                    (at_a_p12)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #47966: origin
                    (at_a_p2)

                    ; #53386: origin
                    (not_at_a_p1)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #53386: origin
                    (not_at_a_p1)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #51336: origin
                    (at_a_p4)

                    ; #53386: origin
                    (not_at_a_p1)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #53386: origin
                    (not_at_a_p1)

                    ; #85309: origin
                    (at_a_p5)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #53386: origin
                    (not_at_a_p1)

                    ; #66396: origin
                    (at_a_p6)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #53386: origin
                    (not_at_a_p1)

                    ; #55406: origin
                    (at_a_p7)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #53386: origin
                    (not_at_a_p1)

                    ; #77455: origin
                    (at_a_p8)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #27601: origin
                    (at_a_p9)

                    ; #53386: origin
                    (not_at_a_p1)

                    ; #21182: <==negation-removal== 53386 (pos)
                    (not (at_a_p1))

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #44486: origin
                    (at_a_p10)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #72952: origin
                    (at_a_p11)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #77911: origin
                    (at_a_p12)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #47966: origin
                    (at_a_p2)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #83854: origin
                    (not_at_a_p2)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #51336: origin
                    (at_a_p4)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #83854: origin
                    (not_at_a_p2)

                    ; #85309: origin
                    (at_a_p5)

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #66396: origin
                    (at_a_p6)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #55406: origin
                    (at_a_p7)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #77455: origin
                    (at_a_p8)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #27601: origin
                    (at_a_p9)

                    ; #83854: origin
                    (not_at_a_p2)

                    ; #47966: <==negation-removal== 83854 (pos)
                    (not (at_a_p2))

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #21182: origin
                    (at_a_p1)

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #44486: origin
                    (at_a_p10)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #72952: origin
                    (at_a_p11)

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #77911: origin
                    (at_a_p12)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #47966: origin
                    (at_a_p2)

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #51336: origin
                    (at_a_p4)

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #85309: origin
                    (at_a_p5)

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #66396: origin
                    (at_a_p6)

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #55406: origin
                    (at_a_p7)

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #77455: origin
                    (at_a_p8)

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #18668: origin
                    (not_at_a_p3)

                    ; #27601: origin
                    (at_a_p9)

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))

                    ; #85844: <==negation-removal== 18668 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #44486: origin
                    (at_a_p10)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #72952: origin
                    (at_a_p11)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #77911: origin
                    (at_a_p12)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #47966: origin
                    (at_a_p2)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #84615: origin
                    (not_at_a_p4)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #51336: origin
                    (at_a_p4)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #84615: origin
                    (not_at_a_p4)

                    ; #85309: origin
                    (at_a_p5)

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #66396: origin
                    (at_a_p6)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #55406: origin
                    (at_a_p7)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #77455: origin
                    (at_a_p8)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #27601: origin
                    (at_a_p9)

                    ; #84615: origin
                    (not_at_a_p4)

                    ; #51336: <==negation-removal== 84615 (pos)
                    (not (at_a_p4))

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #60937: origin
                    (not_at_a_p5)

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #44486: origin
                    (at_a_p10)

                    ; #60937: origin
                    (not_at_a_p5)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #60937: origin
                    (not_at_a_p5)

                    ; #72952: origin
                    (at_a_p11)

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #60937: origin
                    (not_at_a_p5)

                    ; #77911: origin
                    (at_a_p12)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #47966: origin
                    (at_a_p2)

                    ; #60937: origin
                    (not_at_a_p5)

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #60937: origin
                    (not_at_a_p5)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #51336: origin
                    (at_a_p4)

                    ; #60937: origin
                    (not_at_a_p5)

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #60937: origin
                    (not_at_a_p5)

                    ; #85309: origin
                    (at_a_p5)

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #60937: origin
                    (not_at_a_p5)

                    ; #66396: origin
                    (at_a_p6)

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #55406: origin
                    (at_a_p7)

                    ; #60937: origin
                    (not_at_a_p5)

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #60937: origin
                    (not_at_a_p5)

                    ; #77455: origin
                    (at_a_p8)

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #27601: origin
                    (at_a_p9)

                    ; #60937: origin
                    (not_at_a_p5)

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))

                    ; #85309: <==negation-removal== 60937 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #44989: origin
                    (not_at_a_p6)

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #44486: origin
                    (at_a_p10)

                    ; #44989: origin
                    (not_at_a_p6)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #44989: origin
                    (not_at_a_p6)

                    ; #72952: origin
                    (at_a_p11)

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #44989: origin
                    (not_at_a_p6)

                    ; #77911: origin
                    (at_a_p12)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #44989: origin
                    (not_at_a_p6)

                    ; #47966: origin
                    (at_a_p2)

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #44989: origin
                    (not_at_a_p6)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #44989: origin
                    (not_at_a_p6)

                    ; #51336: origin
                    (at_a_p4)

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #44989: origin
                    (not_at_a_p6)

                    ; #85309: origin
                    (at_a_p5)

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #44989: origin
                    (not_at_a_p6)

                    ; #66396: origin
                    (at_a_p6)

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #44989: origin
                    (not_at_a_p6)

                    ; #55406: origin
                    (at_a_p7)

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #44989: origin
                    (not_at_a_p6)

                    ; #77455: origin
                    (at_a_p8)

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #27601: origin
                    (at_a_p9)

                    ; #44989: origin
                    (not_at_a_p6)

                    ; #66396: <==negation-removal== 44989 (pos)
                    (not (at_a_p6))

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #55666: origin
                    (not_at_a_p7)

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #44486: origin
                    (at_a_p10)

                    ; #55666: origin
                    (not_at_a_p7)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #55666: origin
                    (not_at_a_p7)

                    ; #72952: origin
                    (at_a_p11)

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #55666: origin
                    (not_at_a_p7)

                    ; #77911: origin
                    (at_a_p12)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #47966: origin
                    (at_a_p2)

                    ; #55666: origin
                    (not_at_a_p7)

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #55666: origin
                    (not_at_a_p7)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #51336: origin
                    (at_a_p4)

                    ; #55666: origin
                    (not_at_a_p7)

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #55666: origin
                    (not_at_a_p7)

                    ; #85309: origin
                    (at_a_p5)

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #55666: origin
                    (not_at_a_p7)

                    ; #66396: origin
                    (at_a_p6)

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #55406: origin
                    (at_a_p7)

                    ; #55666: origin
                    (not_at_a_p7)

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #55666: origin
                    (not_at_a_p7)

                    ; #77455: origin
                    (at_a_p8)

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #27601: origin
                    (at_a_p9)

                    ; #55666: origin
                    (not_at_a_p7)

                    ; #55406: <==negation-removal== 55666 (pos)
                    (not (at_a_p7))

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #44486: origin
                    (at_a_p10)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #72952: origin
                    (at_a_p11)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #77911: origin
                    (at_a_p12)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #47966: origin
                    (at_a_p2)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #85844: origin
                    (at_a_p3)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #51336: origin
                    (at_a_p4)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #85309: origin
                    (at_a_p5)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #66396: origin
                    (at_a_p6)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #55406: origin
                    (at_a_p7)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #77455: origin
                    (at_a_p8)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #27601: origin
                    (at_a_p9)

                    ; #88860: origin
                    (not_at_a_p8)

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))

                    ; #77455: <==negation-removal== 88860 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #21182: origin
                    (at_a_p1)

                    ; #76344: origin
                    (not_at_a_p9)

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))

                    ; #53386: <==negation-removal== 21182 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #44486: origin
                    (at_a_p10)

                    ; #76344: origin
                    (not_at_a_p9)

                    ; #18655: <==negation-removal== 44486 (pos)
                    (not (not_at_a_p10))

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #72952: origin
                    (at_a_p11)

                    ; #76344: origin
                    (not_at_a_p9)

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))

                    ; #63317: <==negation-removal== 72952 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #76344: origin
                    (not_at_a_p9)

                    ; #77911: origin
                    (at_a_p12)

                    ; #24337: <==negation-removal== 77911 (pos)
                    (not (not_at_a_p12))

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #47966: origin
                    (at_a_p2)

                    ; #76344: origin
                    (not_at_a_p9)

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))

                    ; #83854: <==negation-removal== 47966 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #76344: origin
                    (not_at_a_p9)

                    ; #85844: origin
                    (at_a_p3)

                    ; #18668: <==negation-removal== 85844 (pos)
                    (not (not_at_a_p3))

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #51336: origin
                    (at_a_p4)

                    ; #76344: origin
                    (not_at_a_p9)

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))

                    ; #84615: <==negation-removal== 51336 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #76344: origin
                    (not_at_a_p9)

                    ; #85309: origin
                    (at_a_p5)

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))

                    ; #60937: <==negation-removal== 85309 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #66396: origin
                    (at_a_p6)

                    ; #76344: origin
                    (not_at_a_p9)

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))

                    ; #44989: <==negation-removal== 66396 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #55406: origin
                    (at_a_p7)

                    ; #76344: origin
                    (not_at_a_p9)

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))

                    ; #55666: <==negation-removal== 55406 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #76344: origin
                    (not_at_a_p9)

                    ; #77455: origin
                    (at_a_p8)

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))

                    ; #88860: <==negation-removal== 77455 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #27601: origin
                    (at_a_p9)

                    ; #76344: origin
                    (not_at_a_p9)

                    ; #27601: <==negation-removal== 76344 (pos)
                    (not (at_a_p9))

                    ; #76344: <==negation-removal== 27601 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #28736: origin
                    (not_at_b_p10)

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #55778: origin
                    (at_b_p11)

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #41328: origin
                    (at_b_p12)

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #43398: origin
                    (at_b_p2)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #30432: origin
                    (at_b_p3)

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #72943: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #39655: origin
                    (at_b_p6)

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #57536: origin
                    (at_b_p7)

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #49815: origin
                    (at_b_p8)

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p10)

                    ; #89316: origin
                    (at_b_p9)

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))

                    ; #92146: <==negation-removal== 28736 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #65913: origin
                    (not_at_b_p11)

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #65913: origin
                    (not_at_b_p11)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #55778: origin
                    (at_b_p11)

                    ; #65913: origin
                    (not_at_b_p11)

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #41328: origin
                    (at_b_p12)

                    ; #65913: origin
                    (not_at_b_p11)

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #43398: origin
                    (at_b_p2)

                    ; #65913: origin
                    (not_at_b_p11)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #30432: origin
                    (at_b_p3)

                    ; #65913: origin
                    (not_at_b_p11)

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #65913: origin
                    (not_at_b_p11)

                    ; #72943: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #65913: origin
                    (not_at_b_p11)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #39655: origin
                    (at_b_p6)

                    ; #65913: origin
                    (not_at_b_p11)

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #57536: origin
                    (at_b_p7)

                    ; #65913: origin
                    (not_at_b_p11)

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #49815: origin
                    (at_b_p8)

                    ; #65913: origin
                    (not_at_b_p11)

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #65913: origin
                    (not_at_b_p11)

                    ; #89316: origin
                    (at_b_p9)

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))

                    ; #55778: <==negation-removal== 65913 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #66391: origin
                    (not_at_b_p12)

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #66391: origin
                    (not_at_b_p12)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #55778: origin
                    (at_b_p11)

                    ; #66391: origin
                    (not_at_b_p12)

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #41328: origin
                    (at_b_p12)

                    ; #66391: origin
                    (not_at_b_p12)

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #43398: origin
                    (at_b_p2)

                    ; #66391: origin
                    (not_at_b_p12)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #30432: origin
                    (at_b_p3)

                    ; #66391: origin
                    (not_at_b_p12)

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #66391: origin
                    (not_at_b_p12)

                    ; #72943: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #66391: origin
                    (not_at_b_p12)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #39655: origin
                    (at_b_p6)

                    ; #66391: origin
                    (not_at_b_p12)

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #57536: origin
                    (at_b_p7)

                    ; #66391: origin
                    (not_at_b_p12)

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #49815: origin
                    (at_b_p8)

                    ; #66391: origin
                    (not_at_b_p12)

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #66391: origin
                    (not_at_b_p12)

                    ; #89316: origin
                    (at_b_p9)

                    ; #41328: <==negation-removal== 66391 (pos)
                    (not (at_b_p12))

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #80675: origin
                    (not_at_b_p1)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #80675: origin
                    (not_at_b_p1)

                    ; #92146: origin
                    (at_b_p10)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #55778: origin
                    (at_b_p11)

                    ; #80675: origin
                    (not_at_b_p1)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #41328: origin
                    (at_b_p12)

                    ; #80675: origin
                    (not_at_b_p1)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #43398: origin
                    (at_b_p2)

                    ; #80675: origin
                    (not_at_b_p1)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #30432: origin
                    (at_b_p3)

                    ; #80675: origin
                    (not_at_b_p1)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #72943: origin
                    (at_b_p4)

                    ; #80675: origin
                    (not_at_b_p1)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #80675: origin
                    (not_at_b_p1)

                    ; #83886: origin
                    (at_b_p5)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #39655: origin
                    (at_b_p6)

                    ; #80675: origin
                    (not_at_b_p1)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #57536: origin
                    (at_b_p7)

                    ; #80675: origin
                    (not_at_b_p1)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #49815: origin
                    (at_b_p8)

                    ; #80675: origin
                    (not_at_b_p1)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #80675: origin
                    (not_at_b_p1)

                    ; #89316: origin
                    (at_b_p9)

                    ; #17240: <==negation-removal== 80675 (pos)
                    (not (at_b_p1))

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #17240: origin
                    (at_b_p1)

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #55778: origin
                    (at_b_p11)

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #41328: origin
                    (at_b_p12)

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #43398: origin
                    (at_b_p2)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #30432: origin
                    (at_b_p3)

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #72943: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #39655: origin
                    (at_b_p6)

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #57536: origin
                    (at_b_p7)

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #49815: origin
                    (at_b_p8)

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #13574: origin
                    (not_at_b_p2)

                    ; #89316: origin
                    (at_b_p9)

                    ; #43398: <==negation-removal== 13574 (pos)
                    (not (at_b_p2))

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #84373: origin
                    (not_at_b_p3)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #55778: origin
                    (at_b_p11)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #41328: origin
                    (at_b_p12)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #43398: origin
                    (at_b_p2)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #30432: origin
                    (at_b_p3)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #72943: origin
                    (at_b_p4)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #83886: origin
                    (at_b_p5)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #39655: origin
                    (at_b_p6)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #57536: origin
                    (at_b_p7)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #49815: origin
                    (at_b_p8)

                    ; #84373: origin
                    (not_at_b_p3)

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #84373: origin
                    (not_at_b_p3)

                    ; #89316: origin
                    (at_b_p9)

                    ; #30432: <==negation-removal== 84373 (pos)
                    (not (at_b_p3))

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #26261: origin
                    (not_at_b_p4)

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #55778: origin
                    (at_b_p11)

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #41328: origin
                    (at_b_p12)

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #43398: origin
                    (at_b_p2)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #30432: origin
                    (at_b_p3)

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #72943: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #39655: origin
                    (at_b_p6)

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #57536: origin
                    (at_b_p7)

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #49815: origin
                    (at_b_p8)

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #26261: origin
                    (not_at_b_p4)

                    ; #89316: origin
                    (at_b_p9)

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))

                    ; #72943: <==negation-removal== 26261 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #31177: origin
                    (not_at_b_p5)

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #55778: origin
                    (at_b_p11)

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #41328: origin
                    (at_b_p12)

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #43398: origin
                    (at_b_p2)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #30432: origin
                    (at_b_p3)

                    ; #31177: origin
                    (not_at_b_p5)

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #72943: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #39655: origin
                    (at_b_p6)

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #57536: origin
                    (at_b_p7)

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #49815: origin
                    (at_b_p8)

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #31177: origin
                    (not_at_b_p5)

                    ; #89316: origin
                    (at_b_p9)

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))

                    ; #83886: <==negation-removal== 31177 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #76822: origin
                    (not_at_b_p6)

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #76822: origin
                    (not_at_b_p6)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #55778: origin
                    (at_b_p11)

                    ; #76822: origin
                    (not_at_b_p6)

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #41328: origin
                    (at_b_p12)

                    ; #76822: origin
                    (not_at_b_p6)

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #43398: origin
                    (at_b_p2)

                    ; #76822: origin
                    (not_at_b_p6)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #30432: origin
                    (at_b_p3)

                    ; #76822: origin
                    (not_at_b_p6)

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #72943: origin
                    (at_b_p4)

                    ; #76822: origin
                    (not_at_b_p6)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #76822: origin
                    (not_at_b_p6)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #39655: origin
                    (at_b_p6)

                    ; #76822: origin
                    (not_at_b_p6)

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #57536: origin
                    (at_b_p7)

                    ; #76822: origin
                    (not_at_b_p6)

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #49815: origin
                    (at_b_p8)

                    ; #76822: origin
                    (not_at_b_p6)

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #76822: origin
                    (not_at_b_p6)

                    ; #89316: origin
                    (at_b_p9)

                    ; #39655: <==negation-removal== 76822 (pos)
                    (not (at_b_p6))

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #58645: origin
                    (not_at_b_p7)

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #58645: origin
                    (not_at_b_p7)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #55778: origin
                    (at_b_p11)

                    ; #58645: origin
                    (not_at_b_p7)

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #41328: origin
                    (at_b_p12)

                    ; #58645: origin
                    (not_at_b_p7)

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #43398: origin
                    (at_b_p2)

                    ; #58645: origin
                    (not_at_b_p7)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #30432: origin
                    (at_b_p3)

                    ; #58645: origin
                    (not_at_b_p7)

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #58645: origin
                    (not_at_b_p7)

                    ; #72943: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #58645: origin
                    (not_at_b_p7)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #39655: origin
                    (at_b_p6)

                    ; #58645: origin
                    (not_at_b_p7)

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #57536: origin
                    (at_b_p7)

                    ; #58645: origin
                    (not_at_b_p7)

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #49815: origin
                    (at_b_p8)

                    ; #58645: origin
                    (not_at_b_p7)

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #58645: origin
                    (not_at_b_p7)

                    ; #89316: origin
                    (at_b_p9)

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))

                    ; #57536: <==negation-removal== 58645 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #67659: origin
                    (not_at_b_p8)

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #67659: origin
                    (not_at_b_p8)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #55778: origin
                    (at_b_p11)

                    ; #67659: origin
                    (not_at_b_p8)

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #41328: origin
                    (at_b_p12)

                    ; #67659: origin
                    (not_at_b_p8)

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #43398: origin
                    (at_b_p2)

                    ; #67659: origin
                    (not_at_b_p8)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #30432: origin
                    (at_b_p3)

                    ; #67659: origin
                    (not_at_b_p8)

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #67659: origin
                    (not_at_b_p8)

                    ; #72943: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #67659: origin
                    (not_at_b_p8)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #39655: origin
                    (at_b_p6)

                    ; #67659: origin
                    (not_at_b_p8)

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #57536: origin
                    (at_b_p7)

                    ; #67659: origin
                    (not_at_b_p8)

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #49815: origin
                    (at_b_p8)

                    ; #67659: origin
                    (not_at_b_p8)

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #67659: origin
                    (not_at_b_p8)

                    ; #89316: origin
                    (at_b_p9)

                    ; #49815: <==negation-removal== 67659 (pos)
                    (not (at_b_p8))

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #17240: origin
                    (at_b_p1)

                    ; #54279: origin
                    (not_at_b_p9)

                    ; #80675: <==negation-removal== 17240 (pos)
                    (not (not_at_b_p1))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #54279: origin
                    (not_at_b_p9)

                    ; #92146: origin
                    (at_b_p10)

                    ; #28736: <==negation-removal== 92146 (pos)
                    (not (not_at_b_p10))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #54279: origin
                    (not_at_b_p9)

                    ; #55778: origin
                    (at_b_p11)

                    ; #65913: <==negation-removal== 55778 (pos)
                    (not (not_at_b_p11))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #41328: origin
                    (at_b_p12)

                    ; #54279: origin
                    (not_at_b_p9)

                    ; #66391: <==negation-removal== 41328 (pos)
                    (not (not_at_b_p12))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #43398: origin
                    (at_b_p2)

                    ; #54279: origin
                    (not_at_b_p9)

                    ; #13574: <==negation-removal== 43398 (pos)
                    (not (not_at_b_p2))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #30432: origin
                    (at_b_p3)

                    ; #54279: origin
                    (not_at_b_p9)

                    ; #84373: <==negation-removal== 30432 (pos)
                    (not (not_at_b_p3))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #54279: origin
                    (not_at_b_p9)

                    ; #72943: origin
                    (at_b_p4)

                    ; #26261: <==negation-removal== 72943 (pos)
                    (not (not_at_b_p4))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #54279: origin
                    (not_at_b_p9)

                    ; #83886: origin
                    (at_b_p5)

                    ; #31177: <==negation-removal== 83886 (pos)
                    (not (not_at_b_p5))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #39655: origin
                    (at_b_p6)

                    ; #54279: origin
                    (not_at_b_p9)

                    ; #76822: <==negation-removal== 39655 (pos)
                    (not (not_at_b_p6))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #54279: origin
                    (not_at_b_p9)

                    ; #57536: origin
                    (at_b_p7)

                    ; #58645: <==negation-removal== 57536 (pos)
                    (not (not_at_b_p7))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #49815: origin
                    (at_b_p8)

                    ; #54279: origin
                    (not_at_b_p9)

                    ; #67659: <==negation-removal== 49815 (pos)
                    (not (not_at_b_p8))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #54279: origin
                    (not_at_b_p9)

                    ; #89316: origin
                    (at_b_p9)

                    ; #54279: <==negation-removal== 89316 (pos)
                    (not (not_at_b_p9))

                    ; #89316: <==negation-removal== 54279 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #29182: origin
                    (at_c_p1)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #28511: origin
                    (at_c_p11)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #35012: origin
                    (at_c_p12)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #34071: origin
                    (at_c_p2)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #84452: origin
                    (not_at_c_p10)

                    ; #91852: origin
                    (at_c_p3)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #27048: origin
                    (at_c_p4)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #84452: origin
                    (not_at_c_p10)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #45766: origin
                    (at_c_p6)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #80776: origin
                    (at_c_p7)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #27730: origin
                    (at_c_p8)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #56804: origin
                    (at_c_p9)

                    ; #84452: origin
                    (not_at_c_p10)

                    ; #17480: <==negation-removal== 84452 (pos)
                    (not (at_c_p10))

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #29182: origin
                    (at_c_p1)

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #17480: origin
                    (at_c_p10)

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #28511: origin
                    (at_c_p11)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #35012: origin
                    (at_c_p12)

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #34071: origin
                    (at_c_p2)

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #91852: origin
                    (at_c_p3)

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #27048: origin
                    (at_c_p4)

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #45766: origin
                    (at_c_p6)

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #80776: origin
                    (at_c_p7)

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #27730: origin
                    (at_c_p8)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #15971: origin
                    (not_at_c_p11)

                    ; #56804: origin
                    (at_c_p9)

                    ; #28511: <==negation-removal== 15971 (pos)
                    (not (at_c_p11))

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #29182: origin
                    (at_c_p1)

                    ; #43589: origin
                    (not_at_c_p12)

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #43589: origin
                    (not_at_c_p12)

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #28511: origin
                    (at_c_p11)

                    ; #43589: origin
                    (not_at_c_p12)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #35012: origin
                    (at_c_p12)

                    ; #43589: origin
                    (not_at_c_p12)

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #34071: origin
                    (at_c_p2)

                    ; #43589: origin
                    (not_at_c_p12)

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #43589: origin
                    (not_at_c_p12)

                    ; #91852: origin
                    (at_c_p3)

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #27048: origin
                    (at_c_p4)

                    ; #43589: origin
                    (not_at_c_p12)

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #43589: origin
                    (not_at_c_p12)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #43589: origin
                    (not_at_c_p12)

                    ; #45766: origin
                    (at_c_p6)

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #43589: origin
                    (not_at_c_p12)

                    ; #80776: origin
                    (at_c_p7)

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #27730: origin
                    (at_c_p8)

                    ; #43589: origin
                    (not_at_c_p12)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #43589: origin
                    (not_at_c_p12)

                    ; #56804: origin
                    (at_c_p9)

                    ; #35012: <==negation-removal== 43589 (pos)
                    (not (at_c_p12))

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #29182: origin
                    (at_c_p1)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #28511: origin
                    (at_c_p11)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #35012: origin
                    (at_c_p12)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #34071: origin
                    (at_c_p2)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #91852: origin
                    (at_c_p3)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #27048: origin
                    (at_c_p4)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #91825: origin
                    (at_c_p5)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #45766: origin
                    (at_c_p6)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #80776: origin
                    (at_c_p7)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #27730: origin
                    (at_c_p8)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #56804: origin
                    (at_c_p9)

                    ; #99602: origin
                    (not_at_c_p1)

                    ; #29182: <==negation-removal== 99602 (pos)
                    (not (at_c_p1))

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #29182: origin
                    (at_c_p1)

                    ; #34512: origin
                    (not_at_c_p2)

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #34512: origin
                    (not_at_c_p2)

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #28511: origin
                    (at_c_p11)

                    ; #34512: origin
                    (not_at_c_p2)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #34512: origin
                    (not_at_c_p2)

                    ; #35012: origin
                    (at_c_p12)

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #34071: origin
                    (at_c_p2)

                    ; #34512: origin
                    (not_at_c_p2)

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #34512: origin
                    (not_at_c_p2)

                    ; #91852: origin
                    (at_c_p3)

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #27048: origin
                    (at_c_p4)

                    ; #34512: origin
                    (not_at_c_p2)

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #34512: origin
                    (not_at_c_p2)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #34512: origin
                    (not_at_c_p2)

                    ; #45766: origin
                    (at_c_p6)

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #34512: origin
                    (not_at_c_p2)

                    ; #80776: origin
                    (at_c_p7)

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #27730: origin
                    (at_c_p8)

                    ; #34512: origin
                    (not_at_c_p2)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #34512: origin
                    (not_at_c_p2)

                    ; #56804: origin
                    (at_c_p9)

                    ; #34071: <==negation-removal== 34512 (pos)
                    (not (at_c_p2))

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #29182: origin
                    (at_c_p1)

                    ; #74472: origin
                    (not_at_c_p3)

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #74472: origin
                    (not_at_c_p3)

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #28511: origin
                    (at_c_p11)

                    ; #74472: origin
                    (not_at_c_p3)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #35012: origin
                    (at_c_p12)

                    ; #74472: origin
                    (not_at_c_p3)

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #34071: origin
                    (at_c_p2)

                    ; #74472: origin
                    (not_at_c_p3)

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #74472: origin
                    (not_at_c_p3)

                    ; #91852: origin
                    (at_c_p3)

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #27048: origin
                    (at_c_p4)

                    ; #74472: origin
                    (not_at_c_p3)

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #74472: origin
                    (not_at_c_p3)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #45766: origin
                    (at_c_p6)

                    ; #74472: origin
                    (not_at_c_p3)

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #74472: origin
                    (not_at_c_p3)

                    ; #80776: origin
                    (at_c_p7)

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #27730: origin
                    (at_c_p8)

                    ; #74472: origin
                    (not_at_c_p3)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #56804: origin
                    (at_c_p9)

                    ; #74472: origin
                    (not_at_c_p3)

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))

                    ; #91852: <==negation-removal== 74472 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #29182: origin
                    (at_c_p1)

                    ; #34468: origin
                    (not_at_c_p4)

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #34468: origin
                    (not_at_c_p4)

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #28511: origin
                    (at_c_p11)

                    ; #34468: origin
                    (not_at_c_p4)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #34468: origin
                    (not_at_c_p4)

                    ; #35012: origin
                    (at_c_p12)

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #34071: origin
                    (at_c_p2)

                    ; #34468: origin
                    (not_at_c_p4)

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #34468: origin
                    (not_at_c_p4)

                    ; #91852: origin
                    (at_c_p3)

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #27048: origin
                    (at_c_p4)

                    ; #34468: origin
                    (not_at_c_p4)

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #34468: origin
                    (not_at_c_p4)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #34468: origin
                    (not_at_c_p4)

                    ; #45766: origin
                    (at_c_p6)

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #34468: origin
                    (not_at_c_p4)

                    ; #80776: origin
                    (at_c_p7)

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #27730: origin
                    (at_c_p8)

                    ; #34468: origin
                    (not_at_c_p4)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #34468: origin
                    (not_at_c_p4)

                    ; #56804: origin
                    (at_c_p9)

                    ; #27048: <==negation-removal== 34468 (pos)
                    (not (at_c_p4))

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #29182: origin
                    (at_c_p1)

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #17535: origin
                    (not_at_c_p5)

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #28511: origin
                    (at_c_p11)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #35012: origin
                    (at_c_p12)

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #34071: origin
                    (at_c_p2)

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #91852: origin
                    (at_c_p3)

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #27048: origin
                    (at_c_p4)

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #45766: origin
                    (at_c_p6)

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #80776: origin
                    (at_c_p7)

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #27730: origin
                    (at_c_p8)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #17535: origin
                    (not_at_c_p5)

                    ; #56804: origin
                    (at_c_p9)

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))

                    ; #91825: <==negation-removal== 17535 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #29182: origin
                    (at_c_p1)

                    ; #77231: origin
                    (not_at_c_p6)

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #77231: origin
                    (not_at_c_p6)

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #28511: origin
                    (at_c_p11)

                    ; #77231: origin
                    (not_at_c_p6)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #35012: origin
                    (at_c_p12)

                    ; #77231: origin
                    (not_at_c_p6)

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #34071: origin
                    (at_c_p2)

                    ; #77231: origin
                    (not_at_c_p6)

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #77231: origin
                    (not_at_c_p6)

                    ; #91852: origin
                    (at_c_p3)

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #27048: origin
                    (at_c_p4)

                    ; #77231: origin
                    (not_at_c_p6)

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #77231: origin
                    (not_at_c_p6)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #45766: origin
                    (at_c_p6)

                    ; #77231: origin
                    (not_at_c_p6)

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #77231: origin
                    (not_at_c_p6)

                    ; #80776: origin
                    (at_c_p7)

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #27730: origin
                    (at_c_p8)

                    ; #77231: origin
                    (not_at_c_p6)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #56804: origin
                    (at_c_p9)

                    ; #77231: origin
                    (not_at_c_p6)

                    ; #45766: <==negation-removal== 77231 (pos)
                    (not (at_c_p6))

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #29182: origin
                    (at_c_p1)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #28511: origin
                    (at_c_p11)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #35012: origin
                    (at_c_p12)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #34071: origin
                    (at_c_p2)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #88127: origin
                    (not_at_c_p7)

                    ; #91852: origin
                    (at_c_p3)

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #27048: origin
                    (at_c_p4)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #88127: origin
                    (not_at_c_p7)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #45766: origin
                    (at_c_p6)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #80776: origin
                    (at_c_p7)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #27730: origin
                    (at_c_p8)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #56804: origin
                    (at_c_p9)

                    ; #88127: origin
                    (not_at_c_p7)

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))

                    ; #80776: <==negation-removal== 88127 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #29182: origin
                    (at_c_p1)

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #17480: origin
                    (at_c_p10)

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #28511: origin
                    (at_c_p11)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #35012: origin
                    (at_c_p12)

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #34071: origin
                    (at_c_p2)

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #91852: origin
                    (at_c_p3)

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #27048: origin
                    (at_c_p4)

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #45766: origin
                    (at_c_p6)

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #80776: origin
                    (at_c_p7)

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #27730: origin
                    (at_c_p8)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #15656: origin
                    (not_at_c_p8)

                    ; #56804: origin
                    (at_c_p9)

                    ; #27730: <==negation-removal== 15656 (pos)
                    (not (at_c_p8))

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #29182: origin
                    (at_c_p1)

                    ; #46530: origin
                    (not_at_c_p9)

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))

                    ; #99602: <==negation-removal== 29182 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #17480: origin
                    (at_c_p10)

                    ; #46530: origin
                    (not_at_c_p9)

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))

                    ; #84452: <==negation-removal== 17480 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #28511: origin
                    (at_c_p11)

                    ; #46530: origin
                    (not_at_c_p9)

                    ; #15971: <==negation-removal== 28511 (pos)
                    (not (not_at_c_p11))

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #35012: origin
                    (at_c_p12)

                    ; #46530: origin
                    (not_at_c_p9)

                    ; #43589: <==negation-removal== 35012 (pos)
                    (not (not_at_c_p12))

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #34071: origin
                    (at_c_p2)

                    ; #46530: origin
                    (not_at_c_p9)

                    ; #34512: <==negation-removal== 34071 (pos)
                    (not (not_at_c_p2))

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #46530: origin
                    (not_at_c_p9)

                    ; #91852: origin
                    (at_c_p3)

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))

                    ; #74472: <==negation-removal== 91852 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #27048: origin
                    (at_c_p4)

                    ; #46530: origin
                    (not_at_c_p9)

                    ; #34468: <==negation-removal== 27048 (pos)
                    (not (not_at_c_p4))

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #46530: origin
                    (not_at_c_p9)

                    ; #91825: origin
                    (at_c_p5)

                    ; #17535: <==negation-removal== 91825 (pos)
                    (not (not_at_c_p5))

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #45766: origin
                    (at_c_p6)

                    ; #46530: origin
                    (not_at_c_p9)

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))

                    ; #77231: <==negation-removal== 45766 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #46530: origin
                    (not_at_c_p9)

                    ; #80776: origin
                    (at_c_p7)

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))

                    ; #88127: <==negation-removal== 80776 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #27730: origin
                    (at_c_p8)

                    ; #46530: origin
                    (not_at_c_p9)

                    ; #15656: <==negation-removal== 27730 (pos)
                    (not (not_at_c_p8))

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #46530: origin
                    (not_at_c_p9)

                    ; #56804: origin
                    (at_c_p9)

                    ; #46530: <==negation-removal== 56804 (pos)
                    (not (not_at_c_p9))

                    ; #56804: <==negation-removal== 46530 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11304: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #14559: <==commonly_known== 10956 (neg)
                    (Pa_checked_p10)

                    ; #24720: <==commonly_known== 10956 (neg)
                    (Pb_checked_p10)

                    ; #37423: <==closure== 11304 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #38207: <==commonly_known== 76255 (pos)
                    (Bc_checked_p10)

                    ; #42586: <==commonly_known== 76255 (pos)
                    (Bb_checked_p10)

                    ; #50945: <==commonly_known== 10956 (neg)
                    (Pc_checked_p10)

                    ; #60249: <==commonly_known== 76255 (pos)
                    (Ba_checked_p10)

                    ; #60393: <==closure== 61411 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #61411: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #76255: origin
                    (checked_p10)

                    ; #10956: <==negation-removal== 76255 (pos)
                    (not (not_checked_p10))

                    ; #14835: <==uncertain_firing== 60393 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #15276: <==uncertain_firing== 11304 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #18670: <==negation-removal== 37423 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #20571: <==negation-removal== 38207 (pos)
                    (not (Pc_not_checked_p10))

                    ; #20803: <==negation-removal== 14559 (pos)
                    (not (Ba_not_checked_p10))

                    ; #54211: <==negation-removal== 24720 (pos)
                    (not (Bb_not_checked_p10))

                    ; #55271: <==negation-removal== 61411 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #70788: <==negation-removal== 60393 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #76168: <==negation-removal== 42586 (pos)
                    (not (Pb_not_checked_p10))

                    ; #81546: <==uncertain_firing== 37423 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #85205: <==negation-removal== 11304 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #89392: <==uncertain_firing== 61411 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #89711: <==negation-removal== 60249 (pos)
                    (not (Pa_not_checked_p10))

                    ; #89724: <==negation-removal== 50945 (pos)
                    (not (Bc_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #32881: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #35236: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #35326: <==commonly_known== 35814 (neg)
                    (Pb_checked_p11)

                    ; #38709: <==commonly_known== 58567 (pos)
                    (Bc_checked_p11)

                    ; #39289: <==commonly_known== 58567 (pos)
                    (Bb_checked_p11)

                    ; #40076: <==closure== 32881 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #58567: origin
                    (checked_p11)

                    ; #60242: <==closure== 35236 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #82161: <==commonly_known== 35814 (neg)
                    (Pa_checked_p11)

                    ; #87775: <==commonly_known== 58567 (pos)
                    (Ba_checked_p11)

                    ; #88818: <==commonly_known== 35814 (neg)
                    (Pc_checked_p11)

                    ; #11507: <==negation-removal== 40076 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #14774: <==uncertain_firing== 40076 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #16789: <==uncertain_firing== 32881 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #34388: <==negation-removal== 39289 (pos)
                    (not (Pb_not_checked_p11))

                    ; #35814: <==negation-removal== 58567 (pos)
                    (not (not_checked_p11))

                    ; #36406: <==negation-removal== 82161 (pos)
                    (not (Ba_not_checked_p11))

                    ; #50419: <==negation-removal== 35326 (pos)
                    (not (Bb_not_checked_p11))

                    ; #50799: <==negation-removal== 32881 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #51212: <==uncertain_firing== 60242 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #57285: <==uncertain_firing== 35236 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #72194: <==negation-removal== 88818 (pos)
                    (not (Bc_not_checked_p11))

                    ; #75496: <==negation-removal== 35236 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #80873: <==negation-removal== 60242 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #88583: <==negation-removal== 38709 (pos)
                    (not (Pc_not_checked_p11))

                    ; #97311: <==negation-removal== 87775 (pos)
                    (not (Pa_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11644: <==closure== 27149 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #15659: <==commonly_known== 88201 (neg)
                    (Pc_checked_p12)

                    ; #17901: <==commonly_known== 20820 (pos)
                    (Ba_checked_p12)

                    ; #20820: origin
                    (checked_p12)

                    ; #27149: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #55523: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #74966: <==closure== 55523 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #75160: <==commonly_known== 20820 (pos)
                    (Bb_checked_p12)

                    ; #78960: <==commonly_known== 88201 (neg)
                    (Pa_checked_p12)

                    ; #79726: <==commonly_known== 88201 (neg)
                    (Pb_checked_p12)

                    ; #87669: <==commonly_known== 20820 (pos)
                    (Bc_checked_p12)

                    ; #14268: <==negation-removal== 79726 (pos)
                    (not (Bb_not_checked_p12))

                    ; #23488: <==negation-removal== 15659 (pos)
                    (not (Bc_not_checked_p12))

                    ; #39610: <==uncertain_firing== 11644 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #61018: <==uncertain_firing== 74966 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #65994: <==negation-removal== 75160 (pos)
                    (not (Pb_not_checked_p12))

                    ; #70121: <==negation-removal== 17901 (pos)
                    (not (Pa_not_checked_p12))

                    ; #73008: <==negation-removal== 87669 (pos)
                    (not (Pc_not_checked_p12))

                    ; #73035: <==negation-removal== 78960 (pos)
                    (not (Ba_not_checked_p12))

                    ; #73586: <==negation-removal== 74966 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #74272: <==negation-removal== 11644 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #79266: <==negation-removal== 27149 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #79506: <==uncertain_firing== 55523 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #81085: <==uncertain_firing== 27149 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #88201: <==negation-removal== 20820 (pos)
                    (not (not_checked_p12))

                    ; #88287: <==negation-removal== 55523 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #16243: origin
                    (checked_p1)

                    ; #43506: <==commonly_known== 16243 (pos)
                    (Bc_checked_p1)

                    ; #49892: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #59008: <==commonly_known== 16243 (pos)
                    (Ba_checked_p1)

                    ; #60071: <==commonly_known== 42228 (neg)
                    (Pb_checked_p1)

                    ; #60197: <==commonly_known== 42228 (neg)
                    (Pa_checked_p1)

                    ; #62282: <==commonly_known== 16243 (pos)
                    (Bb_checked_p1)

                    ; #64577: <==closure== 49892 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #74885: <==commonly_known== 42228 (neg)
                    (Pc_checked_p1)

                    ; #75526: <==closure== 78396 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #78396: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #15202: <==negation-removal== 59008 (pos)
                    (not (Pa_not_checked_p1))

                    ; #19835: <==negation-removal== 62282 (pos)
                    (not (Pb_not_checked_p1))

                    ; #28973: <==negation-removal== 49892 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #30685: <==negation-removal== 60071 (pos)
                    (not (Bb_not_checked_p1))

                    ; #31760: <==negation-removal== 64577 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #40449: <==uncertain_firing== 75526 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #42228: <==negation-removal== 16243 (pos)
                    (not (not_checked_p1))

                    ; #48282: <==negation-removal== 74885 (pos)
                    (not (Bc_not_checked_p1))

                    ; #50167: <==uncertain_firing== 78396 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #60855: <==negation-removal== 75526 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #72919: <==negation-removal== 78396 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #75019: <==uncertain_firing== 64577 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #80642: <==negation-removal== 60197 (pos)
                    (not (Ba_not_checked_p1))

                    ; #90160: <==uncertain_firing== 49892 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #92257: <==negation-removal== 43506 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17994: origin
                    (checked_p2)

                    ; #20803: <==commonly_known== 17994 (pos)
                    (Ba_checked_p2)

                    ; #29562: <==commonly_known== 69305 (neg)
                    (Pb_checked_p2)

                    ; #37499: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #48130: <==closure== 50936 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #50936: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #51779: <==commonly_known== 69305 (neg)
                    (Pa_checked_p2)

                    ; #58631: <==closure== 37499 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #65976: <==commonly_known== 69305 (neg)
                    (Pc_checked_p2)

                    ; #73578: <==commonly_known== 17994 (pos)
                    (Bb_checked_p2)

                    ; #90545: <==commonly_known== 17994 (pos)
                    (Bc_checked_p2)

                    ; #13513: <==negation-removal== 51779 (pos)
                    (not (Ba_not_checked_p2))

                    ; #25483: <==uncertain_firing== 58631 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #45189: <==negation-removal== 20803 (pos)
                    (not (Pa_not_checked_p2))

                    ; #46804: <==negation-removal== 37499 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #47677: <==negation-removal== 29562 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48541: <==negation-removal== 73578 (pos)
                    (not (Pb_not_checked_p2))

                    ; #58227: <==uncertain_firing== 37499 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #60659: <==negation-removal== 90545 (pos)
                    (not (Pc_not_checked_p2))

                    ; #64559: <==negation-removal== 65976 (pos)
                    (not (Bc_not_checked_p2))

                    ; #69305: <==negation-removal== 17994 (pos)
                    (not (not_checked_p2))

                    ; #70284: <==negation-removal== 50936 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71238: <==uncertain_firing== 48130 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #77149: <==negation-removal== 58631 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #79555: <==uncertain_firing== 50936 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #89869: <==negation-removal== 48130 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #22739: <==closure== 87935 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #33042: <==commonly_known== 24519 (neg)
                    (Pc_checked_p3)

                    ; #41428: <==commonly_known== 24519 (neg)
                    (Pb_checked_p3)

                    ; #49645: <==commonly_known== 76669 (pos)
                    (Bb_checked_p3)

                    ; #66525: <==commonly_known== 76669 (pos)
                    (Ba_checked_p3)

                    ; #67102: <==commonly_known== 24519 (neg)
                    (Pa_checked_p3)

                    ; #76669: origin
                    (checked_p3)

                    ; #76846: <==closure== 86696 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #84049: <==commonly_known== 76669 (pos)
                    (Bc_checked_p3)

                    ; #86696: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #87935: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #11689: <==negation-removal== 22739 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #19426: <==negation-removal== 41428 (pos)
                    (not (Bb_not_checked_p3))

                    ; #24519: <==negation-removal== 76669 (pos)
                    (not (not_checked_p3))

                    ; #28686: <==uncertain_firing== 87935 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29101: <==negation-removal== 76846 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #32385: <==uncertain_firing== 86696 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #42733: <==uncertain_firing== 22739 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #44810: <==negation-removal== 66525 (pos)
                    (not (Pa_not_checked_p3))

                    ; #50803: <==negation-removal== 84049 (pos)
                    (not (Pc_not_checked_p3))

                    ; #52390: <==negation-removal== 87935 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #53731: <==uncertain_firing== 76846 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #57535: <==negation-removal== 86696 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #70765: <==negation-removal== 33042 (pos)
                    (not (Bc_not_checked_p3))

                    ; #71694: <==negation-removal== 49645 (pos)
                    (not (Pb_not_checked_p3))

                    ; #87564: <==negation-removal== 67102 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19332: <==commonly_known== 85550 (neg)
                    (Pb_checked_p4)

                    ; #27819: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #34213: <==commonly_known== 74225 (pos)
                    (Bb_checked_p4)

                    ; #36653: <==commonly_known== 74225 (pos)
                    (Bc_checked_p4)

                    ; #41794: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #61402: <==closure== 27819 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #64800: <==commonly_known== 85550 (neg)
                    (Pa_checked_p4)

                    ; #68285: <==closure== 41794 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #74225: origin
                    (checked_p4)

                    ; #76406: <==commonly_known== 74225 (pos)
                    (Ba_checked_p4)

                    ; #78822: <==commonly_known== 85550 (neg)
                    (Pc_checked_p4)

                    ; #16520: <==negation-removal== 34213 (pos)
                    (not (Pb_not_checked_p4))

                    ; #17921: <==negation-removal== 61402 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #19269: <==uncertain_firing== 41794 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #27513: <==negation-removal== 19332 (pos)
                    (not (Bb_not_checked_p4))

                    ; #43526: <==negation-removal== 64800 (pos)
                    (not (Ba_not_checked_p4))

                    ; #44569: <==uncertain_firing== 27819 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #45790: <==uncertain_firing== 61402 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #49881: <==negation-removal== 78822 (pos)
                    (not (Bc_not_checked_p4))

                    ; #66436: <==negation-removal== 27819 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #79977: <==uncertain_firing== 68285 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #83800: <==negation-removal== 76406 (pos)
                    (not (Pa_not_checked_p4))

                    ; #85550: <==negation-removal== 74225 (pos)
                    (not (not_checked_p4))

                    ; #88650: <==negation-removal== 36653 (pos)
                    (not (Pc_not_checked_p4))

                    ; #90149: <==negation-removal== 68285 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #90298: <==negation-removal== 41794 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14113: <==closure== 30412 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #14354: <==commonly_known== 62276 (neg)
                    (Pa_checked_p5)

                    ; #14787: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #19225: <==commonly_known== 62276 (neg)
                    (Pc_checked_p5)

                    ; #20221: <==commonly_known== 58621 (pos)
                    (Ba_checked_p5)

                    ; #30412: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #39286: <==closure== 14787 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #58621: origin
                    (checked_p5)

                    ; #75283: <==commonly_known== 58621 (pos)
                    (Bc_checked_p5)

                    ; #81774: <==commonly_known== 62276 (neg)
                    (Pb_checked_p5)

                    ; #84381: <==commonly_known== 58621 (pos)
                    (Bb_checked_p5)

                    ; #18172: <==negation-removal== 14113 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #24313: <==negation-removal== 81774 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26998: <==negation-removal== 84381 (pos)
                    (not (Pb_not_checked_p5))

                    ; #27929: <==negation-removal== 75283 (pos)
                    (not (Pc_not_checked_p5))

                    ; #34789: <==uncertain_firing== 39286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #40155: <==negation-removal== 14787 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #43801: <==negation-removal== 39286 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #52377: <==negation-removal== 14354 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58368: <==negation-removal== 20221 (pos)
                    (not (Pa_not_checked_p5))

                    ; #58867: <==negation-removal== 19225 (pos)
                    (not (Bc_not_checked_p5))

                    ; #62276: <==negation-removal== 58621 (pos)
                    (not (not_checked_p5))

                    ; #77662: <==uncertain_firing== 14113 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #81168: <==uncertain_firing== 30412 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #83368: <==uncertain_firing== 14787 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #85398: <==negation-removal== 30412 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13197: origin
                    (checked_p6)

                    ; #29244: <==commonly_known== 48351 (neg)
                    (Pb_checked_p6)

                    ; #31733: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #53735: <==commonly_known== 13197 (pos)
                    (Bc_checked_p6)

                    ; #55980: <==commonly_known== 48351 (neg)
                    (Pa_checked_p6)

                    ; #62668: <==closure== 67286 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #67286: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #73129: <==commonly_known== 13197 (pos)
                    (Ba_checked_p6)

                    ; #75746: <==commonly_known== 48351 (neg)
                    (Pc_checked_p6)

                    ; #83904: <==commonly_known== 13197 (pos)
                    (Bb_checked_p6)

                    ; #87549: <==closure== 31733 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #11777: <==negation-removal== 67286 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #11942: <==negation-removal== 29244 (pos)
                    (not (Bb_not_checked_p6))

                    ; #15793: <==negation-removal== 31733 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #23847: <==negation-removal== 83904 (pos)
                    (not (Pb_not_checked_p6))

                    ; #32880: <==negation-removal== 73129 (pos)
                    (not (Pa_not_checked_p6))

                    ; #34263: <==uncertain_firing== 67286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #34737: <==negation-removal== 53735 (pos)
                    (not (Pc_not_checked_p6))

                    ; #48351: <==negation-removal== 13197 (pos)
                    (not (not_checked_p6))

                    ; #57658: <==negation-removal== 87549 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #57837: <==negation-removal== 75746 (pos)
                    (not (Bc_not_checked_p6))

                    ; #62277: <==negation-removal== 62668 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #63488: <==uncertain_firing== 87549 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #65099: <==uncertain_firing== 31733 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #76555: <==negation-removal== 55980 (pos)
                    (not (Ba_not_checked_p6))

                    ; #94442: <==uncertain_firing== 62668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11136: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #15324: <==commonly_known== 17009 (neg)
                    (Pc_checked_p7)

                    ; #19602: <==commonly_known== 67356 (pos)
                    (Ba_checked_p7)

                    ; #29309: <==commonly_known== 17009 (neg)
                    (Pa_checked_p7)

                    ; #41718: <==commonly_known== 67356 (pos)
                    (Bc_checked_p7)

                    ; #45461: <==commonly_known== 17009 (neg)
                    (Pb_checked_p7)

                    ; #56579: <==closure== 11136 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #67356: origin
                    (checked_p7)

                    ; #78395: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #82650: <==commonly_known== 67356 (pos)
                    (Bb_checked_p7)

                    ; #89189: <==closure== 78395 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #11230: <==negation-removal== 41718 (pos)
                    (not (Pc_not_checked_p7))

                    ; #17009: <==negation-removal== 67356 (pos)
                    (not (not_checked_p7))

                    ; #32064: <==uncertain_firing== 56579 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #39019: <==uncertain_firing== 89189 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #39672: <==negation-removal== 19602 (pos)
                    (not (Pa_not_checked_p7))

                    ; #40305: <==negation-removal== 45461 (pos)
                    (not (Bb_not_checked_p7))

                    ; #44471: <==negation-removal== 56579 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #48945: <==uncertain_firing== 78395 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #61947: <==negation-removal== 82650 (pos)
                    (not (Pb_not_checked_p7))

                    ; #63400: <==negation-removal== 15324 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65877: <==negation-removal== 11136 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #69202: <==uncertain_firing== 11136 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #75215: <==negation-removal== 29309 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79803: <==negation-removal== 89189 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #81968: <==negation-removal== 78395 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10056: <==commonly_known== 17345 (neg)
                    (Pc_checked_p8)

                    ; #10541: <==commonly_known== 17345 (neg)
                    (Pb_checked_p8)

                    ; #16726: <==closure== 71114 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #25264: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #25884: <==commonly_known== 53282 (pos)
                    (Bc_checked_p8)

                    ; #38991: <==commonly_known== 53282 (pos)
                    (Bb_checked_p8)

                    ; #45076: <==commonly_known== 53282 (pos)
                    (Ba_checked_p8)

                    ; #52089: <==closure== 25264 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #53282: origin
                    (checked_p8)

                    ; #58188: <==commonly_known== 17345 (neg)
                    (Pa_checked_p8)

                    ; #71114: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #13127: <==negation-removal== 71114 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #17345: <==negation-removal== 53282 (pos)
                    (not (not_checked_p8))

                    ; #17616: <==uncertain_firing== 16726 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #22837: <==negation-removal== 16726 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #26657: <==uncertain_firing== 52089 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #34417: <==negation-removal== 38991 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44498: <==negation-removal== 10541 (pos)
                    (not (Bb_not_checked_p8))

                    ; #63037: <==negation-removal== 45076 (pos)
                    (not (Pa_not_checked_p8))

                    ; #76034: <==negation-removal== 25264 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #76634: <==negation-removal== 25884 (pos)
                    (not (Pc_not_checked_p8))

                    ; #77577: <==uncertain_firing== 25264 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #80708: <==negation-removal== 58188 (pos)
                    (not (Ba_not_checked_p8))

                    ; #84162: <==negation-removal== 10056 (pos)
                    (not (Bc_not_checked_p8))

                    ; #84500: <==uncertain_firing== 71114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #91127: <==negation-removal== 52089 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16029: <==closure== 41539 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #16829: <==commonly_known== 60301 (pos)
                    (Ba_checked_p9)

                    ; #23033: <==commonly_known== 60301 (pos)
                    (Bb_checked_p9)

                    ; #34060: <==commonly_known== 60301 (pos)
                    (Bc_checked_p9)

                    ; #41539: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #50235: <==commonly_known== 22652 (neg)
                    (Pc_checked_p9)

                    ; #51351: <==commonly_known== 22652 (neg)
                    (Pb_checked_p9)

                    ; #60301: origin
                    (checked_p9)

                    ; #66163: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #69864: <==closure== 66163 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #88010: <==commonly_known== 22652 (neg)
                    (Pa_checked_p9)

                    ; #13943: <==negation-removal== 23033 (pos)
                    (not (Pb_not_checked_p9))

                    ; #14606: <==negation-removal== 16029 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #18148: <==negation-removal== 88010 (pos)
                    (not (Ba_not_checked_p9))

                    ; #22652: <==negation-removal== 60301 (pos)
                    (not (not_checked_p9))

                    ; #25432: <==negation-removal== 69864 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #29773: <==negation-removal== 66163 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #33933: <==uncertain_firing== 16029 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #37854: <==uncertain_firing== 66163 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #41858: <==negation-removal== 50235 (pos)
                    (not (Bc_not_checked_p9))

                    ; #47911: <==negation-removal== 16829 (pos)
                    (not (Pa_not_checked_p9))

                    ; #48223: <==uncertain_firing== 69864 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #67789: <==uncertain_firing== 41539 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #77112: <==negation-removal== 34060 (pos)
                    (not (Pc_not_checked_p9))

                    ; #83671: <==negation-removal== 41539 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #91028: <==negation-removal== 51351 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14559: <==commonly_known== 10956 (neg)
                    (Pa_checked_p10)

                    ; #24720: <==commonly_known== 10956 (neg)
                    (Pb_checked_p10)

                    ; #34719: <==closure== 58608 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #38207: <==commonly_known== 76255 (pos)
                    (Bc_checked_p10)

                    ; #42586: <==commonly_known== 76255 (pos)
                    (Bb_checked_p10)

                    ; #43290: <==closure== 83262 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #50945: <==commonly_known== 10956 (neg)
                    (Pc_checked_p10)

                    ; #58608: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #60249: <==commonly_known== 76255 (pos)
                    (Ba_checked_p10)

                    ; #76255: origin
                    (checked_p10)

                    ; #83262: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #10956: <==negation-removal== 76255 (pos)
                    (not (not_checked_p10))

                    ; #14611: <==uncertain_firing== 34719 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #20571: <==negation-removal== 38207 (pos)
                    (not (Pc_not_checked_p10))

                    ; #20803: <==negation-removal== 14559 (pos)
                    (not (Ba_not_checked_p10))

                    ; #36244: <==negation-removal== 58608 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #48824: <==uncertain_firing== 83262 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #50487: <==uncertain_firing== 58608 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #54211: <==negation-removal== 24720 (pos)
                    (not (Bb_not_checked_p10))

                    ; #54716: <==negation-removal== 83262 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #70961: <==negation-removal== 34719 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #76168: <==negation-removal== 42586 (pos)
                    (not (Pb_not_checked_p10))

                    ; #79517: <==uncertain_firing== 43290 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #82942: <==negation-removal== 43290 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #89711: <==negation-removal== 60249 (pos)
                    (not (Pa_not_checked_p10))

                    ; #89724: <==negation-removal== 50945 (pos)
                    (not (Bc_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11632: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #24267: <==closure== 11632 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #35326: <==commonly_known== 35814 (neg)
                    (Pb_checked_p11)

                    ; #38709: <==commonly_known== 58567 (pos)
                    (Bc_checked_p11)

                    ; #39289: <==commonly_known== 58567 (pos)
                    (Bb_checked_p11)

                    ; #56165: <==closure== 73425 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #58567: origin
                    (checked_p11)

                    ; #73425: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #82161: <==commonly_known== 35814 (neg)
                    (Pa_checked_p11)

                    ; #87775: <==commonly_known== 58567 (pos)
                    (Ba_checked_p11)

                    ; #88818: <==commonly_known== 35814 (neg)
                    (Pc_checked_p11)

                    ; #14215: <==negation-removal== 56165 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #18380: <==negation-removal== 11632 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #30612: <==uncertain_firing== 11632 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #34388: <==negation-removal== 39289 (pos)
                    (not (Pb_not_checked_p11))

                    ; #35814: <==negation-removal== 58567 (pos)
                    (not (not_checked_p11))

                    ; #36406: <==negation-removal== 82161 (pos)
                    (not (Ba_not_checked_p11))

                    ; #39028: <==uncertain_firing== 24267 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #50419: <==negation-removal== 35326 (pos)
                    (not (Bb_not_checked_p11))

                    ; #53341: <==uncertain_firing== 73425 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #59428: <==negation-removal== 24267 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #64419: <==uncertain_firing== 56165 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #72194: <==negation-removal== 88818 (pos)
                    (not (Bc_not_checked_p11))

                    ; #79691: <==negation-removal== 73425 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #88583: <==negation-removal== 38709 (pos)
                    (not (Pc_not_checked_p11))

                    ; #97311: <==negation-removal== 87775 (pos)
                    (not (Pa_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #14576: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #15659: <==commonly_known== 88201 (neg)
                    (Pc_checked_p12)

                    ; #17901: <==commonly_known== 20820 (pos)
                    (Ba_checked_p12)

                    ; #20820: origin
                    (checked_p12)

                    ; #38040: <==closure== 14576 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #41045: <==closure== 64864 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #64864: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #75160: <==commonly_known== 20820 (pos)
                    (Bb_checked_p12)

                    ; #78960: <==commonly_known== 88201 (neg)
                    (Pa_checked_p12)

                    ; #79726: <==commonly_known== 88201 (neg)
                    (Pb_checked_p12)

                    ; #87669: <==commonly_known== 20820 (pos)
                    (Bc_checked_p12)

                    ; #14268: <==negation-removal== 79726 (pos)
                    (not (Bb_not_checked_p12))

                    ; #23488: <==negation-removal== 15659 (pos)
                    (not (Bc_not_checked_p12))

                    ; #27030: <==uncertain_firing== 38040 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #32564: <==negation-removal== 14576 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #33687: <==negation-removal== 41045 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #38017: <==uncertain_firing== 64864 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #40902: <==uncertain_firing== 14576 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #45959: <==negation-removal== 64864 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #65994: <==negation-removal== 75160 (pos)
                    (not (Pb_not_checked_p12))

                    ; #70121: <==negation-removal== 17901 (pos)
                    (not (Pa_not_checked_p12))

                    ; #73008: <==negation-removal== 87669 (pos)
                    (not (Pc_not_checked_p12))

                    ; #73035: <==negation-removal== 78960 (pos)
                    (not (Ba_not_checked_p12))

                    ; #74590: <==uncertain_firing== 41045 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #75521: <==negation-removal== 38040 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #88201: <==negation-removal== 20820 (pos)
                    (not (not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11485: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #16243: origin
                    (checked_p1)

                    ; #29149: <==closure== 36509 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #36509: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #37512: <==closure== 11485 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #43506: <==commonly_known== 16243 (pos)
                    (Bc_checked_p1)

                    ; #59008: <==commonly_known== 16243 (pos)
                    (Ba_checked_p1)

                    ; #60071: <==commonly_known== 42228 (neg)
                    (Pb_checked_p1)

                    ; #60197: <==commonly_known== 42228 (neg)
                    (Pa_checked_p1)

                    ; #62282: <==commonly_known== 16243 (pos)
                    (Bb_checked_p1)

                    ; #74885: <==commonly_known== 42228 (neg)
                    (Pc_checked_p1)

                    ; #15202: <==negation-removal== 59008 (pos)
                    (not (Pa_not_checked_p1))

                    ; #17570: <==negation-removal== 11485 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #19835: <==negation-removal== 62282 (pos)
                    (not (Pb_not_checked_p1))

                    ; #30141: <==uncertain_firing== 36509 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #30685: <==negation-removal== 60071 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42228: <==negation-removal== 16243 (pos)
                    (not (not_checked_p1))

                    ; #44524: <==uncertain_firing== 37512 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #44582: <==negation-removal== 37512 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #48282: <==negation-removal== 74885 (pos)
                    (not (Bc_not_checked_p1))

                    ; #60846: <==negation-removal== 36509 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #64413: <==uncertain_firing== 29149 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65870: <==uncertain_firing== 11485 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #80642: <==negation-removal== 60197 (pos)
                    (not (Ba_not_checked_p1))

                    ; #83156: <==negation-removal== 29149 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #92257: <==negation-removal== 43506 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17994: origin
                    (checked_p2)

                    ; #20803: <==commonly_known== 17994 (pos)
                    (Ba_checked_p2)

                    ; #29474: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #29562: <==commonly_known== 69305 (neg)
                    (Pb_checked_p2)

                    ; #48524: <==closure== 91019 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #51779: <==commonly_known== 69305 (neg)
                    (Pa_checked_p2)

                    ; #65976: <==commonly_known== 69305 (neg)
                    (Pc_checked_p2)

                    ; #73578: <==commonly_known== 17994 (pos)
                    (Bb_checked_p2)

                    ; #89404: <==closure== 29474 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #90545: <==commonly_known== 17994 (pos)
                    (Bc_checked_p2)

                    ; #91019: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #13513: <==negation-removal== 51779 (pos)
                    (not (Ba_not_checked_p2))

                    ; #25558: <==negation-removal== 48524 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #29627: <==uncertain_firing== 29474 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #33594: <==negation-removal== 89404 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #33824: <==uncertain_firing== 91019 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #45189: <==negation-removal== 20803 (pos)
                    (not (Pa_not_checked_p2))

                    ; #47677: <==negation-removal== 29562 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48541: <==negation-removal== 73578 (pos)
                    (not (Pb_not_checked_p2))

                    ; #60526: <==uncertain_firing== 48524 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60659: <==negation-removal== 90545 (pos)
                    (not (Pc_not_checked_p2))

                    ; #64559: <==negation-removal== 65976 (pos)
                    (not (Bc_not_checked_p2))

                    ; #69305: <==negation-removal== 17994 (pos)
                    (not (not_checked_p2))

                    ; #84782: <==uncertain_firing== 89404 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #89974: <==negation-removal== 91019 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #91590: <==negation-removal== 29474 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #33042: <==commonly_known== 24519 (neg)
                    (Pc_checked_p3)

                    ; #33650: <==closure== 87283 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #41428: <==commonly_known== 24519 (neg)
                    (Pb_checked_p3)

                    ; #46733: <==closure== 68839 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #49645: <==commonly_known== 76669 (pos)
                    (Bb_checked_p3)

                    ; #66525: <==commonly_known== 76669 (pos)
                    (Ba_checked_p3)

                    ; #67102: <==commonly_known== 24519 (neg)
                    (Pa_checked_p3)

                    ; #68839: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #76669: origin
                    (checked_p3)

                    ; #84049: <==commonly_known== 76669 (pos)
                    (Bc_checked_p3)

                    ; #87283: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #19426: <==negation-removal== 41428 (pos)
                    (not (Bb_not_checked_p3))

                    ; #24519: <==negation-removal== 76669 (pos)
                    (not (not_checked_p3))

                    ; #27149: <==uncertain_firing== 87283 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #30310: <==uncertain_firing== 68839 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #32058: <==uncertain_firing== 46733 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #39719: <==negation-removal== 87283 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #41818: <==negation-removal== 33650 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #44810: <==negation-removal== 66525 (pos)
                    (not (Pa_not_checked_p3))

                    ; #50803: <==negation-removal== 84049 (pos)
                    (not (Pc_not_checked_p3))

                    ; #69613: <==uncertain_firing== 33650 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #70765: <==negation-removal== 33042 (pos)
                    (not (Bc_not_checked_p3))

                    ; #71694: <==negation-removal== 49645 (pos)
                    (not (Pb_not_checked_p3))

                    ; #87564: <==negation-removal== 67102 (pos)
                    (not (Ba_not_checked_p3))

                    ; #87932: <==negation-removal== 68839 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #92169: <==negation-removal== 46733 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19332: <==commonly_known== 85550 (neg)
                    (Pb_checked_p4)

                    ; #22856: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #34213: <==commonly_known== 74225 (pos)
                    (Bb_checked_p4)

                    ; #36653: <==commonly_known== 74225 (pos)
                    (Bc_checked_p4)

                    ; #59474: <==closure== 81413 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #64800: <==commonly_known== 85550 (neg)
                    (Pa_checked_p4)

                    ; #73664: <==closure== 22856 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #74225: origin
                    (checked_p4)

                    ; #76406: <==commonly_known== 74225 (pos)
                    (Ba_checked_p4)

                    ; #78822: <==commonly_known== 85550 (neg)
                    (Pc_checked_p4)

                    ; #81413: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #16520: <==negation-removal== 34213 (pos)
                    (not (Pb_not_checked_p4))

                    ; #27513: <==negation-removal== 19332 (pos)
                    (not (Bb_not_checked_p4))

                    ; #29647: <==uncertain_firing== 59474 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #43526: <==negation-removal== 64800 (pos)
                    (not (Ba_not_checked_p4))

                    ; #44323: <==negation-removal== 22856 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #47651: <==uncertain_firing== 22856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #49881: <==negation-removal== 78822 (pos)
                    (not (Bc_not_checked_p4))

                    ; #61409: <==negation-removal== 81413 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #75279: <==uncertain_firing== 81413 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #79636: <==negation-removal== 73664 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #83800: <==negation-removal== 76406 (pos)
                    (not (Pa_not_checked_p4))

                    ; #84151: <==negation-removal== 59474 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #85550: <==negation-removal== 74225 (pos)
                    (not (not_checked_p4))

                    ; #88650: <==negation-removal== 36653 (pos)
                    (not (Pc_not_checked_p4))

                    ; #90488: <==uncertain_firing== 73664 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14354: <==commonly_known== 62276 (neg)
                    (Pa_checked_p5)

                    ; #19225: <==commonly_known== 62276 (neg)
                    (Pc_checked_p5)

                    ; #20221: <==commonly_known== 58621 (pos)
                    (Ba_checked_p5)

                    ; #28014: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #33936: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #58621: origin
                    (checked_p5)

                    ; #75283: <==commonly_known== 58621 (pos)
                    (Bc_checked_p5)

                    ; #81774: <==commonly_known== 62276 (neg)
                    (Pb_checked_p5)

                    ; #84381: <==commonly_known== 58621 (pos)
                    (Bb_checked_p5)

                    ; #86076: <==closure== 28014 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #91623: <==closure== 33936 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #14441: <==negation-removal== 91623 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #23569: <==uncertain_firing== 33936 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #24313: <==negation-removal== 81774 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26998: <==negation-removal== 84381 (pos)
                    (not (Pb_not_checked_p5))

                    ; #27761: <==uncertain_firing== 91623 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #27929: <==negation-removal== 75283 (pos)
                    (not (Pc_not_checked_p5))

                    ; #41268: <==uncertain_firing== 28014 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #51499: <==uncertain_firing== 86076 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #51891: <==negation-removal== 33936 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #52377: <==negation-removal== 14354 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58368: <==negation-removal== 20221 (pos)
                    (not (Pa_not_checked_p5))

                    ; #58867: <==negation-removal== 19225 (pos)
                    (not (Bc_not_checked_p5))

                    ; #62276: <==negation-removal== 58621 (pos)
                    (not (not_checked_p5))

                    ; #65271: <==negation-removal== 28014 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #85002: <==negation-removal== 86076 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13197: origin
                    (checked_p6)

                    ; #22495: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #29244: <==commonly_known== 48351 (neg)
                    (Pb_checked_p6)

                    ; #29495: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #50840: <==closure== 22495 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #53735: <==commonly_known== 13197 (pos)
                    (Bc_checked_p6)

                    ; #55980: <==commonly_known== 48351 (neg)
                    (Pa_checked_p6)

                    ; #73129: <==commonly_known== 13197 (pos)
                    (Ba_checked_p6)

                    ; #75611: <==closure== 29495 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #75746: <==commonly_known== 48351 (neg)
                    (Pc_checked_p6)

                    ; #83904: <==commonly_known== 13197 (pos)
                    (Bb_checked_p6)

                    ; #11942: <==negation-removal== 29244 (pos)
                    (not (Bb_not_checked_p6))

                    ; #20783: <==uncertain_firing== 22495 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #23847: <==negation-removal== 83904 (pos)
                    (not (Pb_not_checked_p6))

                    ; #29133: <==negation-removal== 29495 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #30063: <==uncertain_firing== 75611 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #32880: <==negation-removal== 73129 (pos)
                    (not (Pa_not_checked_p6))

                    ; #33181: <==negation-removal== 50840 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #34737: <==negation-removal== 53735 (pos)
                    (not (Pc_not_checked_p6))

                    ; #44118: <==negation-removal== 75611 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #48351: <==negation-removal== 13197 (pos)
                    (not (not_checked_p6))

                    ; #57837: <==negation-removal== 75746 (pos)
                    (not (Bc_not_checked_p6))

                    ; #62684: <==uncertain_firing== 29495 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #76555: <==negation-removal== 55980 (pos)
                    (not (Ba_not_checked_p6))

                    ; #82037: <==negation-removal== 22495 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #87350: <==uncertain_firing== 50840 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15324: <==commonly_known== 17009 (neg)
                    (Pc_checked_p7)

                    ; #19602: <==commonly_known== 67356 (pos)
                    (Ba_checked_p7)

                    ; #29309: <==commonly_known== 17009 (neg)
                    (Pa_checked_p7)

                    ; #41718: <==commonly_known== 67356 (pos)
                    (Bc_checked_p7)

                    ; #45461: <==commonly_known== 17009 (neg)
                    (Pb_checked_p7)

                    ; #62533: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #67356: origin
                    (checked_p7)

                    ; #76993: <==closure== 90701 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #82650: <==commonly_known== 67356 (pos)
                    (Bb_checked_p7)

                    ; #86936: <==closure== 62533 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #90701: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #11230: <==negation-removal== 41718 (pos)
                    (not (Pc_not_checked_p7))

                    ; #17009: <==negation-removal== 67356 (pos)
                    (not (not_checked_p7))

                    ; #18805: <==uncertain_firing== 86936 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #39672: <==negation-removal== 19602 (pos)
                    (not (Pa_not_checked_p7))

                    ; #40305: <==negation-removal== 45461 (pos)
                    (not (Bb_not_checked_p7))

                    ; #44429: <==negation-removal== 86936 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #46437: <==uncertain_firing== 90701 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #61947: <==negation-removal== 82650 (pos)
                    (not (Pb_not_checked_p7))

                    ; #63400: <==negation-removal== 15324 (pos)
                    (not (Bc_not_checked_p7))

                    ; #69516: <==uncertain_firing== 76993 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #72277: <==negation-removal== 76993 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #75215: <==negation-removal== 29309 (pos)
                    (not (Ba_not_checked_p7))

                    ; #80613: <==uncertain_firing== 62533 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #85888: <==negation-removal== 62533 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #90979: <==negation-removal== 90701 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10056: <==commonly_known== 17345 (neg)
                    (Pc_checked_p8)

                    ; #10541: <==commonly_known== 17345 (neg)
                    (Pb_checked_p8)

                    ; #20973: <==closure== 39894 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #25884: <==commonly_known== 53282 (pos)
                    (Bc_checked_p8)

                    ; #38991: <==commonly_known== 53282 (pos)
                    (Bb_checked_p8)

                    ; #39894: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #40219: <==closure== 80405 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #45076: <==commonly_known== 53282 (pos)
                    (Ba_checked_p8)

                    ; #53282: origin
                    (checked_p8)

                    ; #58188: <==commonly_known== 17345 (neg)
                    (Pa_checked_p8)

                    ; #80405: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #12314: <==uncertain_firing== 80405 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #17345: <==negation-removal== 53282 (pos)
                    (not (not_checked_p8))

                    ; #18003: <==negation-removal== 39894 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #23098: <==negation-removal== 40219 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #34417: <==negation-removal== 38991 (pos)
                    (not (Pb_not_checked_p8))

                    ; #43035: <==negation-removal== 20973 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #44498: <==negation-removal== 10541 (pos)
                    (not (Bb_not_checked_p8))

                    ; #56613: <==negation-removal== 80405 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #60058: <==uncertain_firing== 39894 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #62081: <==uncertain_firing== 40219 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #63037: <==negation-removal== 45076 (pos)
                    (not (Pa_not_checked_p8))

                    ; #76634: <==negation-removal== 25884 (pos)
                    (not (Pc_not_checked_p8))

                    ; #80708: <==negation-removal== 58188 (pos)
                    (not (Ba_not_checked_p8))

                    ; #84162: <==negation-removal== 10056 (pos)
                    (not (Bc_not_checked_p8))

                    ; #89374: <==uncertain_firing== 20973 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16829: <==commonly_known== 60301 (pos)
                    (Ba_checked_p9)

                    ; #23033: <==commonly_known== 60301 (pos)
                    (Bb_checked_p9)

                    ; #34060: <==commonly_known== 60301 (pos)
                    (Bc_checked_p9)

                    ; #41366: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #50235: <==commonly_known== 22652 (neg)
                    (Pc_checked_p9)

                    ; #51351: <==commonly_known== 22652 (neg)
                    (Pb_checked_p9)

                    ; #60301: origin
                    (checked_p9)

                    ; #60503: <==closure== 69297 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #69297: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88010: <==commonly_known== 22652 (neg)
                    (Pa_checked_p9)

                    ; #91890: <==closure== 41366 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #10255: <==negation-removal== 69297 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #13943: <==negation-removal== 23033 (pos)
                    (not (Pb_not_checked_p9))

                    ; #18148: <==negation-removal== 88010 (pos)
                    (not (Ba_not_checked_p9))

                    ; #20125: <==uncertain_firing== 69297 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #22652: <==negation-removal== 60301 (pos)
                    (not (not_checked_p9))

                    ; #36877: <==negation-removal== 60503 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #41858: <==negation-removal== 50235 (pos)
                    (not (Bc_not_checked_p9))

                    ; #47911: <==negation-removal== 16829 (pos)
                    (not (Pa_not_checked_p9))

                    ; #54199: <==negation-removal== 91890 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #54520: <==uncertain_firing== 91890 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #69063: <==uncertain_firing== 60503 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #75193: <==negation-removal== 41366 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #75576: <==uncertain_firing== 41366 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #77112: <==negation-removal== 34060 (pos)
                    (not (Pc_not_checked_p9))

                    ; #91028: <==negation-removal== 51351 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14559: <==commonly_known== 10956 (neg)
                    (Pa_checked_p10)

                    ; #24720: <==commonly_known== 10956 (neg)
                    (Pb_checked_p10)

                    ; #38207: <==commonly_known== 76255 (pos)
                    (Bc_checked_p10)

                    ; #42468: <==closure== 44107 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #42586: <==commonly_known== 76255 (pos)
                    (Bb_checked_p10)

                    ; #44107: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #50945: <==commonly_known== 10956 (neg)
                    (Pc_checked_p10)

                    ; #59955: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #60249: <==commonly_known== 76255 (pos)
                    (Ba_checked_p10)

                    ; #70343: <==closure== 59955 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #76255: origin
                    (checked_p10)

                    ; #10956: <==negation-removal== 76255 (pos)
                    (not (not_checked_p10))

                    ; #13094: <==uncertain_firing== 42468 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #19629: <==uncertain_firing== 59955 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #20571: <==negation-removal== 38207 (pos)
                    (not (Pc_not_checked_p10))

                    ; #20803: <==negation-removal== 14559 (pos)
                    (not (Ba_not_checked_p10))

                    ; #23498: <==negation-removal== 42468 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #30699: <==negation-removal== 59955 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #54211: <==negation-removal== 24720 (pos)
                    (not (Bb_not_checked_p10))

                    ; #70478: <==uncertain_firing== 70343 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #74745: <==negation-removal== 70343 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #76168: <==negation-removal== 42586 (pos)
                    (not (Pb_not_checked_p10))

                    ; #80007: <==negation-removal== 44107 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #89711: <==negation-removal== 60249 (pos)
                    (not (Pa_not_checked_p10))

                    ; #89724: <==negation-removal== 50945 (pos)
                    (not (Bc_not_checked_p10))

                    ; #93605: <==uncertain_firing== 44107 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14776: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #35326: <==commonly_known== 35814 (neg)
                    (Pb_checked_p11)

                    ; #38709: <==commonly_known== 58567 (pos)
                    (Bc_checked_p11)

                    ; #39289: <==commonly_known== 58567 (pos)
                    (Bb_checked_p11)

                    ; #42830: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #58500: <==closure== 42830 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #58567: origin
                    (checked_p11)

                    ; #60901: <==closure== 14776 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #82161: <==commonly_known== 35814 (neg)
                    (Pa_checked_p11)

                    ; #87775: <==commonly_known== 58567 (pos)
                    (Ba_checked_p11)

                    ; #88818: <==commonly_known== 35814 (neg)
                    (Pc_checked_p11)

                    ; #20831: <==negation-removal== 14776 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #25350: <==negation-removal== 58500 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #28813: <==uncertain_firing== 58500 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #34388: <==negation-removal== 39289 (pos)
                    (not (Pb_not_checked_p11))

                    ; #35814: <==negation-removal== 58567 (pos)
                    (not (not_checked_p11))

                    ; #36406: <==negation-removal== 82161 (pos)
                    (not (Ba_not_checked_p11))

                    ; #38489: <==uncertain_firing== 14776 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #50419: <==negation-removal== 35326 (pos)
                    (not (Bb_not_checked_p11))

                    ; #50587: <==uncertain_firing== 42830 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #61642: <==negation-removal== 42830 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #69237: <==negation-removal== 60901 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #72194: <==negation-removal== 88818 (pos)
                    (not (Bc_not_checked_p11))

                    ; #80497: <==uncertain_firing== 60901 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #88583: <==negation-removal== 38709 (pos)
                    (not (Pc_not_checked_p11))

                    ; #97311: <==negation-removal== 87775 (pos)
                    (not (Pa_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #15659: <==commonly_known== 88201 (neg)
                    (Pc_checked_p12)

                    ; #17901: <==commonly_known== 20820 (pos)
                    (Ba_checked_p12)

                    ; #20820: origin
                    (checked_p12)

                    ; #35697: <==closure== 79667 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #55208: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #56270: <==closure== 55208 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #75160: <==commonly_known== 20820 (pos)
                    (Bb_checked_p12)

                    ; #78960: <==commonly_known== 88201 (neg)
                    (Pa_checked_p12)

                    ; #79667: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #79726: <==commonly_known== 88201 (neg)
                    (Pb_checked_p12)

                    ; #87669: <==commonly_known== 20820 (pos)
                    (Bc_checked_p12)

                    ; #14268: <==negation-removal== 79726 (pos)
                    (not (Bb_not_checked_p12))

                    ; #23488: <==negation-removal== 15659 (pos)
                    (not (Bc_not_checked_p12))

                    ; #26891: <==negation-removal== 56270 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #30115: <==negation-removal== 79667 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #39445: <==negation-removal== 35697 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #42809: <==uncertain_firing== 35697 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #46826: <==uncertain_firing== 56270 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #47246: <==uncertain_firing== 79667 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #58414: <==negation-removal== 55208 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #65994: <==negation-removal== 75160 (pos)
                    (not (Pb_not_checked_p12))

                    ; #70121: <==negation-removal== 17901 (pos)
                    (not (Pa_not_checked_p12))

                    ; #73008: <==negation-removal== 87669 (pos)
                    (not (Pc_not_checked_p12))

                    ; #73035: <==negation-removal== 78960 (pos)
                    (not (Ba_not_checked_p12))

                    ; #88201: <==negation-removal== 20820 (pos)
                    (not (not_checked_p12))

                    ; #91446: <==uncertain_firing== 55208 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #16243: origin
                    (checked_p1)

                    ; #43506: <==commonly_known== 16243 (pos)
                    (Bc_checked_p1)

                    ; #54513: <==closure== 70129 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #59008: <==commonly_known== 16243 (pos)
                    (Ba_checked_p1)

                    ; #60071: <==commonly_known== 42228 (neg)
                    (Pb_checked_p1)

                    ; #60197: <==commonly_known== 42228 (neg)
                    (Pa_checked_p1)

                    ; #61838: <==closure== 87935 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #62282: <==commonly_known== 16243 (pos)
                    (Bb_checked_p1)

                    ; #70129: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #74885: <==commonly_known== 42228 (neg)
                    (Pc_checked_p1)

                    ; #87935: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #10676: <==negation-removal== 54513 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #13340: <==uncertain_firing== 61838 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #15202: <==negation-removal== 59008 (pos)
                    (not (Pa_not_checked_p1))

                    ; #19835: <==negation-removal== 62282 (pos)
                    (not (Pb_not_checked_p1))

                    ; #23535: <==negation-removal== 87935 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #30685: <==negation-removal== 60071 (pos)
                    (not (Bb_not_checked_p1))

                    ; #42228: <==negation-removal== 16243 (pos)
                    (not (not_checked_p1))

                    ; #48282: <==negation-removal== 74885 (pos)
                    (not (Bc_not_checked_p1))

                    ; #49005: <==negation-removal== 61838 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #51390: <==negation-removal== 70129 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #53178: <==uncertain_firing== 54513 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #61418: <==uncertain_firing== 87935 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #67134: <==uncertain_firing== 70129 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #80642: <==negation-removal== 60197 (pos)
                    (not (Ba_not_checked_p1))

                    ; #92257: <==negation-removal== 43506 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17994: origin
                    (checked_p2)

                    ; #19094: <==closure== 72087 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #20803: <==commonly_known== 17994 (pos)
                    (Ba_checked_p2)

                    ; #29562: <==commonly_known== 69305 (neg)
                    (Pb_checked_p2)

                    ; #51779: <==commonly_known== 69305 (neg)
                    (Pa_checked_p2)

                    ; #65976: <==commonly_known== 69305 (neg)
                    (Pc_checked_p2)

                    ; #72087: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #73578: <==commonly_known== 17994 (pos)
                    (Bb_checked_p2)

                    ; #88997: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #90545: <==commonly_known== 17994 (pos)
                    (Bc_checked_p2)

                    ; #91537: <==closure== 88997 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #13513: <==negation-removal== 51779 (pos)
                    (not (Ba_not_checked_p2))

                    ; #21029: <==uncertain_firing== 88997 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #41851: <==negation-removal== 19094 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #44176: <==uncertain_firing== 72087 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #45189: <==negation-removal== 20803 (pos)
                    (not (Pa_not_checked_p2))

                    ; #47677: <==negation-removal== 29562 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48541: <==negation-removal== 73578 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54982: <==uncertain_firing== 91537 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #57603: <==negation-removal== 91537 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #60659: <==negation-removal== 90545 (pos)
                    (not (Pc_not_checked_p2))

                    ; #64559: <==negation-removal== 65976 (pos)
                    (not (Bc_not_checked_p2))

                    ; #69305: <==negation-removal== 17994 (pos)
                    (not (not_checked_p2))

                    ; #80436: <==negation-removal== 88997 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #84303: <==uncertain_firing== 19094 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #84648: <==negation-removal== 72087 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #31739: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #33042: <==commonly_known== 24519 (neg)
                    (Pc_checked_p3)

                    ; #33249: <==closure== 55428 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #41428: <==commonly_known== 24519 (neg)
                    (Pb_checked_p3)

                    ; #49645: <==commonly_known== 76669 (pos)
                    (Bb_checked_p3)

                    ; #55428: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #66525: <==commonly_known== 76669 (pos)
                    (Ba_checked_p3)

                    ; #67102: <==commonly_known== 24519 (neg)
                    (Pa_checked_p3)

                    ; #76669: origin
                    (checked_p3)

                    ; #84049: <==commonly_known== 76669 (pos)
                    (Bc_checked_p3)

                    ; #88464: <==closure== 31739 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #18492: <==negation-removal== 55428 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #19426: <==negation-removal== 41428 (pos)
                    (not (Bb_not_checked_p3))

                    ; #24519: <==negation-removal== 76669 (pos)
                    (not (not_checked_p3))

                    ; #29468: <==negation-removal== 31739 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #30607: <==uncertain_firing== 31739 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35542: <==uncertain_firing== 55428 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #39355: <==negation-removal== 88464 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #44810: <==negation-removal== 66525 (pos)
                    (not (Pa_not_checked_p3))

                    ; #50803: <==negation-removal== 84049 (pos)
                    (not (Pc_not_checked_p3))

                    ; #65768: <==uncertain_firing== 88464 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #69955: <==negation-removal== 33249 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #70765: <==negation-removal== 33042 (pos)
                    (not (Bc_not_checked_p3))

                    ; #71694: <==negation-removal== 49645 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80988: <==uncertain_firing== 33249 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #87564: <==negation-removal== 67102 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19332: <==commonly_known== 85550 (neg)
                    (Pb_checked_p4)

                    ; #34213: <==commonly_known== 74225 (pos)
                    (Bb_checked_p4)

                    ; #36653: <==commonly_known== 74225 (pos)
                    (Bc_checked_p4)

                    ; #54802: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #64800: <==commonly_known== 85550 (neg)
                    (Pa_checked_p4)

                    ; #70493: <==closure== 54802 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #74225: origin
                    (checked_p4)

                    ; #75618: <==closure== 86361 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #76406: <==commonly_known== 74225 (pos)
                    (Ba_checked_p4)

                    ; #78822: <==commonly_known== 85550 (neg)
                    (Pc_checked_p4)

                    ; #86361: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #13865: <==negation-removal== 75618 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #16520: <==negation-removal== 34213 (pos)
                    (not (Pb_not_checked_p4))

                    ; #27513: <==negation-removal== 19332 (pos)
                    (not (Bb_not_checked_p4))

                    ; #31007: <==uncertain_firing== 70493 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #31621: <==negation-removal== 86361 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #43526: <==negation-removal== 64800 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45131: <==negation-removal== 54802 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #49881: <==negation-removal== 78822 (pos)
                    (not (Bc_not_checked_p4))

                    ; #61280: <==uncertain_firing== 75618 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #74111: <==negation-removal== 70493 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #78005: <==uncertain_firing== 86361 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #81555: <==uncertain_firing== 54802 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #83800: <==negation-removal== 76406 (pos)
                    (not (Pa_not_checked_p4))

                    ; #85550: <==negation-removal== 74225 (pos)
                    (not (not_checked_p4))

                    ; #88650: <==negation-removal== 36653 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11134: <==closure== 86927 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #14354: <==commonly_known== 62276 (neg)
                    (Pa_checked_p5)

                    ; #19225: <==commonly_known== 62276 (neg)
                    (Pc_checked_p5)

                    ; #20221: <==commonly_known== 58621 (pos)
                    (Ba_checked_p5)

                    ; #38110: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #58621: origin
                    (checked_p5)

                    ; #72404: <==closure== 38110 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #75283: <==commonly_known== 58621 (pos)
                    (Bc_checked_p5)

                    ; #81774: <==commonly_known== 62276 (neg)
                    (Pb_checked_p5)

                    ; #84381: <==commonly_known== 58621 (pos)
                    (Bb_checked_p5)

                    ; #86927: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #14902: <==uncertain_firing== 11134 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #17191: <==negation-removal== 11134 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #21087: <==negation-removal== 86927 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #24313: <==negation-removal== 81774 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26998: <==negation-removal== 84381 (pos)
                    (not (Pb_not_checked_p5))

                    ; #27929: <==negation-removal== 75283 (pos)
                    (not (Pc_not_checked_p5))

                    ; #52377: <==negation-removal== 14354 (pos)
                    (not (Ba_not_checked_p5))

                    ; #52665: <==uncertain_firing== 86927 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #58368: <==negation-removal== 20221 (pos)
                    (not (Pa_not_checked_p5))

                    ; #58867: <==negation-removal== 19225 (pos)
                    (not (Bc_not_checked_p5))

                    ; #62276: <==negation-removal== 58621 (pos)
                    (not (not_checked_p5))

                    ; #69031: <==negation-removal== 72404 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #70090: <==uncertain_firing== 38110 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #74173: <==negation-removal== 38110 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #86604: <==uncertain_firing== 72404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12538: <==closure== 57038 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #13197: origin
                    (checked_p6)

                    ; #29244: <==commonly_known== 48351 (neg)
                    (Pb_checked_p6)

                    ; #53735: <==commonly_known== 13197 (pos)
                    (Bc_checked_p6)

                    ; #55980: <==commonly_known== 48351 (neg)
                    (Pa_checked_p6)

                    ; #57038: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #70226: <==closure== 87088 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #73129: <==commonly_known== 13197 (pos)
                    (Ba_checked_p6)

                    ; #75746: <==commonly_known== 48351 (neg)
                    (Pc_checked_p6)

                    ; #83904: <==commonly_known== 13197 (pos)
                    (Bb_checked_p6)

                    ; #87088: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #11942: <==negation-removal== 29244 (pos)
                    (not (Bb_not_checked_p6))

                    ; #13151: <==negation-removal== 57038 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #23847: <==negation-removal== 83904 (pos)
                    (not (Pb_not_checked_p6))

                    ; #28434: <==uncertain_firing== 57038 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #29048: <==uncertain_firing== 87088 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #32880: <==negation-removal== 73129 (pos)
                    (not (Pa_not_checked_p6))

                    ; #34737: <==negation-removal== 53735 (pos)
                    (not (Pc_not_checked_p6))

                    ; #35181: <==negation-removal== 87088 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #48351: <==negation-removal== 13197 (pos)
                    (not (not_checked_p6))

                    ; #57837: <==negation-removal== 75746 (pos)
                    (not (Bc_not_checked_p6))

                    ; #71498: <==negation-removal== 70226 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #76555: <==negation-removal== 55980 (pos)
                    (not (Ba_not_checked_p6))

                    ; #82136: <==negation-removal== 12538 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #84519: <==uncertain_firing== 12538 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #91729: <==uncertain_firing== 70226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15324: <==commonly_known== 17009 (neg)
                    (Pc_checked_p7)

                    ; #19602: <==commonly_known== 67356 (pos)
                    (Ba_checked_p7)

                    ; #29309: <==commonly_known== 17009 (neg)
                    (Pa_checked_p7)

                    ; #41718: <==commonly_known== 67356 (pos)
                    (Bc_checked_p7)

                    ; #43108: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #45461: <==commonly_known== 17009 (neg)
                    (Pb_checked_p7)

                    ; #53201: <==closure== 43108 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #67356: origin
                    (checked_p7)

                    ; #82650: <==commonly_known== 67356 (pos)
                    (Bb_checked_p7)

                    ; #83407: <==closure== 90976 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #90976: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #10283: <==uncertain_firing== 53201 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #11230: <==negation-removal== 41718 (pos)
                    (not (Pc_not_checked_p7))

                    ; #17009: <==negation-removal== 67356 (pos)
                    (not (not_checked_p7))

                    ; #23519: <==negation-removal== 43108 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #34880: <==negation-removal== 83407 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39672: <==negation-removal== 19602 (pos)
                    (not (Pa_not_checked_p7))

                    ; #40305: <==negation-removal== 45461 (pos)
                    (not (Bb_not_checked_p7))

                    ; #54443: <==negation-removal== 90976 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #56092: <==negation-removal== 53201 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #61947: <==negation-removal== 82650 (pos)
                    (not (Pb_not_checked_p7))

                    ; #63400: <==negation-removal== 15324 (pos)
                    (not (Bc_not_checked_p7))

                    ; #64265: <==uncertain_firing== 90976 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #75215: <==negation-removal== 29309 (pos)
                    (not (Ba_not_checked_p7))

                    ; #86291: <==uncertain_firing== 43108 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #91418: <==uncertain_firing== 83407 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10056: <==commonly_known== 17345 (neg)
                    (Pc_checked_p8)

                    ; #10541: <==commonly_known== 17345 (neg)
                    (Pb_checked_p8)

                    ; #25884: <==commonly_known== 53282 (pos)
                    (Bc_checked_p8)

                    ; #38991: <==commonly_known== 53282 (pos)
                    (Bb_checked_p8)

                    ; #40547: <==closure== 65310 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #43181: <==closure== 76884 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #45076: <==commonly_known== 53282 (pos)
                    (Ba_checked_p8)

                    ; #53282: origin
                    (checked_p8)

                    ; #58188: <==commonly_known== 17345 (neg)
                    (Pa_checked_p8)

                    ; #65310: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #76884: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #13396: <==negation-removal== 65310 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #17345: <==negation-removal== 53282 (pos)
                    (not (not_checked_p8))

                    ; #23350: <==negation-removal== 40547 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #34417: <==negation-removal== 38991 (pos)
                    (not (Pb_not_checked_p8))

                    ; #39093: <==negation-removal== 43181 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #44498: <==negation-removal== 10541 (pos)
                    (not (Bb_not_checked_p8))

                    ; #54427: <==uncertain_firing== 65310 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #63037: <==negation-removal== 45076 (pos)
                    (not (Pa_not_checked_p8))

                    ; #64792: <==negation-removal== 76884 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #76634: <==negation-removal== 25884 (pos)
                    (not (Pc_not_checked_p8))

                    ; #79047: <==uncertain_firing== 43181 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #80708: <==negation-removal== 58188 (pos)
                    (not (Ba_not_checked_p8))

                    ; #83776: <==uncertain_firing== 76884 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #84162: <==negation-removal== 10056 (pos)
                    (not (Bc_not_checked_p8))

                    ; #85565: <==uncertain_firing== 40547 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16829: <==commonly_known== 60301 (pos)
                    (Ba_checked_p9)

                    ; #23033: <==commonly_known== 60301 (pos)
                    (Bb_checked_p9)

                    ; #34060: <==commonly_known== 60301 (pos)
                    (Bc_checked_p9)

                    ; #36300: <==closure== 44417 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #44417: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #50235: <==commonly_known== 22652 (neg)
                    (Pc_checked_p9)

                    ; #51351: <==commonly_known== 22652 (neg)
                    (Pb_checked_p9)

                    ; #60301: origin
                    (checked_p9)

                    ; #66102: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #88010: <==commonly_known== 22652 (neg)
                    (Pa_checked_p9)

                    ; #90168: <==closure== 66102 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #13943: <==negation-removal== 23033 (pos)
                    (not (Pb_not_checked_p9))

                    ; #18148: <==negation-removal== 88010 (pos)
                    (not (Ba_not_checked_p9))

                    ; #19683: <==uncertain_firing== 90168 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #22652: <==negation-removal== 60301 (pos)
                    (not (not_checked_p9))

                    ; #31981: <==negation-removal== 90168 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #41858: <==negation-removal== 50235 (pos)
                    (not (Bc_not_checked_p9))

                    ; #45460: <==uncertain_firing== 44417 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #47911: <==negation-removal== 16829 (pos)
                    (not (Pa_not_checked_p9))

                    ; #57062: <==negation-removal== 36300 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #66840: <==negation-removal== 66102 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #74748: <==uncertain_firing== 36300 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #77112: <==negation-removal== 34060 (pos)
                    (not (Pc_not_checked_p9))

                    ; #77211: <==uncertain_firing== 66102 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #89854: <==negation-removal== 44417 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #91028: <==negation-removal== 51351 (pos)
                    (not (Bb_not_checked_p9))))

)