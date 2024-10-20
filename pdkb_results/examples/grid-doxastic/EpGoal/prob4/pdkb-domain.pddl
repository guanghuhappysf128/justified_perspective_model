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
        (not_at_d_p1)
        (not_at_d_p10)
        (not_at_d_p11)
        (not_at_d_p12)
        (not_at_d_p2)
        (not_at_d_p3)
        (not_at_d_p4)
        (not_at_d_p5)
        (not_at_d_p6)
        (not_at_d_p7)
        (not_at_d_p8)
        (not_at_d_p9)
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
        (Bd_not_checked_p1)
        (Bd_not_checked_p10)
        (Bd_not_checked_p11)
        (Bd_not_checked_p12)
        (Bd_not_checked_p2)
        (Bd_not_checked_p3)
        (Bd_not_checked_p4)
        (Bd_not_checked_p5)
        (Bd_not_checked_p6)
        (Bd_not_checked_p7)
        (Bd_not_checked_p8)
        (Bd_not_checked_p9)
        (Bd_not_hiddensurvivorat_s_p1)
        (Bd_not_hiddensurvivorat_s_p10)
        (Bd_not_hiddensurvivorat_s_p11)
        (Bd_not_hiddensurvivorat_s_p12)
        (Bd_not_hiddensurvivorat_s_p2)
        (Bd_not_hiddensurvivorat_s_p3)
        (Bd_not_hiddensurvivorat_s_p4)
        (Bd_not_hiddensurvivorat_s_p5)
        (Bd_not_hiddensurvivorat_s_p6)
        (Bd_not_hiddensurvivorat_s_p7)
        (Bd_not_hiddensurvivorat_s_p8)
        (Bd_not_hiddensurvivorat_s_p9)
        (Bd_not_survivorat_s_p1)
        (Bd_not_survivorat_s_p10)
        (Bd_not_survivorat_s_p11)
        (Bd_not_survivorat_s_p12)
        (Bd_not_survivorat_s_p2)
        (Bd_not_survivorat_s_p3)
        (Bd_not_survivorat_s_p4)
        (Bd_not_survivorat_s_p5)
        (Bd_not_survivorat_s_p6)
        (Bd_not_survivorat_s_p7)
        (Bd_not_survivorat_s_p8)
        (Bd_not_survivorat_s_p9)
        (Bd_checked_p1)
        (Bd_checked_p10)
        (Bd_checked_p11)
        (Bd_checked_p12)
        (Bd_checked_p2)
        (Bd_checked_p3)
        (Bd_checked_p4)
        (Bd_checked_p5)
        (Bd_checked_p6)
        (Bd_checked_p7)
        (Bd_checked_p8)
        (Bd_checked_p9)
        (Bd_hiddensurvivorat_s_p1)
        (Bd_hiddensurvivorat_s_p10)
        (Bd_hiddensurvivorat_s_p11)
        (Bd_hiddensurvivorat_s_p12)
        (Bd_hiddensurvivorat_s_p2)
        (Bd_hiddensurvivorat_s_p3)
        (Bd_hiddensurvivorat_s_p4)
        (Bd_hiddensurvivorat_s_p5)
        (Bd_hiddensurvivorat_s_p6)
        (Bd_hiddensurvivorat_s_p7)
        (Bd_hiddensurvivorat_s_p8)
        (Bd_hiddensurvivorat_s_p9)
        (Bd_survivorat_s_p1)
        (Bd_survivorat_s_p10)
        (Bd_survivorat_s_p11)
        (Bd_survivorat_s_p12)
        (Bd_survivorat_s_p2)
        (Bd_survivorat_s_p3)
        (Bd_survivorat_s_p4)
        (Bd_survivorat_s_p5)
        (Bd_survivorat_s_p6)
        (Bd_survivorat_s_p7)
        (Bd_survivorat_s_p8)
        (Bd_survivorat_s_p9)
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
        (Pd_not_checked_p1)
        (Pd_not_checked_p10)
        (Pd_not_checked_p11)
        (Pd_not_checked_p12)
        (Pd_not_checked_p2)
        (Pd_not_checked_p3)
        (Pd_not_checked_p4)
        (Pd_not_checked_p5)
        (Pd_not_checked_p6)
        (Pd_not_checked_p7)
        (Pd_not_checked_p8)
        (Pd_not_checked_p9)
        (Pd_not_hiddensurvivorat_s_p1)
        (Pd_not_hiddensurvivorat_s_p10)
        (Pd_not_hiddensurvivorat_s_p11)
        (Pd_not_hiddensurvivorat_s_p12)
        (Pd_not_hiddensurvivorat_s_p2)
        (Pd_not_hiddensurvivorat_s_p3)
        (Pd_not_hiddensurvivorat_s_p4)
        (Pd_not_hiddensurvivorat_s_p5)
        (Pd_not_hiddensurvivorat_s_p6)
        (Pd_not_hiddensurvivorat_s_p7)
        (Pd_not_hiddensurvivorat_s_p8)
        (Pd_not_hiddensurvivorat_s_p9)
        (Pd_not_survivorat_s_p1)
        (Pd_not_survivorat_s_p10)
        (Pd_not_survivorat_s_p11)
        (Pd_not_survivorat_s_p12)
        (Pd_not_survivorat_s_p2)
        (Pd_not_survivorat_s_p3)
        (Pd_not_survivorat_s_p4)
        (Pd_not_survivorat_s_p5)
        (Pd_not_survivorat_s_p6)
        (Pd_not_survivorat_s_p7)
        (Pd_not_survivorat_s_p8)
        (Pd_not_survivorat_s_p9)
        (Pd_checked_p1)
        (Pd_checked_p10)
        (Pd_checked_p11)
        (Pd_checked_p12)
        (Pd_checked_p2)
        (Pd_checked_p3)
        (Pd_checked_p4)
        (Pd_checked_p5)
        (Pd_checked_p6)
        (Pd_checked_p7)
        (Pd_checked_p8)
        (Pd_checked_p9)
        (Pd_hiddensurvivorat_s_p1)
        (Pd_hiddensurvivorat_s_p10)
        (Pd_hiddensurvivorat_s_p11)
        (Pd_hiddensurvivorat_s_p12)
        (Pd_hiddensurvivorat_s_p2)
        (Pd_hiddensurvivorat_s_p3)
        (Pd_hiddensurvivorat_s_p4)
        (Pd_hiddensurvivorat_s_p5)
        (Pd_hiddensurvivorat_s_p6)
        (Pd_hiddensurvivorat_s_p7)
        (Pd_hiddensurvivorat_s_p8)
        (Pd_hiddensurvivorat_s_p9)
        (Pd_survivorat_s_p1)
        (Pd_survivorat_s_p10)
        (Pd_survivorat_s_p11)
        (Pd_survivorat_s_p12)
        (Pd_survivorat_s_p2)
        (Pd_survivorat_s_p3)
        (Pd_survivorat_s_p4)
        (Pd_survivorat_s_p5)
        (Pd_survivorat_s_p6)
        (Pd_survivorat_s_p7)
        (Pd_survivorat_s_p8)
        (Pd_survivorat_s_p9)
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
        (at_d_p1)
        (at_d_p10)
        (at_d_p11)
        (at_d_p12)
        (at_d_p2)
        (at_d_p3)
        (at_d_p4)
        (at_d_p5)
        (at_d_p6)
        (at_d_p7)
        (at_d_p8)
        (at_d_p9)
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
                    ; #12745: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #18801: <==closure== 80132 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #23287: <==closure== 33427 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #24282: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #26228: <==closure== 24282 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #33427: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #52696: <==closure== 12745 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #80132: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #10764: <==uncertain_firing== 18801 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #11418: <==uncertain_firing== 52696 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #13407: <==negation-removal== 33427 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #29895: <==uncertain_firing== 26228 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #34346: <==uncertain_firing== 33427 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #35893: <==uncertain_firing== 24282 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #53513: <==negation-removal== 23287 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #53553: <==negation-removal== 12745 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #54884: <==uncertain_firing== 23287 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #62887: <==uncertain_firing== 80132 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #68350: <==negation-removal== 52696 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #71163: <==negation-removal== 24282 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #71283: <==negation-removal== 18801 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #75610: <==uncertain_firing== 12745 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #89781: <==negation-removal== 80132 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #91847: <==negation-removal== 26228 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #12745: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #18801: <==closure== 80132 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #23287: <==closure== 33427 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #24282: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #26228: <==closure== 24282 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #33427: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #52696: <==closure== 12745 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #80132: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #10764: <==uncertain_firing== 18801 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #11418: <==uncertain_firing== 52696 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #13407: <==negation-removal== 33427 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #29895: <==uncertain_firing== 26228 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #34346: <==uncertain_firing== 33427 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #35893: <==uncertain_firing== 24282 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #53513: <==negation-removal== 23287 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #53553: <==negation-removal== 12745 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #54884: <==uncertain_firing== 23287 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #62887: <==uncertain_firing== 80132 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #68350: <==negation-removal== 52696 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #71163: <==negation-removal== 24282 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #71283: <==negation-removal== 18801 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #75610: <==uncertain_firing== 12745 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #89781: <==negation-removal== 80132 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #91847: <==negation-removal== 26228 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (at_c_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #12745: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #18801: <==closure== 80132 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #23287: <==closure== 33427 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #24282: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #26228: <==closure== 24282 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #33427: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #52696: <==closure== 12745 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #80132: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #10764: <==uncertain_firing== 18801 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #11418: <==uncertain_firing== 52696 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #13407: <==negation-removal== 33427 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #29895: <==uncertain_firing== 26228 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #34346: <==uncertain_firing== 33427 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #35893: <==uncertain_firing== 24282 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #53513: <==negation-removal== 23287 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #53553: <==negation-removal== 12745 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #54884: <==uncertain_firing== 23287 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #62887: <==uncertain_firing== 80132 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #68350: <==negation-removal== 52696 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #71163: <==negation-removal== 24282 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #71283: <==negation-removal== 18801 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #75610: <==uncertain_firing== 12745 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #89781: <==negation-removal== 80132 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #91847: <==negation-removal== 26228 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #12745: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #18801: <==closure== 80132 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #23287: <==closure== 33427 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #24282: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #26228: <==closure== 24282 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #33427: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #52696: <==closure== 12745 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #80132: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #10764: <==uncertain_firing== 18801 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #11418: <==uncertain_firing== 52696 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #13407: <==negation-removal== 33427 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #29895: <==uncertain_firing== 26228 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #34346: <==uncertain_firing== 33427 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #35893: <==uncertain_firing== 24282 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #53513: <==negation-removal== 23287 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #53553: <==negation-removal== 12745 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #54884: <==uncertain_firing== 23287 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #62887: <==uncertain_firing== 80132 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #68350: <==negation-removal== 52696 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #71163: <==negation-removal== 24282 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #71283: <==negation-removal== 18801 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #75610: <==uncertain_firing== 12745 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #89781: <==negation-removal== 80132 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #91847: <==negation-removal== 26228 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #46518: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #66151: <==closure== 46518 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #66574: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #67531: <==closure== 66574 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #70387: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #74782: <==closure== 70387 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #86661: <==closure== 90552 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #90552: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #13992: <==uncertain_firing== 70387 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #28127: <==uncertain_firing== 90552 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #32627: <==negation-removal== 90552 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #33621: <==negation-removal== 70387 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #39214: <==negation-removal== 74782 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #40535: <==uncertain_firing== 86661 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #42623: <==negation-removal== 66574 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #47504: <==uncertain_firing== 67531 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #51928: <==negation-removal== 66151 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #54439: <==uncertain_firing== 74782 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #63287: <==uncertain_firing== 46518 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #63351: <==uncertain_firing== 66151 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #63693: <==negation-removal== 86661 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #74164: <==negation-removal== 67531 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #79585: <==uncertain_firing== 66574 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #97816: <==negation-removal== 46518 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #46518: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #66151: <==closure== 46518 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #66574: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #67531: <==closure== 66574 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #70387: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #74782: <==closure== 70387 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #86661: <==closure== 90552 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #90552: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #13992: <==uncertain_firing== 70387 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #28127: <==uncertain_firing== 90552 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #32627: <==negation-removal== 90552 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #33621: <==negation-removal== 70387 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #39214: <==negation-removal== 74782 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #40535: <==uncertain_firing== 86661 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #42623: <==negation-removal== 66574 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #47504: <==uncertain_firing== 67531 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #51928: <==negation-removal== 66151 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #54439: <==uncertain_firing== 74782 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #63287: <==uncertain_firing== 46518 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #63351: <==uncertain_firing== 66151 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #63693: <==negation-removal== 86661 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #74164: <==negation-removal== 67531 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #79585: <==uncertain_firing== 66574 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #97816: <==negation-removal== 46518 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #46518: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #66151: <==closure== 46518 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #66574: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #67531: <==closure== 66574 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #70387: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #74782: <==closure== 70387 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #86661: <==closure== 90552 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #90552: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #13992: <==uncertain_firing== 70387 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #28127: <==uncertain_firing== 90552 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #32627: <==negation-removal== 90552 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #33621: <==negation-removal== 70387 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #39214: <==negation-removal== 74782 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #40535: <==uncertain_firing== 86661 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #42623: <==negation-removal== 66574 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #47504: <==uncertain_firing== 67531 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #51928: <==negation-removal== 66151 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #54439: <==uncertain_firing== 74782 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #63287: <==uncertain_firing== 46518 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #63351: <==uncertain_firing== 66151 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #63693: <==negation-removal== 86661 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #74164: <==negation-removal== 67531 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #79585: <==uncertain_firing== 66574 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #97816: <==negation-removal== 46518 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (at_d_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #46518: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #66151: <==closure== 46518 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #66574: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #67531: <==closure== 66574 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #70387: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #74782: <==closure== 70387 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #86661: <==closure== 90552 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #90552: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #13992: <==uncertain_firing== 70387 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #28127: <==uncertain_firing== 90552 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #32627: <==negation-removal== 90552 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #33621: <==negation-removal== 70387 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #39214: <==negation-removal== 74782 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #40535: <==uncertain_firing== 86661 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #42623: <==negation-removal== 66574 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #47504: <==uncertain_firing== 67531 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #51928: <==negation-removal== 66151 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #54439: <==uncertain_firing== 74782 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #63287: <==uncertain_firing== 46518 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #63351: <==uncertain_firing== 66151 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #63693: <==negation-removal== 86661 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #74164: <==negation-removal== 67531 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #79585: <==uncertain_firing== 66574 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #97816: <==negation-removal== 46518 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #13520: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #20194: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #43582: <==closure== 13520 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #47953: <==closure== 20194 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #55311: <==closure== 79677 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #76589: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #79677: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #84945: <==closure== 76589 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #18243: <==negation-removal== 43582 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #19407: <==uncertain_firing== 20194 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #21322: <==negation-removal== 79677 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #29713: <==uncertain_firing== 13520 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #32185: <==uncertain_firing== 76589 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #45661: <==negation-removal== 76589 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #52765: <==uncertain_firing== 55311 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #55350: <==negation-removal== 47953 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #61438: <==uncertain_firing== 43582 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #64850: <==negation-removal== 13520 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #66303: <==uncertain_firing== 84945 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #73404: <==negation-removal== 55311 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #76578: <==negation-removal== 20194 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #80135: <==uncertain_firing== 79677 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #84265: <==negation-removal== 84945 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #88778: <==uncertain_firing== 47953 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #13520: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #20194: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #43582: <==closure== 13520 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #47953: <==closure== 20194 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #55311: <==closure== 79677 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #76589: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #79677: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #84945: <==closure== 76589 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #18243: <==negation-removal== 43582 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #19407: <==uncertain_firing== 20194 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #21322: <==negation-removal== 79677 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #29713: <==uncertain_firing== 13520 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #32185: <==uncertain_firing== 76589 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #45661: <==negation-removal== 76589 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #52765: <==uncertain_firing== 55311 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #55350: <==negation-removal== 47953 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #61438: <==uncertain_firing== 43582 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #64850: <==negation-removal== 13520 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #66303: <==uncertain_firing== 84945 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #73404: <==negation-removal== 55311 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #76578: <==negation-removal== 20194 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #80135: <==uncertain_firing== 79677 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #84265: <==negation-removal== 84945 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #88778: <==uncertain_firing== 47953 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #13520: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #20194: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #43582: <==closure== 13520 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #47953: <==closure== 20194 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #55311: <==closure== 79677 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #76589: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #79677: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #84945: <==closure== 76589 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #18243: <==negation-removal== 43582 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #19407: <==uncertain_firing== 20194 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #21322: <==negation-removal== 79677 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #29713: <==uncertain_firing== 13520 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #32185: <==uncertain_firing== 76589 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #45661: <==negation-removal== 76589 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #52765: <==uncertain_firing== 55311 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #55350: <==negation-removal== 47953 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #61438: <==uncertain_firing== 43582 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #64850: <==negation-removal== 13520 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #66303: <==uncertain_firing== 84945 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #73404: <==negation-removal== 55311 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #76578: <==negation-removal== 20194 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #80135: <==uncertain_firing== 79677 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #84265: <==negation-removal== 84945 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #88778: <==uncertain_firing== 47953 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #13520: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #20194: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #43582: <==closure== 13520 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #47953: <==closure== 20194 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #55311: <==closure== 79677 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #76589: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #79677: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #84945: <==closure== 76589 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #18243: <==negation-removal== 43582 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #19407: <==uncertain_firing== 20194 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #21322: <==negation-removal== 79677 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #29713: <==uncertain_firing== 13520 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #32185: <==uncertain_firing== 76589 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #45661: <==negation-removal== 76589 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #52765: <==uncertain_firing== 55311 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #55350: <==negation-removal== 47953 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #61438: <==uncertain_firing== 43582 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #64850: <==negation-removal== 13520 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #66303: <==uncertain_firing== 84945 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #73404: <==negation-removal== 55311 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #76578: <==negation-removal== 20194 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #80135: <==uncertain_firing== 79677 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #84265: <==negation-removal== 84945 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #88778: <==uncertain_firing== 47953 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #11552: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #17906: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #19561: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #28602: <==closure== 11552 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #42569: <==closure== 59693 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #46552: <==closure== 17906 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #47994: <==closure== 19561 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #59693: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #11495: <==negation-removal== 11552 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #16521: <==uncertain_firing== 42569 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #18457: <==uncertain_firing== 19561 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #26243: <==negation-removal== 19561 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #35032: <==uncertain_firing== 17906 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #35222: <==negation-removal== 59693 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #35241: <==uncertain_firing== 28602 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41726: <==negation-removal== 28602 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #46444: <==uncertain_firing== 59693 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #57837: <==uncertain_firing== 11552 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #64098: <==uncertain_firing== 47994 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #67056: <==negation-removal== 46552 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #67958: <==negation-removal== 42569 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #85209: <==negation-removal== 47994 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #88479: <==negation-removal== 17906 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #92038: <==uncertain_firing== 46552 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #11552: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #17906: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #19561: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #28602: <==closure== 11552 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #42569: <==closure== 59693 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #46552: <==closure== 17906 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #47994: <==closure== 19561 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #59693: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #11495: <==negation-removal== 11552 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #16521: <==uncertain_firing== 42569 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #18457: <==uncertain_firing== 19561 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #26243: <==negation-removal== 19561 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #35032: <==uncertain_firing== 17906 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #35222: <==negation-removal== 59693 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #35241: <==uncertain_firing== 28602 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41726: <==negation-removal== 28602 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #46444: <==uncertain_firing== 59693 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #57837: <==uncertain_firing== 11552 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #64098: <==uncertain_firing== 47994 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #67056: <==negation-removal== 46552 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #67958: <==negation-removal== 42569 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #85209: <==negation-removal== 47994 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #88479: <==negation-removal== 17906 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #92038: <==uncertain_firing== 46552 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #11552: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #17906: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #19561: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #28602: <==closure== 11552 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #42569: <==closure== 59693 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #46552: <==closure== 17906 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #47994: <==closure== 19561 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #59693: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #11495: <==negation-removal== 11552 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #16521: <==uncertain_firing== 42569 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #18457: <==uncertain_firing== 19561 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #26243: <==negation-removal== 19561 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #35032: <==uncertain_firing== 17906 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #35222: <==negation-removal== 59693 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #35241: <==uncertain_firing== 28602 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41726: <==negation-removal== 28602 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #46444: <==uncertain_firing== 59693 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #57837: <==uncertain_firing== 11552 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #64098: <==uncertain_firing== 47994 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #67056: <==negation-removal== 46552 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #67958: <==negation-removal== 42569 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #85209: <==negation-removal== 47994 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #88479: <==negation-removal== 17906 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #92038: <==uncertain_firing== 46552 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #11552: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #17906: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #19561: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #28602: <==closure== 11552 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #42569: <==closure== 59693 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #46552: <==closure== 17906 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #47994: <==closure== 19561 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #59693: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #11495: <==negation-removal== 11552 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #16521: <==uncertain_firing== 42569 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #18457: <==uncertain_firing== 19561 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #26243: <==negation-removal== 19561 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #35032: <==uncertain_firing== 17906 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #35222: <==negation-removal== 59693 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #35241: <==uncertain_firing== 28602 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #41726: <==negation-removal== 28602 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #46444: <==uncertain_firing== 59693 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #57837: <==uncertain_firing== 11552 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #64098: <==uncertain_firing== 47994 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #67056: <==negation-removal== 46552 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #67958: <==negation-removal== 42569 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #85209: <==negation-removal== 47994 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #88479: <==negation-removal== 17906 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #92038: <==uncertain_firing== 46552 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #19382: <==closure== 29760 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #20942: <==closure== 70427 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #29760: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #44736: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #53105: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #54773: <==closure== 53105 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #59157: <==closure== 44736 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70427: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #20660: <==negation-removal== 29760 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #24481: <==negation-removal== 70427 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #28639: <==negation-removal== 19382 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #29424: <==uncertain_firing== 53105 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #30463: <==uncertain_firing== 19382 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #38017: <==uncertain_firing== 20942 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #43095: <==negation-removal== 54773 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #46755: <==uncertain_firing== 59157 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #50119: <==negation-removal== 20942 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #51488: <==negation-removal== 53105 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #60824: <==uncertain_firing== 29760 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #60935: <==uncertain_firing== 54773 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #63459: <==negation-removal== 59157 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #74395: <==uncertain_firing== 70427 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #79103: <==negation-removal== 44736 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #83122: <==uncertain_firing== 44736 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #19382: <==closure== 29760 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #20942: <==closure== 70427 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #29760: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #44736: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #53105: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #54773: <==closure== 53105 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #59157: <==closure== 44736 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70427: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #20660: <==negation-removal== 29760 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #24481: <==negation-removal== 70427 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #28639: <==negation-removal== 19382 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #29424: <==uncertain_firing== 53105 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #30463: <==uncertain_firing== 19382 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #38017: <==uncertain_firing== 20942 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #43095: <==negation-removal== 54773 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #46755: <==uncertain_firing== 59157 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #50119: <==negation-removal== 20942 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #51488: <==negation-removal== 53105 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #60824: <==uncertain_firing== 29760 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #60935: <==uncertain_firing== 54773 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #63459: <==negation-removal== 59157 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #74395: <==uncertain_firing== 70427 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #79103: <==negation-removal== 44736 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #83122: <==uncertain_firing== 44736 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #19382: <==closure== 29760 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #20942: <==closure== 70427 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #29760: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #44736: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #53105: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #54773: <==closure== 53105 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #59157: <==closure== 44736 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70427: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #20660: <==negation-removal== 29760 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #24481: <==negation-removal== 70427 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #28639: <==negation-removal== 19382 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #29424: <==uncertain_firing== 53105 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #30463: <==uncertain_firing== 19382 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #38017: <==uncertain_firing== 20942 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #43095: <==negation-removal== 54773 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #46755: <==uncertain_firing== 59157 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #50119: <==negation-removal== 20942 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #51488: <==negation-removal== 53105 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #60824: <==uncertain_firing== 29760 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #60935: <==uncertain_firing== 54773 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #63459: <==negation-removal== 59157 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #74395: <==uncertain_firing== 70427 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #79103: <==negation-removal== 44736 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #83122: <==uncertain_firing== 44736 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #19382: <==closure== 29760 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #20942: <==closure== 70427 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #29760: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #44736: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #53105: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #54773: <==closure== 53105 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #59157: <==closure== 44736 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70427: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #20660: <==negation-removal== 29760 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #24481: <==negation-removal== 70427 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #28639: <==negation-removal== 19382 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #29424: <==uncertain_firing== 53105 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #30463: <==uncertain_firing== 19382 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #38017: <==uncertain_firing== 20942 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #43095: <==negation-removal== 54773 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #46755: <==uncertain_firing== 59157 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #50119: <==negation-removal== 20942 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #51488: <==negation-removal== 53105 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #60824: <==uncertain_firing== 29760 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #60935: <==uncertain_firing== 54773 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #63459: <==negation-removal== 59157 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #74395: <==uncertain_firing== 70427 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #79103: <==negation-removal== 44736 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #83122: <==uncertain_firing== 44736 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #21717: <==closure== 85291 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #34384: <==closure== 87571 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #52587: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #56932: <==closure== 63506 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #63506: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #78448: <==closure== 52587 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #85291: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #87571: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #13416: <==negation-removal== 85291 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #36569: <==negation-removal== 87571 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #42962: <==uncertain_firing== 63506 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #51769: <==negation-removal== 56932 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #53815: <==negation-removal== 52587 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #57253: <==uncertain_firing== 21717 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #61316: <==uncertain_firing== 34384 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #61613: <==uncertain_firing== 85291 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #62587: <==uncertain_firing== 87571 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #65051: <==uncertain_firing== 56932 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #65515: <==negation-removal== 63506 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68603: <==uncertain_firing== 52587 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #68872: <==negation-removal== 78448 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #73668: <==negation-removal== 21717 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #80860: <==uncertain_firing== 78448 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #90738: <==negation-removal== 34384 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #21717: <==closure== 85291 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #34384: <==closure== 87571 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #52587: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #56932: <==closure== 63506 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #63506: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #78448: <==closure== 52587 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #85291: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #87571: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #13416: <==negation-removal== 85291 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #36569: <==negation-removal== 87571 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #42962: <==uncertain_firing== 63506 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #51769: <==negation-removal== 56932 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #53815: <==negation-removal== 52587 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #57253: <==uncertain_firing== 21717 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #61316: <==uncertain_firing== 34384 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #61613: <==uncertain_firing== 85291 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #62587: <==uncertain_firing== 87571 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #65051: <==uncertain_firing== 56932 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #65515: <==negation-removal== 63506 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68603: <==uncertain_firing== 52587 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #68872: <==negation-removal== 78448 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #73668: <==negation-removal== 21717 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #80860: <==uncertain_firing== 78448 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #90738: <==negation-removal== 34384 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #21717: <==closure== 85291 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #34384: <==closure== 87571 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #52587: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #56932: <==closure== 63506 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #63506: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #78448: <==closure== 52587 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #85291: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #87571: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #13416: <==negation-removal== 85291 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #36569: <==negation-removal== 87571 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #42962: <==uncertain_firing== 63506 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #51769: <==negation-removal== 56932 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #53815: <==negation-removal== 52587 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #57253: <==uncertain_firing== 21717 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #61316: <==uncertain_firing== 34384 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #61613: <==uncertain_firing== 85291 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #62587: <==uncertain_firing== 87571 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #65051: <==uncertain_firing== 56932 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #65515: <==negation-removal== 63506 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68603: <==uncertain_firing== 52587 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #68872: <==negation-removal== 78448 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #73668: <==negation-removal== 21717 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #80860: <==uncertain_firing== 78448 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #90738: <==negation-removal== 34384 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #21717: <==closure== 85291 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #34384: <==closure== 87571 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #52587: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #56932: <==closure== 63506 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #63506: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #78448: <==closure== 52587 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #85291: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #87571: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #13416: <==negation-removal== 85291 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #36569: <==negation-removal== 87571 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #42962: <==uncertain_firing== 63506 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #51769: <==negation-removal== 56932 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #53815: <==negation-removal== 52587 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #57253: <==uncertain_firing== 21717 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #61316: <==uncertain_firing== 34384 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #61613: <==uncertain_firing== 85291 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #62587: <==uncertain_firing== 87571 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #65051: <==uncertain_firing== 56932 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #65515: <==negation-removal== 63506 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68603: <==uncertain_firing== 52587 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #68872: <==negation-removal== 78448 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #73668: <==negation-removal== 21717 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #80860: <==uncertain_firing== 78448 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #90738: <==negation-removal== 34384 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #11105: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #19838: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #53493: <==closure== 19838 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #64789: <==closure== 11105 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #67285: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81326: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #84791: <==closure== 67285 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #92029: <==closure== 81326 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14616: <==uncertain_firing== 19838 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #17954: <==negation-removal== 67285 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #18033: <==uncertain_firing== 11105 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #22294: <==uncertain_firing== 84791 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #24261: <==negation-removal== 81326 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #24292: <==negation-removal== 11105 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #25515: <==uncertain_firing== 64789 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #29590: <==negation-removal== 53493 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #38239: <==uncertain_firing== 81326 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #42930: <==negation-removal== 64789 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #49991: <==uncertain_firing== 67285 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #50318: <==negation-removal== 19838 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #58922: <==uncertain_firing== 53493 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #60134: <==negation-removal== 84791 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #71618: <==uncertain_firing== 92029 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #89737: <==negation-removal== 92029 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #11105: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #19838: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #53493: <==closure== 19838 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #64789: <==closure== 11105 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #67285: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81326: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #84791: <==closure== 67285 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #92029: <==closure== 81326 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14616: <==uncertain_firing== 19838 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #17954: <==negation-removal== 67285 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #18033: <==uncertain_firing== 11105 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #22294: <==uncertain_firing== 84791 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #24261: <==negation-removal== 81326 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #24292: <==negation-removal== 11105 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #25515: <==uncertain_firing== 64789 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #29590: <==negation-removal== 53493 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #38239: <==uncertain_firing== 81326 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #42930: <==negation-removal== 64789 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #49991: <==uncertain_firing== 67285 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #50318: <==negation-removal== 19838 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #58922: <==uncertain_firing== 53493 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #60134: <==negation-removal== 84791 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #71618: <==uncertain_firing== 92029 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #89737: <==negation-removal== 92029 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #11105: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #19838: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #53493: <==closure== 19838 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #64789: <==closure== 11105 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #67285: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81326: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #84791: <==closure== 67285 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #92029: <==closure== 81326 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14616: <==uncertain_firing== 19838 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #17954: <==negation-removal== 67285 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #18033: <==uncertain_firing== 11105 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #22294: <==uncertain_firing== 84791 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #24261: <==negation-removal== 81326 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #24292: <==negation-removal== 11105 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #25515: <==uncertain_firing== 64789 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #29590: <==negation-removal== 53493 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #38239: <==uncertain_firing== 81326 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #42930: <==negation-removal== 64789 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #49991: <==uncertain_firing== 67285 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #50318: <==negation-removal== 19838 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #58922: <==uncertain_firing== 53493 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #60134: <==negation-removal== 84791 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #71618: <==uncertain_firing== 92029 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #89737: <==negation-removal== 92029 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #11105: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #19838: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #53493: <==closure== 19838 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #64789: <==closure== 11105 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #67285: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81326: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #84791: <==closure== 67285 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #92029: <==closure== 81326 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14616: <==uncertain_firing== 19838 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #17954: <==negation-removal== 67285 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #18033: <==uncertain_firing== 11105 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #22294: <==uncertain_firing== 84791 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #24261: <==negation-removal== 81326 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #24292: <==negation-removal== 11105 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #25515: <==uncertain_firing== 64789 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #29590: <==negation-removal== 53493 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #38239: <==uncertain_firing== 81326 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #42930: <==negation-removal== 64789 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #49991: <==uncertain_firing== 67285 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #50318: <==negation-removal== 19838 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #58922: <==uncertain_firing== 53493 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #60134: <==negation-removal== 84791 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #71618: <==uncertain_firing== 92029 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #89737: <==negation-removal== 92029 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #19334: <==closure== 72322 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #38871: <==closure== 88173 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #43830: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #67122: <==closure== 78513 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72322: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #72422: <==closure== 43830 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #78513: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #88173: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #11526: <==uncertain_firing== 38871 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #12800: <==uncertain_firing== 43830 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #18111: <==uncertain_firing== 78513 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #24815: <==negation-removal== 88173 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #27206: <==negation-removal== 72322 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #33064: <==negation-removal== 67122 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #35291: <==negation-removal== 72422 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #36027: <==uncertain_firing== 67122 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41891: <==uncertain_firing== 72322 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #42944: <==uncertain_firing== 72422 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #45268: <==negation-removal== 38871 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #57620: <==negation-removal== 43830 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #68452: <==uncertain_firing== 19334 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #69485: <==negation-removal== 19334 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #82589: <==uncertain_firing== 88173 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #89649: <==negation-removal== 78513 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #19334: <==closure== 72322 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #38871: <==closure== 88173 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #43830: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #67122: <==closure== 78513 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72322: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #72422: <==closure== 43830 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #78513: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #88173: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #11526: <==uncertain_firing== 38871 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #12800: <==uncertain_firing== 43830 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #18111: <==uncertain_firing== 78513 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #24815: <==negation-removal== 88173 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #27206: <==negation-removal== 72322 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #33064: <==negation-removal== 67122 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #35291: <==negation-removal== 72422 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #36027: <==uncertain_firing== 67122 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41891: <==uncertain_firing== 72322 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #42944: <==uncertain_firing== 72422 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #45268: <==negation-removal== 38871 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #57620: <==negation-removal== 43830 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #68452: <==uncertain_firing== 19334 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #69485: <==negation-removal== 19334 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #82589: <==uncertain_firing== 88173 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #89649: <==negation-removal== 78513 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #19334: <==closure== 72322 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #38871: <==closure== 88173 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #43830: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #67122: <==closure== 78513 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72322: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #72422: <==closure== 43830 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #78513: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #88173: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #11526: <==uncertain_firing== 38871 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #12800: <==uncertain_firing== 43830 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #18111: <==uncertain_firing== 78513 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #24815: <==negation-removal== 88173 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #27206: <==negation-removal== 72322 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #33064: <==negation-removal== 67122 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #35291: <==negation-removal== 72422 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #36027: <==uncertain_firing== 67122 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41891: <==uncertain_firing== 72322 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #42944: <==uncertain_firing== 72422 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #45268: <==negation-removal== 38871 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #57620: <==negation-removal== 43830 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #68452: <==uncertain_firing== 19334 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #69485: <==negation-removal== 19334 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #82589: <==uncertain_firing== 88173 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #89649: <==negation-removal== 78513 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #19334: <==closure== 72322 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #38871: <==closure== 88173 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #43830: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #67122: <==closure== 78513 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72322: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #72422: <==closure== 43830 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #78513: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #88173: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #11526: <==uncertain_firing== 38871 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #12800: <==uncertain_firing== 43830 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #18111: <==uncertain_firing== 78513 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #24815: <==negation-removal== 88173 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #27206: <==negation-removal== 72322 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #33064: <==negation-removal== 67122 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #35291: <==negation-removal== 72422 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #36027: <==uncertain_firing== 67122 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41891: <==uncertain_firing== 72322 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #42944: <==uncertain_firing== 72422 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #45268: <==negation-removal== 38871 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #57620: <==negation-removal== 43830 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #68452: <==uncertain_firing== 19334 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #69485: <==negation-removal== 19334 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #82589: <==uncertain_firing== 88173 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #89649: <==negation-removal== 78513 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #30692: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #37784: <==closure== 85084 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #38487: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #44505: <==closure== 38487 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #50214: <==closure== 30692 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #67576: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #71005: <==closure== 67576 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #85084: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #19620: <==uncertain_firing== 38487 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #25563: <==uncertain_firing== 85084 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #25655: <==negation-removal== 44505 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #27995: <==negation-removal== 30692 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #29170: <==uncertain_firing== 37784 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #29633: <==negation-removal== 50214 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #30283: <==uncertain_firing== 50214 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #40754: <==uncertain_firing== 67576 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #41432: <==uncertain_firing== 30692 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #45361: <==negation-removal== 71005 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #46800: <==negation-removal== 38487 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #71008: <==negation-removal== 37784 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #73984: <==uncertain_firing== 44505 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #75662: <==negation-removal== 67576 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #86933: <==uncertain_firing== 71005 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #90844: <==negation-removal== 85084 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #30692: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #37784: <==closure== 85084 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #38487: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #44505: <==closure== 38487 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #50214: <==closure== 30692 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #67576: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #71005: <==closure== 67576 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #85084: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #19620: <==uncertain_firing== 38487 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #25563: <==uncertain_firing== 85084 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #25655: <==negation-removal== 44505 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #27995: <==negation-removal== 30692 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #29170: <==uncertain_firing== 37784 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #29633: <==negation-removal== 50214 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #30283: <==uncertain_firing== 50214 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #40754: <==uncertain_firing== 67576 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #41432: <==uncertain_firing== 30692 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #45361: <==negation-removal== 71005 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #46800: <==negation-removal== 38487 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #71008: <==negation-removal== 37784 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #73984: <==uncertain_firing== 44505 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #75662: <==negation-removal== 67576 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #86933: <==uncertain_firing== 71005 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #90844: <==negation-removal== 85084 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #30692: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #37784: <==closure== 85084 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #38487: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #44505: <==closure== 38487 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #50214: <==closure== 30692 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #67576: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #71005: <==closure== 67576 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #85084: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #19620: <==uncertain_firing== 38487 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #25563: <==uncertain_firing== 85084 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #25655: <==negation-removal== 44505 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #27995: <==negation-removal== 30692 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #29170: <==uncertain_firing== 37784 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #29633: <==negation-removal== 50214 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #30283: <==uncertain_firing== 50214 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #40754: <==uncertain_firing== 67576 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #41432: <==uncertain_firing== 30692 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #45361: <==negation-removal== 71005 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #46800: <==negation-removal== 38487 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #71008: <==negation-removal== 37784 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #73984: <==uncertain_firing== 44505 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #75662: <==negation-removal== 67576 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #86933: <==uncertain_firing== 71005 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #90844: <==negation-removal== 85084 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #30692: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #37784: <==closure== 85084 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #38487: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #44505: <==closure== 38487 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #50214: <==closure== 30692 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #67576: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #71005: <==closure== 67576 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #85084: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #19620: <==uncertain_firing== 38487 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #25563: <==uncertain_firing== 85084 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #25655: <==negation-removal== 44505 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #27995: <==negation-removal== 30692 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #29170: <==uncertain_firing== 37784 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #29633: <==negation-removal== 50214 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #30283: <==uncertain_firing== 50214 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #40754: <==uncertain_firing== 67576 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #41432: <==uncertain_firing== 30692 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #45361: <==negation-removal== 71005 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #46800: <==negation-removal== 38487 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #71008: <==negation-removal== 37784 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #73984: <==uncertain_firing== 44505 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #75662: <==negation-removal== 67576 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #86933: <==uncertain_firing== 71005 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #90844: <==negation-removal== 85084 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #31290: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #41583: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #51430: <==closure== 41583 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #54898: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #59178: <==closure== 31290 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #69838: <==closure== 77539 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #77539: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #78211: <==closure== 54898 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #10203: <==uncertain_firing== 41583 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #20949: <==negation-removal== 51430 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #24639: <==uncertain_firing== 77539 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #32420: <==uncertain_firing== 69838 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #33752: <==negation-removal== 69838 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35947: <==negation-removal== 78211 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #39058: <==uncertain_firing== 31290 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #41077: <==uncertain_firing== 78211 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #42698: <==uncertain_firing== 59178 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #43768: <==uncertain_firing== 51430 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #74136: <==negation-removal== 77539 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #76940: <==uncertain_firing== 54898 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #79227: <==negation-removal== 41583 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #80674: <==negation-removal== 54898 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #82097: <==negation-removal== 59178 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #83058: <==negation-removal== 31290 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #31290: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #41583: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #51430: <==closure== 41583 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #54898: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #59178: <==closure== 31290 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #69838: <==closure== 77539 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #77539: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #78211: <==closure== 54898 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #10203: <==uncertain_firing== 41583 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #20949: <==negation-removal== 51430 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #24639: <==uncertain_firing== 77539 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #32420: <==uncertain_firing== 69838 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #33752: <==negation-removal== 69838 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35947: <==negation-removal== 78211 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #39058: <==uncertain_firing== 31290 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #41077: <==uncertain_firing== 78211 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #42698: <==uncertain_firing== 59178 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #43768: <==uncertain_firing== 51430 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #74136: <==negation-removal== 77539 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #76940: <==uncertain_firing== 54898 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #79227: <==negation-removal== 41583 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #80674: <==negation-removal== 54898 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #82097: <==negation-removal== 59178 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #83058: <==negation-removal== 31290 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #31290: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #41583: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #51430: <==closure== 41583 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #54898: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #59178: <==closure== 31290 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #69838: <==closure== 77539 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #77539: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #78211: <==closure== 54898 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #10203: <==uncertain_firing== 41583 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #20949: <==negation-removal== 51430 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #24639: <==uncertain_firing== 77539 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #32420: <==uncertain_firing== 69838 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #33752: <==negation-removal== 69838 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35947: <==negation-removal== 78211 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #39058: <==uncertain_firing== 31290 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #41077: <==uncertain_firing== 78211 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #42698: <==uncertain_firing== 59178 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #43768: <==uncertain_firing== 51430 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #74136: <==negation-removal== 77539 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #76940: <==uncertain_firing== 54898 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #79227: <==negation-removal== 41583 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #80674: <==negation-removal== 54898 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #82097: <==negation-removal== 59178 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #83058: <==negation-removal== 31290 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #31290: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #41583: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #51430: <==closure== 41583 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #54898: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #59178: <==closure== 31290 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #69838: <==closure== 77539 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #77539: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #78211: <==closure== 54898 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #10203: <==uncertain_firing== 41583 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #20949: <==negation-removal== 51430 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #24639: <==uncertain_firing== 77539 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #32420: <==uncertain_firing== 69838 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #33752: <==negation-removal== 69838 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35947: <==negation-removal== 78211 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #39058: <==uncertain_firing== 31290 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #41077: <==uncertain_firing== 78211 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #42698: <==uncertain_firing== 59178 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #43768: <==uncertain_firing== 51430 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #74136: <==negation-removal== 77539 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #76940: <==uncertain_firing== 54898 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #79227: <==negation-removal== 41583 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #80674: <==negation-removal== 54898 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #82097: <==negation-removal== 59178 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #83058: <==negation-removal== 31290 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #19346: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #31828: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #35712: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #37350: <==closure== 91788 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #46137: <==closure== 19346 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #49635: <==closure== 31828 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64756: <==closure== 35712 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #91788: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #15093: <==uncertain_firing== 49635 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #17611: <==uncertain_firing== 91788 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #22876: <==negation-removal== 37350 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #23558: <==negation-removal== 35712 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36833: <==negation-removal== 64756 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #39465: <==uncertain_firing== 35712 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #44082: <==negation-removal== 46137 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #49721: <==uncertain_firing== 64756 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #53943: <==uncertain_firing== 46137 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #57039: <==negation-removal== 31828 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #59437: <==negation-removal== 49635 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #61656: <==negation-removal== 19346 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65935: <==uncertain_firing== 37350 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #71767: <==uncertain_firing== 19346 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #73583: <==uncertain_firing== 31828 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #75829: <==negation-removal== 91788 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #19346: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #31828: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #35712: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #37350: <==closure== 91788 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #46137: <==closure== 19346 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #49635: <==closure== 31828 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64756: <==closure== 35712 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #91788: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #15093: <==uncertain_firing== 49635 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #17611: <==uncertain_firing== 91788 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #22876: <==negation-removal== 37350 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #23558: <==negation-removal== 35712 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36833: <==negation-removal== 64756 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #39465: <==uncertain_firing== 35712 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #44082: <==negation-removal== 46137 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #49721: <==uncertain_firing== 64756 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #53943: <==uncertain_firing== 46137 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #57039: <==negation-removal== 31828 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #59437: <==negation-removal== 49635 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #61656: <==negation-removal== 19346 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65935: <==uncertain_firing== 37350 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #71767: <==uncertain_firing== 19346 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #73583: <==uncertain_firing== 31828 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #75829: <==negation-removal== 91788 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #19346: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #31828: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #35712: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #37350: <==closure== 91788 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #46137: <==closure== 19346 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #49635: <==closure== 31828 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64756: <==closure== 35712 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #91788: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #15093: <==uncertain_firing== 49635 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #17611: <==uncertain_firing== 91788 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #22876: <==negation-removal== 37350 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #23558: <==negation-removal== 35712 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36833: <==negation-removal== 64756 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #39465: <==uncertain_firing== 35712 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #44082: <==negation-removal== 46137 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #49721: <==uncertain_firing== 64756 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #53943: <==uncertain_firing== 46137 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #57039: <==negation-removal== 31828 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #59437: <==negation-removal== 49635 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #61656: <==negation-removal== 19346 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65935: <==uncertain_firing== 37350 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #71767: <==uncertain_firing== 19346 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #73583: <==uncertain_firing== 31828 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #75829: <==negation-removal== 91788 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #19346: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #31828: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #35712: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #37350: <==closure== 91788 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #46137: <==closure== 19346 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #49635: <==closure== 31828 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #64756: <==closure== 35712 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #91788: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #15093: <==uncertain_firing== 49635 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #17611: <==uncertain_firing== 91788 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #22876: <==negation-removal== 37350 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #23558: <==negation-removal== 35712 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #36833: <==negation-removal== 64756 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #39465: <==uncertain_firing== 35712 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #44082: <==negation-removal== 46137 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #49721: <==uncertain_firing== 64756 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #53943: <==uncertain_firing== 46137 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #57039: <==negation-removal== 31828 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #59437: <==negation-removal== 49635 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #61656: <==negation-removal== 19346 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65935: <==uncertain_firing== 37350 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #71767: <==uncertain_firing== 19346 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #73583: <==uncertain_firing== 31828 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #75829: <==negation-removal== 91788 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #30915: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #31781: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #36771: <==closure== 53984 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #38104: <==closure== 31781 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #53984: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #65933: <==closure== 30915 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #76002: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #84210: <==closure== 76002 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #13425: <==negation-removal== 30915 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #19389: <==negation-removal== 31781 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #22720: <==uncertain_firing== 31781 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #28039: <==negation-removal== 84210 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #28967: <==uncertain_firing== 84210 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #33459: <==uncertain_firing== 76002 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #34632: <==negation-removal== 38104 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #36305: <==uncertain_firing== 53984 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #38183: <==negation-removal== 36771 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #57690: <==uncertain_firing== 36771 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #58466: <==uncertain_firing== 38104 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #68605: <==negation-removal== 76002 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #73126: <==uncertain_firing== 65933 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #75955: <==negation-removal== 65933 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #79719: <==negation-removal== 53984 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #80376: <==uncertain_firing== 30915 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #30915: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #31781: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #36771: <==closure== 53984 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #38104: <==closure== 31781 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #53984: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #65933: <==closure== 30915 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #76002: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #84210: <==closure== 76002 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #13425: <==negation-removal== 30915 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #19389: <==negation-removal== 31781 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #22720: <==uncertain_firing== 31781 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #28039: <==negation-removal== 84210 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #28967: <==uncertain_firing== 84210 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #33459: <==uncertain_firing== 76002 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #34632: <==negation-removal== 38104 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #36305: <==uncertain_firing== 53984 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #38183: <==negation-removal== 36771 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #57690: <==uncertain_firing== 36771 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #58466: <==uncertain_firing== 38104 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #68605: <==negation-removal== 76002 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #73126: <==uncertain_firing== 65933 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #75955: <==negation-removal== 65933 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #79719: <==negation-removal== 53984 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #80376: <==uncertain_firing== 30915 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #30915: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #31781: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #36771: <==closure== 53984 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #38104: <==closure== 31781 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #53984: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #65933: <==closure== 30915 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #76002: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #84210: <==closure== 76002 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #13425: <==negation-removal== 30915 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #19389: <==negation-removal== 31781 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #22720: <==uncertain_firing== 31781 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #28039: <==negation-removal== 84210 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #28967: <==uncertain_firing== 84210 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #33459: <==uncertain_firing== 76002 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #34632: <==negation-removal== 38104 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #36305: <==uncertain_firing== 53984 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #38183: <==negation-removal== 36771 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #57690: <==uncertain_firing== 36771 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #58466: <==uncertain_firing== 38104 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #68605: <==negation-removal== 76002 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #73126: <==uncertain_firing== 65933 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #75955: <==negation-removal== 65933 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #79719: <==negation-removal== 53984 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #80376: <==uncertain_firing== 30915 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #30915: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #31781: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #36771: <==closure== 53984 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #38104: <==closure== 31781 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #53984: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #65933: <==closure== 30915 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #76002: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #84210: <==closure== 76002 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #13425: <==negation-removal== 30915 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #19389: <==negation-removal== 31781 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #22720: <==uncertain_firing== 31781 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #28039: <==negation-removal== 84210 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #28967: <==uncertain_firing== 84210 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #33459: <==uncertain_firing== 76002 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #34632: <==negation-removal== 38104 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #36305: <==uncertain_firing== 53984 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #38183: <==negation-removal== 36771 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #57690: <==uncertain_firing== 36771 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #58466: <==uncertain_firing== 38104 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #68605: <==negation-removal== 76002 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #73126: <==uncertain_firing== 65933 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #75955: <==negation-removal== 65933 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #79719: <==negation-removal== 53984 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #80376: <==uncertain_firing== 30915 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #10622: <==closure== 20041 (pos)
                    (Pa_survivorat_s_p10)

                    ; #13252: <==closure== 60058 (pos)
                    (Pb_survivorat_s_p10)

                    ; #17394: <==closure== 61202 (pos)
                    (Pc_survivorat_s_p10)

                    ; #20041: origin
                    (Ba_survivorat_s_p10)

                    ; #28668: origin
                    (Bd_survivorat_s_p10)

                    ; #60058: origin
                    (Bb_survivorat_s_p10)

                    ; #61202: origin
                    (Bc_survivorat_s_p10)

                    ; #72361: <==closure== 28668 (pos)
                    (Pd_survivorat_s_p10)

                    ; #19476: <==negation-removal== 17394 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #34844: <==negation-removal== 28668 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #36506: <==negation-removal== 61202 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #42320: <==negation-removal== 13252 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #43346: <==negation-removal== 20041 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #57265: <==negation-removal== 60058 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #72322: <==negation-removal== 72361 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #77536: <==negation-removal== 10622 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #10622: <==closure== 20041 (pos)
                    (Pa_survivorat_s_p10)

                    ; #13252: <==closure== 60058 (pos)
                    (Pb_survivorat_s_p10)

                    ; #17394: <==closure== 61202 (pos)
                    (Pc_survivorat_s_p10)

                    ; #20041: origin
                    (Ba_survivorat_s_p10)

                    ; #28668: origin
                    (Bd_survivorat_s_p10)

                    ; #60058: origin
                    (Bb_survivorat_s_p10)

                    ; #61202: origin
                    (Bc_survivorat_s_p10)

                    ; #72361: <==closure== 28668 (pos)
                    (Pd_survivorat_s_p10)

                    ; #19476: <==negation-removal== 17394 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #34844: <==negation-removal== 28668 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #36506: <==negation-removal== 61202 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #42320: <==negation-removal== 13252 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #43346: <==negation-removal== 20041 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #57265: <==negation-removal== 60058 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #72322: <==negation-removal== 72361 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #77536: <==negation-removal== 10622 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (at_c_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #10622: <==closure== 20041 (pos)
                    (Pa_survivorat_s_p10)

                    ; #13252: <==closure== 60058 (pos)
                    (Pb_survivorat_s_p10)

                    ; #17394: <==closure== 61202 (pos)
                    (Pc_survivorat_s_p10)

                    ; #20041: origin
                    (Ba_survivorat_s_p10)

                    ; #28668: origin
                    (Bd_survivorat_s_p10)

                    ; #60058: origin
                    (Bb_survivorat_s_p10)

                    ; #61202: origin
                    (Bc_survivorat_s_p10)

                    ; #72361: <==closure== 28668 (pos)
                    (Pd_survivorat_s_p10)

                    ; #19476: <==negation-removal== 17394 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #34844: <==negation-removal== 28668 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #36506: <==negation-removal== 61202 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #42320: <==negation-removal== 13252 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #43346: <==negation-removal== 20041 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #57265: <==negation-removal== 60058 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #72322: <==negation-removal== 72361 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #77536: <==negation-removal== 10622 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #10622: <==closure== 20041 (pos)
                    (Pa_survivorat_s_p10)

                    ; #13252: <==closure== 60058 (pos)
                    (Pb_survivorat_s_p10)

                    ; #17394: <==closure== 61202 (pos)
                    (Pc_survivorat_s_p10)

                    ; #20041: origin
                    (Ba_survivorat_s_p10)

                    ; #28668: origin
                    (Bd_survivorat_s_p10)

                    ; #60058: origin
                    (Bb_survivorat_s_p10)

                    ; #61202: origin
                    (Bc_survivorat_s_p10)

                    ; #72361: <==closure== 28668 (pos)
                    (Pd_survivorat_s_p10)

                    ; #19476: <==negation-removal== 17394 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #34844: <==negation-removal== 28668 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #36506: <==negation-removal== 61202 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #42320: <==negation-removal== 13252 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #43346: <==negation-removal== 20041 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #57265: <==negation-removal== 60058 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #72322: <==negation-removal== 72361 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #77536: <==negation-removal== 10622 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #18151: origin
                    (Bc_survivorat_s_p11)

                    ; #21078: <==closure== 18151 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28412: <==closure== 70640 (pos)
                    (Pb_survivorat_s_p11)

                    ; #32365: <==closure== 89266 (pos)
                    (Pd_survivorat_s_p11)

                    ; #53809: origin
                    (Ba_survivorat_s_p11)

                    ; #60441: <==closure== 53809 (pos)
                    (Pa_survivorat_s_p11)

                    ; #70640: origin
                    (Bb_survivorat_s_p11)

                    ; #89266: origin
                    (Bd_survivorat_s_p11)

                    ; #18461: <==negation-removal== 70640 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #26419: <==negation-removal== 32365 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #40124: <==negation-removal== 28412 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #45838: <==negation-removal== 89266 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #50713: <==negation-removal== 53809 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #54874: <==negation-removal== 21078 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #74259: <==negation-removal== 60441 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #80473: <==negation-removal== 18151 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #18151: origin
                    (Bc_survivorat_s_p11)

                    ; #21078: <==closure== 18151 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28412: <==closure== 70640 (pos)
                    (Pb_survivorat_s_p11)

                    ; #32365: <==closure== 89266 (pos)
                    (Pd_survivorat_s_p11)

                    ; #53809: origin
                    (Ba_survivorat_s_p11)

                    ; #60441: <==closure== 53809 (pos)
                    (Pa_survivorat_s_p11)

                    ; #70640: origin
                    (Bb_survivorat_s_p11)

                    ; #89266: origin
                    (Bd_survivorat_s_p11)

                    ; #18461: <==negation-removal== 70640 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #26419: <==negation-removal== 32365 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #40124: <==negation-removal== 28412 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #45838: <==negation-removal== 89266 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #50713: <==negation-removal== 53809 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #54874: <==negation-removal== 21078 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #74259: <==negation-removal== 60441 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #80473: <==negation-removal== 18151 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #18151: origin
                    (Bc_survivorat_s_p11)

                    ; #21078: <==closure== 18151 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28412: <==closure== 70640 (pos)
                    (Pb_survivorat_s_p11)

                    ; #32365: <==closure== 89266 (pos)
                    (Pd_survivorat_s_p11)

                    ; #53809: origin
                    (Ba_survivorat_s_p11)

                    ; #60441: <==closure== 53809 (pos)
                    (Pa_survivorat_s_p11)

                    ; #70640: origin
                    (Bb_survivorat_s_p11)

                    ; #89266: origin
                    (Bd_survivorat_s_p11)

                    ; #18461: <==negation-removal== 70640 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #26419: <==negation-removal== 32365 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #40124: <==negation-removal== 28412 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #45838: <==negation-removal== 89266 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #50713: <==negation-removal== 53809 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #54874: <==negation-removal== 21078 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #74259: <==negation-removal== 60441 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #80473: <==negation-removal== 18151 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (at_d_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #18151: origin
                    (Bc_survivorat_s_p11)

                    ; #21078: <==closure== 18151 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28412: <==closure== 70640 (pos)
                    (Pb_survivorat_s_p11)

                    ; #32365: <==closure== 89266 (pos)
                    (Pd_survivorat_s_p11)

                    ; #53809: origin
                    (Ba_survivorat_s_p11)

                    ; #60441: <==closure== 53809 (pos)
                    (Pa_survivorat_s_p11)

                    ; #70640: origin
                    (Bb_survivorat_s_p11)

                    ; #89266: origin
                    (Bd_survivorat_s_p11)

                    ; #18461: <==negation-removal== 70640 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #26419: <==negation-removal== 32365 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #40124: <==negation-removal== 28412 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #45838: <==negation-removal== 89266 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #50713: <==negation-removal== 53809 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #54874: <==negation-removal== 21078 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #74259: <==negation-removal== 60441 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #80473: <==negation-removal== 18151 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #18541: origin
                    (Bb_survivorat_s_p12)

                    ; #25432: origin
                    (Bd_survivorat_s_p12)

                    ; #29541: <==closure== 57228 (pos)
                    (Pc_survivorat_s_p12)

                    ; #43929: <==closure== 25432 (pos)
                    (Pd_survivorat_s_p12)

                    ; #57228: origin
                    (Bc_survivorat_s_p12)

                    ; #73813: <==closure== 18541 (pos)
                    (Pb_survivorat_s_p12)

                    ; #77414: origin
                    (Ba_survivorat_s_p12)

                    ; #90312: <==closure== 77414 (pos)
                    (Pa_survivorat_s_p12)

                    ; #15022: <==negation-removal== 18541 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21493: <==negation-removal== 90312 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #28632: <==negation-removal== 29541 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #31385: <==negation-removal== 25432 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #38430: <==negation-removal== 77414 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #40106: <==negation-removal== 73813 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #63371: <==negation-removal== 57228 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #66114: <==negation-removal== 43929 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #18541: origin
                    (Bb_survivorat_s_p12)

                    ; #25432: origin
                    (Bd_survivorat_s_p12)

                    ; #29541: <==closure== 57228 (pos)
                    (Pc_survivorat_s_p12)

                    ; #43929: <==closure== 25432 (pos)
                    (Pd_survivorat_s_p12)

                    ; #57228: origin
                    (Bc_survivorat_s_p12)

                    ; #73813: <==closure== 18541 (pos)
                    (Pb_survivorat_s_p12)

                    ; #77414: origin
                    (Ba_survivorat_s_p12)

                    ; #90312: <==closure== 77414 (pos)
                    (Pa_survivorat_s_p12)

                    ; #15022: <==negation-removal== 18541 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21493: <==negation-removal== 90312 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #28632: <==negation-removal== 29541 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #31385: <==negation-removal== 25432 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #38430: <==negation-removal== 77414 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #40106: <==negation-removal== 73813 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #63371: <==negation-removal== 57228 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #66114: <==negation-removal== 43929 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #18541: origin
                    (Bb_survivorat_s_p12)

                    ; #25432: origin
                    (Bd_survivorat_s_p12)

                    ; #29541: <==closure== 57228 (pos)
                    (Pc_survivorat_s_p12)

                    ; #43929: <==closure== 25432 (pos)
                    (Pd_survivorat_s_p12)

                    ; #57228: origin
                    (Bc_survivorat_s_p12)

                    ; #73813: <==closure== 18541 (pos)
                    (Pb_survivorat_s_p12)

                    ; #77414: origin
                    (Ba_survivorat_s_p12)

                    ; #90312: <==closure== 77414 (pos)
                    (Pa_survivorat_s_p12)

                    ; #15022: <==negation-removal== 18541 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21493: <==negation-removal== 90312 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #28632: <==negation-removal== 29541 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #31385: <==negation-removal== 25432 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #38430: <==negation-removal== 77414 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #40106: <==negation-removal== 73813 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #63371: <==negation-removal== 57228 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #66114: <==negation-removal== 43929 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #18541: origin
                    (Bb_survivorat_s_p12)

                    ; #25432: origin
                    (Bd_survivorat_s_p12)

                    ; #29541: <==closure== 57228 (pos)
                    (Pc_survivorat_s_p12)

                    ; #43929: <==closure== 25432 (pos)
                    (Pd_survivorat_s_p12)

                    ; #57228: origin
                    (Bc_survivorat_s_p12)

                    ; #73813: <==closure== 18541 (pos)
                    (Pb_survivorat_s_p12)

                    ; #77414: origin
                    (Ba_survivorat_s_p12)

                    ; #90312: <==closure== 77414 (pos)
                    (Pa_survivorat_s_p12)

                    ; #15022: <==negation-removal== 18541 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21493: <==negation-removal== 90312 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #28632: <==negation-removal== 29541 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #31385: <==negation-removal== 25432 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #38430: <==negation-removal== 77414 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #40106: <==negation-removal== 73813 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #63371: <==negation-removal== 57228 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #66114: <==negation-removal== 43929 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #42780: <==closure== 51355 (pos)
                    (Pa_survivorat_s_p1)

                    ; #43204: <==closure== 81472 (pos)
                    (Pc_survivorat_s_p1)

                    ; #49677: <==closure== 87280 (pos)
                    (Pd_survivorat_s_p1)

                    ; #51355: origin
                    (Ba_survivorat_s_p1)

                    ; #53153: origin
                    (Bb_survivorat_s_p1)

                    ; #81472: origin
                    (Bc_survivorat_s_p1)

                    ; #84179: <==closure== 53153 (pos)
                    (Pb_survivorat_s_p1)

                    ; #87280: origin
                    (Bd_survivorat_s_p1)

                    ; #17931: <==negation-removal== 49677 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #26384: <==negation-removal== 42780 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #26699: <==negation-removal== 81472 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #29691: <==negation-removal== 51355 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #54869: <==negation-removal== 84179 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55574: <==negation-removal== 53153 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60238: <==negation-removal== 43204 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #84187: <==negation-removal== 87280 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #42780: <==closure== 51355 (pos)
                    (Pa_survivorat_s_p1)

                    ; #43204: <==closure== 81472 (pos)
                    (Pc_survivorat_s_p1)

                    ; #49677: <==closure== 87280 (pos)
                    (Pd_survivorat_s_p1)

                    ; #51355: origin
                    (Ba_survivorat_s_p1)

                    ; #53153: origin
                    (Bb_survivorat_s_p1)

                    ; #81472: origin
                    (Bc_survivorat_s_p1)

                    ; #84179: <==closure== 53153 (pos)
                    (Pb_survivorat_s_p1)

                    ; #87280: origin
                    (Bd_survivorat_s_p1)

                    ; #17931: <==negation-removal== 49677 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #26384: <==negation-removal== 42780 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #26699: <==negation-removal== 81472 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #29691: <==negation-removal== 51355 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #54869: <==negation-removal== 84179 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55574: <==negation-removal== 53153 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60238: <==negation-removal== 43204 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #84187: <==negation-removal== 87280 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #42780: <==closure== 51355 (pos)
                    (Pa_survivorat_s_p1)

                    ; #43204: <==closure== 81472 (pos)
                    (Pc_survivorat_s_p1)

                    ; #49677: <==closure== 87280 (pos)
                    (Pd_survivorat_s_p1)

                    ; #51355: origin
                    (Ba_survivorat_s_p1)

                    ; #53153: origin
                    (Bb_survivorat_s_p1)

                    ; #81472: origin
                    (Bc_survivorat_s_p1)

                    ; #84179: <==closure== 53153 (pos)
                    (Pb_survivorat_s_p1)

                    ; #87280: origin
                    (Bd_survivorat_s_p1)

                    ; #17931: <==negation-removal== 49677 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #26384: <==negation-removal== 42780 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #26699: <==negation-removal== 81472 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #29691: <==negation-removal== 51355 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #54869: <==negation-removal== 84179 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55574: <==negation-removal== 53153 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60238: <==negation-removal== 43204 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #84187: <==negation-removal== 87280 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #42780: <==closure== 51355 (pos)
                    (Pa_survivorat_s_p1)

                    ; #43204: <==closure== 81472 (pos)
                    (Pc_survivorat_s_p1)

                    ; #49677: <==closure== 87280 (pos)
                    (Pd_survivorat_s_p1)

                    ; #51355: origin
                    (Ba_survivorat_s_p1)

                    ; #53153: origin
                    (Bb_survivorat_s_p1)

                    ; #81472: origin
                    (Bc_survivorat_s_p1)

                    ; #84179: <==closure== 53153 (pos)
                    (Pb_survivorat_s_p1)

                    ; #87280: origin
                    (Bd_survivorat_s_p1)

                    ; #17931: <==negation-removal== 49677 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #26384: <==negation-removal== 42780 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #26699: <==negation-removal== 81472 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #29691: <==negation-removal== 51355 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #54869: <==negation-removal== 84179 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55574: <==negation-removal== 53153 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60238: <==negation-removal== 43204 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #84187: <==negation-removal== 87280 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #12142: origin
                    (Bc_survivorat_s_p2)

                    ; #24543: <==closure== 12142 (pos)
                    (Pc_survivorat_s_p2)

                    ; #28480: <==closure== 90811 (pos)
                    (Pd_survivorat_s_p2)

                    ; #44891: <==closure== 56214 (pos)
                    (Pb_survivorat_s_p2)

                    ; #52292: <==closure== 83603 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56214: origin
                    (Bb_survivorat_s_p2)

                    ; #83603: origin
                    (Ba_survivorat_s_p2)

                    ; #90811: origin
                    (Bd_survivorat_s_p2)

                    ; #31193: <==negation-removal== 44891 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #31235: <==negation-removal== 24543 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #44075: <==negation-removal== 90811 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #50934: <==negation-removal== 12142 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #69587: <==negation-removal== 83603 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #73023: <==negation-removal== 52292 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #75536: <==negation-removal== 56214 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #90914: <==negation-removal== 28480 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #12142: origin
                    (Bc_survivorat_s_p2)

                    ; #24543: <==closure== 12142 (pos)
                    (Pc_survivorat_s_p2)

                    ; #28480: <==closure== 90811 (pos)
                    (Pd_survivorat_s_p2)

                    ; #44891: <==closure== 56214 (pos)
                    (Pb_survivorat_s_p2)

                    ; #52292: <==closure== 83603 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56214: origin
                    (Bb_survivorat_s_p2)

                    ; #83603: origin
                    (Ba_survivorat_s_p2)

                    ; #90811: origin
                    (Bd_survivorat_s_p2)

                    ; #31193: <==negation-removal== 44891 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #31235: <==negation-removal== 24543 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #44075: <==negation-removal== 90811 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #50934: <==negation-removal== 12142 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #69587: <==negation-removal== 83603 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #73023: <==negation-removal== 52292 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #75536: <==negation-removal== 56214 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #90914: <==negation-removal== 28480 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #12142: origin
                    (Bc_survivorat_s_p2)

                    ; #24543: <==closure== 12142 (pos)
                    (Pc_survivorat_s_p2)

                    ; #28480: <==closure== 90811 (pos)
                    (Pd_survivorat_s_p2)

                    ; #44891: <==closure== 56214 (pos)
                    (Pb_survivorat_s_p2)

                    ; #52292: <==closure== 83603 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56214: origin
                    (Bb_survivorat_s_p2)

                    ; #83603: origin
                    (Ba_survivorat_s_p2)

                    ; #90811: origin
                    (Bd_survivorat_s_p2)

                    ; #31193: <==negation-removal== 44891 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #31235: <==negation-removal== 24543 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #44075: <==negation-removal== 90811 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #50934: <==negation-removal== 12142 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #69587: <==negation-removal== 83603 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #73023: <==negation-removal== 52292 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #75536: <==negation-removal== 56214 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #90914: <==negation-removal== 28480 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #12142: origin
                    (Bc_survivorat_s_p2)

                    ; #24543: <==closure== 12142 (pos)
                    (Pc_survivorat_s_p2)

                    ; #28480: <==closure== 90811 (pos)
                    (Pd_survivorat_s_p2)

                    ; #44891: <==closure== 56214 (pos)
                    (Pb_survivorat_s_p2)

                    ; #52292: <==closure== 83603 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56214: origin
                    (Bb_survivorat_s_p2)

                    ; #83603: origin
                    (Ba_survivorat_s_p2)

                    ; #90811: origin
                    (Bd_survivorat_s_p2)

                    ; #31193: <==negation-removal== 44891 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #31235: <==negation-removal== 24543 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #44075: <==negation-removal== 90811 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #50934: <==negation-removal== 12142 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #69587: <==negation-removal== 83603 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #73023: <==negation-removal== 52292 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #75536: <==negation-removal== 56214 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #90914: <==negation-removal== 28480 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #37832: <==closure== 71761 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49232: <==closure== 84640 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50625: <==closure== 73810 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59538: <==closure== 84348 (pos)
                    (Pd_survivorat_s_p3)

                    ; #71761: origin
                    (Bb_survivorat_s_p3)

                    ; #73810: origin
                    (Ba_survivorat_s_p3)

                    ; #84348: origin
                    (Bd_survivorat_s_p3)

                    ; #84640: origin
                    (Bc_survivorat_s_p3)

                    ; #16531: <==negation-removal== 37832 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37508: <==negation-removal== 71761 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #44278: <==negation-removal== 84640 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #61770: <==negation-removal== 49232 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #66084: <==negation-removal== 50625 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #74604: <==negation-removal== 73810 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79490: <==negation-removal== 84348 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #83434: <==negation-removal== 59538 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #37832: <==closure== 71761 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49232: <==closure== 84640 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50625: <==closure== 73810 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59538: <==closure== 84348 (pos)
                    (Pd_survivorat_s_p3)

                    ; #71761: origin
                    (Bb_survivorat_s_p3)

                    ; #73810: origin
                    (Ba_survivorat_s_p3)

                    ; #84348: origin
                    (Bd_survivorat_s_p3)

                    ; #84640: origin
                    (Bc_survivorat_s_p3)

                    ; #16531: <==negation-removal== 37832 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37508: <==negation-removal== 71761 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #44278: <==negation-removal== 84640 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #61770: <==negation-removal== 49232 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #66084: <==negation-removal== 50625 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #74604: <==negation-removal== 73810 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79490: <==negation-removal== 84348 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #83434: <==negation-removal== 59538 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #37832: <==closure== 71761 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49232: <==closure== 84640 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50625: <==closure== 73810 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59538: <==closure== 84348 (pos)
                    (Pd_survivorat_s_p3)

                    ; #71761: origin
                    (Bb_survivorat_s_p3)

                    ; #73810: origin
                    (Ba_survivorat_s_p3)

                    ; #84348: origin
                    (Bd_survivorat_s_p3)

                    ; #84640: origin
                    (Bc_survivorat_s_p3)

                    ; #16531: <==negation-removal== 37832 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37508: <==negation-removal== 71761 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #44278: <==negation-removal== 84640 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #61770: <==negation-removal== 49232 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #66084: <==negation-removal== 50625 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #74604: <==negation-removal== 73810 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79490: <==negation-removal== 84348 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #83434: <==negation-removal== 59538 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #37832: <==closure== 71761 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49232: <==closure== 84640 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50625: <==closure== 73810 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59538: <==closure== 84348 (pos)
                    (Pd_survivorat_s_p3)

                    ; #71761: origin
                    (Bb_survivorat_s_p3)

                    ; #73810: origin
                    (Ba_survivorat_s_p3)

                    ; #84348: origin
                    (Bd_survivorat_s_p3)

                    ; #84640: origin
                    (Bc_survivorat_s_p3)

                    ; #16531: <==negation-removal== 37832 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37508: <==negation-removal== 71761 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #44278: <==negation-removal== 84640 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #61770: <==negation-removal== 49232 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #66084: <==negation-removal== 50625 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #74604: <==negation-removal== 73810 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79490: <==negation-removal== 84348 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #83434: <==negation-removal== 59538 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #16572: <==closure== 34386 (pos)
                    (Pa_survivorat_s_p4)

                    ; #34386: origin
                    (Ba_survivorat_s_p4)

                    ; #36021: origin
                    (Bb_survivorat_s_p4)

                    ; #55628: origin
                    (Bd_survivorat_s_p4)

                    ; #66947: <==closure== 55628 (pos)
                    (Pd_survivorat_s_p4)

                    ; #70169: <==closure== 36021 (pos)
                    (Pb_survivorat_s_p4)

                    ; #71354: <==closure== 87016 (pos)
                    (Pc_survivorat_s_p4)

                    ; #87016: origin
                    (Bc_survivorat_s_p4)

                    ; #20887: <==negation-removal== 55628 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #34968: <==negation-removal== 36021 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #52581: <==negation-removal== 70169 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72891: <==negation-removal== 16572 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #73450: <==negation-removal== 34386 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76318: <==negation-removal== 71354 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #84955: <==negation-removal== 87016 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85659: <==negation-removal== 66947 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #16572: <==closure== 34386 (pos)
                    (Pa_survivorat_s_p4)

                    ; #34386: origin
                    (Ba_survivorat_s_p4)

                    ; #36021: origin
                    (Bb_survivorat_s_p4)

                    ; #55628: origin
                    (Bd_survivorat_s_p4)

                    ; #66947: <==closure== 55628 (pos)
                    (Pd_survivorat_s_p4)

                    ; #70169: <==closure== 36021 (pos)
                    (Pb_survivorat_s_p4)

                    ; #71354: <==closure== 87016 (pos)
                    (Pc_survivorat_s_p4)

                    ; #87016: origin
                    (Bc_survivorat_s_p4)

                    ; #20887: <==negation-removal== 55628 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #34968: <==negation-removal== 36021 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #52581: <==negation-removal== 70169 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72891: <==negation-removal== 16572 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #73450: <==negation-removal== 34386 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76318: <==negation-removal== 71354 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #84955: <==negation-removal== 87016 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85659: <==negation-removal== 66947 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #16572: <==closure== 34386 (pos)
                    (Pa_survivorat_s_p4)

                    ; #34386: origin
                    (Ba_survivorat_s_p4)

                    ; #36021: origin
                    (Bb_survivorat_s_p4)

                    ; #55628: origin
                    (Bd_survivorat_s_p4)

                    ; #66947: <==closure== 55628 (pos)
                    (Pd_survivorat_s_p4)

                    ; #70169: <==closure== 36021 (pos)
                    (Pb_survivorat_s_p4)

                    ; #71354: <==closure== 87016 (pos)
                    (Pc_survivorat_s_p4)

                    ; #87016: origin
                    (Bc_survivorat_s_p4)

                    ; #20887: <==negation-removal== 55628 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #34968: <==negation-removal== 36021 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #52581: <==negation-removal== 70169 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72891: <==negation-removal== 16572 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #73450: <==negation-removal== 34386 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76318: <==negation-removal== 71354 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #84955: <==negation-removal== 87016 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85659: <==negation-removal== 66947 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #16572: <==closure== 34386 (pos)
                    (Pa_survivorat_s_p4)

                    ; #34386: origin
                    (Ba_survivorat_s_p4)

                    ; #36021: origin
                    (Bb_survivorat_s_p4)

                    ; #55628: origin
                    (Bd_survivorat_s_p4)

                    ; #66947: <==closure== 55628 (pos)
                    (Pd_survivorat_s_p4)

                    ; #70169: <==closure== 36021 (pos)
                    (Pb_survivorat_s_p4)

                    ; #71354: <==closure== 87016 (pos)
                    (Pc_survivorat_s_p4)

                    ; #87016: origin
                    (Bc_survivorat_s_p4)

                    ; #20887: <==negation-removal== 55628 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #34968: <==negation-removal== 36021 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #52581: <==negation-removal== 70169 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72891: <==negation-removal== 16572 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #73450: <==negation-removal== 34386 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76318: <==negation-removal== 71354 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #84955: <==negation-removal== 87016 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85659: <==negation-removal== 66947 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #16140: <==closure== 64495 (pos)
                    (Pc_survivorat_s_p5)

                    ; #17142: <==closure== 31594 (pos)
                    (Pd_survivorat_s_p5)

                    ; #17966: origin
                    (Ba_survivorat_s_p5)

                    ; #23380: <==closure== 17966 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31594: origin
                    (Bd_survivorat_s_p5)

                    ; #35519: origin
                    (Bb_survivorat_s_p5)

                    ; #64495: origin
                    (Bc_survivorat_s_p5)

                    ; #74879: <==closure== 35519 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11406: <==negation-removal== 17966 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #14496: <==negation-removal== 23380 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #17633: <==negation-removal== 16140 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #26492: <==negation-removal== 35519 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39275: <==negation-removal== 74879 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #54254: <==negation-removal== 31594 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #72275: <==negation-removal== 17142 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #72805: <==negation-removal== 64495 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #16140: <==closure== 64495 (pos)
                    (Pc_survivorat_s_p5)

                    ; #17142: <==closure== 31594 (pos)
                    (Pd_survivorat_s_p5)

                    ; #17966: origin
                    (Ba_survivorat_s_p5)

                    ; #23380: <==closure== 17966 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31594: origin
                    (Bd_survivorat_s_p5)

                    ; #35519: origin
                    (Bb_survivorat_s_p5)

                    ; #64495: origin
                    (Bc_survivorat_s_p5)

                    ; #74879: <==closure== 35519 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11406: <==negation-removal== 17966 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #14496: <==negation-removal== 23380 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #17633: <==negation-removal== 16140 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #26492: <==negation-removal== 35519 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39275: <==negation-removal== 74879 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #54254: <==negation-removal== 31594 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #72275: <==negation-removal== 17142 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #72805: <==negation-removal== 64495 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #16140: <==closure== 64495 (pos)
                    (Pc_survivorat_s_p5)

                    ; #17142: <==closure== 31594 (pos)
                    (Pd_survivorat_s_p5)

                    ; #17966: origin
                    (Ba_survivorat_s_p5)

                    ; #23380: <==closure== 17966 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31594: origin
                    (Bd_survivorat_s_p5)

                    ; #35519: origin
                    (Bb_survivorat_s_p5)

                    ; #64495: origin
                    (Bc_survivorat_s_p5)

                    ; #74879: <==closure== 35519 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11406: <==negation-removal== 17966 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #14496: <==negation-removal== 23380 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #17633: <==negation-removal== 16140 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #26492: <==negation-removal== 35519 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39275: <==negation-removal== 74879 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #54254: <==negation-removal== 31594 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #72275: <==negation-removal== 17142 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #72805: <==negation-removal== 64495 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #16140: <==closure== 64495 (pos)
                    (Pc_survivorat_s_p5)

                    ; #17142: <==closure== 31594 (pos)
                    (Pd_survivorat_s_p5)

                    ; #17966: origin
                    (Ba_survivorat_s_p5)

                    ; #23380: <==closure== 17966 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31594: origin
                    (Bd_survivorat_s_p5)

                    ; #35519: origin
                    (Bb_survivorat_s_p5)

                    ; #64495: origin
                    (Bc_survivorat_s_p5)

                    ; #74879: <==closure== 35519 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11406: <==negation-removal== 17966 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #14496: <==negation-removal== 23380 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #17633: <==negation-removal== 16140 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #26492: <==negation-removal== 35519 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39275: <==negation-removal== 74879 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #54254: <==negation-removal== 31594 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #72275: <==negation-removal== 17142 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #72805: <==negation-removal== 64495 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #31314: origin
                    (Ba_survivorat_s_p6)

                    ; #39472: <==closure== 31314 (pos)
                    (Pa_survivorat_s_p6)

                    ; #56898: origin
                    (Bd_survivorat_s_p6)

                    ; #58589: <==closure== 85234 (pos)
                    (Pc_survivorat_s_p6)

                    ; #68349: <==closure== 80920 (pos)
                    (Pb_survivorat_s_p6)

                    ; #72667: <==closure== 56898 (pos)
                    (Pd_survivorat_s_p6)

                    ; #80920: origin
                    (Bb_survivorat_s_p6)

                    ; #85234: origin
                    (Bc_survivorat_s_p6)

                    ; #13175: <==negation-removal== 56898 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #26759: <==negation-removal== 72667 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #36966: <==negation-removal== 39472 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #40086: <==negation-removal== 58589 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #49764: <==negation-removal== 85234 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #61395: <==negation-removal== 68349 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #63127: <==negation-removal== 80920 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #89613: <==negation-removal== 31314 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #31314: origin
                    (Ba_survivorat_s_p6)

                    ; #39472: <==closure== 31314 (pos)
                    (Pa_survivorat_s_p6)

                    ; #56898: origin
                    (Bd_survivorat_s_p6)

                    ; #58589: <==closure== 85234 (pos)
                    (Pc_survivorat_s_p6)

                    ; #68349: <==closure== 80920 (pos)
                    (Pb_survivorat_s_p6)

                    ; #72667: <==closure== 56898 (pos)
                    (Pd_survivorat_s_p6)

                    ; #80920: origin
                    (Bb_survivorat_s_p6)

                    ; #85234: origin
                    (Bc_survivorat_s_p6)

                    ; #13175: <==negation-removal== 56898 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #26759: <==negation-removal== 72667 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #36966: <==negation-removal== 39472 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #40086: <==negation-removal== 58589 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #49764: <==negation-removal== 85234 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #61395: <==negation-removal== 68349 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #63127: <==negation-removal== 80920 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #89613: <==negation-removal== 31314 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #31314: origin
                    (Ba_survivorat_s_p6)

                    ; #39472: <==closure== 31314 (pos)
                    (Pa_survivorat_s_p6)

                    ; #56898: origin
                    (Bd_survivorat_s_p6)

                    ; #58589: <==closure== 85234 (pos)
                    (Pc_survivorat_s_p6)

                    ; #68349: <==closure== 80920 (pos)
                    (Pb_survivorat_s_p6)

                    ; #72667: <==closure== 56898 (pos)
                    (Pd_survivorat_s_p6)

                    ; #80920: origin
                    (Bb_survivorat_s_p6)

                    ; #85234: origin
                    (Bc_survivorat_s_p6)

                    ; #13175: <==negation-removal== 56898 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #26759: <==negation-removal== 72667 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #36966: <==negation-removal== 39472 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #40086: <==negation-removal== 58589 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #49764: <==negation-removal== 85234 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #61395: <==negation-removal== 68349 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #63127: <==negation-removal== 80920 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #89613: <==negation-removal== 31314 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #31314: origin
                    (Ba_survivorat_s_p6)

                    ; #39472: <==closure== 31314 (pos)
                    (Pa_survivorat_s_p6)

                    ; #56898: origin
                    (Bd_survivorat_s_p6)

                    ; #58589: <==closure== 85234 (pos)
                    (Pc_survivorat_s_p6)

                    ; #68349: <==closure== 80920 (pos)
                    (Pb_survivorat_s_p6)

                    ; #72667: <==closure== 56898 (pos)
                    (Pd_survivorat_s_p6)

                    ; #80920: origin
                    (Bb_survivorat_s_p6)

                    ; #85234: origin
                    (Bc_survivorat_s_p6)

                    ; #13175: <==negation-removal== 56898 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #26759: <==negation-removal== 72667 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #36966: <==negation-removal== 39472 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #40086: <==negation-removal== 58589 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #49764: <==negation-removal== 85234 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #61395: <==negation-removal== 68349 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #63127: <==negation-removal== 80920 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #89613: <==negation-removal== 31314 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #34634: <==closure== 51407 (pos)
                    (Pd_survivorat_s_p7)

                    ; #41626: <==closure== 64306 (pos)
                    (Pa_survivorat_s_p7)

                    ; #46498: <==closure== 84837 (pos)
                    (Pb_survivorat_s_p7)

                    ; #51407: origin
                    (Bd_survivorat_s_p7)

                    ; #55270: <==closure== 75341 (pos)
                    (Pc_survivorat_s_p7)

                    ; #64306: origin
                    (Ba_survivorat_s_p7)

                    ; #75341: origin
                    (Bc_survivorat_s_p7)

                    ; #84837: origin
                    (Bb_survivorat_s_p7)

                    ; #10097: <==negation-removal== 84837 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #15314: <==negation-removal== 75341 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #20225: <==negation-removal== 51407 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #22869: <==negation-removal== 34634 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #45269: <==negation-removal== 41626 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #52737: <==negation-removal== 55270 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #74163: <==negation-removal== 46498 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77361: <==negation-removal== 64306 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #34634: <==closure== 51407 (pos)
                    (Pd_survivorat_s_p7)

                    ; #41626: <==closure== 64306 (pos)
                    (Pa_survivorat_s_p7)

                    ; #46498: <==closure== 84837 (pos)
                    (Pb_survivorat_s_p7)

                    ; #51407: origin
                    (Bd_survivorat_s_p7)

                    ; #55270: <==closure== 75341 (pos)
                    (Pc_survivorat_s_p7)

                    ; #64306: origin
                    (Ba_survivorat_s_p7)

                    ; #75341: origin
                    (Bc_survivorat_s_p7)

                    ; #84837: origin
                    (Bb_survivorat_s_p7)

                    ; #10097: <==negation-removal== 84837 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #15314: <==negation-removal== 75341 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #20225: <==negation-removal== 51407 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #22869: <==negation-removal== 34634 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #45269: <==negation-removal== 41626 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #52737: <==negation-removal== 55270 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #74163: <==negation-removal== 46498 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77361: <==negation-removal== 64306 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #34634: <==closure== 51407 (pos)
                    (Pd_survivorat_s_p7)

                    ; #41626: <==closure== 64306 (pos)
                    (Pa_survivorat_s_p7)

                    ; #46498: <==closure== 84837 (pos)
                    (Pb_survivorat_s_p7)

                    ; #51407: origin
                    (Bd_survivorat_s_p7)

                    ; #55270: <==closure== 75341 (pos)
                    (Pc_survivorat_s_p7)

                    ; #64306: origin
                    (Ba_survivorat_s_p7)

                    ; #75341: origin
                    (Bc_survivorat_s_p7)

                    ; #84837: origin
                    (Bb_survivorat_s_p7)

                    ; #10097: <==negation-removal== 84837 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #15314: <==negation-removal== 75341 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #20225: <==negation-removal== 51407 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #22869: <==negation-removal== 34634 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #45269: <==negation-removal== 41626 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #52737: <==negation-removal== 55270 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #74163: <==negation-removal== 46498 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77361: <==negation-removal== 64306 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #34634: <==closure== 51407 (pos)
                    (Pd_survivorat_s_p7)

                    ; #41626: <==closure== 64306 (pos)
                    (Pa_survivorat_s_p7)

                    ; #46498: <==closure== 84837 (pos)
                    (Pb_survivorat_s_p7)

                    ; #51407: origin
                    (Bd_survivorat_s_p7)

                    ; #55270: <==closure== 75341 (pos)
                    (Pc_survivorat_s_p7)

                    ; #64306: origin
                    (Ba_survivorat_s_p7)

                    ; #75341: origin
                    (Bc_survivorat_s_p7)

                    ; #84837: origin
                    (Bb_survivorat_s_p7)

                    ; #10097: <==negation-removal== 84837 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #15314: <==negation-removal== 75341 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #20225: <==negation-removal== 51407 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #22869: <==negation-removal== 34634 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #45269: <==negation-removal== 41626 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #52737: <==negation-removal== 55270 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #74163: <==negation-removal== 46498 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77361: <==negation-removal== 64306 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #16076: <==closure== 17576 (pos)
                    (Pb_survivorat_s_p8)

                    ; #17576: origin
                    (Bb_survivorat_s_p8)

                    ; #48853: <==closure== 79369 (pos)
                    (Pc_survivorat_s_p8)

                    ; #55039: origin
                    (Bd_survivorat_s_p8)

                    ; #79369: origin
                    (Bc_survivorat_s_p8)

                    ; #84300: <==closure== 90944 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88348: <==closure== 55039 (pos)
                    (Pd_survivorat_s_p8)

                    ; #90944: origin
                    (Ba_survivorat_s_p8)

                    ; #22032: <==negation-removal== 84300 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #22993: <==negation-removal== 88348 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #37613: <==negation-removal== 17576 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #38045: <==negation-removal== 55039 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #58282: <==negation-removal== 90944 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #74649: <==negation-removal== 48853 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #78451: <==negation-removal== 79369 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #87923: <==negation-removal== 16076 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #16076: <==closure== 17576 (pos)
                    (Pb_survivorat_s_p8)

                    ; #17576: origin
                    (Bb_survivorat_s_p8)

                    ; #48853: <==closure== 79369 (pos)
                    (Pc_survivorat_s_p8)

                    ; #55039: origin
                    (Bd_survivorat_s_p8)

                    ; #79369: origin
                    (Bc_survivorat_s_p8)

                    ; #84300: <==closure== 90944 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88348: <==closure== 55039 (pos)
                    (Pd_survivorat_s_p8)

                    ; #90944: origin
                    (Ba_survivorat_s_p8)

                    ; #22032: <==negation-removal== 84300 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #22993: <==negation-removal== 88348 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #37613: <==negation-removal== 17576 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #38045: <==negation-removal== 55039 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #58282: <==negation-removal== 90944 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #74649: <==negation-removal== 48853 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #78451: <==negation-removal== 79369 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #87923: <==negation-removal== 16076 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #16076: <==closure== 17576 (pos)
                    (Pb_survivorat_s_p8)

                    ; #17576: origin
                    (Bb_survivorat_s_p8)

                    ; #48853: <==closure== 79369 (pos)
                    (Pc_survivorat_s_p8)

                    ; #55039: origin
                    (Bd_survivorat_s_p8)

                    ; #79369: origin
                    (Bc_survivorat_s_p8)

                    ; #84300: <==closure== 90944 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88348: <==closure== 55039 (pos)
                    (Pd_survivorat_s_p8)

                    ; #90944: origin
                    (Ba_survivorat_s_p8)

                    ; #22032: <==negation-removal== 84300 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #22993: <==negation-removal== 88348 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #37613: <==negation-removal== 17576 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #38045: <==negation-removal== 55039 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #58282: <==negation-removal== 90944 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #74649: <==negation-removal== 48853 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #78451: <==negation-removal== 79369 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #87923: <==negation-removal== 16076 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #16076: <==closure== 17576 (pos)
                    (Pb_survivorat_s_p8)

                    ; #17576: origin
                    (Bb_survivorat_s_p8)

                    ; #48853: <==closure== 79369 (pos)
                    (Pc_survivorat_s_p8)

                    ; #55039: origin
                    (Bd_survivorat_s_p8)

                    ; #79369: origin
                    (Bc_survivorat_s_p8)

                    ; #84300: <==closure== 90944 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88348: <==closure== 55039 (pos)
                    (Pd_survivorat_s_p8)

                    ; #90944: origin
                    (Ba_survivorat_s_p8)

                    ; #22032: <==negation-removal== 84300 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #22993: <==negation-removal== 88348 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #37613: <==negation-removal== 17576 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #38045: <==negation-removal== 55039 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #58282: <==negation-removal== 90944 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #74649: <==negation-removal== 48853 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #78451: <==negation-removal== 79369 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #87923: <==negation-removal== 16076 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #12357: origin
                    (Bc_survivorat_s_p9)

                    ; #27975: <==closure== 84968 (pos)
                    (Pa_survivorat_s_p9)

                    ; #30153: <==closure== 12357 (pos)
                    (Pc_survivorat_s_p9)

                    ; #31465: origin
                    (Bd_survivorat_s_p9)

                    ; #40899: <==closure== 31465 (pos)
                    (Pd_survivorat_s_p9)

                    ; #67844: origin
                    (Bb_survivorat_s_p9)

                    ; #83882: <==closure== 67844 (pos)
                    (Pb_survivorat_s_p9)

                    ; #84968: origin
                    (Ba_survivorat_s_p9)

                    ; #13472: <==negation-removal== 67844 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #46802: <==negation-removal== 84968 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #58866: <==negation-removal== 12357 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #61452: <==negation-removal== 31465 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #74949: <==negation-removal== 40899 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #81726: <==negation-removal== 83882 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #87514: <==negation-removal== 30153 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #87937: <==negation-removal== 27975 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #12357: origin
                    (Bc_survivorat_s_p9)

                    ; #27975: <==closure== 84968 (pos)
                    (Pa_survivorat_s_p9)

                    ; #30153: <==closure== 12357 (pos)
                    (Pc_survivorat_s_p9)

                    ; #31465: origin
                    (Bd_survivorat_s_p9)

                    ; #40899: <==closure== 31465 (pos)
                    (Pd_survivorat_s_p9)

                    ; #67844: origin
                    (Bb_survivorat_s_p9)

                    ; #83882: <==closure== 67844 (pos)
                    (Pb_survivorat_s_p9)

                    ; #84968: origin
                    (Ba_survivorat_s_p9)

                    ; #13472: <==negation-removal== 67844 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #46802: <==negation-removal== 84968 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #58866: <==negation-removal== 12357 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #61452: <==negation-removal== 31465 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #74949: <==negation-removal== 40899 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #81726: <==negation-removal== 83882 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #87514: <==negation-removal== 30153 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #87937: <==negation-removal== 27975 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #12357: origin
                    (Bc_survivorat_s_p9)

                    ; #27975: <==closure== 84968 (pos)
                    (Pa_survivorat_s_p9)

                    ; #30153: <==closure== 12357 (pos)
                    (Pc_survivorat_s_p9)

                    ; #31465: origin
                    (Bd_survivorat_s_p9)

                    ; #40899: <==closure== 31465 (pos)
                    (Pd_survivorat_s_p9)

                    ; #67844: origin
                    (Bb_survivorat_s_p9)

                    ; #83882: <==closure== 67844 (pos)
                    (Pb_survivorat_s_p9)

                    ; #84968: origin
                    (Ba_survivorat_s_p9)

                    ; #13472: <==negation-removal== 67844 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #46802: <==negation-removal== 84968 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #58866: <==negation-removal== 12357 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #61452: <==negation-removal== 31465 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #74949: <==negation-removal== 40899 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #81726: <==negation-removal== 83882 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #87514: <==negation-removal== 30153 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #87937: <==negation-removal== 27975 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #12357: origin
                    (Bc_survivorat_s_p9)

                    ; #27975: <==closure== 84968 (pos)
                    (Pa_survivorat_s_p9)

                    ; #30153: <==closure== 12357 (pos)
                    (Pc_survivorat_s_p9)

                    ; #31465: origin
                    (Bd_survivorat_s_p9)

                    ; #40899: <==closure== 31465 (pos)
                    (Pd_survivorat_s_p9)

                    ; #67844: origin
                    (Bb_survivorat_s_p9)

                    ; #83882: <==closure== 67844 (pos)
                    (Pb_survivorat_s_p9)

                    ; #84968: origin
                    (Ba_survivorat_s_p9)

                    ; #13472: <==negation-removal== 67844 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #46802: <==negation-removal== 84968 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #58866: <==negation-removal== 12357 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #61452: <==negation-removal== 31465 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #74949: <==negation-removal== 40899 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #81726: <==negation-removal== 83882 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #87514: <==negation-removal== 30153 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #87937: <==negation-removal== 27975 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #72309: origin
                    (at_a_p10)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #73735: origin
                    (not_at_a_p10)

                    ; #74171: origin
                    (at_a_p11)

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #43131: origin
                    (at_a_p3)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #43540: origin
                    (at_a_p4)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #46246: origin
                    (at_a_p5)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #57579: origin
                    (at_a_p7)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #68960: origin
                    (at_a_p8)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #73735: origin
                    (not_at_a_p10)

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))

                    ; #72309: <==negation-removal== 73735 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #37495: origin
                    (not_at_a_p11)

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #37495: origin
                    (not_at_a_p11)

                    ; #72309: origin
                    (at_a_p10)

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #37495: origin
                    (not_at_a_p11)

                    ; #74171: origin
                    (at_a_p11)

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #37495: origin
                    (not_at_a_p11)

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #37495: origin
                    (not_at_a_p11)

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #37495: origin
                    (not_at_a_p11)

                    ; #43131: origin
                    (at_a_p3)

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #37495: origin
                    (not_at_a_p11)

                    ; #43540: origin
                    (at_a_p4)

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #37495: origin
                    (not_at_a_p11)

                    ; #46246: origin
                    (at_a_p5)

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #37495: origin
                    (not_at_a_p11)

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #37495: origin
                    (not_at_a_p11)

                    ; #57579: origin
                    (at_a_p7)

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #37495: origin
                    (not_at_a_p11)

                    ; #68960: origin
                    (at_a_p8)

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #37495: origin
                    (not_at_a_p11)

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))

                    ; #74171: <==negation-removal== 37495 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #47048: origin
                    (not_at_a_p12)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #47048: origin
                    (not_at_a_p12)

                    ; #72309: origin
                    (at_a_p10)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #47048: origin
                    (not_at_a_p12)

                    ; #74171: origin
                    (at_a_p11)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #47048: origin
                    (not_at_a_p12)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #47048: origin
                    (not_at_a_p12)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #43131: origin
                    (at_a_p3)

                    ; #47048: origin
                    (not_at_a_p12)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #43540: origin
                    (at_a_p4)

                    ; #47048: origin
                    (not_at_a_p12)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #46246: origin
                    (at_a_p5)

                    ; #47048: origin
                    (not_at_a_p12)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #47048: origin
                    (not_at_a_p12)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #47048: origin
                    (not_at_a_p12)

                    ; #57579: origin
                    (at_a_p7)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #47048: origin
                    (not_at_a_p12)

                    ; #68960: origin
                    (at_a_p8)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #47048: origin
                    (not_at_a_p12)

                    ; #27162: <==negation-removal== 47048 (pos)
                    (not (at_a_p12))

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #70384: origin
                    (not_at_a_p1)

                    ; #72309: origin
                    (at_a_p10)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #70384: origin
                    (not_at_a_p1)

                    ; #74171: origin
                    (at_a_p11)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #43131: origin
                    (at_a_p3)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #43540: origin
                    (at_a_p4)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #46246: origin
                    (at_a_p5)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #57579: origin
                    (at_a_p7)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #68960: origin
                    (at_a_p8)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #70384: origin
                    (not_at_a_p1)

                    ; #32004: <==negation-removal== 70384 (pos)
                    (not (at_a_p1))

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #72309: origin
                    (at_a_p10)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #74171: origin
                    (at_a_p11)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #43131: origin
                    (at_a_p3)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #43540: origin
                    (at_a_p4)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #46246: origin
                    (at_a_p5)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #57579: origin
                    (at_a_p7)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #68960: origin
                    (at_a_p8)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #86471: origin
                    (not_at_a_p2)

                    ; #13617: <==negation-removal== 86471 (pos)
                    (not (at_a_p2))

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #66106: origin
                    (not_at_a_p3)

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #66106: origin
                    (not_at_a_p3)

                    ; #72309: origin
                    (at_a_p10)

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #66106: origin
                    (not_at_a_p3)

                    ; #74171: origin
                    (at_a_p11)

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #66106: origin
                    (not_at_a_p3)

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #66106: origin
                    (not_at_a_p3)

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #43131: origin
                    (at_a_p3)

                    ; #66106: origin
                    (not_at_a_p3)

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #43540: origin
                    (at_a_p4)

                    ; #66106: origin
                    (not_at_a_p3)

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #46246: origin
                    (at_a_p5)

                    ; #66106: origin
                    (not_at_a_p3)

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #66106: origin
                    (not_at_a_p3)

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #57579: origin
                    (at_a_p7)

                    ; #66106: origin
                    (not_at_a_p3)

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #66106: origin
                    (not_at_a_p3)

                    ; #68960: origin
                    (at_a_p8)

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #66106: origin
                    (not_at_a_p3)

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))

                    ; #43131: <==negation-removal== 66106 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #72309: origin
                    (at_a_p10)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #74171: origin
                    (at_a_p11)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #43131: origin
                    (at_a_p3)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #43540: origin
                    (at_a_p4)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #46246: origin
                    (at_a_p5)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #57579: origin
                    (at_a_p7)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #68960: origin
                    (at_a_p8)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #89794: origin
                    (not_at_a_p4)

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))

                    ; #43540: <==negation-removal== 89794 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #72309: origin
                    (at_a_p10)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #74171: origin
                    (at_a_p11)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #43131: origin
                    (at_a_p3)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #43540: origin
                    (at_a_p4)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #46246: origin
                    (at_a_p5)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #57579: origin
                    (at_a_p7)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #68960: origin
                    (at_a_p8)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #74631: origin
                    (not_at_a_p5)

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))

                    ; #46246: <==negation-removal== 74631 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #46709: origin
                    (not_at_a_p6)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #46709: origin
                    (not_at_a_p6)

                    ; #72309: origin
                    (at_a_p10)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #46709: origin
                    (not_at_a_p6)

                    ; #74171: origin
                    (at_a_p11)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #46709: origin
                    (not_at_a_p6)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #46709: origin
                    (not_at_a_p6)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #43131: origin
                    (at_a_p3)

                    ; #46709: origin
                    (not_at_a_p6)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #43540: origin
                    (at_a_p4)

                    ; #46709: origin
                    (not_at_a_p6)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #46246: origin
                    (at_a_p5)

                    ; #46709: origin
                    (not_at_a_p6)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #46709: origin
                    (not_at_a_p6)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #46709: origin
                    (not_at_a_p6)

                    ; #57579: origin
                    (at_a_p7)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #46709: origin
                    (not_at_a_p6)

                    ; #68960: origin
                    (at_a_p8)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #46709: origin
                    (not_at_a_p6)

                    ; #20664: <==negation-removal== 46709 (pos)
                    (not (at_a_p6))

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #61774: origin
                    (not_at_a_p7)

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #61774: origin
                    (not_at_a_p7)

                    ; #72309: origin
                    (at_a_p10)

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #61774: origin
                    (not_at_a_p7)

                    ; #74171: origin
                    (at_a_p11)

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #61774: origin
                    (not_at_a_p7)

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #61774: origin
                    (not_at_a_p7)

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #43131: origin
                    (at_a_p3)

                    ; #61774: origin
                    (not_at_a_p7)

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #43540: origin
                    (at_a_p4)

                    ; #61774: origin
                    (not_at_a_p7)

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #46246: origin
                    (at_a_p5)

                    ; #61774: origin
                    (not_at_a_p7)

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #61774: origin
                    (not_at_a_p7)

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #57579: origin
                    (at_a_p7)

                    ; #61774: origin
                    (not_at_a_p7)

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #61774: origin
                    (not_at_a_p7)

                    ; #68960: origin
                    (at_a_p8)

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #61774: origin
                    (not_at_a_p7)

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))

                    ; #57579: <==negation-removal== 61774 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #37894: origin
                    (not_at_a_p8)

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #37894: origin
                    (not_at_a_p8)

                    ; #72309: origin
                    (at_a_p10)

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #37894: origin
                    (not_at_a_p8)

                    ; #74171: origin
                    (at_a_p11)

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #37894: origin
                    (not_at_a_p8)

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #37894: origin
                    (not_at_a_p8)

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #37894: origin
                    (not_at_a_p8)

                    ; #43131: origin
                    (at_a_p3)

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #37894: origin
                    (not_at_a_p8)

                    ; #43540: origin
                    (at_a_p4)

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #37894: origin
                    (not_at_a_p8)

                    ; #46246: origin
                    (at_a_p5)

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #37894: origin
                    (not_at_a_p8)

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #37894: origin
                    (not_at_a_p8)

                    ; #57579: origin
                    (at_a_p7)

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #37894: origin
                    (not_at_a_p8)

                    ; #68960: origin
                    (at_a_p8)

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #37894: origin
                    (not_at_a_p8)

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))

                    ; #68960: <==negation-removal== 37894 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #32004: origin
                    (at_a_p1)

                    ; #40779: origin
                    (not_at_a_p9)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #70384: <==negation-removal== 32004 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #40779: origin
                    (not_at_a_p9)

                    ; #72309: origin
                    (at_a_p10)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #73735: <==negation-removal== 72309 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #40779: origin
                    (not_at_a_p9)

                    ; #74171: origin
                    (at_a_p11)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #37495: <==negation-removal== 74171 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #27162: origin
                    (at_a_p12)

                    ; #40779: origin
                    (not_at_a_p9)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #47048: <==negation-removal== 27162 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #13617: origin
                    (at_a_p2)

                    ; #40779: origin
                    (not_at_a_p9)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #86471: <==negation-removal== 13617 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #40779: origin
                    (not_at_a_p9)

                    ; #43131: origin
                    (at_a_p3)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #66106: <==negation-removal== 43131 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #40779: origin
                    (not_at_a_p9)

                    ; #43540: origin
                    (at_a_p4)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #89794: <==negation-removal== 43540 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #40779: origin
                    (not_at_a_p9)

                    ; #46246: origin
                    (at_a_p5)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #74631: <==negation-removal== 46246 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #20664: origin
                    (at_a_p6)

                    ; #40779: origin
                    (not_at_a_p9)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #46709: <==negation-removal== 20664 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #40779: origin
                    (not_at_a_p9)

                    ; #57579: origin
                    (at_a_p7)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #61774: <==negation-removal== 57579 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #40779: origin
                    (not_at_a_p9)

                    ; #68960: origin
                    (at_a_p8)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #37894: <==negation-removal== 68960 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #14130: origin
                    (at_a_p9)

                    ; #40779: origin
                    (not_at_a_p9)

                    ; #14130: <==negation-removal== 40779 (pos)
                    (not (at_a_p9))

                    ; #40779: <==negation-removal== 14130 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #78000: origin
                    (at_b_p1)

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #48095: origin
                    (at_b_p10)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #21794: origin
                    (at_b_p11)

                    ; #22201: origin
                    (not_at_b_p10)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #73865: origin
                    (at_b_p12)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #49444: origin
                    (at_b_p2)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #81858: origin
                    (at_b_p3)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #22201: origin
                    (not_at_b_p10)

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #67661: origin
                    (at_b_p5)

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #49303: origin
                    (at_b_p6)

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #71627: origin
                    (at_b_p7)

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #39747: origin
                    (at_b_p8)

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #22201: origin
                    (not_at_b_p10)

                    ; #64594: origin
                    (at_b_p9)

                    ; #48095: <==negation-removal== 22201 (pos)
                    (not (at_b_p10))

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #78000: origin
                    (at_b_p1)

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #48095: origin
                    (at_b_p10)

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #21794: origin
                    (at_b_p11)

                    ; #32631: origin
                    (not_at_b_p11)

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #73865: origin
                    (at_b_p12)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #49444: origin
                    (at_b_p2)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #81858: origin
                    (at_b_p3)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #32631: origin
                    (not_at_b_p11)

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #67661: origin
                    (at_b_p5)

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #49303: origin
                    (at_b_p6)

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #71627: origin
                    (at_b_p7)

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #39747: origin
                    (at_b_p8)

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #32631: origin
                    (not_at_b_p11)

                    ; #64594: origin
                    (at_b_p9)

                    ; #21794: <==negation-removal== 32631 (pos)
                    (not (at_b_p11))

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #78000: origin
                    (at_b_p1)

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #48095: origin
                    (at_b_p10)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #21794: origin
                    (at_b_p11)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #73865: origin
                    (at_b_p12)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #49444: origin
                    (at_b_p2)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #81858: origin
                    (at_b_p3)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #18811: origin
                    (not_at_b_p12)

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #67661: origin
                    (at_b_p5)

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #49303: origin
                    (at_b_p6)

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #71627: origin
                    (at_b_p7)

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #39747: origin
                    (at_b_p8)

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #18811: origin
                    (not_at_b_p12)

                    ; #64594: origin
                    (at_b_p9)

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))

                    ; #73865: <==negation-removal== 18811 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #78000: origin
                    (at_b_p1)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #48095: origin
                    (at_b_p10)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #21794: origin
                    (at_b_p11)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #73865: origin
                    (at_b_p12)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #49444: origin
                    (at_b_p2)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #80121: origin
                    (not_at_b_p1)

                    ; #81858: origin
                    (at_b_p3)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #67661: origin
                    (at_b_p5)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #49303: origin
                    (at_b_p6)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #71627: origin
                    (at_b_p7)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #39747: origin
                    (at_b_p8)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #64594: origin
                    (at_b_p9)

                    ; #80121: origin
                    (not_at_b_p1)

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))

                    ; #78000: <==negation-removal== 80121 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #78000: origin
                    (at_b_p1)

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #48095: origin
                    (at_b_p10)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #21794: origin
                    (at_b_p11)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #73865: origin
                    (at_b_p12)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #49444: origin
                    (at_b_p2)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #81858: origin
                    (at_b_p3)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #13502: origin
                    (at_b_p4)

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #67661: origin
                    (at_b_p5)

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #49303: origin
                    (at_b_p6)

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #71627: origin
                    (at_b_p7)

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #39747: origin
                    (at_b_p8)

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #12310: origin
                    (not_at_b_p2)

                    ; #64594: origin
                    (at_b_p9)

                    ; #49444: <==negation-removal== 12310 (pos)
                    (not (at_b_p2))

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #78000: origin
                    (at_b_p1)

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #48095: origin
                    (at_b_p10)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #21794: origin
                    (at_b_p11)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #73865: origin
                    (at_b_p12)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #49444: origin
                    (at_b_p2)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #81858: origin
                    (at_b_p3)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #13875: origin
                    (not_at_b_p3)

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #67661: origin
                    (at_b_p5)

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #49303: origin
                    (at_b_p6)

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #71627: origin
                    (at_b_p7)

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #39747: origin
                    (at_b_p8)

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #13875: origin
                    (not_at_b_p3)

                    ; #64594: origin
                    (at_b_p9)

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))

                    ; #81858: <==negation-removal== 13875 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #78000: origin
                    (at_b_p1)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #48095: origin
                    (at_b_p10)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #21794: origin
                    (at_b_p11)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #73865: origin
                    (at_b_p12)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #49444: origin
                    (at_b_p2)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #80758: origin
                    (not_at_b_p4)

                    ; #81858: origin
                    (at_b_p3)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #67661: origin
                    (at_b_p5)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #49303: origin
                    (at_b_p6)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #71627: origin
                    (at_b_p7)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #39747: origin
                    (at_b_p8)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #64594: origin
                    (at_b_p9)

                    ; #80758: origin
                    (not_at_b_p4)

                    ; #13502: <==negation-removal== 80758 (pos)
                    (not (at_b_p4))

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #78000: origin
                    (at_b_p1)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #48095: origin
                    (at_b_p10)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #21794: origin
                    (at_b_p11)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #73865: origin
                    (at_b_p12)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #49444: origin
                    (at_b_p2)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #81858: origin
                    (at_b_p3)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #67661: origin
                    (at_b_p5)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #49303: origin
                    (at_b_p6)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #71627: origin
                    (at_b_p7)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #39747: origin
                    (at_b_p8)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #64594: origin
                    (at_b_p9)

                    ; #91470: origin
                    (not_at_b_p5)

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))

                    ; #67661: <==negation-removal== 91470 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #78000: origin
                    (at_b_p1)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #48095: origin
                    (at_b_p10)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #21794: origin
                    (at_b_p11)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #73865: origin
                    (at_b_p12)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #49444: origin
                    (at_b_p2)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #81858: origin
                    (at_b_p3)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #67661: origin
                    (at_b_p5)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #49303: origin
                    (at_b_p6)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #71627: origin
                    (at_b_p7)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #39747: origin
                    (at_b_p8)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #64594: origin
                    (at_b_p9)

                    ; #82909: origin
                    (not_at_b_p6)

                    ; #49303: <==negation-removal== 82909 (pos)
                    (not (at_b_p6))

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #78000: origin
                    (at_b_p1)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #48095: origin
                    (at_b_p10)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #21794: origin
                    (at_b_p11)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #73865: origin
                    (at_b_p12)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #49444: origin
                    (at_b_p2)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #81858: origin
                    (at_b_p3)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #67661: origin
                    (at_b_p5)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #49303: origin
                    (at_b_p6)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #71627: origin
                    (at_b_p7)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #39747: origin
                    (at_b_p8)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #64594: origin
                    (at_b_p9)

                    ; #83606: origin
                    (not_at_b_p7)

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))

                    ; #71627: <==negation-removal== 83606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #65025: origin
                    (not_at_b_p8)

                    ; #78000: origin
                    (at_b_p1)

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #48095: origin
                    (at_b_p10)

                    ; #65025: origin
                    (not_at_b_p8)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #21794: origin
                    (at_b_p11)

                    ; #65025: origin
                    (not_at_b_p8)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #65025: origin
                    (not_at_b_p8)

                    ; #73865: origin
                    (at_b_p12)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #49444: origin
                    (at_b_p2)

                    ; #65025: origin
                    (not_at_b_p8)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #65025: origin
                    (not_at_b_p8)

                    ; #81858: origin
                    (at_b_p3)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #65025: origin
                    (not_at_b_p8)

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #65025: origin
                    (not_at_b_p8)

                    ; #67661: origin
                    (at_b_p5)

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #49303: origin
                    (at_b_p6)

                    ; #65025: origin
                    (not_at_b_p8)

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #65025: origin
                    (not_at_b_p8)

                    ; #71627: origin
                    (at_b_p7)

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #39747: origin
                    (at_b_p8)

                    ; #65025: origin
                    (not_at_b_p8)

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #64594: origin
                    (at_b_p9)

                    ; #65025: origin
                    (not_at_b_p8)

                    ; #39747: <==negation-removal== 65025 (pos)
                    (not (at_b_p8))

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #60694: origin
                    (not_at_b_p9)

                    ; #78000: origin
                    (at_b_p1)

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))

                    ; #80121: <==negation-removal== 78000 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #48095: origin
                    (at_b_p10)

                    ; #60694: origin
                    (not_at_b_p9)

                    ; #22201: <==negation-removal== 48095 (pos)
                    (not (not_at_b_p10))

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #21794: origin
                    (at_b_p11)

                    ; #60694: origin
                    (not_at_b_p9)

                    ; #32631: <==negation-removal== 21794 (pos)
                    (not (not_at_b_p11))

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #60694: origin
                    (not_at_b_p9)

                    ; #73865: origin
                    (at_b_p12)

                    ; #18811: <==negation-removal== 73865 (pos)
                    (not (not_at_b_p12))

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #49444: origin
                    (at_b_p2)

                    ; #60694: origin
                    (not_at_b_p9)

                    ; #12310: <==negation-removal== 49444 (pos)
                    (not (not_at_b_p2))

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #60694: origin
                    (not_at_b_p9)

                    ; #81858: origin
                    (at_b_p3)

                    ; #13875: <==negation-removal== 81858 (pos)
                    (not (not_at_b_p3))

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #13502: origin
                    (at_b_p4)

                    ; #60694: origin
                    (not_at_b_p9)

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))

                    ; #80758: <==negation-removal== 13502 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #60694: origin
                    (not_at_b_p9)

                    ; #67661: origin
                    (at_b_p5)

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))

                    ; #91470: <==negation-removal== 67661 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #49303: origin
                    (at_b_p6)

                    ; #60694: origin
                    (not_at_b_p9)

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))

                    ; #82909: <==negation-removal== 49303 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #60694: origin
                    (not_at_b_p9)

                    ; #71627: origin
                    (at_b_p7)

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))

                    ; #83606: <==negation-removal== 71627 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #39747: origin
                    (at_b_p8)

                    ; #60694: origin
                    (not_at_b_p9)

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))

                    ; #65025: <==negation-removal== 39747 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #60694: origin
                    (not_at_b_p9)

                    ; #64594: origin
                    (at_b_p9)

                    ; #60694: <==negation-removal== 64594 (pos)
                    (not (not_at_b_p9))

                    ; #64594: <==negation-removal== 60694 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #25919: origin
                    (not_at_c_p10)

                    ; #70715: origin
                    (at_c_p1)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #25919: origin
                    (not_at_c_p10)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #25919: origin
                    (not_at_c_p10)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #25919: origin
                    (not_at_c_p10)

                    ; #34900: origin
                    (at_c_p12)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #25919: origin
                    (not_at_c_p10)

                    ; #41220: origin
                    (at_c_p2)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #25919: origin
                    (not_at_c_p10)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #25919: origin
                    (not_at_c_p10)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #25919: origin
                    (not_at_c_p10)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #25919: origin
                    (not_at_c_p10)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #25919: origin
                    (not_at_c_p10)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #25919: origin
                    (not_at_c_p10)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #25919: origin
                    (not_at_c_p10)

                    ; #45980: origin
                    (at_c_p9)

                    ; #11160: <==negation-removal== 25919 (pos)
                    (not (at_c_p10))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #32793: origin
                    (not_at_c_p11)

                    ; #70715: origin
                    (at_c_p1)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #32793: origin
                    (not_at_c_p11)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #32793: origin
                    (not_at_c_p11)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #32793: origin
                    (not_at_c_p11)

                    ; #34900: origin
                    (at_c_p12)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #32793: origin
                    (not_at_c_p11)

                    ; #41220: origin
                    (at_c_p2)

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #32793: origin
                    (not_at_c_p11)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #32793: origin
                    (not_at_c_p11)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #32793: origin
                    (not_at_c_p11)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #32793: origin
                    (not_at_c_p11)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #32793: origin
                    (not_at_c_p11)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #32793: origin
                    (not_at_c_p11)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #32793: origin
                    (not_at_c_p11)

                    ; #45980: origin
                    (at_c_p9)

                    ; #24897: <==negation-removal== 32793 (pos)
                    (not (at_c_p11))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #70715: origin
                    (at_c_p1)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #34900: origin
                    (at_c_p12)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #41220: origin
                    (at_c_p2)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #45980: origin
                    (at_c_p9)

                    ; #74462: origin
                    (not_at_c_p12)

                    ; #34900: <==negation-removal== 74462 (pos)
                    (not (at_c_p12))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #28250: origin
                    (not_at_c_p1)

                    ; #70715: origin
                    (at_c_p1)

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #28250: origin
                    (not_at_c_p1)

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #28250: origin
                    (not_at_c_p1)

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #28250: origin
                    (not_at_c_p1)

                    ; #34900: origin
                    (at_c_p12)

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #28250: origin
                    (not_at_c_p1)

                    ; #41220: origin
                    (at_c_p2)

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #28250: origin
                    (not_at_c_p1)

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #28250: origin
                    (not_at_c_p1)

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #28250: origin
                    (not_at_c_p1)

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #28250: origin
                    (not_at_c_p1)

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #28250: origin
                    (not_at_c_p1)

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #28250: origin
                    (not_at_c_p1)

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #28250: origin
                    (not_at_c_p1)

                    ; #45980: origin
                    (at_c_p9)

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))

                    ; #70715: <==negation-removal== 28250 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #24577: origin
                    (not_at_c_p2)

                    ; #70715: origin
                    (at_c_p1)

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #24577: origin
                    (not_at_c_p2)

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #24577: origin
                    (not_at_c_p2)

                    ; #24897: origin
                    (at_c_p11)

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #24577: origin
                    (not_at_c_p2)

                    ; #34900: origin
                    (at_c_p12)

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #24577: origin
                    (not_at_c_p2)

                    ; #41220: origin
                    (at_c_p2)

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #24577: origin
                    (not_at_c_p2)

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #24577: origin
                    (not_at_c_p2)

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #24577: origin
                    (not_at_c_p2)

                    ; #24909: origin
                    (at_c_p5)

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #24577: origin
                    (not_at_c_p2)

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #24577: origin
                    (not_at_c_p2)

                    ; #25345: origin
                    (at_c_p7)

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #24577: origin
                    (not_at_c_p2)

                    ; #25491: origin
                    (at_c_p8)

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #24577: origin
                    (not_at_c_p2)

                    ; #45980: origin
                    (at_c_p9)

                    ; #41220: <==negation-removal== 24577 (pos)
                    (not (at_c_p2))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #53547: origin
                    (not_at_c_p3)

                    ; #70715: origin
                    (at_c_p1)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #34900: origin
                    (at_c_p12)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #41220: origin
                    (at_c_p2)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #45980: origin
                    (at_c_p9)

                    ; #53547: origin
                    (not_at_c_p3)

                    ; #23626: <==negation-removal== 53547 (pos)
                    (not (at_c_p3))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #35892: origin
                    (not_at_c_p4)

                    ; #70715: origin
                    (at_c_p1)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #35892: origin
                    (not_at_c_p4)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #35892: origin
                    (not_at_c_p4)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #34900: origin
                    (at_c_p12)

                    ; #35892: origin
                    (not_at_c_p4)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #35892: origin
                    (not_at_c_p4)

                    ; #41220: origin
                    (at_c_p2)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #35892: origin
                    (not_at_c_p4)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #35892: origin
                    (not_at_c_p4)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #35892: origin
                    (not_at_c_p4)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #35892: origin
                    (not_at_c_p4)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #35892: origin
                    (not_at_c_p4)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #35892: origin
                    (not_at_c_p4)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #35892: origin
                    (not_at_c_p4)

                    ; #45980: origin
                    (at_c_p9)

                    ; #15004: <==negation-removal== 35892 (pos)
                    (not (at_c_p4))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #33413: origin
                    (not_at_c_p5)

                    ; #70715: origin
                    (at_c_p1)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #33413: origin
                    (not_at_c_p5)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #33413: origin
                    (not_at_c_p5)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #33413: origin
                    (not_at_c_p5)

                    ; #34900: origin
                    (at_c_p12)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #33413: origin
                    (not_at_c_p5)

                    ; #41220: origin
                    (at_c_p2)

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #33413: origin
                    (not_at_c_p5)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #33413: origin
                    (not_at_c_p5)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #33413: origin
                    (not_at_c_p5)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #33413: origin
                    (not_at_c_p5)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #33413: origin
                    (not_at_c_p5)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #33413: origin
                    (not_at_c_p5)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #33413: origin
                    (not_at_c_p5)

                    ; #45980: origin
                    (at_c_p9)

                    ; #24909: <==negation-removal== 33413 (pos)
                    (not (at_c_p5))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #50242: origin
                    (not_at_c_p6)

                    ; #70715: origin
                    (at_c_p1)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #34900: origin
                    (at_c_p12)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #41220: origin
                    (at_c_p2)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #45980: origin
                    (at_c_p9)

                    ; #50242: origin
                    (not_at_c_p6)

                    ; #11104: <==negation-removal== 50242 (pos)
                    (not (at_c_p6))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #54871: origin
                    (not_at_c_p7)

                    ; #70715: origin
                    (at_c_p1)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #34900: origin
                    (at_c_p12)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #41220: origin
                    (at_c_p2)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #45980: origin
                    (at_c_p9)

                    ; #54871: origin
                    (not_at_c_p7)

                    ; #25345: <==negation-removal== 54871 (pos)
                    (not (at_c_p7))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #61001: origin
                    (not_at_c_p8)

                    ; #70715: origin
                    (at_c_p1)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #34900: origin
                    (at_c_p12)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #41220: origin
                    (at_c_p2)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #45980: origin
                    (at_c_p9)

                    ; #61001: origin
                    (not_at_c_p8)

                    ; #25491: <==negation-removal== 61001 (pos)
                    (not (at_c_p8))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #60699: origin
                    (not_at_c_p9)

                    ; #70715: origin
                    (at_c_p1)

                    ; #28250: <==negation-removal== 70715 (pos)
                    (not (not_at_c_p1))

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #11160: origin
                    (at_c_p10)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #25919: <==negation-removal== 11160 (pos)
                    (not (not_at_c_p10))

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #24897: origin
                    (at_c_p11)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #32793: <==negation-removal== 24897 (pos)
                    (not (not_at_c_p11))

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #34900: origin
                    (at_c_p12)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))

                    ; #74462: <==negation-removal== 34900 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #41220: origin
                    (at_c_p2)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #24577: <==negation-removal== 41220 (pos)
                    (not (not_at_c_p2))

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #23626: origin
                    (at_c_p3)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))

                    ; #53547: <==negation-removal== 23626 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #15004: origin
                    (at_c_p4)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #35892: <==negation-removal== 15004 (pos)
                    (not (not_at_c_p4))

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #24909: origin
                    (at_c_p5)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #33413: <==negation-removal== 24909 (pos)
                    (not (not_at_c_p5))

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #11104: origin
                    (at_c_p6)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))

                    ; #50242: <==negation-removal== 11104 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #25345: origin
                    (at_c_p7)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))

                    ; #54871: <==negation-removal== 25345 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #25491: origin
                    (at_c_p8)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))

                    ; #61001: <==negation-removal== 25491 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #45980: origin
                    (at_c_p9)

                    ; #60699: origin
                    (not_at_c_p9)

                    ; #45980: <==negation-removal== 60699 (pos)
                    (not (at_c_p9))

                    ; #60699: <==negation-removal== 45980 (pos)
                    (not (not_at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_d_p10))
        :effect (and
                    ; #37509: origin
                    (at_d_p1)

                    ; #45087: origin
                    (not_at_d_p10)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_d_p10))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #45087: origin
                    (not_at_d_p10)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_d_p10))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #45087: origin
                    (not_at_d_p10)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_d_p10))
        :effect (and
                    ; #40478: origin
                    (at_d_p12)

                    ; #45087: origin
                    (not_at_d_p10)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_d_p10))
        :effect (and
                    ; #45087: origin
                    (not_at_d_p10)

                    ; #78336: origin
                    (at_d_p2)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_d_p10))
        :effect (and
                    ; #45087: origin
                    (not_at_d_p10)

                    ; #60747: origin
                    (at_d_p3)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_d_p10))
        :effect (and
                    ; #45087: origin
                    (not_at_d_p10)

                    ; #60272: origin
                    (at_d_p4)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_d_p10))
        :effect (and
                    ; #45087: origin
                    (not_at_d_p10)

                    ; #47718: origin
                    (at_d_p5)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_d_p10))
        :effect (and
                    ; #26583: origin
                    (at_d_p6)

                    ; #45087: origin
                    (not_at_d_p10)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_d_p10))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #45087: origin
                    (not_at_d_p10)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_d_p10))
        :effect (and
                    ; #45087: origin
                    (not_at_d_p10)

                    ; #52661: origin
                    (at_d_p8)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_d_p10))
        :effect (and
                    ; #45087: origin
                    (not_at_d_p10)

                    ; #59337: origin
                    (at_d_p9)

                    ; #13242: <==negation-removal== 45087 (pos)
                    (not (at_d_p10))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_d_p11))
        :effect (and
                    ; #21689: origin
                    (not_at_d_p11)

                    ; #37509: origin
                    (at_d_p1)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_d_p11))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #21689: origin
                    (not_at_d_p11)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_d_p11))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #21689: origin
                    (not_at_d_p11)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_d_p11))
        :effect (and
                    ; #21689: origin
                    (not_at_d_p11)

                    ; #40478: origin
                    (at_d_p12)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_d_p11))
        :effect (and
                    ; #21689: origin
                    (not_at_d_p11)

                    ; #78336: origin
                    (at_d_p2)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_d_p11))
        :effect (and
                    ; #21689: origin
                    (not_at_d_p11)

                    ; #60747: origin
                    (at_d_p3)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11))
        :effect (and
                    ; #21689: origin
                    (not_at_d_p11)

                    ; #60272: origin
                    (at_d_p4)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #21689: origin
                    (not_at_d_p11)

                    ; #47718: origin
                    (at_d_p5)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_d_p11))
        :effect (and
                    ; #21689: origin
                    (not_at_d_p11)

                    ; #26583: origin
                    (at_d_p6)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_d_p11))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #21689: origin
                    (not_at_d_p11)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_d_p11))
        :effect (and
                    ; #21689: origin
                    (not_at_d_p11)

                    ; #52661: origin
                    (at_d_p8)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p11_p9
        :precondition (and (at_d_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #21689: origin
                    (not_at_d_p11)

                    ; #59337: origin
                    (at_d_p9)

                    ; #17429: <==negation-removal== 21689 (pos)
                    (not (at_d_p11))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p12_p1
        :precondition (and (at_d_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #37509: origin
                    (at_d_p1)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p10
        :precondition (and (at_d_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_d_p12))
        :effect (and
                    ; #40478: origin
                    (at_d_p12)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_d_p12))
        :effect (and
                    ; #67427: origin
                    (not_at_d_p12)

                    ; #78336: origin
                    (at_d_p2)

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_d_p12))
        :effect (and
                    ; #60747: origin
                    (at_d_p3)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p12_p4
        :precondition (and (at_d_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #60272: origin
                    (at_d_p4)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_d_p12))
        :effect (and
                    ; #47718: origin
                    (at_d_p5)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_d_p12))
        :effect (and
                    ; #26583: origin
                    (at_d_p6)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p7
        :precondition (and (at_d_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #52661: origin
                    (at_d_p8)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_d_p12))
        :effect (and
                    ; #59337: origin
                    (at_d_p9)

                    ; #67427: origin
                    (not_at_d_p12)

                    ; #40478: <==negation-removal== 67427 (pos)
                    (not (at_d_p12))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #31217: origin
                    (not_at_d_p1)

                    ; #37509: origin
                    (at_d_p1)

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #31217: origin
                    (not_at_d_p1)

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_d_p1))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #31217: origin
                    (not_at_d_p1)

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p12
        :precondition (and (at_d_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #31217: origin
                    (not_at_d_p1)

                    ; #40478: origin
                    (at_d_p12)

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #31217: origin
                    (not_at_d_p1)

                    ; #78336: origin
                    (at_d_p2)

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #31217: origin
                    (not_at_d_p1)

                    ; #60747: origin
                    (at_d_p3)

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #31217: origin
                    (not_at_d_p1)

                    ; #60272: origin
                    (at_d_p4)

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #31217: origin
                    (not_at_d_p1)

                    ; #47718: origin
                    (at_d_p5)

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #26583: origin
                    (at_d_p6)

                    ; #31217: origin
                    (not_at_d_p1)

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #31217: origin
                    (not_at_d_p1)

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1))
        :effect (and
                    ; #31217: origin
                    (not_at_d_p1)

                    ; #52661: origin
                    (at_d_p8)

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #31217: origin
                    (not_at_d_p1)

                    ; #59337: origin
                    (at_d_p9)

                    ; #37509: <==negation-removal== 31217 (pos)
                    (not (at_d_p1))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #26018: origin
                    (not_at_d_p2)

                    ; #37509: origin
                    (at_d_p1)

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_d_p2))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #26018: origin
                    (not_at_d_p2)

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_d_p2))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #26018: origin
                    (not_at_d_p2)

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_d_p2))
        :effect (and
                    ; #26018: origin
                    (not_at_d_p2)

                    ; #40478: origin
                    (at_d_p12)

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #26018: origin
                    (not_at_d_p2)

                    ; #78336: origin
                    (at_d_p2)

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #26018: origin
                    (not_at_d_p2)

                    ; #60747: origin
                    (at_d_p3)

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #26018: origin
                    (not_at_d_p2)

                    ; #60272: origin
                    (at_d_p4)

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2))
        :effect (and
                    ; #26018: origin
                    (not_at_d_p2)

                    ; #47718: origin
                    (at_d_p5)

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #26018: origin
                    (not_at_d_p2)

                    ; #26583: origin
                    (at_d_p6)

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #26018: origin
                    (not_at_d_p2)

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #26018: origin
                    (not_at_d_p2)

                    ; #52661: origin
                    (at_d_p8)

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #26018: origin
                    (not_at_d_p2)

                    ; #59337: origin
                    (at_d_p9)

                    ; #78336: <==negation-removal== 26018 (pos)
                    (not (at_d_p2))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #37509: origin
                    (at_d_p1)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_d_p3))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_d_p3))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_d_p3))
        :effect (and
                    ; #40478: origin
                    (at_d_p12)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #66714: origin
                    (not_at_d_p3)

                    ; #78336: origin
                    (at_d_p2)

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #60747: origin
                    (at_d_p3)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #60272: origin
                    (at_d_p4)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #47718: origin
                    (at_d_p5)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #26583: origin
                    (at_d_p6)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #52661: origin
                    (at_d_p8)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #59337: origin
                    (at_d_p9)

                    ; #66714: origin
                    (not_at_d_p3)

                    ; #60747: <==negation-removal== 66714 (pos)
                    (not (at_d_p3))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #37509: origin
                    (at_d_p1)

                    ; #40373: origin
                    (not_at_d_p4)

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_d_p4))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #40373: origin
                    (not_at_d_p4)

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #40373: origin
                    (not_at_d_p4)

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #40373: origin
                    (not_at_d_p4)

                    ; #40478: origin
                    (at_d_p12)

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #40373: origin
                    (not_at_d_p4)

                    ; #78336: origin
                    (at_d_p2)

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #40373: origin
                    (not_at_d_p4)

                    ; #60747: origin
                    (at_d_p3)

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #40373: origin
                    (not_at_d_p4)

                    ; #60272: origin
                    (at_d_p4)

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #40373: origin
                    (not_at_d_p4)

                    ; #47718: origin
                    (at_d_p5)

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #26583: origin
                    (at_d_p6)

                    ; #40373: origin
                    (not_at_d_p4)

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_d_p4))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #40373: origin
                    (not_at_d_p4)

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #40373: origin
                    (not_at_d_p4)

                    ; #52661: origin
                    (at_d_p8)

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4))
        :effect (and
                    ; #40373: origin
                    (not_at_d_p4)

                    ; #59337: origin
                    (at_d_p9)

                    ; #60272: <==negation-removal== 40373 (pos)
                    (not (at_d_p4))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #37509: origin
                    (at_d_p1)

                    ; #40875: origin
                    (not_at_d_p5)

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p10
        :precondition (and (at_d_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #40875: origin
                    (not_at_d_p5)

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #40875: origin
                    (not_at_d_p5)

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_d_p5))
        :effect (and
                    ; #40478: origin
                    (at_d_p12)

                    ; #40875: origin
                    (not_at_d_p5)

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #40875: origin
                    (not_at_d_p5)

                    ; #78336: origin
                    (at_d_p2)

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #40875: origin
                    (not_at_d_p5)

                    ; #60747: origin
                    (at_d_p3)

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (at_d_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #40875: origin
                    (not_at_d_p5)

                    ; #60272: origin
                    (at_d_p4)

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #40875: origin
                    (not_at_d_p5)

                    ; #47718: origin
                    (at_d_p5)

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #26583: origin
                    (at_d_p6)

                    ; #40875: origin
                    (not_at_d_p5)

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #40875: origin
                    (not_at_d_p5)

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #40875: origin
                    (not_at_d_p5)

                    ; #52661: origin
                    (at_d_p8)

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #40875: origin
                    (not_at_d_p5)

                    ; #59337: origin
                    (at_d_p9)

                    ; #47718: <==negation-removal== 40875 (pos)
                    (not (at_d_p5))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #23914: origin
                    (not_at_d_p6)

                    ; #37509: origin
                    (at_d_p1)

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_d_p6))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #23914: origin
                    (not_at_d_p6)

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #23914: origin
                    (not_at_d_p6)

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p12
        :precondition (and (at_d_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #23914: origin
                    (not_at_d_p6)

                    ; #40478: origin
                    (at_d_p12)

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #23914: origin
                    (not_at_d_p6)

                    ; #78336: origin
                    (at_d_p2)

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #23914: origin
                    (not_at_d_p6)

                    ; #60747: origin
                    (at_d_p3)

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #23914: origin
                    (not_at_d_p6)

                    ; #60272: origin
                    (at_d_p4)

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #23914: origin
                    (not_at_d_p6)

                    ; #47718: origin
                    (at_d_p5)

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #23914: origin
                    (not_at_d_p6)

                    ; #26583: origin
                    (at_d_p6)

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #23914: origin
                    (not_at_d_p6)

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #23914: origin
                    (not_at_d_p6)

                    ; #52661: origin
                    (at_d_p8)

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #23914: origin
                    (not_at_d_p6)

                    ; #59337: origin
                    (at_d_p9)

                    ; #26583: <==negation-removal== 23914 (pos)
                    (not (at_d_p6))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #37509: origin
                    (at_d_p1)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p10
        :precondition (and (at_d_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p7_p11
        :precondition (and (at_d_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_d_p7))
        :effect (and
                    ; #40478: origin
                    (at_d_p12)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #61147: origin
                    (not_at_d_p7)

                    ; #78336: origin
                    (at_d_p2)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #60747: origin
                    (at_d_p3)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #60272: origin
                    (at_d_p4)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #47718: origin
                    (at_d_p5)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #26583: origin
                    (at_d_p6)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #52661: origin
                    (at_d_p8)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #59337: origin
                    (at_d_p9)

                    ; #61147: origin
                    (not_at_d_p7)

                    ; #19027: <==negation-removal== 61147 (pos)
                    (not (at_d_p7))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #37509: origin
                    (at_d_p1)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p10
        :precondition (and (at_d_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_d_p8))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #40478: origin
                    (at_d_p12)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #63893: origin
                    (not_at_d_p8)

                    ; #78336: origin
                    (at_d_p2)

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #60747: origin
                    (at_d_p3)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #60272: origin
                    (at_d_p4)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #47718: origin
                    (at_d_p5)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8))
        :effect (and
                    ; #26583: origin
                    (at_d_p6)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #52661: origin
                    (at_d_p8)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #59337: origin
                    (at_d_p9)

                    ; #63893: origin
                    (not_at_d_p8)

                    ; #52661: <==negation-removal== 63893 (pos)
                    (not (at_d_p8))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #37509: origin
                    (at_d_p1)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #31217: <==negation-removal== 37509 (pos)
                    (not (not_at_d_p1))

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p10
        :precondition (and (at_d_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #13242: origin
                    (at_d_p10)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #45087: <==negation-removal== 13242 (pos)
                    (not (not_at_d_p10))

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p11
        :precondition (and (at_d_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #17429: origin
                    (at_d_p11)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #21689: <==negation-removal== 17429 (pos)
                    (not (not_at_d_p11))

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (at_d_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #40478: origin
                    (at_d_p12)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))

                    ; #67427: <==negation-removal== 40478 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #78336: origin
                    (at_d_p2)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #26018: <==negation-removal== 78336 (pos)
                    (not (not_at_d_p2))

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #60747: origin
                    (at_d_p3)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))

                    ; #66714: <==negation-removal== 60747 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #60272: origin
                    (at_d_p4)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #40373: <==negation-removal== 60272 (pos)
                    (not (not_at_d_p4))

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #47718: origin
                    (at_d_p5)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #40875: <==negation-removal== 47718 (pos)
                    (not (not_at_d_p5))

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #26583: origin
                    (at_d_p6)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #23914: <==negation-removal== 26583 (pos)
                    (not (not_at_d_p6))

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #19027: origin
                    (at_d_p7)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))

                    ; #61147: <==negation-removal== 19027 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #52661: origin
                    (at_d_p8)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))

                    ; #63893: <==negation-removal== 52661 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #59337: origin
                    (at_d_p9)

                    ; #87458: origin
                    (not_at_d_p9)

                    ; #59337: <==negation-removal== 87458 (pos)
                    (not (at_d_p9))

                    ; #87458: <==negation-removal== 59337 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15668: <==commonly_known== 26648 (pos)
                    (Ba_checked_p10)

                    ; #16430: <==closure== 71303 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #26648: origin
                    (checked_p10)

                    ; #26983: <==commonly_known== 28063 (neg)
                    (Pb_checked_p10)

                    ; #27504: <==commonly_known== 28063 (neg)
                    (Pa_checked_p10)

                    ; #32652: <==commonly_known== 26648 (pos)
                    (Bc_checked_p10)

                    ; #48916: <==closure== 81261 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #63289: <==commonly_known== 26648 (pos)
                    (Bd_checked_p10)

                    ; #66223: <==commonly_known== 26648 (pos)
                    (Bb_checked_p10)

                    ; #71303: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #81261: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #84146: <==commonly_known== 28063 (neg)
                    (Pd_checked_p10)

                    ; #91327: <==commonly_known== 28063 (neg)
                    (Pc_checked_p10)

                    ; #11084: <==negation-removal== 66223 (pos)
                    (not (Pb_not_checked_p10))

                    ; #23557: <==negation-removal== 81261 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #27868: <==uncertain_firing== 81261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #28063: <==negation-removal== 26648 (pos)
                    (not (not_checked_p10))

                    ; #39244: <==uncertain_firing== 71303 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #42223: <==negation-removal== 26983 (pos)
                    (not (Bb_not_checked_p10))

                    ; #42247: <==negation-removal== 48916 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #53984: <==uncertain_firing== 48916 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #63539: <==negation-removal== 32652 (pos)
                    (not (Pc_not_checked_p10))

                    ; #66154: <==negation-removal== 63289 (pos)
                    (not (Pd_not_checked_p10))

                    ; #70247: <==negation-removal== 91327 (pos)
                    (not (Bc_not_checked_p10))

                    ; #73005: <==uncertain_firing== 16430 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #73352: <==negation-removal== 27504 (pos)
                    (not (Ba_not_checked_p10))

                    ; #73937: <==negation-removal== 84146 (pos)
                    (not (Bd_not_checked_p10))

                    ; #76263: <==negation-removal== 15668 (pos)
                    (not (Pa_not_checked_p10))

                    ; #78032: <==negation-removal== 16430 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #79426: <==negation-removal== 71303 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #13588: origin
                    (checked_p11)

                    ; #22803: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #35672: <==closure== 22803 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #42113: <==commonly_known== 13588 (pos)
                    (Ba_checked_p11)

                    ; #45174: <==commonly_known== 54476 (neg)
                    (Pb_checked_p11)

                    ; #49327: <==commonly_known== 13588 (pos)
                    (Bb_checked_p11)

                    ; #53422: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #55552: <==commonly_known== 13588 (pos)
                    (Bc_checked_p11)

                    ; #69734: <==commonly_known== 54476 (neg)
                    (Pd_checked_p11)

                    ; #79836: <==commonly_known== 13588 (pos)
                    (Bd_checked_p11)

                    ; #81846: <==commonly_known== 54476 (neg)
                    (Pc_checked_p11)

                    ; #82237: <==commonly_known== 54476 (neg)
                    (Pa_checked_p11)

                    ; #84983: <==closure== 53422 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #10667: <==negation-removal== 35672 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #16007: <==uncertain_firing== 84983 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #16079: <==negation-removal== 82237 (pos)
                    (not (Ba_not_checked_p11))

                    ; #18343: <==uncertain_firing== 22803 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #26357: <==negation-removal== 81846 (pos)
                    (not (Bc_not_checked_p11))

                    ; #35337: <==negation-removal== 22803 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #40751: <==uncertain_firing== 53422 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #45917: <==negation-removal== 55552 (pos)
                    (not (Pc_not_checked_p11))

                    ; #51681: <==uncertain_firing== 35672 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #53651: <==negation-removal== 84983 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #54476: <==negation-removal== 13588 (pos)
                    (not (not_checked_p11))

                    ; #54829: <==negation-removal== 49327 (pos)
                    (not (Pb_not_checked_p11))

                    ; #76785: <==negation-removal== 53422 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #78982: <==negation-removal== 69734 (pos)
                    (not (Bd_not_checked_p11))

                    ; #85630: <==negation-removal== 79836 (pos)
                    (not (Pd_not_checked_p11))

                    ; #87272: <==negation-removal== 45174 (pos)
                    (not (Bb_not_checked_p11))

                    ; #88930: <==negation-removal== 42113 (pos)
                    (not (Pa_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10513: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #21655: <==closure== 10513 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #21832: origin
                    (checked_p12)

                    ; #30841: <==commonly_known== 21832 (pos)
                    (Bc_checked_p12)

                    ; #53259: <==commonly_known== 36654 (neg)
                    (Pd_checked_p12)

                    ; #54588: <==commonly_known== 21832 (pos)
                    (Bb_checked_p12)

                    ; #60206: <==commonly_known== 36654 (neg)
                    (Pb_checked_p12)

                    ; #61813: <==commonly_known== 21832 (pos)
                    (Bd_checked_p12)

                    ; #66856: <==commonly_known== 36654 (neg)
                    (Pc_checked_p12)

                    ; #68355: <==commonly_known== 36654 (neg)
                    (Pa_checked_p12)

                    ; #75682: <==commonly_known== 21832 (pos)
                    (Ba_checked_p12)

                    ; #76312: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #83179: <==closure== 76312 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #18254: <==negation-removal== 61813 (pos)
                    (not (Pd_not_checked_p12))

                    ; #19791: <==uncertain_firing== 10513 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #21012: <==negation-removal== 83179 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #22008: <==negation-removal== 68355 (pos)
                    (not (Ba_not_checked_p12))

                    ; #33030: <==negation-removal== 75682 (pos)
                    (not (Pa_not_checked_p12))

                    ; #36499: <==negation-removal== 21655 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #36654: <==negation-removal== 21832 (pos)
                    (not (not_checked_p12))

                    ; #38534: <==negation-removal== 10513 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #47913: <==negation-removal== 60206 (pos)
                    (not (Bb_not_checked_p12))

                    ; #60528: <==uncertain_firing== 76312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #61611: <==uncertain_firing== 83179 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #63236: <==uncertain_firing== 21655 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #64261: <==negation-removal== 53259 (pos)
                    (not (Bd_not_checked_p12))

                    ; #69448: <==negation-removal== 54588 (pos)
                    (not (Pb_not_checked_p12))

                    ; #72393: <==negation-removal== 66856 (pos)
                    (not (Bc_not_checked_p12))

                    ; #73201: <==negation-removal== 76312 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #76368: <==negation-removal== 30841 (pos)
                    (not (Pc_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11415: <==closure== 32285 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #11418: <==commonly_known== 62553 (pos)
                    (Bd_checked_p1)

                    ; #21895: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #23257: <==commonly_known== 62553 (pos)
                    (Ba_checked_p1)

                    ; #32285: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #36971: <==commonly_known== 58014 (neg)
                    (Pc_checked_p1)

                    ; #39281: <==commonly_known== 58014 (neg)
                    (Pd_checked_p1)

                    ; #39972: <==closure== 21895 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #51074: <==commonly_known== 62553 (pos)
                    (Bb_checked_p1)

                    ; #62553: origin
                    (checked_p1)

                    ; #76705: <==commonly_known== 58014 (neg)
                    (Pb_checked_p1)

                    ; #81072: <==commonly_known== 62553 (pos)
                    (Bc_checked_p1)

                    ; #87629: <==commonly_known== 58014 (neg)
                    (Pa_checked_p1)

                    ; #11866: <==negation-removal== 21895 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #15465: <==uncertain_firing== 39972 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #23612: <==negation-removal== 36971 (pos)
                    (not (Bc_not_checked_p1))

                    ; #25047: <==uncertain_firing== 21895 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #34911: <==negation-removal== 11415 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #40372: <==negation-removal== 76705 (pos)
                    (not (Bb_not_checked_p1))

                    ; #47210: <==negation-removal== 11418 (pos)
                    (not (Pd_not_checked_p1))

                    ; #58014: <==negation-removal== 62553 (pos)
                    (not (not_checked_p1))

                    ; #63839: <==negation-removal== 39972 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #64439: <==negation-removal== 32285 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #65317: <==uncertain_firing== 11415 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65577: <==negation-removal== 87629 (pos)
                    (not (Ba_not_checked_p1))

                    ; #66707: <==negation-removal== 39281 (pos)
                    (not (Bd_not_checked_p1))

                    ; #77652: <==uncertain_firing== 32285 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #78810: <==negation-removal== 51074 (pos)
                    (not (Pb_not_checked_p1))

                    ; #80917: <==negation-removal== 23257 (pos)
                    (not (Pa_not_checked_p1))

                    ; #89375: <==negation-removal== 81072 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #26511: <==commonly_known== 88051 (pos)
                    (Bd_checked_p2)

                    ; #31164: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #32114: <==commonly_known== 74263 (neg)
                    (Pb_checked_p2)

                    ; #49686: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #57885: <==closure== 49686 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #68228: <==commonly_known== 88051 (pos)
                    (Ba_checked_p2)

                    ; #76202: <==commonly_known== 74263 (neg)
                    (Pc_checked_p2)

                    ; #77446: <==commonly_known== 74263 (neg)
                    (Pa_checked_p2)

                    ; #79971: <==commonly_known== 88051 (pos)
                    (Bc_checked_p2)

                    ; #82514: <==commonly_known== 88051 (pos)
                    (Bb_checked_p2)

                    ; #83932: <==commonly_known== 74263 (neg)
                    (Pd_checked_p2)

                    ; #88051: origin
                    (checked_p2)

                    ; #91588: <==closure== 31164 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #11366: <==negation-removal== 57885 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #14102: <==negation-removal== 26511 (pos)
                    (not (Pd_not_checked_p2))

                    ; #23270: <==negation-removal== 79971 (pos)
                    (not (Pc_not_checked_p2))

                    ; #25845: <==negation-removal== 31164 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #35458: <==negation-removal== 91588 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #43172: <==negation-removal== 68228 (pos)
                    (not (Pa_not_checked_p2))

                    ; #47394: <==uncertain_firing== 49686 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71492: <==uncertain_firing== 31164 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #74263: <==negation-removal== 88051 (pos)
                    (not (not_checked_p2))

                    ; #76591: <==uncertain_firing== 57885 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #79750: <==negation-removal== 32114 (pos)
                    (not (Bb_not_checked_p2))

                    ; #82445: <==negation-removal== 83932 (pos)
                    (not (Bd_not_checked_p2))

                    ; #86833: <==negation-removal== 77446 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87473: <==negation-removal== 82514 (pos)
                    (not (Pb_not_checked_p2))

                    ; #88176: <==negation-removal== 76202 (pos)
                    (not (Bc_not_checked_p2))

                    ; #91146: <==negation-removal== 49686 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #91376: <==uncertain_firing== 91588 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12260: origin
                    (checked_p3)

                    ; #15049: <==commonly_known== 46061 (neg)
                    (Pd_checked_p3)

                    ; #16211: <==closure== 50221 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #33099: <==commonly_known== 12260 (pos)
                    (Bc_checked_p3)

                    ; #47858: <==commonly_known== 12260 (pos)
                    (Bd_checked_p3)

                    ; #50221: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #57401: <==closure== 85635 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #63086: <==commonly_known== 12260 (pos)
                    (Bb_checked_p3)

                    ; #66310: <==commonly_known== 46061 (neg)
                    (Pb_checked_p3)

                    ; #71356: <==commonly_known== 12260 (pos)
                    (Ba_checked_p3)

                    ; #71360: <==commonly_known== 46061 (neg)
                    (Pc_checked_p3)

                    ; #72584: <==commonly_known== 46061 (neg)
                    (Pa_checked_p3)

                    ; #85635: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #13628: <==negation-removal== 71356 (pos)
                    (not (Pa_not_checked_p3))

                    ; #21028: <==uncertain_firing== 16211 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #23417: <==negation-removal== 33099 (pos)
                    (not (Pc_not_checked_p3))

                    ; #32024: <==negation-removal== 47858 (pos)
                    (not (Pd_not_checked_p3))

                    ; #33084: <==uncertain_firing== 85635 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #46061: <==negation-removal== 12260 (pos)
                    (not (not_checked_p3))

                    ; #49518: <==negation-removal== 63086 (pos)
                    (not (Pb_not_checked_p3))

                    ; #49695: <==negation-removal== 16211 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #53090: <==negation-removal== 15049 (pos)
                    (not (Bd_not_checked_p3))

                    ; #59684: <==negation-removal== 57401 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #65801: <==uncertain_firing== 50221 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #68994: <==negation-removal== 71360 (pos)
                    (not (Bc_not_checked_p3))

                    ; #73179: <==negation-removal== 72584 (pos)
                    (not (Ba_not_checked_p3))

                    ; #74645: <==negation-removal== 50221 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #79735: <==negation-removal== 66310 (pos)
                    (not (Bb_not_checked_p3))

                    ; #89909: <==uncertain_firing== 57401 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #91900: <==negation-removal== 85635 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19157: <==closure== 26841 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #19933: <==commonly_known== 46686 (pos)
                    (Bd_checked_p4)

                    ; #23096: <==closure== 28250 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #24333: <==commonly_known== 46686 (pos)
                    (Bb_checked_p4)

                    ; #26841: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #28250: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #32827: <==commonly_known== 46686 (pos)
                    (Ba_checked_p4)

                    ; #42199: <==commonly_known== 46686 (pos)
                    (Bc_checked_p4)

                    ; #42401: <==commonly_known== 81892 (neg)
                    (Pc_checked_p4)

                    ; #45439: <==commonly_known== 81892 (neg)
                    (Pa_checked_p4)

                    ; #46686: origin
                    (checked_p4)

                    ; #63165: <==commonly_known== 81892 (neg)
                    (Pb_checked_p4)

                    ; #70158: <==commonly_known== 81892 (neg)
                    (Pd_checked_p4)

                    ; #17373: <==negation-removal== 32827 (pos)
                    (not (Pa_not_checked_p4))

                    ; #27265: <==uncertain_firing== 23096 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #30318: <==negation-removal== 45439 (pos)
                    (not (Ba_not_checked_p4))

                    ; #32563: <==uncertain_firing== 26841 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #37689: <==uncertain_firing== 19157 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #44507: <==negation-removal== 63165 (pos)
                    (not (Bb_not_checked_p4))

                    ; #45585: <==negation-removal== 19157 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #49713: <==negation-removal== 26841 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #73849: <==negation-removal== 42199 (pos)
                    (not (Pc_not_checked_p4))

                    ; #77809: <==negation-removal== 28250 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #78958: <==uncertain_firing== 28250 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #81892: <==negation-removal== 46686 (pos)
                    (not (not_checked_p4))

                    ; #83022: <==negation-removal== 23096 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #84622: <==negation-removal== 19933 (pos)
                    (not (Pd_not_checked_p4))

                    ; #87453: <==negation-removal== 24333 (pos)
                    (not (Pb_not_checked_p4))

                    ; #89951: <==negation-removal== 42401 (pos)
                    (not (Bc_not_checked_p4))

                    ; #90371: <==negation-removal== 70158 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13350: <==commonly_known== 62628 (neg)
                    (Pc_checked_p5)

                    ; #13388: <==commonly_known== 62628 (neg)
                    (Pb_checked_p5)

                    ; #15613: <==closure== 82497 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #30638: <==commonly_known== 43193 (pos)
                    (Bc_checked_p5)

                    ; #31550: <==commonly_known== 62628 (neg)
                    (Pd_checked_p5)

                    ; #43193: origin
                    (checked_p5)

                    ; #60116: <==commonly_known== 43193 (pos)
                    (Bb_checked_p5)

                    ; #65635: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #80375: <==commonly_known== 43193 (pos)
                    (Ba_checked_p5)

                    ; #81420: <==closure== 65635 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #82497: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #89780: <==commonly_known== 62628 (neg)
                    (Pa_checked_p5)

                    ; #99695: <==commonly_known== 43193 (pos)
                    (Bd_checked_p5)

                    ; #10599: <==negation-removal== 13388 (pos)
                    (not (Bb_not_checked_p5))

                    ; #13003: <==uncertain_firing== 65635 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #31823: <==negation-removal== 31550 (pos)
                    (not (Bd_not_checked_p5))

                    ; #33725: <==negation-removal== 30638 (pos)
                    (not (Pc_not_checked_p5))

                    ; #37622: <==negation-removal== 15613 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #39595: <==uncertain_firing== 15613 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #49925: <==negation-removal== 89780 (pos)
                    (not (Ba_not_checked_p5))

                    ; #53141: <==negation-removal== 80375 (pos)
                    (not (Pa_not_checked_p5))

                    ; #54593: <==negation-removal== 81420 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #61160: <==negation-removal== 60116 (pos)
                    (not (Pb_not_checked_p5))

                    ; #62628: <==negation-removal== 43193 (pos)
                    (not (not_checked_p5))

                    ; #71665: <==uncertain_firing== 81420 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #79475: <==uncertain_firing== 82497 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #79610: <==negation-removal== 82497 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #88867: <==negation-removal== 99695 (pos)
                    (not (Pd_not_checked_p5))

                    ; #89714: <==negation-removal== 13350 (pos)
                    (not (Bc_not_checked_p5))

                    ; #89739: <==negation-removal== 65635 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13289: origin
                    (checked_p6)

                    ; #17434: <==commonly_known== 82298 (neg)
                    (Pd_checked_p6)

                    ; #37098: <==commonly_known== 13289 (pos)
                    (Bc_checked_p6)

                    ; #39582: <==closure== 48040 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #47434: <==commonly_known== 82298 (neg)
                    (Pb_checked_p6)

                    ; #48040: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #51512: <==closure== 59294 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #53167: <==commonly_known== 13289 (pos)
                    (Bb_checked_p6)

                    ; #55924: <==commonly_known== 13289 (pos)
                    (Ba_checked_p6)

                    ; #59294: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #64365: <==commonly_known== 82298 (neg)
                    (Pa_checked_p6)

                    ; #74527: <==commonly_known== 13289 (pos)
                    (Bd_checked_p6)

                    ; #82768: <==commonly_known== 82298 (neg)
                    (Pc_checked_p6)

                    ; #15287: <==negation-removal== 55924 (pos)
                    (not (Pa_not_checked_p6))

                    ; #24512: <==negation-removal== 64365 (pos)
                    (not (Ba_not_checked_p6))

                    ; #24536: <==uncertain_firing== 48040 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #27027: <==negation-removal== 82768 (pos)
                    (not (Bc_not_checked_p6))

                    ; #35586: <==uncertain_firing== 59294 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #39205: <==negation-removal== 37098 (pos)
                    (not (Pc_not_checked_p6))

                    ; #45338: <==uncertain_firing== 51512 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #46722: <==negation-removal== 39582 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #50117: <==negation-removal== 17434 (pos)
                    (not (Bd_not_checked_p6))

                    ; #51471: <==uncertain_firing== 39582 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #52190: <==negation-removal== 53167 (pos)
                    (not (Pb_not_checked_p6))

                    ; #52829: <==negation-removal== 59294 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #57390: <==negation-removal== 48040 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #59277: <==negation-removal== 47434 (pos)
                    (not (Bb_not_checked_p6))

                    ; #82298: <==negation-removal== 13289 (pos)
                    (not (not_checked_p6))

                    ; #83876: <==negation-removal== 51512 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #88600: <==negation-removal== 74527 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17036: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #19052: <==commonly_known== 39360 (pos)
                    (Bc_checked_p7)

                    ; #21650: <==commonly_known== 49949 (neg)
                    (Pb_checked_p7)

                    ; #30268: <==closure== 87689 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #39360: origin
                    (checked_p7)

                    ; #56508: <==commonly_known== 49949 (neg)
                    (Pc_checked_p7)

                    ; #59972: <==commonly_known== 39360 (pos)
                    (Ba_checked_p7)

                    ; #70812: <==commonly_known== 49949 (neg)
                    (Pd_checked_p7)

                    ; #71481: <==commonly_known== 39360 (pos)
                    (Bb_checked_p7)

                    ; #84308: <==closure== 17036 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #85086: <==commonly_known== 39360 (pos)
                    (Bd_checked_p7)

                    ; #87076: <==commonly_known== 49949 (neg)
                    (Pa_checked_p7)

                    ; #87689: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #10068: <==negation-removal== 70812 (pos)
                    (not (Bd_not_checked_p7))

                    ; #12660: <==negation-removal== 59972 (pos)
                    (not (Pa_not_checked_p7))

                    ; #15134: <==negation-removal== 84308 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #17199: <==negation-removal== 71481 (pos)
                    (not (Pb_not_checked_p7))

                    ; #25994: <==negation-removal== 85086 (pos)
                    (not (Pd_not_checked_p7))

                    ; #35757: <==negation-removal== 17036 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #36058: <==negation-removal== 30268 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #41187: <==uncertain_firing== 17036 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #44472: <==uncertain_firing== 87689 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #45792: <==uncertain_firing== 84308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #49949: <==negation-removal== 39360 (pos)
                    (not (not_checked_p7))

                    ; #55393: <==negation-removal== 19052 (pos)
                    (not (Pc_not_checked_p7))

                    ; #56546: <==negation-removal== 87076 (pos)
                    (not (Ba_not_checked_p7))

                    ; #68743: <==negation-removal== 56508 (pos)
                    (not (Bc_not_checked_p7))

                    ; #77180: <==negation-removal== 21650 (pos)
                    (not (Bb_not_checked_p7))

                    ; #83528: <==negation-removal== 87689 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #98098: <==uncertain_firing== 30268 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13342: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #19220: <==commonly_known== 56229 (pos)
                    (Bc_checked_p8)

                    ; #22166: <==closure== 13342 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #33271: <==commonly_known== 60115 (neg)
                    (Pd_checked_p8)

                    ; #34910: <==commonly_known== 60115 (neg)
                    (Pa_checked_p8)

                    ; #37953: <==commonly_known== 56229 (pos)
                    (Ba_checked_p8)

                    ; #42733: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #49132: <==commonly_known== 60115 (neg)
                    (Pc_checked_p8)

                    ; #56229: origin
                    (checked_p8)

                    ; #59327: <==commonly_known== 60115 (neg)
                    (Pb_checked_p8)

                    ; #59997: <==commonly_known== 56229 (pos)
                    (Bb_checked_p8)

                    ; #64104: <==closure== 42733 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #90735: <==commonly_known== 56229 (pos)
                    (Bd_checked_p8)

                    ; #12314: <==negation-removal== 59997 (pos)
                    (not (Pb_not_checked_p8))

                    ; #29791: <==negation-removal== 34910 (pos)
                    (not (Ba_not_checked_p8))

                    ; #35385: <==negation-removal== 59327 (pos)
                    (not (Bb_not_checked_p8))

                    ; #35434: <==uncertain_firing== 42733 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #45133: <==negation-removal== 49132 (pos)
                    (not (Bc_not_checked_p8))

                    ; #45703: <==negation-removal== 64104 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #53176: <==uncertain_firing== 22166 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #54182: <==negation-removal== 19220 (pos)
                    (not (Pc_not_checked_p8))

                    ; #56786: <==negation-removal== 90735 (pos)
                    (not (Pd_not_checked_p8))

                    ; #60115: <==negation-removal== 56229 (pos)
                    (not (not_checked_p8))

                    ; #62308: <==negation-removal== 13342 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #68059: <==uncertain_firing== 64104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #68938: <==negation-removal== 37953 (pos)
                    (not (Pa_not_checked_p8))

                    ; #68960: <==negation-removal== 42733 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78740: <==uncertain_firing== 13342 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #79881: <==negation-removal== 22166 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80620: <==negation-removal== 33271 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #22662: <==closure== 48404 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #22750: origin
                    (checked_p9)

                    ; #26240: <==commonly_known== 76535 (neg)
                    (Pb_checked_p9)

                    ; #30175: <==closure== 80962 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #40468: <==commonly_known== 22750 (pos)
                    (Bb_checked_p9)

                    ; #47795: <==commonly_known== 22750 (pos)
                    (Ba_checked_p9)

                    ; #48404: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #64831: <==commonly_known== 76535 (neg)
                    (Pd_checked_p9)

                    ; #65254: <==commonly_known== 22750 (pos)
                    (Bc_checked_p9)

                    ; #73243: <==commonly_known== 22750 (pos)
                    (Bd_checked_p9)

                    ; #76601: <==commonly_known== 76535 (neg)
                    (Pa_checked_p9)

                    ; #80962: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #82092: <==commonly_known== 76535 (neg)
                    (Pc_checked_p9)

                    ; #11823: <==negation-removal== 30175 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #18060: <==negation-removal== 48404 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #20338: <==negation-removal== 80962 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #23414: <==negation-removal== 26240 (pos)
                    (not (Bb_not_checked_p9))

                    ; #27305: <==negation-removal== 22662 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #38834: <==negation-removal== 65254 (pos)
                    (not (Pc_not_checked_p9))

                    ; #48747: <==negation-removal== 47795 (pos)
                    (not (Pa_not_checked_p9))

                    ; #59860: <==uncertain_firing== 80962 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #61881: <==negation-removal== 40468 (pos)
                    (not (Pb_not_checked_p9))

                    ; #64660: <==negation-removal== 73243 (pos)
                    (not (Pd_not_checked_p9))

                    ; #70425: <==negation-removal== 82092 (pos)
                    (not (Bc_not_checked_p9))

                    ; #76258: <==uncertain_firing== 48404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #76341: <==negation-removal== 76601 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76535: <==negation-removal== 22750 (pos)
                    (not (not_checked_p9))

                    ; #79749: <==uncertain_firing== 30175 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #85245: <==uncertain_firing== 22662 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #89648: <==negation-removal== 64831 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15668: <==commonly_known== 26648 (pos)
                    (Ba_checked_p10)

                    ; #26648: origin
                    (checked_p10)

                    ; #26983: <==commonly_known== 28063 (neg)
                    (Pb_checked_p10)

                    ; #27504: <==commonly_known== 28063 (neg)
                    (Pa_checked_p10)

                    ; #32652: <==commonly_known== 26648 (pos)
                    (Bc_checked_p10)

                    ; #41365: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #47350: <==closure== 41365 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #54231: <==closure== 90137 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #63289: <==commonly_known== 26648 (pos)
                    (Bd_checked_p10)

                    ; #66223: <==commonly_known== 26648 (pos)
                    (Bb_checked_p10)

                    ; #84146: <==commonly_known== 28063 (neg)
                    (Pd_checked_p10)

                    ; #90137: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #91327: <==commonly_known== 28063 (neg)
                    (Pc_checked_p10)

                    ; #11084: <==negation-removal== 66223 (pos)
                    (not (Pb_not_checked_p10))

                    ; #20231: <==negation-removal== 90137 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #23242: <==negation-removal== 54231 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #28063: <==negation-removal== 26648 (pos)
                    (not (not_checked_p10))

                    ; #42223: <==negation-removal== 26983 (pos)
                    (not (Bb_not_checked_p10))

                    ; #54529: <==uncertain_firing== 90137 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #55696: <==negation-removal== 47350 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #56294: <==negation-removal== 41365 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #63539: <==negation-removal== 32652 (pos)
                    (not (Pc_not_checked_p10))

                    ; #66154: <==negation-removal== 63289 (pos)
                    (not (Pd_not_checked_p10))

                    ; #70247: <==negation-removal== 91327 (pos)
                    (not (Bc_not_checked_p10))

                    ; #70531: <==uncertain_firing== 41365 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #73352: <==negation-removal== 27504 (pos)
                    (not (Ba_not_checked_p10))

                    ; #73937: <==negation-removal== 84146 (pos)
                    (not (Bd_not_checked_p10))

                    ; #74822: <==uncertain_firing== 47350 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #76263: <==negation-removal== 15668 (pos)
                    (not (Pa_not_checked_p10))

                    ; #93737: <==uncertain_firing== 54231 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #12700: <==closure== 50939 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #13588: origin
                    (checked_p11)

                    ; #18596: <==closure== 34822 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #34822: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #42113: <==commonly_known== 13588 (pos)
                    (Ba_checked_p11)

                    ; #45174: <==commonly_known== 54476 (neg)
                    (Pb_checked_p11)

                    ; #49327: <==commonly_known== 13588 (pos)
                    (Bb_checked_p11)

                    ; #50939: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #55552: <==commonly_known== 13588 (pos)
                    (Bc_checked_p11)

                    ; #69734: <==commonly_known== 54476 (neg)
                    (Pd_checked_p11)

                    ; #79836: <==commonly_known== 13588 (pos)
                    (Bd_checked_p11)

                    ; #81846: <==commonly_known== 54476 (neg)
                    (Pc_checked_p11)

                    ; #82237: <==commonly_known== 54476 (neg)
                    (Pa_checked_p11)

                    ; #12474: <==uncertain_firing== 18596 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #16079: <==negation-removal== 82237 (pos)
                    (not (Ba_not_checked_p11))

                    ; #25732: <==uncertain_firing== 12700 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #26357: <==negation-removal== 81846 (pos)
                    (not (Bc_not_checked_p11))

                    ; #30625: <==negation-removal== 34822 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #42270: <==uncertain_firing== 34822 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #45917: <==negation-removal== 55552 (pos)
                    (not (Pc_not_checked_p11))

                    ; #51233: <==negation-removal== 50939 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #54476: <==negation-removal== 13588 (pos)
                    (not (not_checked_p11))

                    ; #54829: <==negation-removal== 49327 (pos)
                    (not (Pb_not_checked_p11))

                    ; #60054: <==uncertain_firing== 50939 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #70392: <==negation-removal== 18596 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #73339: <==negation-removal== 12700 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #78982: <==negation-removal== 69734 (pos)
                    (not (Bd_not_checked_p11))

                    ; #85630: <==negation-removal== 79836 (pos)
                    (not (Pd_not_checked_p11))

                    ; #87272: <==negation-removal== 45174 (pos)
                    (not (Bb_not_checked_p11))

                    ; #88930: <==negation-removal== 42113 (pos)
                    (not (Pa_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12828: <==closure== 43256 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #19200: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #21832: origin
                    (checked_p12)

                    ; #30841: <==commonly_known== 21832 (pos)
                    (Bc_checked_p12)

                    ; #38863: <==closure== 19200 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #43256: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #53259: <==commonly_known== 36654 (neg)
                    (Pd_checked_p12)

                    ; #54588: <==commonly_known== 21832 (pos)
                    (Bb_checked_p12)

                    ; #60206: <==commonly_known== 36654 (neg)
                    (Pb_checked_p12)

                    ; #61813: <==commonly_known== 21832 (pos)
                    (Bd_checked_p12)

                    ; #66856: <==commonly_known== 36654 (neg)
                    (Pc_checked_p12)

                    ; #68355: <==commonly_known== 36654 (neg)
                    (Pa_checked_p12)

                    ; #75682: <==commonly_known== 21832 (pos)
                    (Ba_checked_p12)

                    ; #11202: <==negation-removal== 43256 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #18254: <==negation-removal== 61813 (pos)
                    (not (Pd_not_checked_p12))

                    ; #22008: <==negation-removal== 68355 (pos)
                    (not (Ba_not_checked_p12))

                    ; #29561: <==negation-removal== 38863 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #33030: <==negation-removal== 75682 (pos)
                    (not (Pa_not_checked_p12))

                    ; #36654: <==negation-removal== 21832 (pos)
                    (not (not_checked_p12))

                    ; #38783: <==uncertain_firing== 43256 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #41307: <==uncertain_firing== 38863 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #47913: <==negation-removal== 60206 (pos)
                    (not (Bb_not_checked_p12))

                    ; #49623: <==negation-removal== 19200 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #55268: <==uncertain_firing== 19200 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #64261: <==negation-removal== 53259 (pos)
                    (not (Bd_not_checked_p12))

                    ; #69448: <==negation-removal== 54588 (pos)
                    (not (Pb_not_checked_p12))

                    ; #72393: <==negation-removal== 66856 (pos)
                    (not (Bc_not_checked_p12))

                    ; #76368: <==negation-removal== 30841 (pos)
                    (not (Pc_not_checked_p12))

                    ; #81517: <==uncertain_firing== 12828 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #86763: <==negation-removal== 12828 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10232: <==closure== 81098 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #11418: <==commonly_known== 62553 (pos)
                    (Bd_checked_p1)

                    ; #23257: <==commonly_known== 62553 (pos)
                    (Ba_checked_p1)

                    ; #31695: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #36971: <==commonly_known== 58014 (neg)
                    (Pc_checked_p1)

                    ; #39281: <==commonly_known== 58014 (neg)
                    (Pd_checked_p1)

                    ; #51074: <==commonly_known== 62553 (pos)
                    (Bb_checked_p1)

                    ; #62553: origin
                    (checked_p1)

                    ; #76705: <==commonly_known== 58014 (neg)
                    (Pb_checked_p1)

                    ; #81072: <==commonly_known== 62553 (pos)
                    (Bc_checked_p1)

                    ; #81098: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #87629: <==commonly_known== 58014 (neg)
                    (Pa_checked_p1)

                    ; #90966: <==closure== 31695 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #13805: <==negation-removal== 90966 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #23612: <==negation-removal== 36971 (pos)
                    (not (Bc_not_checked_p1))

                    ; #27562: <==negation-removal== 81098 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #28381: <==uncertain_firing== 81098 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #39666: <==negation-removal== 10232 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #40372: <==negation-removal== 76705 (pos)
                    (not (Bb_not_checked_p1))

                    ; #43775: <==uncertain_firing== 31695 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #44470: <==negation-removal== 31695 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #47210: <==negation-removal== 11418 (pos)
                    (not (Pd_not_checked_p1))

                    ; #56825: <==uncertain_firing== 10232 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #58014: <==negation-removal== 62553 (pos)
                    (not (not_checked_p1))

                    ; #65577: <==negation-removal== 87629 (pos)
                    (not (Ba_not_checked_p1))

                    ; #66707: <==negation-removal== 39281 (pos)
                    (not (Bd_not_checked_p1))

                    ; #78810: <==negation-removal== 51074 (pos)
                    (not (Pb_not_checked_p1))

                    ; #80371: <==uncertain_firing== 90966 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #80917: <==negation-removal== 23257 (pos)
                    (not (Pa_not_checked_p1))

                    ; #89375: <==negation-removal== 81072 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #26511: <==commonly_known== 88051 (pos)
                    (Bd_checked_p2)

                    ; #31956: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #32114: <==commonly_known== 74263 (neg)
                    (Pb_checked_p2)

                    ; #55103: <==closure== 31956 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #68228: <==commonly_known== 88051 (pos)
                    (Ba_checked_p2)

                    ; #76118: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #76202: <==commonly_known== 74263 (neg)
                    (Pc_checked_p2)

                    ; #77446: <==commonly_known== 74263 (neg)
                    (Pa_checked_p2)

                    ; #79971: <==commonly_known== 88051 (pos)
                    (Bc_checked_p2)

                    ; #82514: <==commonly_known== 88051 (pos)
                    (Bb_checked_p2)

                    ; #82564: <==closure== 76118 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #83932: <==commonly_known== 74263 (neg)
                    (Pd_checked_p2)

                    ; #88051: origin
                    (checked_p2)

                    ; #14102: <==negation-removal== 26511 (pos)
                    (not (Pd_not_checked_p2))

                    ; #15398: <==negation-removal== 55103 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #21919: <==uncertain_firing== 76118 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #23270: <==negation-removal== 79971 (pos)
                    (not (Pc_not_checked_p2))

                    ; #24805: <==negation-removal== 76118 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #26253: <==uncertain_firing== 55103 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #33235: <==negation-removal== 31956 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #35539: <==negation-removal== 82564 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #43172: <==negation-removal== 68228 (pos)
                    (not (Pa_not_checked_p2))

                    ; #57715: <==uncertain_firing== 31956 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #74263: <==negation-removal== 88051 (pos)
                    (not (not_checked_p2))

                    ; #79750: <==negation-removal== 32114 (pos)
                    (not (Bb_not_checked_p2))

                    ; #82445: <==negation-removal== 83932 (pos)
                    (not (Bd_not_checked_p2))

                    ; #83944: <==uncertain_firing== 82564 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #86833: <==negation-removal== 77446 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87473: <==negation-removal== 82514 (pos)
                    (not (Pb_not_checked_p2))

                    ; #88176: <==negation-removal== 76202 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12260: origin
                    (checked_p3)

                    ; #15049: <==commonly_known== 46061 (neg)
                    (Pd_checked_p3)

                    ; #18756: <==closure== 45416 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #33099: <==commonly_known== 12260 (pos)
                    (Bc_checked_p3)

                    ; #39326: <==closure== 66641 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #45416: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #47858: <==commonly_known== 12260 (pos)
                    (Bd_checked_p3)

                    ; #63086: <==commonly_known== 12260 (pos)
                    (Bb_checked_p3)

                    ; #66310: <==commonly_known== 46061 (neg)
                    (Pb_checked_p3)

                    ; #66641: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #71356: <==commonly_known== 12260 (pos)
                    (Ba_checked_p3)

                    ; #71360: <==commonly_known== 46061 (neg)
                    (Pc_checked_p3)

                    ; #72584: <==commonly_known== 46061 (neg)
                    (Pa_checked_p3)

                    ; #12538: <==negation-removal== 18756 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #13628: <==negation-removal== 71356 (pos)
                    (not (Pa_not_checked_p3))

                    ; #19092: <==negation-removal== 45416 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #23417: <==negation-removal== 33099 (pos)
                    (not (Pc_not_checked_p3))

                    ; #32024: <==negation-removal== 47858 (pos)
                    (not (Pd_not_checked_p3))

                    ; #43949: <==negation-removal== 39326 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #46061: <==negation-removal== 12260 (pos)
                    (not (not_checked_p3))

                    ; #49518: <==negation-removal== 63086 (pos)
                    (not (Pb_not_checked_p3))

                    ; #52395: <==uncertain_firing== 66641 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #53090: <==negation-removal== 15049 (pos)
                    (not (Bd_not_checked_p3))

                    ; #68626: <==uncertain_firing== 18756 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #68994: <==negation-removal== 71360 (pos)
                    (not (Bc_not_checked_p3))

                    ; #71696: <==uncertain_firing== 45416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71745: <==uncertain_firing== 39326 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #73179: <==negation-removal== 72584 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79735: <==negation-removal== 66310 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86904: <==negation-removal== 66641 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19933: <==commonly_known== 46686 (pos)
                    (Bd_checked_p4)

                    ; #24333: <==commonly_known== 46686 (pos)
                    (Bb_checked_p4)

                    ; #32827: <==commonly_known== 46686 (pos)
                    (Ba_checked_p4)

                    ; #42199: <==commonly_known== 46686 (pos)
                    (Bc_checked_p4)

                    ; #42401: <==commonly_known== 81892 (neg)
                    (Pc_checked_p4)

                    ; #45439: <==commonly_known== 81892 (neg)
                    (Pa_checked_p4)

                    ; #46686: origin
                    (checked_p4)

                    ; #63165: <==commonly_known== 81892 (neg)
                    (Pb_checked_p4)

                    ; #68628: <==closure== 79081 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #70158: <==commonly_known== 81892 (neg)
                    (Pd_checked_p4)

                    ; #72736: <==closure== 78897 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #78897: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #79081: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #17373: <==negation-removal== 32827 (pos)
                    (not (Pa_not_checked_p4))

                    ; #30318: <==negation-removal== 45439 (pos)
                    (not (Ba_not_checked_p4))

                    ; #31090: <==negation-removal== 78897 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #41674: <==negation-removal== 68628 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #44507: <==negation-removal== 63165 (pos)
                    (not (Bb_not_checked_p4))

                    ; #49184: <==negation-removal== 72736 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #52109: <==uncertain_firing== 72736 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #54710: <==uncertain_firing== 79081 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #59451: <==uncertain_firing== 68628 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #60132: <==negation-removal== 79081 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #73849: <==negation-removal== 42199 (pos)
                    (not (Pc_not_checked_p4))

                    ; #80804: <==uncertain_firing== 78897 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #81892: <==negation-removal== 46686 (pos)
                    (not (not_checked_p4))

                    ; #84622: <==negation-removal== 19933 (pos)
                    (not (Pd_not_checked_p4))

                    ; #87453: <==negation-removal== 24333 (pos)
                    (not (Pb_not_checked_p4))

                    ; #89951: <==negation-removal== 42401 (pos)
                    (not (Bc_not_checked_p4))

                    ; #90371: <==negation-removal== 70158 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13350: <==commonly_known== 62628 (neg)
                    (Pc_checked_p5)

                    ; #13388: <==commonly_known== 62628 (neg)
                    (Pb_checked_p5)

                    ; #25165: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #30638: <==commonly_known== 43193 (pos)
                    (Bc_checked_p5)

                    ; #31550: <==commonly_known== 62628 (neg)
                    (Pd_checked_p5)

                    ; #33255: <==closure== 55876 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #43193: origin
                    (checked_p5)

                    ; #45562: <==closure== 25165 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #55876: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #60116: <==commonly_known== 43193 (pos)
                    (Bb_checked_p5)

                    ; #80375: <==commonly_known== 43193 (pos)
                    (Ba_checked_p5)

                    ; #89780: <==commonly_known== 62628 (neg)
                    (Pa_checked_p5)

                    ; #99695: <==commonly_known== 43193 (pos)
                    (Bd_checked_p5)

                    ; #10599: <==negation-removal== 13388 (pos)
                    (not (Bb_not_checked_p5))

                    ; #14394: <==negation-removal== 45562 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #18050: <==negation-removal== 55876 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #19593: <==negation-removal== 25165 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #20624: <==uncertain_firing== 33255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #31823: <==negation-removal== 31550 (pos)
                    (not (Bd_not_checked_p5))

                    ; #31931: <==uncertain_firing== 25165 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #33725: <==negation-removal== 30638 (pos)
                    (not (Pc_not_checked_p5))

                    ; #37678: <==uncertain_firing== 55876 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #49925: <==negation-removal== 89780 (pos)
                    (not (Ba_not_checked_p5))

                    ; #53141: <==negation-removal== 80375 (pos)
                    (not (Pa_not_checked_p5))

                    ; #58274: <==negation-removal== 33255 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #61160: <==negation-removal== 60116 (pos)
                    (not (Pb_not_checked_p5))

                    ; #62628: <==negation-removal== 43193 (pos)
                    (not (not_checked_p5))

                    ; #64307: <==uncertain_firing== 45562 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #88867: <==negation-removal== 99695 (pos)
                    (not (Pd_not_checked_p5))

                    ; #89714: <==negation-removal== 13350 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10370: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #13289: origin
                    (checked_p6)

                    ; #17434: <==commonly_known== 82298 (neg)
                    (Pd_checked_p6)

                    ; #35723: <==closure== 84662 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #37098: <==commonly_known== 13289 (pos)
                    (Bc_checked_p6)

                    ; #47434: <==commonly_known== 82298 (neg)
                    (Pb_checked_p6)

                    ; #53167: <==commonly_known== 13289 (pos)
                    (Bb_checked_p6)

                    ; #55924: <==commonly_known== 13289 (pos)
                    (Ba_checked_p6)

                    ; #64365: <==commonly_known== 82298 (neg)
                    (Pa_checked_p6)

                    ; #74527: <==commonly_known== 13289 (pos)
                    (Bd_checked_p6)

                    ; #82768: <==commonly_known== 82298 (neg)
                    (Pc_checked_p6)

                    ; #84662: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #92078: <==closure== 10370 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #15287: <==negation-removal== 55924 (pos)
                    (not (Pa_not_checked_p6))

                    ; #24512: <==negation-removal== 64365 (pos)
                    (not (Ba_not_checked_p6))

                    ; #27027: <==negation-removal== 82768 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39205: <==negation-removal== 37098 (pos)
                    (not (Pc_not_checked_p6))

                    ; #49824: <==negation-removal== 35723 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #50117: <==negation-removal== 17434 (pos)
                    (not (Bd_not_checked_p6))

                    ; #52190: <==negation-removal== 53167 (pos)
                    (not (Pb_not_checked_p6))

                    ; #55275: <==uncertain_firing== 10370 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #59277: <==negation-removal== 47434 (pos)
                    (not (Bb_not_checked_p6))

                    ; #70248: <==uncertain_firing== 35723 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #75795: <==uncertain_firing== 84662 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #79021: <==uncertain_firing== 92078 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #80382: <==negation-removal== 92078 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #82298: <==negation-removal== 13289 (pos)
                    (not (not_checked_p6))

                    ; #83756: <==negation-removal== 10370 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #88600: <==negation-removal== 74527 (pos)
                    (not (Pd_not_checked_p6))

                    ; #95141: <==negation-removal== 84662 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12070: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #19052: <==commonly_known== 39360 (pos)
                    (Bc_checked_p7)

                    ; #21650: <==commonly_known== 49949 (neg)
                    (Pb_checked_p7)

                    ; #23874: <==closure== 12070 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #39360: origin
                    (checked_p7)

                    ; #44639: <==closure== 88805 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #56508: <==commonly_known== 49949 (neg)
                    (Pc_checked_p7)

                    ; #59972: <==commonly_known== 39360 (pos)
                    (Ba_checked_p7)

                    ; #70812: <==commonly_known== 49949 (neg)
                    (Pd_checked_p7)

                    ; #71481: <==commonly_known== 39360 (pos)
                    (Bb_checked_p7)

                    ; #85086: <==commonly_known== 39360 (pos)
                    (Bd_checked_p7)

                    ; #87076: <==commonly_known== 49949 (neg)
                    (Pa_checked_p7)

                    ; #88805: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #10068: <==negation-removal== 70812 (pos)
                    (not (Bd_not_checked_p7))

                    ; #12660: <==negation-removal== 59972 (pos)
                    (not (Pa_not_checked_p7))

                    ; #12860: <==negation-removal== 12070 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #17199: <==negation-removal== 71481 (pos)
                    (not (Pb_not_checked_p7))

                    ; #25994: <==negation-removal== 85086 (pos)
                    (not (Pd_not_checked_p7))

                    ; #28959: <==negation-removal== 88805 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #31319: <==negation-removal== 44639 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #44306: <==uncertain_firing== 12070 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #45406: <==uncertain_firing== 88805 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #46204: <==uncertain_firing== 23874 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #46760: <==uncertain_firing== 44639 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #49949: <==negation-removal== 39360 (pos)
                    (not (not_checked_p7))

                    ; #55393: <==negation-removal== 19052 (pos)
                    (not (Pc_not_checked_p7))

                    ; #56546: <==negation-removal== 87076 (pos)
                    (not (Ba_not_checked_p7))

                    ; #68743: <==negation-removal== 56508 (pos)
                    (not (Bc_not_checked_p7))

                    ; #77180: <==negation-removal== 21650 (pos)
                    (not (Bb_not_checked_p7))

                    ; #90849: <==negation-removal== 23874 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16875: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #19220: <==commonly_known== 56229 (pos)
                    (Bc_checked_p8)

                    ; #22416: <==closure== 16875 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #29664: <==closure== 66298 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #33271: <==commonly_known== 60115 (neg)
                    (Pd_checked_p8)

                    ; #34910: <==commonly_known== 60115 (neg)
                    (Pa_checked_p8)

                    ; #37953: <==commonly_known== 56229 (pos)
                    (Ba_checked_p8)

                    ; #49132: <==commonly_known== 60115 (neg)
                    (Pc_checked_p8)

                    ; #56229: origin
                    (checked_p8)

                    ; #59327: <==commonly_known== 60115 (neg)
                    (Pb_checked_p8)

                    ; #59997: <==commonly_known== 56229 (pos)
                    (Bb_checked_p8)

                    ; #66298: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #90735: <==commonly_known== 56229 (pos)
                    (Bd_checked_p8)

                    ; #12314: <==negation-removal== 59997 (pos)
                    (not (Pb_not_checked_p8))

                    ; #17129: <==uncertain_firing== 16875 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #29791: <==negation-removal== 34910 (pos)
                    (not (Ba_not_checked_p8))

                    ; #30380: <==uncertain_firing== 66298 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #35385: <==negation-removal== 59327 (pos)
                    (not (Bb_not_checked_p8))

                    ; #38767: <==negation-removal== 29664 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #45133: <==negation-removal== 49132 (pos)
                    (not (Bc_not_checked_p8))

                    ; #47435: <==uncertain_firing== 22416 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #50785: <==negation-removal== 22416 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #50912: <==negation-removal== 16875 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #54182: <==negation-removal== 19220 (pos)
                    (not (Pc_not_checked_p8))

                    ; #55107: <==uncertain_firing== 29664 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56786: <==negation-removal== 90735 (pos)
                    (not (Pd_not_checked_p8))

                    ; #60115: <==negation-removal== 56229 (pos)
                    (not (not_checked_p8))

                    ; #68938: <==negation-removal== 37953 (pos)
                    (not (Pa_not_checked_p8))

                    ; #80620: <==negation-removal== 33271 (pos)
                    (not (Bd_not_checked_p8))

                    ; #84683: <==negation-removal== 66298 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #22750: origin
                    (checked_p9)

                    ; #26240: <==commonly_known== 76535 (neg)
                    (Pb_checked_p9)

                    ; #32447: <==closure== 53164 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #40468: <==commonly_known== 22750 (pos)
                    (Bb_checked_p9)

                    ; #47795: <==commonly_known== 22750 (pos)
                    (Ba_checked_p9)

                    ; #53164: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #64831: <==commonly_known== 76535 (neg)
                    (Pd_checked_p9)

                    ; #65254: <==commonly_known== 22750 (pos)
                    (Bc_checked_p9)

                    ; #73243: <==commonly_known== 22750 (pos)
                    (Bd_checked_p9)

                    ; #75546: <==closure== 76486 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #76486: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #76601: <==commonly_known== 76535 (neg)
                    (Pa_checked_p9)

                    ; #82092: <==commonly_known== 76535 (neg)
                    (Pc_checked_p9)

                    ; #20141: <==negation-removal== 75546 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #21589: <==uncertain_firing== 75546 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #23414: <==negation-removal== 26240 (pos)
                    (not (Bb_not_checked_p9))

                    ; #24750: <==uncertain_firing== 53164 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #36170: <==negation-removal== 53164 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #38834: <==negation-removal== 65254 (pos)
                    (not (Pc_not_checked_p9))

                    ; #48747: <==negation-removal== 47795 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61375: <==uncertain_firing== 76486 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #61881: <==negation-removal== 40468 (pos)
                    (not (Pb_not_checked_p9))

                    ; #64660: <==negation-removal== 73243 (pos)
                    (not (Pd_not_checked_p9))

                    ; #70425: <==negation-removal== 82092 (pos)
                    (not (Bc_not_checked_p9))

                    ; #76341: <==negation-removal== 76601 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76535: <==negation-removal== 22750 (pos)
                    (not (not_checked_p9))

                    ; #76778: <==negation-removal== 76486 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #77847: <==uncertain_firing== 32447 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #88455: <==negation-removal== 32447 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #89648: <==negation-removal== 64831 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #10114: <==closure== 62379 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #15668: <==commonly_known== 26648 (pos)
                    (Ba_checked_p10)

                    ; #26648: origin
                    (checked_p10)

                    ; #26983: <==commonly_known== 28063 (neg)
                    (Pb_checked_p10)

                    ; #27504: <==commonly_known== 28063 (neg)
                    (Pa_checked_p10)

                    ; #29721: <==closure== 53016 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #32652: <==commonly_known== 26648 (pos)
                    (Bc_checked_p10)

                    ; #53016: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #62379: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #63289: <==commonly_known== 26648 (pos)
                    (Bd_checked_p10)

                    ; #66223: <==commonly_known== 26648 (pos)
                    (Bb_checked_p10)

                    ; #84146: <==commonly_known== 28063 (neg)
                    (Pd_checked_p10)

                    ; #91327: <==commonly_known== 28063 (neg)
                    (Pc_checked_p10)

                    ; #11084: <==negation-removal== 66223 (pos)
                    (not (Pb_not_checked_p10))

                    ; #24179: <==negation-removal== 10114 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #28063: <==negation-removal== 26648 (pos)
                    (not (not_checked_p10))

                    ; #28345: <==negation-removal== 29721 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #42223: <==negation-removal== 26983 (pos)
                    (not (Bb_not_checked_p10))

                    ; #51772: <==uncertain_firing== 53016 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #53619: <==uncertain_firing== 29721 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #63539: <==negation-removal== 32652 (pos)
                    (not (Pc_not_checked_p10))

                    ; #65704: <==negation-removal== 62379 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #66154: <==negation-removal== 63289 (pos)
                    (not (Pd_not_checked_p10))

                    ; #70247: <==negation-removal== 91327 (pos)
                    (not (Bc_not_checked_p10))

                    ; #73352: <==negation-removal== 27504 (pos)
                    (not (Ba_not_checked_p10))

                    ; #73937: <==negation-removal== 84146 (pos)
                    (not (Bd_not_checked_p10))

                    ; #74538: <==uncertain_firing== 62379 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #76263: <==negation-removal== 15668 (pos)
                    (not (Pa_not_checked_p10))

                    ; #79257: <==uncertain_firing== 10114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #80404: <==negation-removal== 53016 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #13221: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #13588: origin
                    (checked_p11)

                    ; #16163: <==closure== 13221 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #27124: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #42113: <==commonly_known== 13588 (pos)
                    (Ba_checked_p11)

                    ; #45174: <==commonly_known== 54476 (neg)
                    (Pb_checked_p11)

                    ; #49327: <==commonly_known== 13588 (pos)
                    (Bb_checked_p11)

                    ; #55552: <==commonly_known== 13588 (pos)
                    (Bc_checked_p11)

                    ; #61557: <==closure== 27124 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #69734: <==commonly_known== 54476 (neg)
                    (Pd_checked_p11)

                    ; #79836: <==commonly_known== 13588 (pos)
                    (Bd_checked_p11)

                    ; #81846: <==commonly_known== 54476 (neg)
                    (Pc_checked_p11)

                    ; #82237: <==commonly_known== 54476 (neg)
                    (Pa_checked_p11)

                    ; #16079: <==negation-removal== 82237 (pos)
                    (not (Ba_not_checked_p11))

                    ; #26357: <==negation-removal== 81846 (pos)
                    (not (Bc_not_checked_p11))

                    ; #37588: <==negation-removal== 16163 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #38083: <==uncertain_firing== 27124 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #43160: <==uncertain_firing== 13221 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #45917: <==negation-removal== 55552 (pos)
                    (not (Pc_not_checked_p11))

                    ; #50768: <==negation-removal== 27124 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #54476: <==negation-removal== 13588 (pos)
                    (not (not_checked_p11))

                    ; #54829: <==negation-removal== 49327 (pos)
                    (not (Pb_not_checked_p11))

                    ; #69707: <==uncertain_firing== 61557 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #70366: <==negation-removal== 61557 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #73716: <==negation-removal== 13221 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #78982: <==negation-removal== 69734 (pos)
                    (not (Bd_not_checked_p11))

                    ; #84220: <==uncertain_firing== 16163 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #85630: <==negation-removal== 79836 (pos)
                    (not (Pd_not_checked_p11))

                    ; #87272: <==negation-removal== 45174 (pos)
                    (not (Bb_not_checked_p11))

                    ; #88930: <==negation-removal== 42113 (pos)
                    (not (Pa_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #16088: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #21832: origin
                    (checked_p12)

                    ; #30841: <==commonly_known== 21832 (pos)
                    (Bc_checked_p12)

                    ; #38356: <==closure== 16088 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #38685: <==closure== 88688 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #53259: <==commonly_known== 36654 (neg)
                    (Pd_checked_p12)

                    ; #54588: <==commonly_known== 21832 (pos)
                    (Bb_checked_p12)

                    ; #60206: <==commonly_known== 36654 (neg)
                    (Pb_checked_p12)

                    ; #61813: <==commonly_known== 21832 (pos)
                    (Bd_checked_p12)

                    ; #66856: <==commonly_known== 36654 (neg)
                    (Pc_checked_p12)

                    ; #68355: <==commonly_known== 36654 (neg)
                    (Pa_checked_p12)

                    ; #75682: <==commonly_known== 21832 (pos)
                    (Ba_checked_p12)

                    ; #88688: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #17706: <==uncertain_firing== 16088 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #18254: <==negation-removal== 61813 (pos)
                    (not (Pd_not_checked_p12))

                    ; #21395: <==uncertain_firing== 38356 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #22008: <==negation-removal== 68355 (pos)
                    (not (Ba_not_checked_p12))

                    ; #31638: <==negation-removal== 38356 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #31848: <==uncertain_firing== 38685 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #33030: <==negation-removal== 75682 (pos)
                    (not (Pa_not_checked_p12))

                    ; #36654: <==negation-removal== 21832 (pos)
                    (not (not_checked_p12))

                    ; #40033: <==negation-removal== 16088 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #47913: <==negation-removal== 60206 (pos)
                    (not (Bb_not_checked_p12))

                    ; #48385: <==uncertain_firing== 88688 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #55801: <==negation-removal== 38685 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #64261: <==negation-removal== 53259 (pos)
                    (not (Bd_not_checked_p12))

                    ; #69448: <==negation-removal== 54588 (pos)
                    (not (Pb_not_checked_p12))

                    ; #72393: <==negation-removal== 66856 (pos)
                    (not (Bc_not_checked_p12))

                    ; #76368: <==negation-removal== 30841 (pos)
                    (not (Pc_not_checked_p12))

                    ; #98761: <==negation-removal== 88688 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11418: <==commonly_known== 62553 (pos)
                    (Bd_checked_p1)

                    ; #23257: <==commonly_known== 62553 (pos)
                    (Ba_checked_p1)

                    ; #36971: <==commonly_known== 58014 (neg)
                    (Pc_checked_p1)

                    ; #39281: <==commonly_known== 58014 (neg)
                    (Pd_checked_p1)

                    ; #45163: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #51074: <==commonly_known== 62553 (pos)
                    (Bb_checked_p1)

                    ; #62553: origin
                    (checked_p1)

                    ; #76705: <==commonly_known== 58014 (neg)
                    (Pb_checked_p1)

                    ; #81072: <==commonly_known== 62553 (pos)
                    (Bc_checked_p1)

                    ; #84099: <==closure== 45163 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #87629: <==commonly_known== 58014 (neg)
                    (Pa_checked_p1)

                    ; #88225: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #91108: <==closure== 88225 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #21834: <==negation-removal== 45163 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #23612: <==negation-removal== 36971 (pos)
                    (not (Bc_not_checked_p1))

                    ; #26267: <==uncertain_firing== 84099 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29776: <==negation-removal== 84099 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #36940: <==uncertain_firing== 88225 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #40372: <==negation-removal== 76705 (pos)
                    (not (Bb_not_checked_p1))

                    ; #44740: <==uncertain_firing== 91108 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #47210: <==negation-removal== 11418 (pos)
                    (not (Pd_not_checked_p1))

                    ; #58014: <==negation-removal== 62553 (pos)
                    (not (not_checked_p1))

                    ; #65577: <==negation-removal== 87629 (pos)
                    (not (Ba_not_checked_p1))

                    ; #66707: <==negation-removal== 39281 (pos)
                    (not (Bd_not_checked_p1))

                    ; #78696: <==negation-removal== 91108 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #78810: <==negation-removal== 51074 (pos)
                    (not (Pb_not_checked_p1))

                    ; #80540: <==uncertain_firing== 45163 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #80917: <==negation-removal== 23257 (pos)
                    (not (Pa_not_checked_p1))

                    ; #86863: <==negation-removal== 88225 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #89375: <==negation-removal== 81072 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13461: <==closure== 87765 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #24816: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #26511: <==commonly_known== 88051 (pos)
                    (Bd_checked_p2)

                    ; #32114: <==commonly_known== 74263 (neg)
                    (Pb_checked_p2)

                    ; #41891: <==closure== 24816 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #68228: <==commonly_known== 88051 (pos)
                    (Ba_checked_p2)

                    ; #76202: <==commonly_known== 74263 (neg)
                    (Pc_checked_p2)

                    ; #77446: <==commonly_known== 74263 (neg)
                    (Pa_checked_p2)

                    ; #79971: <==commonly_known== 88051 (pos)
                    (Bc_checked_p2)

                    ; #82514: <==commonly_known== 88051 (pos)
                    (Bb_checked_p2)

                    ; #83932: <==commonly_known== 74263 (neg)
                    (Pd_checked_p2)

                    ; #87765: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #88051: origin
                    (checked_p2)

                    ; #13639: <==uncertain_firing== 41891 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #14102: <==negation-removal== 26511 (pos)
                    (not (Pd_not_checked_p2))

                    ; #16596: <==negation-removal== 41891 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #23270: <==negation-removal== 79971 (pos)
                    (not (Pc_not_checked_p2))

                    ; #30303: <==uncertain_firing== 24816 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #36243: <==negation-removal== 13461 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #41608: <==negation-removal== 24816 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #43172: <==negation-removal== 68228 (pos)
                    (not (Pa_not_checked_p2))

                    ; #43339: <==negation-removal== 87765 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #58283: <==uncertain_firing== 87765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #74263: <==negation-removal== 88051 (pos)
                    (not (not_checked_p2))

                    ; #79750: <==negation-removal== 32114 (pos)
                    (not (Bb_not_checked_p2))

                    ; #82445: <==negation-removal== 83932 (pos)
                    (not (Bd_not_checked_p2))

                    ; #83102: <==uncertain_firing== 13461 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #86833: <==negation-removal== 77446 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87473: <==negation-removal== 82514 (pos)
                    (not (Pb_not_checked_p2))

                    ; #88176: <==negation-removal== 76202 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12260: origin
                    (checked_p3)

                    ; #15049: <==commonly_known== 46061 (neg)
                    (Pd_checked_p3)

                    ; #24644: <==closure== 91415 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #30855: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #33099: <==commonly_known== 12260 (pos)
                    (Bc_checked_p3)

                    ; #47858: <==commonly_known== 12260 (pos)
                    (Bd_checked_p3)

                    ; #63086: <==commonly_known== 12260 (pos)
                    (Bb_checked_p3)

                    ; #66310: <==commonly_known== 46061 (neg)
                    (Pb_checked_p3)

                    ; #71356: <==commonly_known== 12260 (pos)
                    (Ba_checked_p3)

                    ; #71360: <==commonly_known== 46061 (neg)
                    (Pc_checked_p3)

                    ; #72584: <==commonly_known== 46061 (neg)
                    (Pa_checked_p3)

                    ; #86650: <==closure== 30855 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #91415: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #12023: <==uncertain_firing== 30855 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #13628: <==negation-removal== 71356 (pos)
                    (not (Pa_not_checked_p3))

                    ; #23417: <==negation-removal== 33099 (pos)
                    (not (Pc_not_checked_p3))

                    ; #32024: <==negation-removal== 47858 (pos)
                    (not (Pd_not_checked_p3))

                    ; #37693: <==uncertain_firing== 91415 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39046: <==negation-removal== 91415 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #46061: <==negation-removal== 12260 (pos)
                    (not (not_checked_p3))

                    ; #49518: <==negation-removal== 63086 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50113: <==negation-removal== 24644 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #53090: <==negation-removal== 15049 (pos)
                    (not (Bd_not_checked_p3))

                    ; #59412: <==uncertain_firing== 86650 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #65072: <==negation-removal== 30855 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #67692: <==uncertain_firing== 24644 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #68994: <==negation-removal== 71360 (pos)
                    (not (Bc_not_checked_p3))

                    ; #73179: <==negation-removal== 72584 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79735: <==negation-removal== 66310 (pos)
                    (not (Bb_not_checked_p3))

                    ; #88445: <==negation-removal== 86650 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19933: <==commonly_known== 46686 (pos)
                    (Bd_checked_p4)

                    ; #24333: <==commonly_known== 46686 (pos)
                    (Bb_checked_p4)

                    ; #32827: <==commonly_known== 46686 (pos)
                    (Ba_checked_p4)

                    ; #35723: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #36542: <==closure== 35723 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #42199: <==commonly_known== 46686 (pos)
                    (Bc_checked_p4)

                    ; #42401: <==commonly_known== 81892 (neg)
                    (Pc_checked_p4)

                    ; #45439: <==commonly_known== 81892 (neg)
                    (Pa_checked_p4)

                    ; #46686: origin
                    (checked_p4)

                    ; #63165: <==commonly_known== 81892 (neg)
                    (Pb_checked_p4)

                    ; #68621: <==closure== 95216 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #70158: <==commonly_known== 81892 (neg)
                    (Pd_checked_p4)

                    ; #95216: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #14045: <==uncertain_firing== 35723 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #17373: <==negation-removal== 32827 (pos)
                    (not (Pa_not_checked_p4))

                    ; #23064: <==uncertain_firing== 68621 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #26740: <==negation-removal== 35723 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #30318: <==negation-removal== 45439 (pos)
                    (not (Ba_not_checked_p4))

                    ; #44507: <==negation-removal== 63165 (pos)
                    (not (Bb_not_checked_p4))

                    ; #44585: <==negation-removal== 95216 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #53158: <==uncertain_firing== 36542 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #62670: <==negation-removal== 68621 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #66542: <==uncertain_firing== 95216 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #73849: <==negation-removal== 42199 (pos)
                    (not (Pc_not_checked_p4))

                    ; #77876: <==negation-removal== 36542 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #81892: <==negation-removal== 46686 (pos)
                    (not (not_checked_p4))

                    ; #84622: <==negation-removal== 19933 (pos)
                    (not (Pd_not_checked_p4))

                    ; #87453: <==negation-removal== 24333 (pos)
                    (not (Pb_not_checked_p4))

                    ; #89951: <==negation-removal== 42401 (pos)
                    (not (Bc_not_checked_p4))

                    ; #90371: <==negation-removal== 70158 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13350: <==commonly_known== 62628 (neg)
                    (Pc_checked_p5)

                    ; #13388: <==commonly_known== 62628 (neg)
                    (Pb_checked_p5)

                    ; #24781: <==closure== 35884 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #30638: <==commonly_known== 43193 (pos)
                    (Bc_checked_p5)

                    ; #31550: <==commonly_known== 62628 (neg)
                    (Pd_checked_p5)

                    ; #35884: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #43193: origin
                    (checked_p5)

                    ; #47366: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #60116: <==commonly_known== 43193 (pos)
                    (Bb_checked_p5)

                    ; #78763: <==closure== 47366 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #80375: <==commonly_known== 43193 (pos)
                    (Ba_checked_p5)

                    ; #89780: <==commonly_known== 62628 (neg)
                    (Pa_checked_p5)

                    ; #99695: <==commonly_known== 43193 (pos)
                    (Bd_checked_p5)

                    ; #10599: <==negation-removal== 13388 (pos)
                    (not (Bb_not_checked_p5))

                    ; #12641: <==negation-removal== 35884 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #20123: <==uncertain_firing== 47366 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #22217: <==negation-removal== 47366 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #31823: <==negation-removal== 31550 (pos)
                    (not (Bd_not_checked_p5))

                    ; #33725: <==negation-removal== 30638 (pos)
                    (not (Pc_not_checked_p5))

                    ; #34238: <==uncertain_firing== 35884 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #36362: <==negation-removal== 78763 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #47858: <==uncertain_firing== 24781 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #49925: <==negation-removal== 89780 (pos)
                    (not (Ba_not_checked_p5))

                    ; #53141: <==negation-removal== 80375 (pos)
                    (not (Pa_not_checked_p5))

                    ; #58593: <==uncertain_firing== 78763 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #61160: <==negation-removal== 60116 (pos)
                    (not (Pb_not_checked_p5))

                    ; #62628: <==negation-removal== 43193 (pos)
                    (not (not_checked_p5))

                    ; #75498: <==negation-removal== 24781 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #88867: <==negation-removal== 99695 (pos)
                    (not (Pd_not_checked_p5))

                    ; #89714: <==negation-removal== 13350 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13289: origin
                    (checked_p6)

                    ; #17434: <==commonly_known== 82298 (neg)
                    (Pd_checked_p6)

                    ; #20741: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #37098: <==commonly_known== 13289 (pos)
                    (Bc_checked_p6)

                    ; #39621: <==closure== 20741 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #47434: <==commonly_known== 82298 (neg)
                    (Pb_checked_p6)

                    ; #53167: <==commonly_known== 13289 (pos)
                    (Bb_checked_p6)

                    ; #54839: <==closure== 64947 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #55924: <==commonly_known== 13289 (pos)
                    (Ba_checked_p6)

                    ; #64365: <==commonly_known== 82298 (neg)
                    (Pa_checked_p6)

                    ; #64947: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #74527: <==commonly_known== 13289 (pos)
                    (Bd_checked_p6)

                    ; #82768: <==commonly_known== 82298 (neg)
                    (Pc_checked_p6)

                    ; #12519: <==uncertain_firing== 64947 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #15287: <==negation-removal== 55924 (pos)
                    (not (Pa_not_checked_p6))

                    ; #24512: <==negation-removal== 64365 (pos)
                    (not (Ba_not_checked_p6))

                    ; #27027: <==negation-removal== 82768 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39205: <==negation-removal== 37098 (pos)
                    (not (Pc_not_checked_p6))

                    ; #46777: <==negation-removal== 54839 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #47917: <==negation-removal== 39621 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #50117: <==negation-removal== 17434 (pos)
                    (not (Bd_not_checked_p6))

                    ; #52190: <==negation-removal== 53167 (pos)
                    (not (Pb_not_checked_p6))

                    ; #54066: <==uncertain_firing== 39621 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #59277: <==negation-removal== 47434 (pos)
                    (not (Bb_not_checked_p6))

                    ; #78327: <==uncertain_firing== 20741 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #78500: <==negation-removal== 64947 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #80359: <==uncertain_firing== 54839 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #82298: <==negation-removal== 13289 (pos)
                    (not (not_checked_p6))

                    ; #82547: <==negation-removal== 20741 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #88600: <==negation-removal== 74527 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12302: <==closure== 63361 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #19052: <==commonly_known== 39360 (pos)
                    (Bc_checked_p7)

                    ; #21650: <==commonly_known== 49949 (neg)
                    (Pb_checked_p7)

                    ; #39360: origin
                    (checked_p7)

                    ; #56508: <==commonly_known== 49949 (neg)
                    (Pc_checked_p7)

                    ; #59972: <==commonly_known== 39360 (pos)
                    (Ba_checked_p7)

                    ; #63361: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #70812: <==commonly_known== 49949 (neg)
                    (Pd_checked_p7)

                    ; #71308: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #71481: <==commonly_known== 39360 (pos)
                    (Bb_checked_p7)

                    ; #84103: <==closure== 71308 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #85086: <==commonly_known== 39360 (pos)
                    (Bd_checked_p7)

                    ; #87076: <==commonly_known== 49949 (neg)
                    (Pa_checked_p7)

                    ; #10068: <==negation-removal== 70812 (pos)
                    (not (Bd_not_checked_p7))

                    ; #12660: <==negation-removal== 59972 (pos)
                    (not (Pa_not_checked_p7))

                    ; #17199: <==negation-removal== 71481 (pos)
                    (not (Pb_not_checked_p7))

                    ; #22262: <==uncertain_firing== 63361 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #25994: <==negation-removal== 85086 (pos)
                    (not (Pd_not_checked_p7))

                    ; #41969: <==negation-removal== 63361 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #42780: <==uncertain_firing== 84103 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #43288: <==uncertain_firing== 12302 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #47187: <==negation-removal== 12302 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #49949: <==negation-removal== 39360 (pos)
                    (not (not_checked_p7))

                    ; #55393: <==negation-removal== 19052 (pos)
                    (not (Pc_not_checked_p7))

                    ; #56546: <==negation-removal== 87076 (pos)
                    (not (Ba_not_checked_p7))

                    ; #66520: <==uncertain_firing== 71308 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #68743: <==negation-removal== 56508 (pos)
                    (not (Bc_not_checked_p7))

                    ; #70655: <==negation-removal== 84103 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #77180: <==negation-removal== 21650 (pos)
                    (not (Bb_not_checked_p7))

                    ; #84907: <==negation-removal== 71308 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19220: <==commonly_known== 56229 (pos)
                    (Bc_checked_p8)

                    ; #33271: <==commonly_known== 60115 (neg)
                    (Pd_checked_p8)

                    ; #34910: <==commonly_known== 60115 (neg)
                    (Pa_checked_p8)

                    ; #37953: <==commonly_known== 56229 (pos)
                    (Ba_checked_p8)

                    ; #44347: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #46667: <==closure== 49458 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #49132: <==commonly_known== 60115 (neg)
                    (Pc_checked_p8)

                    ; #49458: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #52866: <==closure== 44347 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #56229: origin
                    (checked_p8)

                    ; #59327: <==commonly_known== 60115 (neg)
                    (Pb_checked_p8)

                    ; #59997: <==commonly_known== 56229 (pos)
                    (Bb_checked_p8)

                    ; #90735: <==commonly_known== 56229 (pos)
                    (Bd_checked_p8)

                    ; #12314: <==negation-removal== 59997 (pos)
                    (not (Pb_not_checked_p8))

                    ; #15475: <==uncertain_firing== 49458 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #21861: <==uncertain_firing== 52866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #29791: <==negation-removal== 34910 (pos)
                    (not (Ba_not_checked_p8))

                    ; #35385: <==negation-removal== 59327 (pos)
                    (not (Bb_not_checked_p8))

                    ; #40312: <==uncertain_firing== 46667 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #45133: <==negation-removal== 49132 (pos)
                    (not (Bc_not_checked_p8))

                    ; #47327: <==uncertain_firing== 44347 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #51111: <==negation-removal== 44347 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #52053: <==negation-removal== 46667 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #54182: <==negation-removal== 19220 (pos)
                    (not (Pc_not_checked_p8))

                    ; #56786: <==negation-removal== 90735 (pos)
                    (not (Pd_not_checked_p8))

                    ; #60115: <==negation-removal== 56229 (pos)
                    (not (not_checked_p8))

                    ; #68938: <==negation-removal== 37953 (pos)
                    (not (Pa_not_checked_p8))

                    ; #75131: <==negation-removal== 52866 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #80620: <==negation-removal== 33271 (pos)
                    (not (Bd_not_checked_p8))

                    ; #86473: <==negation-removal== 49458 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #22750: origin
                    (checked_p9)

                    ; #26240: <==commonly_known== 76535 (neg)
                    (Pb_checked_p9)

                    ; #36547: <==closure== 60682 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #40468: <==commonly_known== 22750 (pos)
                    (Bb_checked_p9)

                    ; #47795: <==commonly_known== 22750 (pos)
                    (Ba_checked_p9)

                    ; #60305: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #60682: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #64831: <==commonly_known== 76535 (neg)
                    (Pd_checked_p9)

                    ; #65254: <==commonly_known== 22750 (pos)
                    (Bc_checked_p9)

                    ; #73243: <==commonly_known== 22750 (pos)
                    (Bd_checked_p9)

                    ; #76601: <==commonly_known== 76535 (neg)
                    (Pa_checked_p9)

                    ; #82092: <==commonly_known== 76535 (neg)
                    (Pc_checked_p9)

                    ; #89849: <==closure== 60305 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #23414: <==negation-removal== 26240 (pos)
                    (not (Bb_not_checked_p9))

                    ; #33540: <==uncertain_firing== 36547 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #38834: <==negation-removal== 65254 (pos)
                    (not (Pc_not_checked_p9))

                    ; #47234: <==negation-removal== 36547 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #48747: <==negation-removal== 47795 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61780: <==negation-removal== 60682 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #61881: <==negation-removal== 40468 (pos)
                    (not (Pb_not_checked_p9))

                    ; #64660: <==negation-removal== 73243 (pos)
                    (not (Pd_not_checked_p9))

                    ; #70425: <==negation-removal== 82092 (pos)
                    (not (Bc_not_checked_p9))

                    ; #72862: <==uncertain_firing== 60682 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #76096: <==negation-removal== 60305 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #76341: <==negation-removal== 76601 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76535: <==negation-removal== 22750 (pos)
                    (not (not_checked_p9))

                    ; #78573: <==uncertain_firing== 89849 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #80617: <==negation-removal== 89849 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #84882: <==uncertain_firing== 60305 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #89648: <==negation-removal== 64831 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15668: <==commonly_known== 26648 (pos)
                    (Ba_checked_p10)

                    ; #17459: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #19566: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #26648: origin
                    (checked_p10)

                    ; #26983: <==commonly_known== 28063 (neg)
                    (Pb_checked_p10)

                    ; #27504: <==commonly_known== 28063 (neg)
                    (Pa_checked_p10)

                    ; #32652: <==commonly_known== 26648 (pos)
                    (Bc_checked_p10)

                    ; #61811: <==closure== 17459 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #63289: <==commonly_known== 26648 (pos)
                    (Bd_checked_p10)

                    ; #66223: <==commonly_known== 26648 (pos)
                    (Bb_checked_p10)

                    ; #84146: <==commonly_known== 28063 (neg)
                    (Pd_checked_p10)

                    ; #90951: <==closure== 19566 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #91327: <==commonly_known== 28063 (neg)
                    (Pc_checked_p10)

                    ; #11084: <==negation-removal== 66223 (pos)
                    (not (Pb_not_checked_p10))

                    ; #13584: <==negation-removal== 61811 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #28063: <==negation-removal== 26648 (pos)
                    (not (not_checked_p10))

                    ; #42223: <==negation-removal== 26983 (pos)
                    (not (Bb_not_checked_p10))

                    ; #45615: <==uncertain_firing== 17459 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #51653: <==negation-removal== 17459 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #51921: <==negation-removal== 90951 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #63539: <==negation-removal== 32652 (pos)
                    (not (Pc_not_checked_p10))

                    ; #66154: <==negation-removal== 63289 (pos)
                    (not (Pd_not_checked_p10))

                    ; #70247: <==negation-removal== 91327 (pos)
                    (not (Bc_not_checked_p10))

                    ; #73352: <==negation-removal== 27504 (pos)
                    (not (Ba_not_checked_p10))

                    ; #73937: <==negation-removal== 84146 (pos)
                    (not (Bd_not_checked_p10))

                    ; #74221: <==uncertain_firing== 19566 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #76263: <==negation-removal== 15668 (pos)
                    (not (Pa_not_checked_p10))

                    ; #83375: <==uncertain_firing== 90951 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #89016: <==uncertain_firing== 61811 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #90927: <==negation-removal== 19566 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #13588: origin
                    (checked_p11)

                    ; #18918: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #42113: <==commonly_known== 13588 (pos)
                    (Ba_checked_p11)

                    ; #45174: <==commonly_known== 54476 (neg)
                    (Pb_checked_p11)

                    ; #49327: <==commonly_known== 13588 (pos)
                    (Bb_checked_p11)

                    ; #53397: <==closure== 68023 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #55552: <==commonly_known== 13588 (pos)
                    (Bc_checked_p11)

                    ; #66224: <==closure== 18918 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #68023: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #69734: <==commonly_known== 54476 (neg)
                    (Pd_checked_p11)

                    ; #79836: <==commonly_known== 13588 (pos)
                    (Bd_checked_p11)

                    ; #81846: <==commonly_known== 54476 (neg)
                    (Pc_checked_p11)

                    ; #82237: <==commonly_known== 54476 (neg)
                    (Pa_checked_p11)

                    ; #13936: <==uncertain_firing== 53397 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #16079: <==negation-removal== 82237 (pos)
                    (not (Ba_not_checked_p11))

                    ; #26357: <==negation-removal== 81846 (pos)
                    (not (Bc_not_checked_p11))

                    ; #39069: <==uncertain_firing== 66224 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #45917: <==negation-removal== 55552 (pos)
                    (not (Pc_not_checked_p11))

                    ; #51528: <==negation-removal== 68023 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #54476: <==negation-removal== 13588 (pos)
                    (not (not_checked_p11))

                    ; #54829: <==negation-removal== 49327 (pos)
                    (not (Pb_not_checked_p11))

                    ; #59291: <==negation-removal== 18918 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #62391: <==uncertain_firing== 18918 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #65280: <==negation-removal== 53397 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #68107: <==uncertain_firing== 68023 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #75267: <==negation-removal== 66224 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #78982: <==negation-removal== 69734 (pos)
                    (not (Bd_not_checked_p11))

                    ; #85630: <==negation-removal== 79836 (pos)
                    (not (Pd_not_checked_p11))

                    ; #87272: <==negation-removal== 45174 (pos)
                    (not (Bb_not_checked_p11))

                    ; #88930: <==negation-removal== 42113 (pos)
                    (not (Pa_not_checked_p11))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #21832: origin
                    (checked_p12)

                    ; #30841: <==commonly_known== 21832 (pos)
                    (Bc_checked_p12)

                    ; #53259: <==commonly_known== 36654 (neg)
                    (Pd_checked_p12)

                    ; #54588: <==commonly_known== 21832 (pos)
                    (Bb_checked_p12)

                    ; #58634: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #60206: <==commonly_known== 36654 (neg)
                    (Pb_checked_p12)

                    ; #61813: <==commonly_known== 21832 (pos)
                    (Bd_checked_p12)

                    ; #62503: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #66856: <==commonly_known== 36654 (neg)
                    (Pc_checked_p12)

                    ; #68355: <==commonly_known== 36654 (neg)
                    (Pa_checked_p12)

                    ; #69576: <==closure== 62503 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #75682: <==commonly_known== 21832 (pos)
                    (Ba_checked_p12)

                    ; #79129: <==closure== 58634 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #10627: <==negation-removal== 79129 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #12852: <==uncertain_firing== 69576 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #14858: <==uncertain_firing== 58634 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #18254: <==negation-removal== 61813 (pos)
                    (not (Pd_not_checked_p12))

                    ; #22008: <==negation-removal== 68355 (pos)
                    (not (Ba_not_checked_p12))

                    ; #28552: <==negation-removal== 58634 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #29942: <==uncertain_firing== 62503 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #33030: <==negation-removal== 75682 (pos)
                    (not (Pa_not_checked_p12))

                    ; #36654: <==negation-removal== 21832 (pos)
                    (not (not_checked_p12))

                    ; #47913: <==negation-removal== 60206 (pos)
                    (not (Bb_not_checked_p12))

                    ; #54556: <==negation-removal== 69576 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #64261: <==negation-removal== 53259 (pos)
                    (not (Bd_not_checked_p12))

                    ; #69448: <==negation-removal== 54588 (pos)
                    (not (Pb_not_checked_p12))

                    ; #72393: <==negation-removal== 66856 (pos)
                    (not (Bc_not_checked_p12))

                    ; #76368: <==negation-removal== 30841 (pos)
                    (not (Pc_not_checked_p12))

                    ; #79349: <==negation-removal== 62503 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #91485: <==uncertain_firing== 79129 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11418: <==commonly_known== 62553 (pos)
                    (Bd_checked_p1)

                    ; #14414: <==closure== 38884 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #16133: <==closure== 77098 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #23257: <==commonly_known== 62553 (pos)
                    (Ba_checked_p1)

                    ; #36971: <==commonly_known== 58014 (neg)
                    (Pc_checked_p1)

                    ; #38884: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #39281: <==commonly_known== 58014 (neg)
                    (Pd_checked_p1)

                    ; #51074: <==commonly_known== 62553 (pos)
                    (Bb_checked_p1)

                    ; #62553: origin
                    (checked_p1)

                    ; #76705: <==commonly_known== 58014 (neg)
                    (Pb_checked_p1)

                    ; #77098: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #81072: <==commonly_known== 62553 (pos)
                    (Bc_checked_p1)

                    ; #87629: <==commonly_known== 58014 (neg)
                    (Pa_checked_p1)

                    ; #12066: <==uncertain_firing== 77098 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #23612: <==negation-removal== 36971 (pos)
                    (not (Bc_not_checked_p1))

                    ; #27095: <==negation-removal== 77098 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #36188: <==negation-removal== 14414 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #37410: <==negation-removal== 16133 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #40372: <==negation-removal== 76705 (pos)
                    (not (Bb_not_checked_p1))

                    ; #45752: <==uncertain_firing== 16133 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #47210: <==negation-removal== 11418 (pos)
                    (not (Pd_not_checked_p1))

                    ; #56024: <==uncertain_firing== 38884 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #58014: <==negation-removal== 62553 (pos)
                    (not (not_checked_p1))

                    ; #65577: <==negation-removal== 87629 (pos)
                    (not (Ba_not_checked_p1))

                    ; #66707: <==negation-removal== 39281 (pos)
                    (not (Bd_not_checked_p1))

                    ; #78810: <==negation-removal== 51074 (pos)
                    (not (Pb_not_checked_p1))

                    ; #80917: <==negation-removal== 23257 (pos)
                    (not (Pa_not_checked_p1))

                    ; #87063: <==uncertain_firing== 14414 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #89375: <==negation-removal== 81072 (pos)
                    (not (Pc_not_checked_p1))

                    ; #91996: <==negation-removal== 38884 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #26511: <==commonly_known== 88051 (pos)
                    (Bd_checked_p2)

                    ; #29035: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #32114: <==commonly_known== 74263 (neg)
                    (Pb_checked_p2)

                    ; #60301: <==closure== 29035 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #68228: <==commonly_known== 88051 (pos)
                    (Ba_checked_p2)

                    ; #76202: <==commonly_known== 74263 (neg)
                    (Pc_checked_p2)

                    ; #77446: <==commonly_known== 74263 (neg)
                    (Pa_checked_p2)

                    ; #79971: <==commonly_known== 88051 (pos)
                    (Bc_checked_p2)

                    ; #82514: <==commonly_known== 88051 (pos)
                    (Bb_checked_p2)

                    ; #83799: <==closure== 84829 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #83932: <==commonly_known== 74263 (neg)
                    (Pd_checked_p2)

                    ; #84829: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #88051: origin
                    (checked_p2)

                    ; #13944: <==negation-removal== 83799 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #14102: <==negation-removal== 26511 (pos)
                    (not (Pd_not_checked_p2))

                    ; #16035: <==uncertain_firing== 29035 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #18587: <==negation-removal== 84829 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #19595: <==negation-removal== 60301 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #23270: <==negation-removal== 79971 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43172: <==negation-removal== 68228 (pos)
                    (not (Pa_not_checked_p2))

                    ; #51056: <==uncertain_firing== 84829 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #73035: <==uncertain_firing== 60301 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #74263: <==negation-removal== 88051 (pos)
                    (not (not_checked_p2))

                    ; #79750: <==negation-removal== 32114 (pos)
                    (not (Bb_not_checked_p2))

                    ; #81698: <==uncertain_firing== 83799 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #82445: <==negation-removal== 83932 (pos)
                    (not (Bd_not_checked_p2))

                    ; #86833: <==negation-removal== 77446 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87473: <==negation-removal== 82514 (pos)
                    (not (Pb_not_checked_p2))

                    ; #88176: <==negation-removal== 76202 (pos)
                    (not (Bc_not_checked_p2))

                    ; #89767: <==negation-removal== 29035 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12260: origin
                    (checked_p3)

                    ; #15049: <==commonly_known== 46061 (neg)
                    (Pd_checked_p3)

                    ; #21803: <==closure== 80590 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #27937: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #33099: <==commonly_known== 12260 (pos)
                    (Bc_checked_p3)

                    ; #47858: <==commonly_known== 12260 (pos)
                    (Bd_checked_p3)

                    ; #59278: <==closure== 27937 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #63086: <==commonly_known== 12260 (pos)
                    (Bb_checked_p3)

                    ; #66310: <==commonly_known== 46061 (neg)
                    (Pb_checked_p3)

                    ; #71356: <==commonly_known== 12260 (pos)
                    (Ba_checked_p3)

                    ; #71360: <==commonly_known== 46061 (neg)
                    (Pc_checked_p3)

                    ; #72584: <==commonly_known== 46061 (neg)
                    (Pa_checked_p3)

                    ; #80590: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #13628: <==negation-removal== 71356 (pos)
                    (not (Pa_not_checked_p3))

                    ; #18586: <==uncertain_firing== 59278 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #22982: <==negation-removal== 21803 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #23417: <==negation-removal== 33099 (pos)
                    (not (Pc_not_checked_p3))

                    ; #32024: <==negation-removal== 47858 (pos)
                    (not (Pd_not_checked_p3))

                    ; #33865: <==uncertain_firing== 21803 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #34491: <==negation-removal== 80590 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #46061: <==negation-removal== 12260 (pos)
                    (not (not_checked_p3))

                    ; #46140: <==negation-removal== 27937 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #49518: <==negation-removal== 63086 (pos)
                    (not (Pb_not_checked_p3))

                    ; #53090: <==negation-removal== 15049 (pos)
                    (not (Bd_not_checked_p3))

                    ; #53521: <==negation-removal== 59278 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #68994: <==negation-removal== 71360 (pos)
                    (not (Bc_not_checked_p3))

                    ; #73179: <==negation-removal== 72584 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79735: <==negation-removal== 66310 (pos)
                    (not (Bb_not_checked_p3))

                    ; #79834: <==uncertain_firing== 80590 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #82908: <==uncertain_firing== 27937 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12845: <==closure== 75485 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #19933: <==commonly_known== 46686 (pos)
                    (Bd_checked_p4)

                    ; #24333: <==commonly_known== 46686 (pos)
                    (Bb_checked_p4)

                    ; #32827: <==commonly_known== 46686 (pos)
                    (Ba_checked_p4)

                    ; #42199: <==commonly_known== 46686 (pos)
                    (Bc_checked_p4)

                    ; #42401: <==commonly_known== 81892 (neg)
                    (Pc_checked_p4)

                    ; #45439: <==commonly_known== 81892 (neg)
                    (Pa_checked_p4)

                    ; #46686: origin
                    (checked_p4)

                    ; #63165: <==commonly_known== 81892 (neg)
                    (Pb_checked_p4)

                    ; #70158: <==commonly_known== 81892 (neg)
                    (Pd_checked_p4)

                    ; #74136: <==closure== 81787 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #75485: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #81787: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #17373: <==negation-removal== 32827 (pos)
                    (not (Pa_not_checked_p4))

                    ; #30318: <==negation-removal== 45439 (pos)
                    (not (Ba_not_checked_p4))

                    ; #33529: <==negation-removal== 75485 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #37394: <==uncertain_firing== 12845 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #42336: <==uncertain_firing== 75485 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #44507: <==negation-removal== 63165 (pos)
                    (not (Bb_not_checked_p4))

                    ; #71749: <==negation-removal== 81787 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #73183: <==negation-removal== 74136 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #73849: <==negation-removal== 42199 (pos)
                    (not (Pc_not_checked_p4))

                    ; #78258: <==negation-removal== 12845 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #81892: <==negation-removal== 46686 (pos)
                    (not (not_checked_p4))

                    ; #84622: <==negation-removal== 19933 (pos)
                    (not (Pd_not_checked_p4))

                    ; #84804: <==uncertain_firing== 81787 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #87453: <==negation-removal== 24333 (pos)
                    (not (Pb_not_checked_p4))

                    ; #89951: <==negation-removal== 42401 (pos)
                    (not (Bc_not_checked_p4))

                    ; #90256: <==uncertain_firing== 74136 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #90371: <==negation-removal== 70158 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13350: <==commonly_known== 62628 (neg)
                    (Pc_checked_p5)

                    ; #13388: <==commonly_known== 62628 (neg)
                    (Pb_checked_p5)

                    ; #28177: <==closure== 54406 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #30638: <==commonly_known== 43193 (pos)
                    (Bc_checked_p5)

                    ; #31550: <==commonly_known== 62628 (neg)
                    (Pd_checked_p5)

                    ; #43193: origin
                    (checked_p5)

                    ; #54406: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #60116: <==commonly_known== 43193 (pos)
                    (Bb_checked_p5)

                    ; #75425: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #80375: <==commonly_known== 43193 (pos)
                    (Ba_checked_p5)

                    ; #86856: <==closure== 75425 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #89780: <==commonly_known== 62628 (neg)
                    (Pa_checked_p5)

                    ; #99695: <==commonly_known== 43193 (pos)
                    (Bd_checked_p5)

                    ; #10599: <==negation-removal== 13388 (pos)
                    (not (Bb_not_checked_p5))

                    ; #21894: <==uncertain_firing== 75425 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #31048: <==uncertain_firing== 86856 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #31823: <==negation-removal== 31550 (pos)
                    (not (Bd_not_checked_p5))

                    ; #33725: <==negation-removal== 30638 (pos)
                    (not (Pc_not_checked_p5))

                    ; #49925: <==negation-removal== 89780 (pos)
                    (not (Ba_not_checked_p5))

                    ; #53141: <==negation-removal== 80375 (pos)
                    (not (Pa_not_checked_p5))

                    ; #61160: <==negation-removal== 60116 (pos)
                    (not (Pb_not_checked_p5))

                    ; #61785: <==negation-removal== 28177 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #62628: <==negation-removal== 43193 (pos)
                    (not (not_checked_p5))

                    ; #68600: <==uncertain_firing== 54406 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #68716: <==negation-removal== 54406 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #75781: <==uncertain_firing== 28177 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #84781: <==negation-removal== 86856 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #85081: <==negation-removal== 75425 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #88867: <==negation-removal== 99695 (pos)
                    (not (Pd_not_checked_p5))

                    ; #89714: <==negation-removal== 13350 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13289: origin
                    (checked_p6)

                    ; #17434: <==commonly_known== 82298 (neg)
                    (Pd_checked_p6)

                    ; #37098: <==commonly_known== 13289 (pos)
                    (Bc_checked_p6)

                    ; #47434: <==commonly_known== 82298 (neg)
                    (Pb_checked_p6)

                    ; #53167: <==commonly_known== 13289 (pos)
                    (Bb_checked_p6)

                    ; #55924: <==commonly_known== 13289 (pos)
                    (Ba_checked_p6)

                    ; #64365: <==commonly_known== 82298 (neg)
                    (Pa_checked_p6)

                    ; #69479: <==closure== 80041 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #74527: <==commonly_known== 13289 (pos)
                    (Bd_checked_p6)

                    ; #80041: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #82768: <==commonly_known== 82298 (neg)
                    (Pc_checked_p6)

                    ; #83575: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #90974: <==closure== 83575 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #15287: <==negation-removal== 55924 (pos)
                    (not (Pa_not_checked_p6))

                    ; #16076: <==uncertain_firing== 90974 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #16316: <==negation-removal== 80041 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #24512: <==negation-removal== 64365 (pos)
                    (not (Ba_not_checked_p6))

                    ; #27027: <==negation-removal== 82768 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39205: <==negation-removal== 37098 (pos)
                    (not (Pc_not_checked_p6))

                    ; #48935: <==negation-removal== 90974 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #50117: <==negation-removal== 17434 (pos)
                    (not (Bd_not_checked_p6))

                    ; #52190: <==negation-removal== 53167 (pos)
                    (not (Pb_not_checked_p6))

                    ; #59277: <==negation-removal== 47434 (pos)
                    (not (Bb_not_checked_p6))

                    ; #64590: <==uncertain_firing== 83575 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #66165: <==negation-removal== 83575 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #67439: <==negation-removal== 69479 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #67562: <==uncertain_firing== 80041 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #82298: <==negation-removal== 13289 (pos)
                    (not (not_checked_p6))

                    ; #88600: <==negation-removal== 74527 (pos)
                    (not (Pd_not_checked_p6))

                    ; #90803: <==uncertain_firing== 69479 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19052: <==commonly_known== 39360 (pos)
                    (Bc_checked_p7)

                    ; #21650: <==commonly_known== 49949 (neg)
                    (Pb_checked_p7)

                    ; #39360: origin
                    (checked_p7)

                    ; #47172: <==closure== 55800 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #55800: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #56508: <==commonly_known== 49949 (neg)
                    (Pc_checked_p7)

                    ; #59972: <==commonly_known== 39360 (pos)
                    (Ba_checked_p7)

                    ; #70812: <==commonly_known== 49949 (neg)
                    (Pd_checked_p7)

                    ; #71481: <==commonly_known== 39360 (pos)
                    (Bb_checked_p7)

                    ; #85086: <==commonly_known== 39360 (pos)
                    (Bd_checked_p7)

                    ; #87076: <==commonly_known== 49949 (neg)
                    (Pa_checked_p7)

                    ; #87567: <==closure== 91438 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #91438: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10068: <==negation-removal== 70812 (pos)
                    (not (Bd_not_checked_p7))

                    ; #12660: <==negation-removal== 59972 (pos)
                    (not (Pa_not_checked_p7))

                    ; #14793: <==negation-removal== 47172 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #15028: <==uncertain_firing== 47172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #17199: <==negation-removal== 71481 (pos)
                    (not (Pb_not_checked_p7))

                    ; #20685: <==negation-removal== 91438 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #24996: <==uncertain_firing== 55800 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #25994: <==negation-removal== 85086 (pos)
                    (not (Pd_not_checked_p7))

                    ; #49949: <==negation-removal== 39360 (pos)
                    (not (not_checked_p7))

                    ; #55393: <==negation-removal== 19052 (pos)
                    (not (Pc_not_checked_p7))

                    ; #56546: <==negation-removal== 87076 (pos)
                    (not (Ba_not_checked_p7))

                    ; #62936: <==negation-removal== 87567 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #65616: <==negation-removal== 55800 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #66782: <==uncertain_firing== 87567 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #67391: <==uncertain_firing== 91438 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #68743: <==negation-removal== 56508 (pos)
                    (not (Bc_not_checked_p7))

                    ; #77180: <==negation-removal== 21650 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11527: <==closure== 50229 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #19220: <==commonly_known== 56229 (pos)
                    (Bc_checked_p8)

                    ; #33271: <==commonly_known== 60115 (neg)
                    (Pd_checked_p8)

                    ; #34910: <==commonly_known== 60115 (neg)
                    (Pa_checked_p8)

                    ; #37953: <==commonly_known== 56229 (pos)
                    (Ba_checked_p8)

                    ; #47861: <==closure== 78708 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #49132: <==commonly_known== 60115 (neg)
                    (Pc_checked_p8)

                    ; #50229: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #56229: origin
                    (checked_p8)

                    ; #59327: <==commonly_known== 60115 (neg)
                    (Pb_checked_p8)

                    ; #59997: <==commonly_known== 56229 (pos)
                    (Bb_checked_p8)

                    ; #78708: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #90735: <==commonly_known== 56229 (pos)
                    (Bd_checked_p8)

                    ; #12314: <==negation-removal== 59997 (pos)
                    (not (Pb_not_checked_p8))

                    ; #18718: <==negation-removal== 47861 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #29791: <==negation-removal== 34910 (pos)
                    (not (Ba_not_checked_p8))

                    ; #35385: <==negation-removal== 59327 (pos)
                    (not (Bb_not_checked_p8))

                    ; #45133: <==negation-removal== 49132 (pos)
                    (not (Bc_not_checked_p8))

                    ; #53304: <==uncertain_firing== 47861 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #54182: <==negation-removal== 19220 (pos)
                    (not (Pc_not_checked_p8))

                    ; #56786: <==negation-removal== 90735 (pos)
                    (not (Pd_not_checked_p8))

                    ; #60115: <==negation-removal== 56229 (pos)
                    (not (not_checked_p8))

                    ; #64630: <==uncertain_firing== 50229 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #68938: <==negation-removal== 37953 (pos)
                    (not (Pa_not_checked_p8))

                    ; #73483: <==uncertain_firing== 11527 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #80620: <==negation-removal== 33271 (pos)
                    (not (Bd_not_checked_p8))

                    ; #81353: <==negation-removal== 11527 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #88764: <==uncertain_firing== 78708 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #89239: <==negation-removal== 50229 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #90892: <==negation-removal== 78708 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #22750: origin
                    (checked_p9)

                    ; #26240: <==commonly_known== 76535 (neg)
                    (Pb_checked_p9)

                    ; #34104: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #40468: <==commonly_known== 22750 (pos)
                    (Bb_checked_p9)

                    ; #40806: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #47795: <==commonly_known== 22750 (pos)
                    (Ba_checked_p9)

                    ; #64831: <==commonly_known== 76535 (neg)
                    (Pd_checked_p9)

                    ; #65254: <==commonly_known== 22750 (pos)
                    (Bc_checked_p9)

                    ; #68637: <==closure== 40806 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #73243: <==commonly_known== 22750 (pos)
                    (Bd_checked_p9)

                    ; #74197: <==closure== 34104 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #76601: <==commonly_known== 76535 (neg)
                    (Pa_checked_p9)

                    ; #82092: <==commonly_known== 76535 (neg)
                    (Pc_checked_p9)

                    ; #16304: <==uncertain_firing== 74197 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #22805: <==negation-removal== 34104 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #23414: <==negation-removal== 26240 (pos)
                    (not (Bb_not_checked_p9))

                    ; #26079: <==uncertain_firing== 40806 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #38834: <==negation-removal== 65254 (pos)
                    (not (Pc_not_checked_p9))

                    ; #43742: <==negation-removal== 74197 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #47336: <==uncertain_firing== 68637 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #48747: <==negation-removal== 47795 (pos)
                    (not (Pa_not_checked_p9))

                    ; #49477: <==uncertain_firing== 34104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #61881: <==negation-removal== 40468 (pos)
                    (not (Pb_not_checked_p9))

                    ; #64660: <==negation-removal== 73243 (pos)
                    (not (Pd_not_checked_p9))

                    ; #70425: <==negation-removal== 82092 (pos)
                    (not (Bc_not_checked_p9))

                    ; #75289: <==negation-removal== 68637 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #76341: <==negation-removal== 76601 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76535: <==negation-removal== 22750 (pos)
                    (not (not_checked_p9))

                    ; #80649: <==negation-removal== 40806 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #89648: <==negation-removal== 64831 (pos)
                    (not (Bd_not_checked_p9))))

)