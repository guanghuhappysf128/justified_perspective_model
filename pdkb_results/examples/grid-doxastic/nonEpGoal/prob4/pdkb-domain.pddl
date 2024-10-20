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
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #15291: <==closure== 29027 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #15348: <==closure== 86232 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #19947: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #29027: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #37020: <==closure== 71111 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #71111: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #73490: <==closure== 19947 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #86232: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #16514: <==negation-removal== 15291 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #19544: <==negation-removal== 71111 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #29565: <==uncertain_firing== 37020 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #33217: <==uncertain_firing== 73490 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #36494: <==uncertain_firing== 15291 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #43874: <==uncertain_firing== 71111 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #46580: <==uncertain_firing== 15348 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #52834: <==negation-removal== 73490 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #52965: <==negation-removal== 86232 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #65267: <==uncertain_firing== 29027 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #66151: <==uncertain_firing== 86232 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #67563: <==negation-removal== 37020 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #75317: <==uncertain_firing== 19947 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #75448: <==negation-removal== 29027 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #81195: <==negation-removal== 15348 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #89572: <==negation-removal== 19947 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #15291: <==closure== 29027 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #15348: <==closure== 86232 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #19947: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #29027: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #37020: <==closure== 71111 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #71111: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #73490: <==closure== 19947 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #86232: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #16514: <==negation-removal== 15291 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #19544: <==negation-removal== 71111 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #29565: <==uncertain_firing== 37020 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #33217: <==uncertain_firing== 73490 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #36494: <==uncertain_firing== 15291 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #43874: <==uncertain_firing== 71111 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #46580: <==uncertain_firing== 15348 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #52834: <==negation-removal== 73490 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #52965: <==negation-removal== 86232 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #65267: <==uncertain_firing== 29027 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #66151: <==uncertain_firing== 86232 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #67563: <==negation-removal== 37020 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #75317: <==uncertain_firing== 19947 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #75448: <==negation-removal== 29027 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #81195: <==negation-removal== 15348 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #89572: <==negation-removal== 19947 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #15291: <==closure== 29027 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #15348: <==closure== 86232 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #19947: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #29027: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #37020: <==closure== 71111 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #71111: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #73490: <==closure== 19947 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #86232: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #16514: <==negation-removal== 15291 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #19544: <==negation-removal== 71111 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #29565: <==uncertain_firing== 37020 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #33217: <==uncertain_firing== 73490 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #36494: <==uncertain_firing== 15291 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #43874: <==uncertain_firing== 71111 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #46580: <==uncertain_firing== 15348 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #52834: <==negation-removal== 73490 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #52965: <==negation-removal== 86232 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #65267: <==uncertain_firing== 29027 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #66151: <==uncertain_firing== 86232 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #67563: <==negation-removal== 37020 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #75317: <==uncertain_firing== 19947 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #75448: <==negation-removal== 29027 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #81195: <==negation-removal== 15348 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #89572: <==negation-removal== 19947 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #15291: <==closure== 29027 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #15348: <==closure== 86232 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #19947: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #29027: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #37020: <==closure== 71111 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #71111: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #73490: <==closure== 19947 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #86232: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #16514: <==negation-removal== 15291 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #19544: <==negation-removal== 71111 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #29565: <==uncertain_firing== 37020 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #33217: <==uncertain_firing== 73490 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #36494: <==uncertain_firing== 15291 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #43874: <==uncertain_firing== 71111 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #46580: <==uncertain_firing== 15348 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #52834: <==negation-removal== 73490 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #52965: <==negation-removal== 86232 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #65267: <==uncertain_firing== 29027 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #66151: <==uncertain_firing== 86232 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #67563: <==negation-removal== 37020 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #75317: <==uncertain_firing== 19947 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #75448: <==negation-removal== 29027 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #81195: <==negation-removal== 15348 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #89572: <==negation-removal== 19947 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #16662: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16732: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #18096: <==closure== 16732 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #22155: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #31693: <==closure== 22155 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #55858: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #76984: <==closure== 55858 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #84537: <==closure== 16662 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #11037: <==uncertain_firing== 31693 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #13281: <==negation-removal== 22155 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #15102: <==uncertain_firing== 16732 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #22135: <==negation-removal== 16662 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #24212: <==uncertain_firing== 84537 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #28283: <==uncertain_firing== 22155 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #36604: <==negation-removal== 84537 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #49489: <==negation-removal== 76984 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #52839: <==negation-removal== 55858 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #62766: <==uncertain_firing== 76984 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #65651: <==uncertain_firing== 18096 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #71591: <==negation-removal== 16732 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #73485: <==negation-removal== 18096 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #83545: <==negation-removal== 31693 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #87313: <==uncertain_firing== 55858 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #92039: <==uncertain_firing== 16662 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #16662: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16732: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #18096: <==closure== 16732 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #22155: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #31693: <==closure== 22155 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #55858: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #76984: <==closure== 55858 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #84537: <==closure== 16662 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #11037: <==uncertain_firing== 31693 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #13281: <==negation-removal== 22155 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #15102: <==uncertain_firing== 16732 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #22135: <==negation-removal== 16662 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #24212: <==uncertain_firing== 84537 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #28283: <==uncertain_firing== 22155 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #36604: <==negation-removal== 84537 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #49489: <==negation-removal== 76984 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #52839: <==negation-removal== 55858 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #62766: <==uncertain_firing== 76984 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #65651: <==uncertain_firing== 18096 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #71591: <==negation-removal== 16732 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #73485: <==negation-removal== 18096 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #83545: <==negation-removal== 31693 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #87313: <==uncertain_firing== 55858 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #92039: <==uncertain_firing== 16662 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #16662: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16732: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #18096: <==closure== 16732 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #22155: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #31693: <==closure== 22155 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #55858: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #76984: <==closure== 55858 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #84537: <==closure== 16662 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #11037: <==uncertain_firing== 31693 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #13281: <==negation-removal== 22155 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #15102: <==uncertain_firing== 16732 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #22135: <==negation-removal== 16662 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #24212: <==uncertain_firing== 84537 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #28283: <==uncertain_firing== 22155 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #36604: <==negation-removal== 84537 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #49489: <==negation-removal== 76984 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #52839: <==negation-removal== 55858 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #62766: <==uncertain_firing== 76984 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #65651: <==uncertain_firing== 18096 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #71591: <==negation-removal== 16732 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #73485: <==negation-removal== 18096 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #83545: <==negation-removal== 31693 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #87313: <==uncertain_firing== 55858 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #92039: <==uncertain_firing== 16662 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #16662: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16732: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #18096: <==closure== 16732 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #22155: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #31693: <==closure== 22155 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #55858: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #76984: <==closure== 55858 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #84537: <==closure== 16662 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #11037: <==uncertain_firing== 31693 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #13281: <==negation-removal== 22155 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #15102: <==uncertain_firing== 16732 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #22135: <==negation-removal== 16662 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #24212: <==uncertain_firing== 84537 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #28283: <==uncertain_firing== 22155 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #36604: <==negation-removal== 84537 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #49489: <==negation-removal== 76984 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #52839: <==negation-removal== 55858 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #62766: <==uncertain_firing== 76984 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #65651: <==uncertain_firing== 18096 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #71591: <==negation-removal== 16732 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #73485: <==negation-removal== 18096 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #83545: <==negation-removal== 31693 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #87313: <==uncertain_firing== 55858 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #92039: <==uncertain_firing== 16662 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #19400: <==closure== 28281 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #24087: <==closure== 35878 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #26328: <==closure== 31062 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #26544: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #28281: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #31062: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #35878: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #42321: <==closure== 26544 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #17444: <==uncertain_firing== 31062 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #18421: <==uncertain_firing== 42321 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #22414: <==uncertain_firing== 28281 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #22874: <==negation-removal== 19400 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #34378: <==negation-removal== 42321 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #38261: <==uncertain_firing== 26328 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #41859: <==negation-removal== 28281 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #43638: <==negation-removal== 26328 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #48487: <==uncertain_firing== 24087 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #52320: <==negation-removal== 26544 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #55870: <==negation-removal== 31062 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #60786: <==negation-removal== 35878 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #62536: <==uncertain_firing== 19400 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #62734: <==uncertain_firing== 26544 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #76904: <==negation-removal== 24087 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #81663: <==uncertain_firing== 35878 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #19400: <==closure== 28281 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #24087: <==closure== 35878 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #26328: <==closure== 31062 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #26544: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #28281: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #31062: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #35878: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #42321: <==closure== 26544 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #17444: <==uncertain_firing== 31062 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #18421: <==uncertain_firing== 42321 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #22414: <==uncertain_firing== 28281 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #22874: <==negation-removal== 19400 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #34378: <==negation-removal== 42321 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #38261: <==uncertain_firing== 26328 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #41859: <==negation-removal== 28281 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #43638: <==negation-removal== 26328 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #48487: <==uncertain_firing== 24087 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #52320: <==negation-removal== 26544 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #55870: <==negation-removal== 31062 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #60786: <==negation-removal== 35878 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #62536: <==uncertain_firing== 19400 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #62734: <==uncertain_firing== 26544 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #76904: <==negation-removal== 24087 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #81663: <==uncertain_firing== 35878 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #19400: <==closure== 28281 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #24087: <==closure== 35878 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #26328: <==closure== 31062 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #26544: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #28281: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #31062: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #35878: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #42321: <==closure== 26544 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #17444: <==uncertain_firing== 31062 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #18421: <==uncertain_firing== 42321 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #22414: <==uncertain_firing== 28281 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #22874: <==negation-removal== 19400 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #34378: <==negation-removal== 42321 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #38261: <==uncertain_firing== 26328 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #41859: <==negation-removal== 28281 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #43638: <==negation-removal== 26328 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #48487: <==uncertain_firing== 24087 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #52320: <==negation-removal== 26544 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #55870: <==negation-removal== 31062 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #60786: <==negation-removal== 35878 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #62536: <==uncertain_firing== 19400 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #62734: <==uncertain_firing== 26544 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #76904: <==negation-removal== 24087 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #81663: <==uncertain_firing== 35878 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (at_d_p12)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #19400: <==closure== 28281 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #24087: <==closure== 35878 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #26328: <==closure== 31062 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #26544: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #28281: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #31062: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #35878: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #42321: <==closure== 26544 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #17444: <==uncertain_firing== 31062 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #18421: <==uncertain_firing== 42321 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #22414: <==uncertain_firing== 28281 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #22874: <==negation-removal== 19400 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #34378: <==negation-removal== 42321 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #38261: <==uncertain_firing== 26328 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #41859: <==negation-removal== 28281 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #43638: <==negation-removal== 26328 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #48487: <==uncertain_firing== 24087 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #52320: <==negation-removal== 26544 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #55870: <==negation-removal== 31062 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #60786: <==negation-removal== 35878 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #62536: <==uncertain_firing== 19400 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #62734: <==uncertain_firing== 26544 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #76904: <==negation-removal== 24087 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #81663: <==uncertain_firing== 35878 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #33645: <==closure== 81565 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #39268: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #59367: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #59677: <==closure== 59367 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #62582: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #63816: <==closure== 39268 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #81565: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #83971: <==closure== 62582 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #23315: <==negation-removal== 39268 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #25628: <==negation-removal== 59677 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #32379: <==uncertain_firing== 81565 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #35169: <==uncertain_firing== 39268 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #37992: <==negation-removal== 81565 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #48197: <==uncertain_firing== 59367 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #59984: <==uncertain_firing== 62582 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60452: <==uncertain_firing== 33645 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #61027: <==negation-removal== 83971 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #68173: <==negation-removal== 33645 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #69589: <==uncertain_firing== 63816 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71219: <==uncertain_firing== 83971 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #71681: <==negation-removal== 63816 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #77782: <==uncertain_firing== 59677 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #80501: <==negation-removal== 62582 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #87814: <==negation-removal== 59367 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #33645: <==closure== 81565 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #39268: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #59367: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #59677: <==closure== 59367 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #62582: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #63816: <==closure== 39268 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #81565: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #83971: <==closure== 62582 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #23315: <==negation-removal== 39268 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #25628: <==negation-removal== 59677 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #32379: <==uncertain_firing== 81565 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #35169: <==uncertain_firing== 39268 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #37992: <==negation-removal== 81565 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #48197: <==uncertain_firing== 59367 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #59984: <==uncertain_firing== 62582 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60452: <==uncertain_firing== 33645 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #61027: <==negation-removal== 83971 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #68173: <==negation-removal== 33645 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #69589: <==uncertain_firing== 63816 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71219: <==uncertain_firing== 83971 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #71681: <==negation-removal== 63816 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #77782: <==uncertain_firing== 59677 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #80501: <==negation-removal== 62582 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #87814: <==negation-removal== 59367 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #33645: <==closure== 81565 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #39268: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #59367: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #59677: <==closure== 59367 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #62582: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #63816: <==closure== 39268 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #81565: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #83971: <==closure== 62582 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #23315: <==negation-removal== 39268 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #25628: <==negation-removal== 59677 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #32379: <==uncertain_firing== 81565 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #35169: <==uncertain_firing== 39268 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #37992: <==negation-removal== 81565 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #48197: <==uncertain_firing== 59367 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #59984: <==uncertain_firing== 62582 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60452: <==uncertain_firing== 33645 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #61027: <==negation-removal== 83971 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #68173: <==negation-removal== 33645 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #69589: <==uncertain_firing== 63816 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71219: <==uncertain_firing== 83971 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #71681: <==negation-removal== 63816 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #77782: <==uncertain_firing== 59677 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #80501: <==negation-removal== 62582 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #87814: <==negation-removal== 59367 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #33645: <==closure== 81565 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #39268: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #59367: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #59677: <==closure== 59367 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #62582: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #63816: <==closure== 39268 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #81565: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #83971: <==closure== 62582 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #23315: <==negation-removal== 39268 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #25628: <==negation-removal== 59677 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #32379: <==uncertain_firing== 81565 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #35169: <==uncertain_firing== 39268 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #37992: <==negation-removal== 81565 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #48197: <==uncertain_firing== 59367 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #59984: <==uncertain_firing== 62582 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60452: <==uncertain_firing== 33645 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #61027: <==negation-removal== 83971 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #68173: <==negation-removal== 33645 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #69589: <==uncertain_firing== 63816 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71219: <==uncertain_firing== 83971 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #71681: <==negation-removal== 63816 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #77782: <==uncertain_firing== 59677 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #80501: <==negation-removal== 62582 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #87814: <==negation-removal== 59367 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #10204: <==closure== 23861 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #14870: <==closure== 25728 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #23861: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #25728: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #34163: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #47668: <==closure== 34163 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #69729: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #91631: <==closure== 69729 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #19073: <==uncertain_firing== 25728 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #19343: <==uncertain_firing== 34163 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #23859: <==uncertain_firing== 47668 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #32840: <==uncertain_firing== 14870 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #39891: <==uncertain_firing== 10204 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50930: <==negation-removal== 91631 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #52811: <==negation-removal== 47668 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #52939: <==negation-removal== 14870 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #65826: <==negation-removal== 69729 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #68939: <==uncertain_firing== 23861 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69645: <==negation-removal== 10204 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #71321: <==uncertain_firing== 69729 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #77661: <==uncertain_firing== 91631 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #81975: <==negation-removal== 34163 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89295: <==negation-removal== 25728 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #90081: <==negation-removal== 23861 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #10204: <==closure== 23861 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #14870: <==closure== 25728 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #23861: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #25728: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #34163: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #47668: <==closure== 34163 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #69729: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #91631: <==closure== 69729 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #19073: <==uncertain_firing== 25728 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #19343: <==uncertain_firing== 34163 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #23859: <==uncertain_firing== 47668 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #32840: <==uncertain_firing== 14870 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #39891: <==uncertain_firing== 10204 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50930: <==negation-removal== 91631 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #52811: <==negation-removal== 47668 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #52939: <==negation-removal== 14870 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #65826: <==negation-removal== 69729 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #68939: <==uncertain_firing== 23861 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69645: <==negation-removal== 10204 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #71321: <==uncertain_firing== 69729 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #77661: <==uncertain_firing== 91631 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #81975: <==negation-removal== 34163 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89295: <==negation-removal== 25728 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #90081: <==negation-removal== 23861 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #10204: <==closure== 23861 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #14870: <==closure== 25728 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #23861: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #25728: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #34163: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #47668: <==closure== 34163 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #69729: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #91631: <==closure== 69729 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #19073: <==uncertain_firing== 25728 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #19343: <==uncertain_firing== 34163 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #23859: <==uncertain_firing== 47668 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #32840: <==uncertain_firing== 14870 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #39891: <==uncertain_firing== 10204 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50930: <==negation-removal== 91631 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #52811: <==negation-removal== 47668 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #52939: <==negation-removal== 14870 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #65826: <==negation-removal== 69729 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #68939: <==uncertain_firing== 23861 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69645: <==negation-removal== 10204 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #71321: <==uncertain_firing== 69729 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #77661: <==uncertain_firing== 91631 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #81975: <==negation-removal== 34163 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89295: <==negation-removal== 25728 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #90081: <==negation-removal== 23861 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #10204: <==closure== 23861 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #14870: <==closure== 25728 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #23861: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #25728: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #34163: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #47668: <==closure== 34163 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #69729: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #91631: <==closure== 69729 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #19073: <==uncertain_firing== 25728 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #19343: <==uncertain_firing== 34163 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #23859: <==uncertain_firing== 47668 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #32840: <==uncertain_firing== 14870 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #39891: <==uncertain_firing== 10204 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50930: <==negation-removal== 91631 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #52811: <==negation-removal== 47668 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #52939: <==negation-removal== 14870 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #65826: <==negation-removal== 69729 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #68939: <==uncertain_firing== 23861 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69645: <==negation-removal== 10204 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #71321: <==uncertain_firing== 69729 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #77661: <==uncertain_firing== 91631 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #81975: <==negation-removal== 34163 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89295: <==negation-removal== 25728 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #90081: <==negation-removal== 23861 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #13274: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #14428: <==closure== 67019 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #26860: <==closure== 37827 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #37827: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #47043: <==closure== 90945 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #67019: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #89250: <==closure== 13274 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #90945: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #11995: <==negation-removal== 26860 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #15756: <==negation-removal== 14428 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #15806: <==uncertain_firing== 89250 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #18743: <==uncertain_firing== 26860 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #20355: <==uncertain_firing== 90945 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38599: <==negation-removal== 47043 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #40956: <==uncertain_firing== 14428 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #41508: <==negation-removal== 89250 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #42656: <==negation-removal== 67019 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #48574: <==uncertain_firing== 67019 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49966: <==uncertain_firing== 37827 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #52240: <==negation-removal== 90945 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #72985: <==uncertain_firing== 13274 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #75005: <==negation-removal== 37827 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #75483: <==uncertain_firing== 47043 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #88596: <==negation-removal== 13274 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #13274: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #14428: <==closure== 67019 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #26860: <==closure== 37827 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #37827: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #47043: <==closure== 90945 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #67019: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #89250: <==closure== 13274 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #90945: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #11995: <==negation-removal== 26860 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #15756: <==negation-removal== 14428 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #15806: <==uncertain_firing== 89250 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #18743: <==uncertain_firing== 26860 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #20355: <==uncertain_firing== 90945 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38599: <==negation-removal== 47043 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #40956: <==uncertain_firing== 14428 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #41508: <==negation-removal== 89250 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #42656: <==negation-removal== 67019 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #48574: <==uncertain_firing== 67019 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49966: <==uncertain_firing== 37827 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #52240: <==negation-removal== 90945 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #72985: <==uncertain_firing== 13274 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #75005: <==negation-removal== 37827 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #75483: <==uncertain_firing== 47043 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #88596: <==negation-removal== 13274 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #13274: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #14428: <==closure== 67019 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #26860: <==closure== 37827 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #37827: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #47043: <==closure== 90945 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #67019: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #89250: <==closure== 13274 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #90945: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #11995: <==negation-removal== 26860 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #15756: <==negation-removal== 14428 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #15806: <==uncertain_firing== 89250 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #18743: <==uncertain_firing== 26860 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #20355: <==uncertain_firing== 90945 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38599: <==negation-removal== 47043 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #40956: <==uncertain_firing== 14428 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #41508: <==negation-removal== 89250 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #42656: <==negation-removal== 67019 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #48574: <==uncertain_firing== 67019 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49966: <==uncertain_firing== 37827 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #52240: <==negation-removal== 90945 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #72985: <==uncertain_firing== 13274 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #75005: <==negation-removal== 37827 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #75483: <==uncertain_firing== 47043 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #88596: <==negation-removal== 13274 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (at_d_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #13274: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #14428: <==closure== 67019 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #26860: <==closure== 37827 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #37827: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #47043: <==closure== 90945 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #67019: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #89250: <==closure== 13274 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #90945: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #11995: <==negation-removal== 26860 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #15756: <==negation-removal== 14428 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #15806: <==uncertain_firing== 89250 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #18743: <==uncertain_firing== 26860 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #20355: <==uncertain_firing== 90945 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38599: <==negation-removal== 47043 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #40956: <==uncertain_firing== 14428 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #41508: <==negation-removal== 89250 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #42656: <==negation-removal== 67019 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #48574: <==uncertain_firing== 67019 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49966: <==uncertain_firing== 37827 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #52240: <==negation-removal== 90945 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #72985: <==uncertain_firing== 13274 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #75005: <==negation-removal== 37827 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #75483: <==uncertain_firing== 47043 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #88596: <==negation-removal== 13274 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #23306: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37657: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #41521: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #46916: <==closure== 72859 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #72859: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #73366: <==closure== 23306 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #75300: <==closure== 41521 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #84099: <==closure== 37657 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #21466: <==negation-removal== 41521 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #22045: <==uncertain_firing== 72859 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #24391: <==negation-removal== 37657 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #28020: <==negation-removal== 75300 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #28663: <==negation-removal== 46916 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #32020: <==uncertain_firing== 23306 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #41801: <==negation-removal== 72859 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #48365: <==uncertain_firing== 37657 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #53750: <==negation-removal== 73366 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #54872: <==uncertain_firing== 41521 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #58738: <==negation-removal== 23306 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #69058: <==uncertain_firing== 75300 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #69179: <==negation-removal== 84099 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #76547: <==uncertain_firing== 84099 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #81174: <==uncertain_firing== 73366 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #92038: <==uncertain_firing== 46916 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #23306: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37657: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #41521: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #46916: <==closure== 72859 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #72859: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #73366: <==closure== 23306 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #75300: <==closure== 41521 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #84099: <==closure== 37657 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #21466: <==negation-removal== 41521 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #22045: <==uncertain_firing== 72859 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #24391: <==negation-removal== 37657 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #28020: <==negation-removal== 75300 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #28663: <==negation-removal== 46916 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #32020: <==uncertain_firing== 23306 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #41801: <==negation-removal== 72859 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #48365: <==uncertain_firing== 37657 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #53750: <==negation-removal== 73366 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #54872: <==uncertain_firing== 41521 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #58738: <==negation-removal== 23306 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #69058: <==uncertain_firing== 75300 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #69179: <==negation-removal== 84099 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #76547: <==uncertain_firing== 84099 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #81174: <==uncertain_firing== 73366 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #92038: <==uncertain_firing== 46916 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #23306: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37657: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #41521: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #46916: <==closure== 72859 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #72859: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #73366: <==closure== 23306 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #75300: <==closure== 41521 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #84099: <==closure== 37657 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #21466: <==negation-removal== 41521 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #22045: <==uncertain_firing== 72859 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #24391: <==negation-removal== 37657 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #28020: <==negation-removal== 75300 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #28663: <==negation-removal== 46916 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #32020: <==uncertain_firing== 23306 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #41801: <==negation-removal== 72859 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #48365: <==uncertain_firing== 37657 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #53750: <==negation-removal== 73366 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #54872: <==uncertain_firing== 41521 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #58738: <==negation-removal== 23306 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #69058: <==uncertain_firing== 75300 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #69179: <==negation-removal== 84099 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #76547: <==uncertain_firing== 84099 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #81174: <==uncertain_firing== 73366 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #92038: <==uncertain_firing== 46916 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #23306: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37657: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #41521: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #46916: <==closure== 72859 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #72859: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #73366: <==closure== 23306 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #75300: <==closure== 41521 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #84099: <==closure== 37657 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #21466: <==negation-removal== 41521 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #22045: <==uncertain_firing== 72859 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #24391: <==negation-removal== 37657 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #28020: <==negation-removal== 75300 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #28663: <==negation-removal== 46916 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #32020: <==uncertain_firing== 23306 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #41801: <==negation-removal== 72859 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #48365: <==uncertain_firing== 37657 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #53750: <==negation-removal== 73366 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #54872: <==uncertain_firing== 41521 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #58738: <==negation-removal== 23306 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #69058: <==uncertain_firing== 75300 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #69179: <==negation-removal== 84099 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #76547: <==uncertain_firing== 84099 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #81174: <==uncertain_firing== 73366 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #92038: <==uncertain_firing== 46916 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #10476: <==closure== 52132 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #13083: <==closure== 64085 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #18123: <==closure== 79789 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #52132: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #55967: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #64085: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #75556: <==closure== 55967 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #79789: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #32406: <==negation-removal== 79789 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #36778: <==negation-removal== 52132 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #43235: <==uncertain_firing== 79789 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46152: <==negation-removal== 75556 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #50631: <==negation-removal== 55967 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #56632: <==uncertain_firing== 55967 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #58591: <==negation-removal== 18123 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62589: <==uncertain_firing== 52132 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #66206: <==uncertain_firing== 13083 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #68490: <==negation-removal== 10476 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #70360: <==uncertain_firing== 18123 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #74532: <==uncertain_firing== 75556 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #82966: <==uncertain_firing== 10476 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #86368: <==negation-removal== 13083 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #90438: <==negation-removal== 64085 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #91062: <==uncertain_firing== 64085 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #10476: <==closure== 52132 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #13083: <==closure== 64085 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #18123: <==closure== 79789 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #52132: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #55967: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #64085: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #75556: <==closure== 55967 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #79789: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #32406: <==negation-removal== 79789 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #36778: <==negation-removal== 52132 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #43235: <==uncertain_firing== 79789 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46152: <==negation-removal== 75556 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #50631: <==negation-removal== 55967 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #56632: <==uncertain_firing== 55967 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #58591: <==negation-removal== 18123 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62589: <==uncertain_firing== 52132 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #66206: <==uncertain_firing== 13083 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #68490: <==negation-removal== 10476 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #70360: <==uncertain_firing== 18123 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #74532: <==uncertain_firing== 75556 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #82966: <==uncertain_firing== 10476 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #86368: <==negation-removal== 13083 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #90438: <==negation-removal== 64085 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #91062: <==uncertain_firing== 64085 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #10476: <==closure== 52132 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #13083: <==closure== 64085 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #18123: <==closure== 79789 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #52132: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #55967: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #64085: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #75556: <==closure== 55967 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #79789: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #32406: <==negation-removal== 79789 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #36778: <==negation-removal== 52132 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #43235: <==uncertain_firing== 79789 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46152: <==negation-removal== 75556 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #50631: <==negation-removal== 55967 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #56632: <==uncertain_firing== 55967 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #58591: <==negation-removal== 18123 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62589: <==uncertain_firing== 52132 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #66206: <==uncertain_firing== 13083 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #68490: <==negation-removal== 10476 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #70360: <==uncertain_firing== 18123 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #74532: <==uncertain_firing== 75556 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #82966: <==uncertain_firing== 10476 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #86368: <==negation-removal== 13083 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #90438: <==negation-removal== 64085 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #91062: <==uncertain_firing== 64085 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #10476: <==closure== 52132 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #13083: <==closure== 64085 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #18123: <==closure== 79789 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #52132: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #55967: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #64085: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #75556: <==closure== 55967 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #79789: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #32406: <==negation-removal== 79789 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #36778: <==negation-removal== 52132 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #43235: <==uncertain_firing== 79789 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46152: <==negation-removal== 75556 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #50631: <==negation-removal== 55967 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #56632: <==uncertain_firing== 55967 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #58591: <==negation-removal== 18123 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62589: <==uncertain_firing== 52132 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #66206: <==uncertain_firing== 13083 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #68490: <==negation-removal== 10476 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #70360: <==uncertain_firing== 18123 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #74532: <==uncertain_firing== 75556 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #82966: <==uncertain_firing== 10476 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #86368: <==negation-removal== 13083 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #90438: <==negation-removal== 64085 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #91062: <==uncertain_firing== 64085 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #12040: <==closure== 39233 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #12828: <==closure== 88779 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #39233: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #52277: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #61902: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #65273: <==closure== 52277 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #87488: <==closure== 61902 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88779: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #10691: <==uncertain_firing== 52277 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #16330: <==negation-removal== 52277 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #24274: <==negation-removal== 65273 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #24825: <==uncertain_firing== 87488 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #43835: <==uncertain_firing== 88779 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #53045: <==uncertain_firing== 65273 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #55591: <==negation-removal== 61902 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #58299: <==negation-removal== 12040 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58511: <==negation-removal== 39233 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #59046: <==uncertain_firing== 39233 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60702: <==negation-removal== 12828 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #60717: <==negation-removal== 88779 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #83096: <==uncertain_firing== 12828 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86251: <==uncertain_firing== 61902 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #91267: <==uncertain_firing== 12040 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #91991: <==negation-removal== 87488 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #12040: <==closure== 39233 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #12828: <==closure== 88779 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #39233: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #52277: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #61902: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #65273: <==closure== 52277 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #87488: <==closure== 61902 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88779: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #10691: <==uncertain_firing== 52277 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #16330: <==negation-removal== 52277 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #24274: <==negation-removal== 65273 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #24825: <==uncertain_firing== 87488 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #43835: <==uncertain_firing== 88779 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #53045: <==uncertain_firing== 65273 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #55591: <==negation-removal== 61902 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #58299: <==negation-removal== 12040 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58511: <==negation-removal== 39233 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #59046: <==uncertain_firing== 39233 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60702: <==negation-removal== 12828 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #60717: <==negation-removal== 88779 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #83096: <==uncertain_firing== 12828 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86251: <==uncertain_firing== 61902 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #91267: <==uncertain_firing== 12040 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #91991: <==negation-removal== 87488 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #12040: <==closure== 39233 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #12828: <==closure== 88779 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #39233: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #52277: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #61902: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #65273: <==closure== 52277 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #87488: <==closure== 61902 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88779: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #10691: <==uncertain_firing== 52277 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #16330: <==negation-removal== 52277 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #24274: <==negation-removal== 65273 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #24825: <==uncertain_firing== 87488 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #43835: <==uncertain_firing== 88779 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #53045: <==uncertain_firing== 65273 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #55591: <==negation-removal== 61902 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #58299: <==negation-removal== 12040 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58511: <==negation-removal== 39233 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #59046: <==uncertain_firing== 39233 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60702: <==negation-removal== 12828 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #60717: <==negation-removal== 88779 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #83096: <==uncertain_firing== 12828 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86251: <==uncertain_firing== 61902 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #91267: <==uncertain_firing== 12040 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #91991: <==negation-removal== 87488 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #12040: <==closure== 39233 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #12828: <==closure== 88779 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #39233: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #52277: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #61902: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #65273: <==closure== 52277 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #87488: <==closure== 61902 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88779: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #10691: <==uncertain_firing== 52277 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #16330: <==negation-removal== 52277 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #24274: <==negation-removal== 65273 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #24825: <==uncertain_firing== 87488 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #43835: <==uncertain_firing== 88779 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #53045: <==uncertain_firing== 65273 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #55591: <==negation-removal== 61902 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #58299: <==negation-removal== 12040 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58511: <==negation-removal== 39233 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #59046: <==uncertain_firing== 39233 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60702: <==negation-removal== 12828 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #60717: <==negation-removal== 88779 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #83096: <==uncertain_firing== 12828 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86251: <==uncertain_firing== 61902 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #91267: <==uncertain_firing== 12040 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #91991: <==negation-removal== 87488 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #31908: <==closure== 66218 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #39679: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #66177: <==closure== 78457 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66218: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #68959: <==closure== 79024 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #78457: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #79024: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #80368: <==closure== 39679 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #11634: <==uncertain_firing== 79024 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #16830: <==negation-removal== 79024 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #17500: <==uncertain_firing== 39679 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #20880: <==uncertain_firing== 31908 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #34034: <==negation-removal== 31908 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #35009: <==uncertain_firing== 66177 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39906: <==uncertain_firing== 68959 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59681: <==negation-removal== 39679 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #65191: <==negation-removal== 78457 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #68083: <==negation-removal== 66218 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #73491: <==uncertain_firing== 80368 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #75785: <==uncertain_firing== 66218 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #76850: <==uncertain_firing== 78457 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #77673: <==negation-removal== 68959 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #78720: <==negation-removal== 80368 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #83172: <==negation-removal== 66177 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #31908: <==closure== 66218 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #39679: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #66177: <==closure== 78457 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66218: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #68959: <==closure== 79024 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #78457: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #79024: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #80368: <==closure== 39679 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #11634: <==uncertain_firing== 79024 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #16830: <==negation-removal== 79024 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #17500: <==uncertain_firing== 39679 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #20880: <==uncertain_firing== 31908 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #34034: <==negation-removal== 31908 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #35009: <==uncertain_firing== 66177 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39906: <==uncertain_firing== 68959 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59681: <==negation-removal== 39679 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #65191: <==negation-removal== 78457 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #68083: <==negation-removal== 66218 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #73491: <==uncertain_firing== 80368 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #75785: <==uncertain_firing== 66218 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #76850: <==uncertain_firing== 78457 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #77673: <==negation-removal== 68959 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #78720: <==negation-removal== 80368 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #83172: <==negation-removal== 66177 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #31908: <==closure== 66218 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #39679: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #66177: <==closure== 78457 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66218: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #68959: <==closure== 79024 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #78457: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #79024: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #80368: <==closure== 39679 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #11634: <==uncertain_firing== 79024 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #16830: <==negation-removal== 79024 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #17500: <==uncertain_firing== 39679 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #20880: <==uncertain_firing== 31908 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #34034: <==negation-removal== 31908 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #35009: <==uncertain_firing== 66177 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39906: <==uncertain_firing== 68959 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59681: <==negation-removal== 39679 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #65191: <==negation-removal== 78457 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #68083: <==negation-removal== 66218 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #73491: <==uncertain_firing== 80368 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #75785: <==uncertain_firing== 66218 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #76850: <==uncertain_firing== 78457 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #77673: <==negation-removal== 68959 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #78720: <==negation-removal== 80368 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #83172: <==negation-removal== 66177 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #31908: <==closure== 66218 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #39679: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #66177: <==closure== 78457 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66218: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #68959: <==closure== 79024 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #78457: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #79024: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #80368: <==closure== 39679 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #11634: <==uncertain_firing== 79024 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #16830: <==negation-removal== 79024 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #17500: <==uncertain_firing== 39679 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #20880: <==uncertain_firing== 31908 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #34034: <==negation-removal== 31908 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #35009: <==uncertain_firing== 66177 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39906: <==uncertain_firing== 68959 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59681: <==negation-removal== 39679 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #65191: <==negation-removal== 78457 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #68083: <==negation-removal== 66218 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #73491: <==uncertain_firing== 80368 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #75785: <==uncertain_firing== 66218 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #76850: <==uncertain_firing== 78457 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #77673: <==negation-removal== 68959 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #78720: <==negation-removal== 80368 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #83172: <==negation-removal== 66177 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #16673: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #18455: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #28826: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #32151: <==closure== 64712 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #53342: <==closure== 18455 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #64712: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #72636: <==closure== 16673 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #98917: <==closure== 28826 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #10384: <==uncertain_firing== 28826 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #11711: <==negation-removal== 16673 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #15841: <==uncertain_firing== 16673 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #23875: <==uncertain_firing== 64712 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29814: <==uncertain_firing== 53342 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #45348: <==negation-removal== 64712 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48782: <==uncertain_firing== 72636 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #49095: <==negation-removal== 32151 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56697: <==negation-removal== 98917 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60068: <==negation-removal== 53342 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #61419: <==negation-removal== 18455 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #74593: <==negation-removal== 28826 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78423: <==uncertain_firing== 32151 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85270: <==uncertain_firing== 98917 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #88492: <==uncertain_firing== 18455 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #88863: <==negation-removal== 72636 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #16673: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #18455: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #28826: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #32151: <==closure== 64712 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #53342: <==closure== 18455 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #64712: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #72636: <==closure== 16673 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #98917: <==closure== 28826 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #10384: <==uncertain_firing== 28826 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #11711: <==negation-removal== 16673 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #15841: <==uncertain_firing== 16673 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #23875: <==uncertain_firing== 64712 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29814: <==uncertain_firing== 53342 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #45348: <==negation-removal== 64712 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48782: <==uncertain_firing== 72636 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #49095: <==negation-removal== 32151 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56697: <==negation-removal== 98917 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60068: <==negation-removal== 53342 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #61419: <==negation-removal== 18455 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #74593: <==negation-removal== 28826 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78423: <==uncertain_firing== 32151 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85270: <==uncertain_firing== 98917 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #88492: <==uncertain_firing== 18455 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #88863: <==negation-removal== 72636 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #16673: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #18455: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #28826: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #32151: <==closure== 64712 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #53342: <==closure== 18455 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #64712: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #72636: <==closure== 16673 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #98917: <==closure== 28826 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #10384: <==uncertain_firing== 28826 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #11711: <==negation-removal== 16673 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #15841: <==uncertain_firing== 16673 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #23875: <==uncertain_firing== 64712 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29814: <==uncertain_firing== 53342 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #45348: <==negation-removal== 64712 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48782: <==uncertain_firing== 72636 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #49095: <==negation-removal== 32151 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56697: <==negation-removal== 98917 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60068: <==negation-removal== 53342 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #61419: <==negation-removal== 18455 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #74593: <==negation-removal== 28826 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78423: <==uncertain_firing== 32151 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85270: <==uncertain_firing== 98917 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #88492: <==uncertain_firing== 18455 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #88863: <==negation-removal== 72636 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #16673: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #18455: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #28826: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #32151: <==closure== 64712 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #53342: <==closure== 18455 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #64712: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #72636: <==closure== 16673 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #98917: <==closure== 28826 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #10384: <==uncertain_firing== 28826 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #11711: <==negation-removal== 16673 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #15841: <==uncertain_firing== 16673 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #23875: <==uncertain_firing== 64712 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29814: <==uncertain_firing== 53342 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #45348: <==negation-removal== 64712 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48782: <==uncertain_firing== 72636 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #49095: <==negation-removal== 32151 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56697: <==negation-removal== 98917 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60068: <==negation-removal== 53342 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #61419: <==negation-removal== 18455 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #74593: <==negation-removal== 28826 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78423: <==uncertain_firing== 32151 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85270: <==uncertain_firing== 98917 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #88492: <==uncertain_firing== 18455 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #88863: <==negation-removal== 72636 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #14708: <==closure== 33254 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #33254: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #44105: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #53400: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #56275: <==closure== 63584 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #63584: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #64045: <==closure== 53400 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #74968: <==closure== 44105 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #16811: <==negation-removal== 44105 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19843: <==uncertain_firing== 74968 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #21081: <==negation-removal== 33254 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #24266: <==negation-removal== 14708 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #25364: <==negation-removal== 74968 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27660: <==negation-removal== 53400 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #31627: <==uncertain_firing== 64045 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #37335: <==negation-removal== 64045 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #39366: <==uncertain_firing== 44105 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #42261: <==uncertain_firing== 53400 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #45175: <==uncertain_firing== 56275 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56838: <==negation-removal== 63584 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #79316: <==uncertain_firing== 63584 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80227: <==uncertain_firing== 14708 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #80839: <==negation-removal== 56275 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #84025: <==uncertain_firing== 33254 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #14708: <==closure== 33254 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #33254: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #44105: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #53400: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #56275: <==closure== 63584 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #63584: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #64045: <==closure== 53400 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #74968: <==closure== 44105 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #16811: <==negation-removal== 44105 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19843: <==uncertain_firing== 74968 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #21081: <==negation-removal== 33254 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #24266: <==negation-removal== 14708 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #25364: <==negation-removal== 74968 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27660: <==negation-removal== 53400 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #31627: <==uncertain_firing== 64045 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #37335: <==negation-removal== 64045 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #39366: <==uncertain_firing== 44105 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #42261: <==uncertain_firing== 53400 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #45175: <==uncertain_firing== 56275 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56838: <==negation-removal== 63584 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #79316: <==uncertain_firing== 63584 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80227: <==uncertain_firing== 14708 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #80839: <==negation-removal== 56275 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #84025: <==uncertain_firing== 33254 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #14708: <==closure== 33254 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #33254: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #44105: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #53400: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #56275: <==closure== 63584 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #63584: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #64045: <==closure== 53400 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #74968: <==closure== 44105 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #16811: <==negation-removal== 44105 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19843: <==uncertain_firing== 74968 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #21081: <==negation-removal== 33254 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #24266: <==negation-removal== 14708 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #25364: <==negation-removal== 74968 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27660: <==negation-removal== 53400 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #31627: <==uncertain_firing== 64045 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #37335: <==negation-removal== 64045 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #39366: <==uncertain_firing== 44105 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #42261: <==uncertain_firing== 53400 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #45175: <==uncertain_firing== 56275 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56838: <==negation-removal== 63584 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #79316: <==uncertain_firing== 63584 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80227: <==uncertain_firing== 14708 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #80839: <==negation-removal== 56275 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #84025: <==uncertain_firing== 33254 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #14708: <==closure== 33254 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #33254: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #44105: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #53400: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #56275: <==closure== 63584 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #63584: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #64045: <==closure== 53400 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #74968: <==closure== 44105 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #16811: <==negation-removal== 44105 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #19843: <==uncertain_firing== 74968 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #21081: <==negation-removal== 33254 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #24266: <==negation-removal== 14708 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #25364: <==negation-removal== 74968 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27660: <==negation-removal== 53400 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #31627: <==uncertain_firing== 64045 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #37335: <==negation-removal== 64045 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #39366: <==uncertain_firing== 44105 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #42261: <==uncertain_firing== 53400 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #45175: <==uncertain_firing== 56275 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56838: <==negation-removal== 63584 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #79316: <==uncertain_firing== 63584 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #80227: <==uncertain_firing== 14708 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #80839: <==negation-removal== 56275 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #84025: <==uncertain_firing== 33254 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #12163: origin
                    (Ba_survivorat_s_p10)

                    ; #12244: origin
                    (Bd_survivorat_s_p10)

                    ; #17662: <==closure== 12244 (pos)
                    (Pd_survivorat_s_p10)

                    ; #29989: origin
                    (Bb_survivorat_s_p10)

                    ; #32139: origin
                    (Bc_survivorat_s_p10)

                    ; #48446: <==closure== 32139 (pos)
                    (Pc_survivorat_s_p10)

                    ; #63783: <==closure== 29989 (pos)
                    (Pb_survivorat_s_p10)

                    ; #82212: <==closure== 12163 (pos)
                    (Pa_survivorat_s_p10)

                    ; #12037: <==negation-removal== 12163 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #27178: <==negation-removal== 12244 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #31709: <==negation-removal== 17662 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #37648: <==negation-removal== 82212 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #50960: <==negation-removal== 32139 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #61424: <==negation-removal== 63783 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #63336: <==negation-removal== 29989 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #69290: <==negation-removal== 48446 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #12163: origin
                    (Ba_survivorat_s_p10)

                    ; #12244: origin
                    (Bd_survivorat_s_p10)

                    ; #17662: <==closure== 12244 (pos)
                    (Pd_survivorat_s_p10)

                    ; #29989: origin
                    (Bb_survivorat_s_p10)

                    ; #32139: origin
                    (Bc_survivorat_s_p10)

                    ; #48446: <==closure== 32139 (pos)
                    (Pc_survivorat_s_p10)

                    ; #63783: <==closure== 29989 (pos)
                    (Pb_survivorat_s_p10)

                    ; #82212: <==closure== 12163 (pos)
                    (Pa_survivorat_s_p10)

                    ; #12037: <==negation-removal== 12163 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #27178: <==negation-removal== 12244 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #31709: <==negation-removal== 17662 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #37648: <==negation-removal== 82212 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #50960: <==negation-removal== 32139 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #61424: <==negation-removal== 63783 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #63336: <==negation-removal== 29989 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #69290: <==negation-removal== 48446 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #12163: origin
                    (Ba_survivorat_s_p10)

                    ; #12244: origin
                    (Bd_survivorat_s_p10)

                    ; #17662: <==closure== 12244 (pos)
                    (Pd_survivorat_s_p10)

                    ; #29989: origin
                    (Bb_survivorat_s_p10)

                    ; #32139: origin
                    (Bc_survivorat_s_p10)

                    ; #48446: <==closure== 32139 (pos)
                    (Pc_survivorat_s_p10)

                    ; #63783: <==closure== 29989 (pos)
                    (Pb_survivorat_s_p10)

                    ; #82212: <==closure== 12163 (pos)
                    (Pa_survivorat_s_p10)

                    ; #12037: <==negation-removal== 12163 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #27178: <==negation-removal== 12244 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #31709: <==negation-removal== 17662 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #37648: <==negation-removal== 82212 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #50960: <==negation-removal== 32139 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #61424: <==negation-removal== 63783 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #63336: <==negation-removal== 29989 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #69290: <==negation-removal== 48446 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #12163: origin
                    (Ba_survivorat_s_p10)

                    ; #12244: origin
                    (Bd_survivorat_s_p10)

                    ; #17662: <==closure== 12244 (pos)
                    (Pd_survivorat_s_p10)

                    ; #29989: origin
                    (Bb_survivorat_s_p10)

                    ; #32139: origin
                    (Bc_survivorat_s_p10)

                    ; #48446: <==closure== 32139 (pos)
                    (Pc_survivorat_s_p10)

                    ; #63783: <==closure== 29989 (pos)
                    (Pb_survivorat_s_p10)

                    ; #82212: <==closure== 12163 (pos)
                    (Pa_survivorat_s_p10)

                    ; #12037: <==negation-removal== 12163 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #27178: <==negation-removal== 12244 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #31709: <==negation-removal== 17662 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #37648: <==negation-removal== 82212 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #50960: <==negation-removal== 32139 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #61424: <==negation-removal== 63783 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #63336: <==negation-removal== 29989 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #69290: <==negation-removal== 48446 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #35793: origin
                    (Bc_survivorat_s_p11)

                    ; #36229: origin
                    (Bd_survivorat_s_p11)

                    ; #52951: <==closure== 35793 (pos)
                    (Pc_survivorat_s_p11)

                    ; #56153: <==closure== 36229 (pos)
                    (Pd_survivorat_s_p11)

                    ; #67890: <==closure== 81514 (pos)
                    (Pb_survivorat_s_p11)

                    ; #78014: origin
                    (Ba_survivorat_s_p11)

                    ; #79108: <==closure== 78014 (pos)
                    (Pa_survivorat_s_p11)

                    ; #81514: origin
                    (Bb_survivorat_s_p11)

                    ; #12159: <==negation-removal== 56153 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #15790: <==negation-removal== 52951 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #34994: <==negation-removal== 67890 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #55586: <==negation-removal== 79108 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #64296: <==negation-removal== 81514 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #75758: <==negation-removal== 78014 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #78238: <==negation-removal== 35793 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #81002: <==negation-removal== 36229 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #35793: origin
                    (Bc_survivorat_s_p11)

                    ; #36229: origin
                    (Bd_survivorat_s_p11)

                    ; #52951: <==closure== 35793 (pos)
                    (Pc_survivorat_s_p11)

                    ; #56153: <==closure== 36229 (pos)
                    (Pd_survivorat_s_p11)

                    ; #67890: <==closure== 81514 (pos)
                    (Pb_survivorat_s_p11)

                    ; #78014: origin
                    (Ba_survivorat_s_p11)

                    ; #79108: <==closure== 78014 (pos)
                    (Pa_survivorat_s_p11)

                    ; #81514: origin
                    (Bb_survivorat_s_p11)

                    ; #12159: <==negation-removal== 56153 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #15790: <==negation-removal== 52951 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #34994: <==negation-removal== 67890 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #55586: <==negation-removal== 79108 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #64296: <==negation-removal== 81514 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #75758: <==negation-removal== 78014 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #78238: <==negation-removal== 35793 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #81002: <==negation-removal== 36229 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #35793: origin
                    (Bc_survivorat_s_p11)

                    ; #36229: origin
                    (Bd_survivorat_s_p11)

                    ; #52951: <==closure== 35793 (pos)
                    (Pc_survivorat_s_p11)

                    ; #56153: <==closure== 36229 (pos)
                    (Pd_survivorat_s_p11)

                    ; #67890: <==closure== 81514 (pos)
                    (Pb_survivorat_s_p11)

                    ; #78014: origin
                    (Ba_survivorat_s_p11)

                    ; #79108: <==closure== 78014 (pos)
                    (Pa_survivorat_s_p11)

                    ; #81514: origin
                    (Bb_survivorat_s_p11)

                    ; #12159: <==negation-removal== 56153 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #15790: <==negation-removal== 52951 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #34994: <==negation-removal== 67890 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #55586: <==negation-removal== 79108 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #64296: <==negation-removal== 81514 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #75758: <==negation-removal== 78014 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #78238: <==negation-removal== 35793 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #81002: <==negation-removal== 36229 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #35793: origin
                    (Bc_survivorat_s_p11)

                    ; #36229: origin
                    (Bd_survivorat_s_p11)

                    ; #52951: <==closure== 35793 (pos)
                    (Pc_survivorat_s_p11)

                    ; #56153: <==closure== 36229 (pos)
                    (Pd_survivorat_s_p11)

                    ; #67890: <==closure== 81514 (pos)
                    (Pb_survivorat_s_p11)

                    ; #78014: origin
                    (Ba_survivorat_s_p11)

                    ; #79108: <==closure== 78014 (pos)
                    (Pa_survivorat_s_p11)

                    ; #81514: origin
                    (Bb_survivorat_s_p11)

                    ; #12159: <==negation-removal== 56153 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #15790: <==negation-removal== 52951 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #34994: <==negation-removal== 67890 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #55586: <==negation-removal== 79108 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #64296: <==negation-removal== 81514 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #75758: <==negation-removal== 78014 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #78238: <==negation-removal== 35793 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #81002: <==negation-removal== 36229 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #31203: origin
                    (Ba_survivorat_s_p12)

                    ; #44398: origin
                    (Bb_survivorat_s_p12)

                    ; #49908: <==closure== 44398 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52715: origin
                    (Bc_survivorat_s_p12)

                    ; #53924: <==closure== 52715 (pos)
                    (Pc_survivorat_s_p12)

                    ; #68438: origin
                    (Bd_survivorat_s_p12)

                    ; #89165: <==closure== 31203 (pos)
                    (Pa_survivorat_s_p12)

                    ; #91039: <==closure== 68438 (pos)
                    (Pd_survivorat_s_p12)

                    ; #25104: <==negation-removal== 68438 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #26582: <==negation-removal== 31203 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #27525: <==negation-removal== 44398 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #30100: <==negation-removal== 53924 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #35754: <==negation-removal== 91039 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #41660: <==negation-removal== 52715 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #44855: <==negation-removal== 49908 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #77814: <==negation-removal== 89165 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #31203: origin
                    (Ba_survivorat_s_p12)

                    ; #44398: origin
                    (Bb_survivorat_s_p12)

                    ; #49908: <==closure== 44398 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52715: origin
                    (Bc_survivorat_s_p12)

                    ; #53924: <==closure== 52715 (pos)
                    (Pc_survivorat_s_p12)

                    ; #68438: origin
                    (Bd_survivorat_s_p12)

                    ; #89165: <==closure== 31203 (pos)
                    (Pa_survivorat_s_p12)

                    ; #91039: <==closure== 68438 (pos)
                    (Pd_survivorat_s_p12)

                    ; #25104: <==negation-removal== 68438 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #26582: <==negation-removal== 31203 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #27525: <==negation-removal== 44398 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #30100: <==negation-removal== 53924 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #35754: <==negation-removal== 91039 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #41660: <==negation-removal== 52715 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #44855: <==negation-removal== 49908 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #77814: <==negation-removal== 89165 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #31203: origin
                    (Ba_survivorat_s_p12)

                    ; #44398: origin
                    (Bb_survivorat_s_p12)

                    ; #49908: <==closure== 44398 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52715: origin
                    (Bc_survivorat_s_p12)

                    ; #53924: <==closure== 52715 (pos)
                    (Pc_survivorat_s_p12)

                    ; #68438: origin
                    (Bd_survivorat_s_p12)

                    ; #89165: <==closure== 31203 (pos)
                    (Pa_survivorat_s_p12)

                    ; #91039: <==closure== 68438 (pos)
                    (Pd_survivorat_s_p12)

                    ; #25104: <==negation-removal== 68438 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #26582: <==negation-removal== 31203 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #27525: <==negation-removal== 44398 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #30100: <==negation-removal== 53924 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #35754: <==negation-removal== 91039 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #41660: <==negation-removal== 52715 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #44855: <==negation-removal== 49908 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #77814: <==negation-removal== 89165 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (at_d_p12)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #31203: origin
                    (Ba_survivorat_s_p12)

                    ; #44398: origin
                    (Bb_survivorat_s_p12)

                    ; #49908: <==closure== 44398 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52715: origin
                    (Bc_survivorat_s_p12)

                    ; #53924: <==closure== 52715 (pos)
                    (Pc_survivorat_s_p12)

                    ; #68438: origin
                    (Bd_survivorat_s_p12)

                    ; #89165: <==closure== 31203 (pos)
                    (Pa_survivorat_s_p12)

                    ; #91039: <==closure== 68438 (pos)
                    (Pd_survivorat_s_p12)

                    ; #25104: <==negation-removal== 68438 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #26582: <==negation-removal== 31203 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #27525: <==negation-removal== 44398 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #30100: <==negation-removal== 53924 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #35754: <==negation-removal== 91039 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #41660: <==negation-removal== 52715 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #44855: <==negation-removal== 49908 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #77814: <==negation-removal== 89165 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #12749: origin
                    (Ba_survivorat_s_p1)

                    ; #15046: origin
                    (Bc_survivorat_s_p1)

                    ; #30520: origin
                    (Bd_survivorat_s_p1)

                    ; #47873: <==closure== 30520 (pos)
                    (Pd_survivorat_s_p1)

                    ; #51111: <==closure== 12749 (pos)
                    (Pa_survivorat_s_p1)

                    ; #56359: <==closure== 82478 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60999: <==closure== 15046 (pos)
                    (Pc_survivorat_s_p1)

                    ; #82478: origin
                    (Bb_survivorat_s_p1)

                    ; #16129: <==negation-removal== 12749 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #18849: <==negation-removal== 51111 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #56667: <==negation-removal== 60999 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61223: <==negation-removal== 82478 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #68960: <==negation-removal== 15046 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #70317: <==negation-removal== 56359 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73206: <==negation-removal== 47873 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #80775: <==negation-removal== 30520 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #12749: origin
                    (Ba_survivorat_s_p1)

                    ; #15046: origin
                    (Bc_survivorat_s_p1)

                    ; #30520: origin
                    (Bd_survivorat_s_p1)

                    ; #47873: <==closure== 30520 (pos)
                    (Pd_survivorat_s_p1)

                    ; #51111: <==closure== 12749 (pos)
                    (Pa_survivorat_s_p1)

                    ; #56359: <==closure== 82478 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60999: <==closure== 15046 (pos)
                    (Pc_survivorat_s_p1)

                    ; #82478: origin
                    (Bb_survivorat_s_p1)

                    ; #16129: <==negation-removal== 12749 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #18849: <==negation-removal== 51111 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #56667: <==negation-removal== 60999 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61223: <==negation-removal== 82478 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #68960: <==negation-removal== 15046 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #70317: <==negation-removal== 56359 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73206: <==negation-removal== 47873 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #80775: <==negation-removal== 30520 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #12749: origin
                    (Ba_survivorat_s_p1)

                    ; #15046: origin
                    (Bc_survivorat_s_p1)

                    ; #30520: origin
                    (Bd_survivorat_s_p1)

                    ; #47873: <==closure== 30520 (pos)
                    (Pd_survivorat_s_p1)

                    ; #51111: <==closure== 12749 (pos)
                    (Pa_survivorat_s_p1)

                    ; #56359: <==closure== 82478 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60999: <==closure== 15046 (pos)
                    (Pc_survivorat_s_p1)

                    ; #82478: origin
                    (Bb_survivorat_s_p1)

                    ; #16129: <==negation-removal== 12749 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #18849: <==negation-removal== 51111 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #56667: <==negation-removal== 60999 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61223: <==negation-removal== 82478 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #68960: <==negation-removal== 15046 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #70317: <==negation-removal== 56359 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73206: <==negation-removal== 47873 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #80775: <==negation-removal== 30520 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #12749: origin
                    (Ba_survivorat_s_p1)

                    ; #15046: origin
                    (Bc_survivorat_s_p1)

                    ; #30520: origin
                    (Bd_survivorat_s_p1)

                    ; #47873: <==closure== 30520 (pos)
                    (Pd_survivorat_s_p1)

                    ; #51111: <==closure== 12749 (pos)
                    (Pa_survivorat_s_p1)

                    ; #56359: <==closure== 82478 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60999: <==closure== 15046 (pos)
                    (Pc_survivorat_s_p1)

                    ; #82478: origin
                    (Bb_survivorat_s_p1)

                    ; #16129: <==negation-removal== 12749 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #18849: <==negation-removal== 51111 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #56667: <==negation-removal== 60999 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #61223: <==negation-removal== 82478 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #68960: <==negation-removal== 15046 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #70317: <==negation-removal== 56359 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73206: <==negation-removal== 47873 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #80775: <==negation-removal== 30520 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #14895: <==closure== 83639 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18865: <==closure== 42216 (pos)
                    (Pb_survivorat_s_p2)

                    ; #26773: origin
                    (Bd_survivorat_s_p2)

                    ; #42216: origin
                    (Bb_survivorat_s_p2)

                    ; #78741: <==closure== 84399 (pos)
                    (Pa_survivorat_s_p2)

                    ; #83181: <==closure== 26773 (pos)
                    (Pd_survivorat_s_p2)

                    ; #83639: origin
                    (Bc_survivorat_s_p2)

                    ; #84399: origin
                    (Ba_survivorat_s_p2)

                    ; #10212: <==negation-removal== 14895 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #10354: <==negation-removal== 18865 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #10893: <==negation-removal== 78741 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27774: <==negation-removal== 83181 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #29809: <==negation-removal== 26773 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #38210: <==negation-removal== 84399 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #90601: <==negation-removal== 42216 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #92029: <==negation-removal== 83639 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #14895: <==closure== 83639 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18865: <==closure== 42216 (pos)
                    (Pb_survivorat_s_p2)

                    ; #26773: origin
                    (Bd_survivorat_s_p2)

                    ; #42216: origin
                    (Bb_survivorat_s_p2)

                    ; #78741: <==closure== 84399 (pos)
                    (Pa_survivorat_s_p2)

                    ; #83181: <==closure== 26773 (pos)
                    (Pd_survivorat_s_p2)

                    ; #83639: origin
                    (Bc_survivorat_s_p2)

                    ; #84399: origin
                    (Ba_survivorat_s_p2)

                    ; #10212: <==negation-removal== 14895 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #10354: <==negation-removal== 18865 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #10893: <==negation-removal== 78741 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27774: <==negation-removal== 83181 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #29809: <==negation-removal== 26773 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #38210: <==negation-removal== 84399 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #90601: <==negation-removal== 42216 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #92029: <==negation-removal== 83639 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #14895: <==closure== 83639 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18865: <==closure== 42216 (pos)
                    (Pb_survivorat_s_p2)

                    ; #26773: origin
                    (Bd_survivorat_s_p2)

                    ; #42216: origin
                    (Bb_survivorat_s_p2)

                    ; #78741: <==closure== 84399 (pos)
                    (Pa_survivorat_s_p2)

                    ; #83181: <==closure== 26773 (pos)
                    (Pd_survivorat_s_p2)

                    ; #83639: origin
                    (Bc_survivorat_s_p2)

                    ; #84399: origin
                    (Ba_survivorat_s_p2)

                    ; #10212: <==negation-removal== 14895 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #10354: <==negation-removal== 18865 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #10893: <==negation-removal== 78741 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27774: <==negation-removal== 83181 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #29809: <==negation-removal== 26773 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #38210: <==negation-removal== 84399 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #90601: <==negation-removal== 42216 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #92029: <==negation-removal== 83639 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #14895: <==closure== 83639 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18865: <==closure== 42216 (pos)
                    (Pb_survivorat_s_p2)

                    ; #26773: origin
                    (Bd_survivorat_s_p2)

                    ; #42216: origin
                    (Bb_survivorat_s_p2)

                    ; #78741: <==closure== 84399 (pos)
                    (Pa_survivorat_s_p2)

                    ; #83181: <==closure== 26773 (pos)
                    (Pd_survivorat_s_p2)

                    ; #83639: origin
                    (Bc_survivorat_s_p2)

                    ; #84399: origin
                    (Ba_survivorat_s_p2)

                    ; #10212: <==negation-removal== 14895 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #10354: <==negation-removal== 18865 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #10893: <==negation-removal== 78741 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27774: <==negation-removal== 83181 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #29809: <==negation-removal== 26773 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #38210: <==negation-removal== 84399 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #90601: <==negation-removal== 42216 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #92029: <==negation-removal== 83639 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #23632: <==closure== 38193 (pos)
                    (Pd_survivorat_s_p3)

                    ; #33133: <==closure== 46343 (pos)
                    (Pc_survivorat_s_p3)

                    ; #38193: origin
                    (Bd_survivorat_s_p3)

                    ; #39152: <==closure== 76156 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46343: origin
                    (Bc_survivorat_s_p3)

                    ; #75780: origin
                    (Ba_survivorat_s_p3)

                    ; #76156: origin
                    (Bb_survivorat_s_p3)

                    ; #77960: <==closure== 75780 (pos)
                    (Pa_survivorat_s_p3)

                    ; #10699: <==negation-removal== 77960 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #22150: <==negation-removal== 33133 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #34449: <==negation-removal== 38193 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #36782: <==negation-removal== 39152 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #51687: <==negation-removal== 76156 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #55024: <==negation-removal== 23632 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #66391: <==negation-removal== 46343 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #67431: <==negation-removal== 75780 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #23632: <==closure== 38193 (pos)
                    (Pd_survivorat_s_p3)

                    ; #33133: <==closure== 46343 (pos)
                    (Pc_survivorat_s_p3)

                    ; #38193: origin
                    (Bd_survivorat_s_p3)

                    ; #39152: <==closure== 76156 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46343: origin
                    (Bc_survivorat_s_p3)

                    ; #75780: origin
                    (Ba_survivorat_s_p3)

                    ; #76156: origin
                    (Bb_survivorat_s_p3)

                    ; #77960: <==closure== 75780 (pos)
                    (Pa_survivorat_s_p3)

                    ; #10699: <==negation-removal== 77960 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #22150: <==negation-removal== 33133 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #34449: <==negation-removal== 38193 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #36782: <==negation-removal== 39152 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #51687: <==negation-removal== 76156 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #55024: <==negation-removal== 23632 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #66391: <==negation-removal== 46343 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #67431: <==negation-removal== 75780 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #23632: <==closure== 38193 (pos)
                    (Pd_survivorat_s_p3)

                    ; #33133: <==closure== 46343 (pos)
                    (Pc_survivorat_s_p3)

                    ; #38193: origin
                    (Bd_survivorat_s_p3)

                    ; #39152: <==closure== 76156 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46343: origin
                    (Bc_survivorat_s_p3)

                    ; #75780: origin
                    (Ba_survivorat_s_p3)

                    ; #76156: origin
                    (Bb_survivorat_s_p3)

                    ; #77960: <==closure== 75780 (pos)
                    (Pa_survivorat_s_p3)

                    ; #10699: <==negation-removal== 77960 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #22150: <==negation-removal== 33133 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #34449: <==negation-removal== 38193 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #36782: <==negation-removal== 39152 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #51687: <==negation-removal== 76156 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #55024: <==negation-removal== 23632 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #66391: <==negation-removal== 46343 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #67431: <==negation-removal== 75780 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (at_d_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #23632: <==closure== 38193 (pos)
                    (Pd_survivorat_s_p3)

                    ; #33133: <==closure== 46343 (pos)
                    (Pc_survivorat_s_p3)

                    ; #38193: origin
                    (Bd_survivorat_s_p3)

                    ; #39152: <==closure== 76156 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46343: origin
                    (Bc_survivorat_s_p3)

                    ; #75780: origin
                    (Ba_survivorat_s_p3)

                    ; #76156: origin
                    (Bb_survivorat_s_p3)

                    ; #77960: <==closure== 75780 (pos)
                    (Pa_survivorat_s_p3)

                    ; #10699: <==negation-removal== 77960 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #22150: <==negation-removal== 33133 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #34449: <==negation-removal== 38193 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #36782: <==negation-removal== 39152 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #51687: <==negation-removal== 76156 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #55024: <==negation-removal== 23632 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #66391: <==negation-removal== 46343 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #67431: <==negation-removal== 75780 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #18081: origin
                    (Ba_survivorat_s_p4)

                    ; #66350: <==closure== 18081 (pos)
                    (Pa_survivorat_s_p4)

                    ; #77388: <==closure== 91044 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78743: <==closure== 82864 (pos)
                    (Pd_survivorat_s_p4)

                    ; #82864: origin
                    (Bd_survivorat_s_p4)

                    ; #85062: origin
                    (Bb_survivorat_s_p4)

                    ; #89834: <==closure== 85062 (pos)
                    (Pb_survivorat_s_p4)

                    ; #91044: origin
                    (Bc_survivorat_s_p4)

                    ; #10774: <==negation-removal== 91044 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #27092: <==negation-removal== 18081 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #40418: <==negation-removal== 66350 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #47064: <==negation-removal== 78743 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #49560: <==negation-removal== 82864 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #70340: <==negation-removal== 77388 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #76069: <==negation-removal== 85062 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #87949: <==negation-removal== 89834 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #18081: origin
                    (Ba_survivorat_s_p4)

                    ; #66350: <==closure== 18081 (pos)
                    (Pa_survivorat_s_p4)

                    ; #77388: <==closure== 91044 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78743: <==closure== 82864 (pos)
                    (Pd_survivorat_s_p4)

                    ; #82864: origin
                    (Bd_survivorat_s_p4)

                    ; #85062: origin
                    (Bb_survivorat_s_p4)

                    ; #89834: <==closure== 85062 (pos)
                    (Pb_survivorat_s_p4)

                    ; #91044: origin
                    (Bc_survivorat_s_p4)

                    ; #10774: <==negation-removal== 91044 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #27092: <==negation-removal== 18081 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #40418: <==negation-removal== 66350 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #47064: <==negation-removal== 78743 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #49560: <==negation-removal== 82864 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #70340: <==negation-removal== 77388 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #76069: <==negation-removal== 85062 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #87949: <==negation-removal== 89834 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #18081: origin
                    (Ba_survivorat_s_p4)

                    ; #66350: <==closure== 18081 (pos)
                    (Pa_survivorat_s_p4)

                    ; #77388: <==closure== 91044 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78743: <==closure== 82864 (pos)
                    (Pd_survivorat_s_p4)

                    ; #82864: origin
                    (Bd_survivorat_s_p4)

                    ; #85062: origin
                    (Bb_survivorat_s_p4)

                    ; #89834: <==closure== 85062 (pos)
                    (Pb_survivorat_s_p4)

                    ; #91044: origin
                    (Bc_survivorat_s_p4)

                    ; #10774: <==negation-removal== 91044 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #27092: <==negation-removal== 18081 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #40418: <==negation-removal== 66350 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #47064: <==negation-removal== 78743 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #49560: <==negation-removal== 82864 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #70340: <==negation-removal== 77388 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #76069: <==negation-removal== 85062 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #87949: <==negation-removal== 89834 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #18081: origin
                    (Ba_survivorat_s_p4)

                    ; #66350: <==closure== 18081 (pos)
                    (Pa_survivorat_s_p4)

                    ; #77388: <==closure== 91044 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78743: <==closure== 82864 (pos)
                    (Pd_survivorat_s_p4)

                    ; #82864: origin
                    (Bd_survivorat_s_p4)

                    ; #85062: origin
                    (Bb_survivorat_s_p4)

                    ; #89834: <==closure== 85062 (pos)
                    (Pb_survivorat_s_p4)

                    ; #91044: origin
                    (Bc_survivorat_s_p4)

                    ; #10774: <==negation-removal== 91044 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #27092: <==negation-removal== 18081 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #40418: <==negation-removal== 66350 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #47064: <==negation-removal== 78743 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #49560: <==negation-removal== 82864 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #70340: <==negation-removal== 77388 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #76069: <==negation-removal== 85062 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #87949: <==negation-removal== 89834 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #20331: <==closure== 41514 (pos)
                    (Pb_survivorat_s_p5)

                    ; #41514: origin
                    (Bb_survivorat_s_p5)

                    ; #43703: <==closure== 52713 (pos)
                    (Pa_survivorat_s_p5)

                    ; #52629: <==closure== 82336 (pos)
                    (Pc_survivorat_s_p5)

                    ; #52713: origin
                    (Ba_survivorat_s_p5)

                    ; #61463: origin
                    (Bd_survivorat_s_p5)

                    ; #82336: origin
                    (Bc_survivorat_s_p5)

                    ; #84709: <==closure== 61463 (pos)
                    (Pd_survivorat_s_p5)

                    ; #24022: <==negation-removal== 43703 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #24063: <==negation-removal== 20331 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #25834: <==negation-removal== 52629 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41887: <==negation-removal== 52713 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #48499: <==negation-removal== 41514 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #56909: <==negation-removal== 82336 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #72868: <==negation-removal== 61463 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #84008: <==negation-removal== 84709 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #20331: <==closure== 41514 (pos)
                    (Pb_survivorat_s_p5)

                    ; #41514: origin
                    (Bb_survivorat_s_p5)

                    ; #43703: <==closure== 52713 (pos)
                    (Pa_survivorat_s_p5)

                    ; #52629: <==closure== 82336 (pos)
                    (Pc_survivorat_s_p5)

                    ; #52713: origin
                    (Ba_survivorat_s_p5)

                    ; #61463: origin
                    (Bd_survivorat_s_p5)

                    ; #82336: origin
                    (Bc_survivorat_s_p5)

                    ; #84709: <==closure== 61463 (pos)
                    (Pd_survivorat_s_p5)

                    ; #24022: <==negation-removal== 43703 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #24063: <==negation-removal== 20331 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #25834: <==negation-removal== 52629 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41887: <==negation-removal== 52713 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #48499: <==negation-removal== 41514 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #56909: <==negation-removal== 82336 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #72868: <==negation-removal== 61463 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #84008: <==negation-removal== 84709 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #20331: <==closure== 41514 (pos)
                    (Pb_survivorat_s_p5)

                    ; #41514: origin
                    (Bb_survivorat_s_p5)

                    ; #43703: <==closure== 52713 (pos)
                    (Pa_survivorat_s_p5)

                    ; #52629: <==closure== 82336 (pos)
                    (Pc_survivorat_s_p5)

                    ; #52713: origin
                    (Ba_survivorat_s_p5)

                    ; #61463: origin
                    (Bd_survivorat_s_p5)

                    ; #82336: origin
                    (Bc_survivorat_s_p5)

                    ; #84709: <==closure== 61463 (pos)
                    (Pd_survivorat_s_p5)

                    ; #24022: <==negation-removal== 43703 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #24063: <==negation-removal== 20331 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #25834: <==negation-removal== 52629 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41887: <==negation-removal== 52713 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #48499: <==negation-removal== 41514 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #56909: <==negation-removal== 82336 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #72868: <==negation-removal== 61463 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #84008: <==negation-removal== 84709 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #20331: <==closure== 41514 (pos)
                    (Pb_survivorat_s_p5)

                    ; #41514: origin
                    (Bb_survivorat_s_p5)

                    ; #43703: <==closure== 52713 (pos)
                    (Pa_survivorat_s_p5)

                    ; #52629: <==closure== 82336 (pos)
                    (Pc_survivorat_s_p5)

                    ; #52713: origin
                    (Ba_survivorat_s_p5)

                    ; #61463: origin
                    (Bd_survivorat_s_p5)

                    ; #82336: origin
                    (Bc_survivorat_s_p5)

                    ; #84709: <==closure== 61463 (pos)
                    (Pd_survivorat_s_p5)

                    ; #24022: <==negation-removal== 43703 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #24063: <==negation-removal== 20331 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #25834: <==negation-removal== 52629 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41887: <==negation-removal== 52713 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #48499: <==negation-removal== 41514 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #56909: <==negation-removal== 82336 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #72868: <==negation-removal== 61463 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #84008: <==negation-removal== 84709 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #18609: origin
                    (Bd_survivorat_s_p6)

                    ; #28317: <==closure== 18609 (pos)
                    (Pd_survivorat_s_p6)

                    ; #31314: <==closure== 75651 (pos)
                    (Pc_survivorat_s_p6)

                    ; #35900: origin
                    (Bb_survivorat_s_p6)

                    ; #53042: <==closure== 76664 (pos)
                    (Pa_survivorat_s_p6)

                    ; #68849: <==closure== 35900 (pos)
                    (Pb_survivorat_s_p6)

                    ; #75651: origin
                    (Bc_survivorat_s_p6)

                    ; #76664: origin
                    (Ba_survivorat_s_p6)

                    ; #11204: <==negation-removal== 53042 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #15010: <==negation-removal== 35900 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #17224: <==negation-removal== 68849 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #22048: <==negation-removal== 28317 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #48906: <==negation-removal== 76664 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #64822: <==negation-removal== 75651 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #70495: <==negation-removal== 31314 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #76219: <==negation-removal== 18609 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #18609: origin
                    (Bd_survivorat_s_p6)

                    ; #28317: <==closure== 18609 (pos)
                    (Pd_survivorat_s_p6)

                    ; #31314: <==closure== 75651 (pos)
                    (Pc_survivorat_s_p6)

                    ; #35900: origin
                    (Bb_survivorat_s_p6)

                    ; #53042: <==closure== 76664 (pos)
                    (Pa_survivorat_s_p6)

                    ; #68849: <==closure== 35900 (pos)
                    (Pb_survivorat_s_p6)

                    ; #75651: origin
                    (Bc_survivorat_s_p6)

                    ; #76664: origin
                    (Ba_survivorat_s_p6)

                    ; #11204: <==negation-removal== 53042 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #15010: <==negation-removal== 35900 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #17224: <==negation-removal== 68849 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #22048: <==negation-removal== 28317 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #48906: <==negation-removal== 76664 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #64822: <==negation-removal== 75651 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #70495: <==negation-removal== 31314 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #76219: <==negation-removal== 18609 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #18609: origin
                    (Bd_survivorat_s_p6)

                    ; #28317: <==closure== 18609 (pos)
                    (Pd_survivorat_s_p6)

                    ; #31314: <==closure== 75651 (pos)
                    (Pc_survivorat_s_p6)

                    ; #35900: origin
                    (Bb_survivorat_s_p6)

                    ; #53042: <==closure== 76664 (pos)
                    (Pa_survivorat_s_p6)

                    ; #68849: <==closure== 35900 (pos)
                    (Pb_survivorat_s_p6)

                    ; #75651: origin
                    (Bc_survivorat_s_p6)

                    ; #76664: origin
                    (Ba_survivorat_s_p6)

                    ; #11204: <==negation-removal== 53042 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #15010: <==negation-removal== 35900 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #17224: <==negation-removal== 68849 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #22048: <==negation-removal== 28317 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #48906: <==negation-removal== 76664 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #64822: <==negation-removal== 75651 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #70495: <==negation-removal== 31314 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #76219: <==negation-removal== 18609 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #18609: origin
                    (Bd_survivorat_s_p6)

                    ; #28317: <==closure== 18609 (pos)
                    (Pd_survivorat_s_p6)

                    ; #31314: <==closure== 75651 (pos)
                    (Pc_survivorat_s_p6)

                    ; #35900: origin
                    (Bb_survivorat_s_p6)

                    ; #53042: <==closure== 76664 (pos)
                    (Pa_survivorat_s_p6)

                    ; #68849: <==closure== 35900 (pos)
                    (Pb_survivorat_s_p6)

                    ; #75651: origin
                    (Bc_survivorat_s_p6)

                    ; #76664: origin
                    (Ba_survivorat_s_p6)

                    ; #11204: <==negation-removal== 53042 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #15010: <==negation-removal== 35900 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #17224: <==negation-removal== 68849 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #22048: <==negation-removal== 28317 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #48906: <==negation-removal== 76664 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #64822: <==negation-removal== 75651 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #70495: <==negation-removal== 31314 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #76219: <==negation-removal== 18609 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #10750: <==closure== 32349 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10833: <==closure== 73462 (pos)
                    (Pc_survivorat_s_p7)

                    ; #19942: <==closure== 57751 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32349: origin
                    (Ba_survivorat_s_p7)

                    ; #57751: origin
                    (Bb_survivorat_s_p7)

                    ; #73462: origin
                    (Bc_survivorat_s_p7)

                    ; #87345: origin
                    (Bd_survivorat_s_p7)

                    ; #90067: <==closure== 87345 (pos)
                    (Pd_survivorat_s_p7)

                    ; #28400: <==negation-removal== 87345 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #30152: <==negation-removal== 90067 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #32907: <==negation-removal== 10833 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #35738: <==negation-removal== 57751 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #41750: <==negation-removal== 19942 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #44473: <==negation-removal== 73462 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #56513: <==negation-removal== 32349 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #59316: <==negation-removal== 10750 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #10750: <==closure== 32349 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10833: <==closure== 73462 (pos)
                    (Pc_survivorat_s_p7)

                    ; #19942: <==closure== 57751 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32349: origin
                    (Ba_survivorat_s_p7)

                    ; #57751: origin
                    (Bb_survivorat_s_p7)

                    ; #73462: origin
                    (Bc_survivorat_s_p7)

                    ; #87345: origin
                    (Bd_survivorat_s_p7)

                    ; #90067: <==closure== 87345 (pos)
                    (Pd_survivorat_s_p7)

                    ; #28400: <==negation-removal== 87345 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #30152: <==negation-removal== 90067 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #32907: <==negation-removal== 10833 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #35738: <==negation-removal== 57751 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #41750: <==negation-removal== 19942 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #44473: <==negation-removal== 73462 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #56513: <==negation-removal== 32349 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #59316: <==negation-removal== 10750 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #10750: <==closure== 32349 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10833: <==closure== 73462 (pos)
                    (Pc_survivorat_s_p7)

                    ; #19942: <==closure== 57751 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32349: origin
                    (Ba_survivorat_s_p7)

                    ; #57751: origin
                    (Bb_survivorat_s_p7)

                    ; #73462: origin
                    (Bc_survivorat_s_p7)

                    ; #87345: origin
                    (Bd_survivorat_s_p7)

                    ; #90067: <==closure== 87345 (pos)
                    (Pd_survivorat_s_p7)

                    ; #28400: <==negation-removal== 87345 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #30152: <==negation-removal== 90067 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #32907: <==negation-removal== 10833 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #35738: <==negation-removal== 57751 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #41750: <==negation-removal== 19942 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #44473: <==negation-removal== 73462 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #56513: <==negation-removal== 32349 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #59316: <==negation-removal== 10750 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #10750: <==closure== 32349 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10833: <==closure== 73462 (pos)
                    (Pc_survivorat_s_p7)

                    ; #19942: <==closure== 57751 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32349: origin
                    (Ba_survivorat_s_p7)

                    ; #57751: origin
                    (Bb_survivorat_s_p7)

                    ; #73462: origin
                    (Bc_survivorat_s_p7)

                    ; #87345: origin
                    (Bd_survivorat_s_p7)

                    ; #90067: <==closure== 87345 (pos)
                    (Pd_survivorat_s_p7)

                    ; #28400: <==negation-removal== 87345 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #30152: <==negation-removal== 90067 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #32907: <==negation-removal== 10833 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #35738: <==negation-removal== 57751 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #41750: <==negation-removal== 19942 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #44473: <==negation-removal== 73462 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #56513: <==negation-removal== 32349 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #59316: <==negation-removal== 10750 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #13662: origin
                    (Bc_survivorat_s_p8)

                    ; #28792: origin
                    (Bb_survivorat_s_p8)

                    ; #37004: <==closure== 13662 (pos)
                    (Pc_survivorat_s_p8)

                    ; #52469: <==closure== 28792 (pos)
                    (Pb_survivorat_s_p8)

                    ; #53018: <==closure== 53767 (pos)
                    (Pa_survivorat_s_p8)

                    ; #53767: origin
                    (Ba_survivorat_s_p8)

                    ; #82989: origin
                    (Bd_survivorat_s_p8)

                    ; #94094: <==closure== 82989 (pos)
                    (Pd_survivorat_s_p8)

                    ; #25734: <==negation-removal== 37004 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #36957: <==negation-removal== 53767 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #38553: <==negation-removal== 94094 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #44629: <==negation-removal== 52469 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57674: <==negation-removal== 28792 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #59744: <==negation-removal== 53018 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #73495: <==negation-removal== 13662 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #87680: <==negation-removal== 82989 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #13662: origin
                    (Bc_survivorat_s_p8)

                    ; #28792: origin
                    (Bb_survivorat_s_p8)

                    ; #37004: <==closure== 13662 (pos)
                    (Pc_survivorat_s_p8)

                    ; #52469: <==closure== 28792 (pos)
                    (Pb_survivorat_s_p8)

                    ; #53018: <==closure== 53767 (pos)
                    (Pa_survivorat_s_p8)

                    ; #53767: origin
                    (Ba_survivorat_s_p8)

                    ; #82989: origin
                    (Bd_survivorat_s_p8)

                    ; #94094: <==closure== 82989 (pos)
                    (Pd_survivorat_s_p8)

                    ; #25734: <==negation-removal== 37004 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #36957: <==negation-removal== 53767 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #38553: <==negation-removal== 94094 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #44629: <==negation-removal== 52469 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57674: <==negation-removal== 28792 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #59744: <==negation-removal== 53018 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #73495: <==negation-removal== 13662 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #87680: <==negation-removal== 82989 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #13662: origin
                    (Bc_survivorat_s_p8)

                    ; #28792: origin
                    (Bb_survivorat_s_p8)

                    ; #37004: <==closure== 13662 (pos)
                    (Pc_survivorat_s_p8)

                    ; #52469: <==closure== 28792 (pos)
                    (Pb_survivorat_s_p8)

                    ; #53018: <==closure== 53767 (pos)
                    (Pa_survivorat_s_p8)

                    ; #53767: origin
                    (Ba_survivorat_s_p8)

                    ; #82989: origin
                    (Bd_survivorat_s_p8)

                    ; #94094: <==closure== 82989 (pos)
                    (Pd_survivorat_s_p8)

                    ; #25734: <==negation-removal== 37004 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #36957: <==negation-removal== 53767 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #38553: <==negation-removal== 94094 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #44629: <==negation-removal== 52469 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57674: <==negation-removal== 28792 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #59744: <==negation-removal== 53018 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #73495: <==negation-removal== 13662 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #87680: <==negation-removal== 82989 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #13662: origin
                    (Bc_survivorat_s_p8)

                    ; #28792: origin
                    (Bb_survivorat_s_p8)

                    ; #37004: <==closure== 13662 (pos)
                    (Pc_survivorat_s_p8)

                    ; #52469: <==closure== 28792 (pos)
                    (Pb_survivorat_s_p8)

                    ; #53018: <==closure== 53767 (pos)
                    (Pa_survivorat_s_p8)

                    ; #53767: origin
                    (Ba_survivorat_s_p8)

                    ; #82989: origin
                    (Bd_survivorat_s_p8)

                    ; #94094: <==closure== 82989 (pos)
                    (Pd_survivorat_s_p8)

                    ; #25734: <==negation-removal== 37004 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #36957: <==negation-removal== 53767 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #38553: <==negation-removal== 94094 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #44629: <==negation-removal== 52469 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57674: <==negation-removal== 28792 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #59744: <==negation-removal== 53018 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #73495: <==negation-removal== 13662 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #87680: <==negation-removal== 82989 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #11098: origin
                    (Bd_survivorat_s_p9)

                    ; #63828: origin
                    (Bc_survivorat_s_p9)

                    ; #66868: <==closure== 69831 (pos)
                    (Pa_survivorat_s_p9)

                    ; #68672: <==closure== 11098 (pos)
                    (Pd_survivorat_s_p9)

                    ; #69831: origin
                    (Ba_survivorat_s_p9)

                    ; #83746: <==closure== 97712 (pos)
                    (Pb_survivorat_s_p9)

                    ; #88808: <==closure== 63828 (pos)
                    (Pc_survivorat_s_p9)

                    ; #97712: origin
                    (Bb_survivorat_s_p9)

                    ; #23936: <==negation-removal== 88808 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #24369: <==negation-removal== 68672 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #28100: <==negation-removal== 83746 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #50990: <==negation-removal== 11098 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52150: <==negation-removal== 66868 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #55601: <==negation-removal== 63828 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80859: <==negation-removal== 97712 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87377: <==negation-removal== 69831 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #11098: origin
                    (Bd_survivorat_s_p9)

                    ; #63828: origin
                    (Bc_survivorat_s_p9)

                    ; #66868: <==closure== 69831 (pos)
                    (Pa_survivorat_s_p9)

                    ; #68672: <==closure== 11098 (pos)
                    (Pd_survivorat_s_p9)

                    ; #69831: origin
                    (Ba_survivorat_s_p9)

                    ; #83746: <==closure== 97712 (pos)
                    (Pb_survivorat_s_p9)

                    ; #88808: <==closure== 63828 (pos)
                    (Pc_survivorat_s_p9)

                    ; #97712: origin
                    (Bb_survivorat_s_p9)

                    ; #23936: <==negation-removal== 88808 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #24369: <==negation-removal== 68672 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #28100: <==negation-removal== 83746 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #50990: <==negation-removal== 11098 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52150: <==negation-removal== 66868 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #55601: <==negation-removal== 63828 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80859: <==negation-removal== 97712 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87377: <==negation-removal== 69831 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #11098: origin
                    (Bd_survivorat_s_p9)

                    ; #63828: origin
                    (Bc_survivorat_s_p9)

                    ; #66868: <==closure== 69831 (pos)
                    (Pa_survivorat_s_p9)

                    ; #68672: <==closure== 11098 (pos)
                    (Pd_survivorat_s_p9)

                    ; #69831: origin
                    (Ba_survivorat_s_p9)

                    ; #83746: <==closure== 97712 (pos)
                    (Pb_survivorat_s_p9)

                    ; #88808: <==closure== 63828 (pos)
                    (Pc_survivorat_s_p9)

                    ; #97712: origin
                    (Bb_survivorat_s_p9)

                    ; #23936: <==negation-removal== 88808 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #24369: <==negation-removal== 68672 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #28100: <==negation-removal== 83746 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #50990: <==negation-removal== 11098 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52150: <==negation-removal== 66868 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #55601: <==negation-removal== 63828 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80859: <==negation-removal== 97712 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87377: <==negation-removal== 69831 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #11098: origin
                    (Bd_survivorat_s_p9)

                    ; #63828: origin
                    (Bc_survivorat_s_p9)

                    ; #66868: <==closure== 69831 (pos)
                    (Pa_survivorat_s_p9)

                    ; #68672: <==closure== 11098 (pos)
                    (Pd_survivorat_s_p9)

                    ; #69831: origin
                    (Ba_survivorat_s_p9)

                    ; #83746: <==closure== 97712 (pos)
                    (Pb_survivorat_s_p9)

                    ; #88808: <==closure== 63828 (pos)
                    (Pc_survivorat_s_p9)

                    ; #97712: origin
                    (Bb_survivorat_s_p9)

                    ; #23936: <==negation-removal== 88808 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #24369: <==negation-removal== 68672 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #28100: <==negation-removal== 83746 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #50990: <==negation-removal== 11098 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52150: <==negation-removal== 66868 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #55601: <==negation-removal== 63828 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80859: <==negation-removal== 97712 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87377: <==negation-removal== 69831 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #74464: origin
                    (not_at_a_p10)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #74464: origin
                    (not_at_a_p10)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #37427: origin
                    (at_a_p11)

                    ; #74464: origin
                    (not_at_a_p10)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #74464: origin
                    (not_at_a_p10)

                    ; #79335: origin
                    (at_a_p12)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #74464: origin
                    (not_at_a_p10)

                    ; #74648: origin
                    (at_a_p2)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #74464: origin
                    (not_at_a_p10)

                    ; #74680: origin
                    (at_a_p3)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #74464: origin
                    (not_at_a_p10)

                    ; #86057: origin
                    (at_a_p4)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #74464: origin
                    (not_at_a_p10)

                    ; #74587: origin
                    (at_a_p5)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #74464: origin
                    (not_at_a_p10)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #74464: origin
                    (not_at_a_p10)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #39281: origin
                    (at_a_p8)

                    ; #74464: origin
                    (not_at_a_p10)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #44159: origin
                    (at_a_p9)

                    ; #74464: origin
                    (not_at_a_p10)

                    ; #12606: <==negation-removal== 74464 (pos)
                    (not (at_a_p10))

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #37427: origin
                    (at_a_p11)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #79335: origin
                    (at_a_p12)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #74648: origin
                    (at_a_p2)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #74680: origin
                    (at_a_p3)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #83893: origin
                    (not_at_a_p11)

                    ; #86057: origin
                    (at_a_p4)

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #74587: origin
                    (at_a_p5)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #39281: origin
                    (at_a_p8)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #44159: origin
                    (at_a_p9)

                    ; #83893: origin
                    (not_at_a_p11)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #37427: <==negation-removal== 83893 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #60339: origin
                    (not_at_a_p12)

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #60339: origin
                    (not_at_a_p12)

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #37427: origin
                    (at_a_p11)

                    ; #60339: origin
                    (not_at_a_p12)

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #60339: origin
                    (not_at_a_p12)

                    ; #79335: origin
                    (at_a_p12)

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #60339: origin
                    (not_at_a_p12)

                    ; #74648: origin
                    (at_a_p2)

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #60339: origin
                    (not_at_a_p12)

                    ; #74680: origin
                    (at_a_p3)

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #60339: origin
                    (not_at_a_p12)

                    ; #86057: origin
                    (at_a_p4)

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #60339: origin
                    (not_at_a_p12)

                    ; #74587: origin
                    (at_a_p5)

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #60339: origin
                    (not_at_a_p12)

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #60339: origin
                    (not_at_a_p12)

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #39281: origin
                    (at_a_p8)

                    ; #60339: origin
                    (not_at_a_p12)

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #44159: origin
                    (at_a_p9)

                    ; #60339: origin
                    (not_at_a_p12)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #79335: <==negation-removal== 60339 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #26062: origin
                    (not_at_a_p1)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #26062: origin
                    (not_at_a_p1)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #26062: origin
                    (not_at_a_p1)

                    ; #37427: origin
                    (at_a_p11)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #26062: origin
                    (not_at_a_p1)

                    ; #79335: origin
                    (at_a_p12)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #26062: origin
                    (not_at_a_p1)

                    ; #74648: origin
                    (at_a_p2)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #26062: origin
                    (not_at_a_p1)

                    ; #74680: origin
                    (at_a_p3)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #26062: origin
                    (not_at_a_p1)

                    ; #86057: origin
                    (at_a_p4)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #26062: origin
                    (not_at_a_p1)

                    ; #74587: origin
                    (at_a_p5)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #26062: origin
                    (not_at_a_p1)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #26062: origin
                    (not_at_a_p1)

                    ; #29122: origin
                    (at_a_p7)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #26062: origin
                    (not_at_a_p1)

                    ; #39281: origin
                    (at_a_p8)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #26062: origin
                    (not_at_a_p1)

                    ; #44159: origin
                    (at_a_p9)

                    ; #10505: <==negation-removal== 26062 (pos)
                    (not (at_a_p1))

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #37427: origin
                    (at_a_p11)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #76440: origin
                    (not_at_a_p2)

                    ; #79335: origin
                    (at_a_p12)

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #74648: origin
                    (at_a_p2)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #74680: origin
                    (at_a_p3)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #76440: origin
                    (not_at_a_p2)

                    ; #86057: origin
                    (at_a_p4)

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #74587: origin
                    (at_a_p5)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #39281: origin
                    (at_a_p8)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #44159: origin
                    (at_a_p9)

                    ; #76440: origin
                    (not_at_a_p2)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #74648: <==negation-removal== 76440 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #71115: origin
                    (not_at_a_p3)

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #71115: origin
                    (not_at_a_p3)

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #37427: origin
                    (at_a_p11)

                    ; #71115: origin
                    (not_at_a_p3)

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #71115: origin
                    (not_at_a_p3)

                    ; #79335: origin
                    (at_a_p12)

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #71115: origin
                    (not_at_a_p3)

                    ; #74648: origin
                    (at_a_p2)

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #71115: origin
                    (not_at_a_p3)

                    ; #74680: origin
                    (at_a_p3)

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #71115: origin
                    (not_at_a_p3)

                    ; #86057: origin
                    (at_a_p4)

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #71115: origin
                    (not_at_a_p3)

                    ; #74587: origin
                    (at_a_p5)

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #71115: origin
                    (not_at_a_p3)

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #71115: origin
                    (not_at_a_p3)

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #39281: origin
                    (at_a_p8)

                    ; #71115: origin
                    (not_at_a_p3)

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #44159: origin
                    (at_a_p9)

                    ; #71115: origin
                    (not_at_a_p3)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #74680: <==negation-removal== 71115 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #38066: origin
                    (not_at_a_p4)

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #38066: origin
                    (not_at_a_p4)

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #37427: origin
                    (at_a_p11)

                    ; #38066: origin
                    (not_at_a_p4)

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #38066: origin
                    (not_at_a_p4)

                    ; #79335: origin
                    (at_a_p12)

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #38066: origin
                    (not_at_a_p4)

                    ; #74648: origin
                    (at_a_p2)

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #38066: origin
                    (not_at_a_p4)

                    ; #74680: origin
                    (at_a_p3)

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #38066: origin
                    (not_at_a_p4)

                    ; #86057: origin
                    (at_a_p4)

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #38066: origin
                    (not_at_a_p4)

                    ; #74587: origin
                    (at_a_p5)

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #38066: origin
                    (not_at_a_p4)

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #38066: origin
                    (not_at_a_p4)

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #38066: origin
                    (not_at_a_p4)

                    ; #39281: origin
                    (at_a_p8)

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #38066: origin
                    (not_at_a_p4)

                    ; #44159: origin
                    (at_a_p9)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #86057: <==negation-removal== 38066 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #55858: origin
                    (not_at_a_p5)

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #55858: origin
                    (not_at_a_p5)

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5))
        :effect (and
                    ; #37427: origin
                    (at_a_p11)

                    ; #55858: origin
                    (not_at_a_p5)

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #55858: origin
                    (not_at_a_p5)

                    ; #79335: origin
                    (at_a_p12)

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #55858: origin
                    (not_at_a_p5)

                    ; #74648: origin
                    (at_a_p2)

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #55858: origin
                    (not_at_a_p5)

                    ; #74680: origin
                    (at_a_p3)

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #55858: origin
                    (not_at_a_p5)

                    ; #86057: origin
                    (at_a_p4)

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #55858: origin
                    (not_at_a_p5)

                    ; #74587: origin
                    (at_a_p5)

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #55858: origin
                    (not_at_a_p5)

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #55858: origin
                    (not_at_a_p5)

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #39281: origin
                    (at_a_p8)

                    ; #55858: origin
                    (not_at_a_p5)

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #44159: origin
                    (at_a_p9)

                    ; #55858: origin
                    (not_at_a_p5)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #74587: <==negation-removal== 55858 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #37257: origin
                    (not_at_a_p6)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #37257: origin
                    (not_at_a_p6)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #37257: origin
                    (not_at_a_p6)

                    ; #37427: origin
                    (at_a_p11)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #37257: origin
                    (not_at_a_p6)

                    ; #79335: origin
                    (at_a_p12)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #37257: origin
                    (not_at_a_p6)

                    ; #74648: origin
                    (at_a_p2)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #37257: origin
                    (not_at_a_p6)

                    ; #74680: origin
                    (at_a_p3)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #37257: origin
                    (not_at_a_p6)

                    ; #86057: origin
                    (at_a_p4)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #37257: origin
                    (not_at_a_p6)

                    ; #74587: origin
                    (at_a_p5)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #37257: origin
                    (not_at_a_p6)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #37257: origin
                    (not_at_a_p6)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #37257: origin
                    (not_at_a_p6)

                    ; #39281: origin
                    (at_a_p8)

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #37257: origin
                    (not_at_a_p6)

                    ; #44159: origin
                    (at_a_p9)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #18991: <==negation-removal== 37257 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #37427: origin
                    (at_a_p11)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #77727: origin
                    (not_at_a_p7)

                    ; #79335: origin
                    (at_a_p12)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #74648: origin
                    (at_a_p2)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #74680: origin
                    (at_a_p3)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #77727: origin
                    (not_at_a_p7)

                    ; #86057: origin
                    (at_a_p4)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #74587: origin
                    (at_a_p5)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #39281: origin
                    (at_a_p8)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #44159: origin
                    (at_a_p9)

                    ; #77727: origin
                    (not_at_a_p7)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #29122: <==negation-removal== 77727 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #40143: origin
                    (not_at_a_p8)

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #40143: origin
                    (not_at_a_p8)

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #37427: origin
                    (at_a_p11)

                    ; #40143: origin
                    (not_at_a_p8)

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #40143: origin
                    (not_at_a_p8)

                    ; #79335: origin
                    (at_a_p12)

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #40143: origin
                    (not_at_a_p8)

                    ; #74648: origin
                    (at_a_p2)

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #40143: origin
                    (not_at_a_p8)

                    ; #74680: origin
                    (at_a_p3)

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #40143: origin
                    (not_at_a_p8)

                    ; #86057: origin
                    (at_a_p4)

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #40143: origin
                    (not_at_a_p8)

                    ; #74587: origin
                    (at_a_p5)

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #18991: origin
                    (at_a_p6)

                    ; #40143: origin
                    (not_at_a_p8)

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #29122: origin
                    (at_a_p7)

                    ; #40143: origin
                    (not_at_a_p8)

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #39281: origin
                    (at_a_p8)

                    ; #40143: origin
                    (not_at_a_p8)

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #40143: origin
                    (not_at_a_p8)

                    ; #44159: origin
                    (at_a_p9)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #39281: <==negation-removal== 40143 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #10505: origin
                    (at_a_p1)

                    ; #16850: origin
                    (not_at_a_p9)

                    ; #26062: <==negation-removal== 10505 (pos)
                    (not (not_at_a_p1))

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #12606: origin
                    (at_a_p10)

                    ; #16850: origin
                    (not_at_a_p9)

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))

                    ; #74464: <==negation-removal== 12606 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #37427: origin
                    (at_a_p11)

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))

                    ; #83893: <==negation-removal== 37427 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #79335: origin
                    (at_a_p12)

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))

                    ; #60339: <==negation-removal== 79335 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #74648: origin
                    (at_a_p2)

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))

                    ; #76440: <==negation-removal== 74648 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #74680: origin
                    (at_a_p3)

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))

                    ; #71115: <==negation-removal== 74680 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #86057: origin
                    (at_a_p4)

                    ; #38066: <==negation-removal== 86057 (pos)
                    (not (not_at_a_p4))

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #74587: origin
                    (at_a_p5)

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))

                    ; #55858: <==negation-removal== 74587 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #18991: origin
                    (at_a_p6)

                    ; #37257: <==negation-removal== 18991 (pos)
                    (not (not_at_a_p6))

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #29122: origin
                    (at_a_p7)

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))

                    ; #77727: <==negation-removal== 29122 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #39281: origin
                    (at_a_p8)

                    ; #40143: <==negation-removal== 39281 (pos)
                    (not (not_at_a_p8))

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #16850: origin
                    (not_at_a_p9)

                    ; #44159: origin
                    (at_a_p9)

                    ; #16850: <==negation-removal== 44159 (pos)
                    (not (not_at_a_p9))

                    ; #44159: <==negation-removal== 16850 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #32026: origin
                    (not_at_b_p10)

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #32026: origin
                    (not_at_b_p10)

                    ; #75888: origin
                    (at_b_p10)

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #32026: origin
                    (not_at_b_p10)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #32026: origin
                    (not_at_b_p10)

                    ; #86945: origin
                    (at_b_p12)

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #32026: origin
                    (not_at_b_p10)

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #32026: origin
                    (not_at_b_p10)

                    ; #43498: origin
                    (at_b_p3)

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #32026: origin
                    (not_at_b_p10)

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #32026: origin
                    (not_at_b_p10)

                    ; #76634: origin
                    (at_b_p5)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #32026: origin
                    (not_at_b_p10)

                    ; #80096: origin
                    (at_b_p6)

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #32026: origin
                    (not_at_b_p10)

                    ; #72286: origin
                    (at_b_p7)

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #32026: origin
                    (not_at_b_p10)

                    ; #71822: origin
                    (at_b_p8)

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #32026: origin
                    (not_at_b_p10)

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))

                    ; #75888: <==negation-removal== 32026 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #23288: origin
                    (not_at_b_p11)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #75888: origin
                    (at_b_p10)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #28737: origin
                    (at_b_p11)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #86945: origin
                    (at_b_p12)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #25987: origin
                    (at_b_p2)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #43498: origin
                    (at_b_p3)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #25945: origin
                    (at_b_p4)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #76634: origin
                    (at_b_p5)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #80096: origin
                    (at_b_p6)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #72286: origin
                    (at_b_p7)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #23288: origin
                    (not_at_b_p11)

                    ; #71822: origin
                    (at_b_p8)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #23288: origin
                    (not_at_b_p11)

                    ; #28737: <==negation-removal== 23288 (pos)
                    (not (at_b_p11))

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #58907: origin
                    (not_at_b_p12)

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #58907: origin
                    (not_at_b_p12)

                    ; #75888: origin
                    (at_b_p10)

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #58907: origin
                    (not_at_b_p12)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #58907: origin
                    (not_at_b_p12)

                    ; #86945: origin
                    (at_b_p12)

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #58907: origin
                    (not_at_b_p12)

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #43498: origin
                    (at_b_p3)

                    ; #58907: origin
                    (not_at_b_p12)

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #58907: origin
                    (not_at_b_p12)

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #58907: origin
                    (not_at_b_p12)

                    ; #76634: origin
                    (at_b_p5)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #58907: origin
                    (not_at_b_p12)

                    ; #80096: origin
                    (at_b_p6)

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #58907: origin
                    (not_at_b_p12)

                    ; #72286: origin
                    (at_b_p7)

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #58907: origin
                    (not_at_b_p12)

                    ; #71822: origin
                    (at_b_p8)

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #58907: origin
                    (not_at_b_p12)

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))

                    ; #86945: <==negation-removal== 58907 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #56208: origin
                    (not_at_b_p1)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #56208: origin
                    (not_at_b_p1)

                    ; #75888: origin
                    (at_b_p10)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #56208: origin
                    (not_at_b_p1)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #56208: origin
                    (not_at_b_p1)

                    ; #86945: origin
                    (at_b_p12)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #56208: origin
                    (not_at_b_p1)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #43498: origin
                    (at_b_p3)

                    ; #56208: origin
                    (not_at_b_p1)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #56208: origin
                    (not_at_b_p1)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #56208: origin
                    (not_at_b_p1)

                    ; #76634: origin
                    (at_b_p5)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #56208: origin
                    (not_at_b_p1)

                    ; #80096: origin
                    (at_b_p6)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #56208: origin
                    (not_at_b_p1)

                    ; #72286: origin
                    (at_b_p7)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #56208: origin
                    (not_at_b_p1)

                    ; #71822: origin
                    (at_b_p8)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #56208: origin
                    (not_at_b_p1)

                    ; #20963: <==negation-removal== 56208 (pos)
                    (not (at_b_p1))

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #75888: origin
                    (at_b_p10)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #86945: origin
                    (at_b_p12)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #43498: origin
                    (at_b_p3)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #76634: origin
                    (at_b_p5)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #80096: origin
                    (at_b_p6)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #72286: origin
                    (at_b_p7)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #71822: origin
                    (at_b_p8)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #89112: origin
                    (not_at_b_p2)

                    ; #25987: <==negation-removal== 89112 (pos)
                    (not (at_b_p2))

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #71852: origin
                    (not_at_b_p3)

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #71852: origin
                    (not_at_b_p3)

                    ; #75888: origin
                    (at_b_p10)

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #71852: origin
                    (not_at_b_p3)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #71852: origin
                    (not_at_b_p3)

                    ; #86945: origin
                    (at_b_p12)

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #71852: origin
                    (not_at_b_p3)

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #43498: origin
                    (at_b_p3)

                    ; #71852: origin
                    (not_at_b_p3)

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #71852: origin
                    (not_at_b_p3)

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #71852: origin
                    (not_at_b_p3)

                    ; #76634: origin
                    (at_b_p5)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #71852: origin
                    (not_at_b_p3)

                    ; #80096: origin
                    (at_b_p6)

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #71852: origin
                    (not_at_b_p3)

                    ; #72286: origin
                    (at_b_p7)

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #71822: origin
                    (at_b_p8)

                    ; #71852: origin
                    (not_at_b_p3)

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #71852: origin
                    (not_at_b_p3)

                    ; #43498: <==negation-removal== 71852 (pos)
                    (not (at_b_p3))

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #75545: origin
                    (not_at_b_p4)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #75545: origin
                    (not_at_b_p4)

                    ; #75888: origin
                    (at_b_p10)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #75545: origin
                    (not_at_b_p4)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #75545: origin
                    (not_at_b_p4)

                    ; #86945: origin
                    (at_b_p12)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #75545: origin
                    (not_at_b_p4)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #43498: origin
                    (at_b_p3)

                    ; #75545: origin
                    (not_at_b_p4)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #75545: origin
                    (not_at_b_p4)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #75545: origin
                    (not_at_b_p4)

                    ; #76634: origin
                    (at_b_p5)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #75545: origin
                    (not_at_b_p4)

                    ; #80096: origin
                    (at_b_p6)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #72286: origin
                    (at_b_p7)

                    ; #75545: origin
                    (not_at_b_p4)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #71822: origin
                    (at_b_p8)

                    ; #75545: origin
                    (not_at_b_p4)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #75545: origin
                    (not_at_b_p4)

                    ; #25945: <==negation-removal== 75545 (pos)
                    (not (at_b_p4))

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #20963: origin
                    (at_b_p1)

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #75888: origin
                    (at_b_p10)

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #28737: origin
                    (at_b_p11)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #86945: origin
                    (at_b_p12)

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #25987: origin
                    (at_b_p2)

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #43498: origin
                    (at_b_p3)

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #25945: origin
                    (at_b_p4)

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #76634: origin
                    (at_b_p5)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #80096: origin
                    (at_b_p6)

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #72286: origin
                    (at_b_p7)

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #71822: origin
                    (at_b_p8)

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #14409: origin
                    (not_at_b_p5)

                    ; #14735: origin
                    (at_b_p9)

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))

                    ; #76634: <==negation-removal== 14409 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #75888: origin
                    (at_b_p10)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #86945: origin
                    (at_b_p12)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #43498: origin
                    (at_b_p3)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #76634: origin
                    (at_b_p5)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #80096: origin
                    (at_b_p6)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #72286: origin
                    (at_b_p7)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #71822: origin
                    (at_b_p8)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #88496: origin
                    (not_at_b_p6)

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))

                    ; #80096: <==negation-removal== 88496 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #75888: origin
                    (at_b_p10)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #80458: origin
                    (not_at_b_p7)

                    ; #86945: origin
                    (at_b_p12)

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #43498: origin
                    (at_b_p3)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #76634: origin
                    (at_b_p5)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #80096: origin
                    (at_b_p6)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #72286: origin
                    (at_b_p7)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #71822: origin
                    (at_b_p8)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #80458: origin
                    (not_at_b_p7)

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))

                    ; #72286: <==negation-removal== 80458 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #75888: origin
                    (at_b_p10)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #81366: origin
                    (not_at_b_p8)

                    ; #86945: origin
                    (at_b_p12)

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #43498: origin
                    (at_b_p3)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #76634: origin
                    (at_b_p5)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #80096: origin
                    (at_b_p6)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #72286: origin
                    (at_b_p7)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #71822: origin
                    (at_b_p8)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #81366: origin
                    (not_at_b_p8)

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))

                    ; #71822: <==negation-removal== 81366 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #20963: origin
                    (at_b_p1)

                    ; #51638: origin
                    (not_at_b_p9)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #56208: <==negation-removal== 20963 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #51638: origin
                    (not_at_b_p9)

                    ; #75888: origin
                    (at_b_p10)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #32026: <==negation-removal== 75888 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #28737: origin
                    (at_b_p11)

                    ; #51638: origin
                    (not_at_b_p9)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #23288: <==negation-removal== 28737 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #51638: origin
                    (not_at_b_p9)

                    ; #86945: origin
                    (at_b_p12)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #58907: <==negation-removal== 86945 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #25987: origin
                    (at_b_p2)

                    ; #51638: origin
                    (not_at_b_p9)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #89112: <==negation-removal== 25987 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #43498: origin
                    (at_b_p3)

                    ; #51638: origin
                    (not_at_b_p9)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #71852: <==negation-removal== 43498 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #25945: origin
                    (at_b_p4)

                    ; #51638: origin
                    (not_at_b_p9)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #75545: <==negation-removal== 25945 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #51638: origin
                    (not_at_b_p9)

                    ; #76634: origin
                    (at_b_p5)

                    ; #14409: <==negation-removal== 76634 (pos)
                    (not (not_at_b_p5))

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #51638: origin
                    (not_at_b_p9)

                    ; #80096: origin
                    (at_b_p6)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #88496: <==negation-removal== 80096 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #51638: origin
                    (not_at_b_p9)

                    ; #72286: origin
                    (at_b_p7)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #80458: <==negation-removal== 72286 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #51638: origin
                    (not_at_b_p9)

                    ; #71822: origin
                    (at_b_p8)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #81366: <==negation-removal== 71822 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #14735: origin
                    (at_b_p9)

                    ; #51638: origin
                    (not_at_b_p9)

                    ; #14735: <==negation-removal== 51638 (pos)
                    (not (at_b_p9))

                    ; #51638: <==negation-removal== 14735 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #41383: origin
                    (at_c_p1)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #60451: origin
                    (at_c_p10)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #60964: origin
                    (at_c_p11)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #60770: origin
                    (at_c_p12)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #79045: origin
                    (at_c_p2)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #84800: origin
                    (at_c_p3)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #38213: origin
                    (at_c_p4)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #85495: origin
                    (not_at_c_p10)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #82000: origin
                    (at_c_p6)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #72984: origin
                    (at_c_p7)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #34203: origin
                    (at_c_p8)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #53718: origin
                    (at_c_p9)

                    ; #85495: origin
                    (not_at_c_p10)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #60451: <==negation-removal== 85495 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #41383: origin
                    (at_c_p1)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #60451: origin
                    (at_c_p10)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #60964: origin
                    (at_c_p11)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #60770: origin
                    (at_c_p12)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #79045: origin
                    (at_c_p2)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #84421: origin
                    (not_at_c_p11)

                    ; #84800: origin
                    (at_c_p3)

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #38213: origin
                    (at_c_p4)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #84421: origin
                    (not_at_c_p11)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #82000: origin
                    (at_c_p6)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #72984: origin
                    (at_c_p7)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #34203: origin
                    (at_c_p8)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #53718: origin
                    (at_c_p9)

                    ; #84421: origin
                    (not_at_c_p11)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #60964: <==negation-removal== 84421 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #41383: origin
                    (at_c_p1)

                    ; #71101: origin
                    (not_at_c_p12)

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #60451: origin
                    (at_c_p10)

                    ; #71101: origin
                    (not_at_c_p12)

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #60964: origin
                    (at_c_p11)

                    ; #71101: origin
                    (not_at_c_p12)

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #60770: origin
                    (at_c_p12)

                    ; #71101: origin
                    (not_at_c_p12)

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #71101: origin
                    (not_at_c_p12)

                    ; #79045: origin
                    (at_c_p2)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #71101: origin
                    (not_at_c_p12)

                    ; #84800: origin
                    (at_c_p3)

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #38213: origin
                    (at_c_p4)

                    ; #71101: origin
                    (not_at_c_p12)

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #71101: origin
                    (not_at_c_p12)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #71101: origin
                    (not_at_c_p12)

                    ; #82000: origin
                    (at_c_p6)

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #71101: origin
                    (not_at_c_p12)

                    ; #72984: origin
                    (at_c_p7)

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #34203: origin
                    (at_c_p8)

                    ; #71101: origin
                    (not_at_c_p12)

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #53718: origin
                    (at_c_p9)

                    ; #71101: origin
                    (not_at_c_p12)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #60770: <==negation-removal== 71101 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #41383: origin
                    (at_c_p1)

                    ; #64503: origin
                    (not_at_c_p1)

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #60451: origin
                    (at_c_p10)

                    ; #64503: origin
                    (not_at_c_p1)

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #60964: origin
                    (at_c_p11)

                    ; #64503: origin
                    (not_at_c_p1)

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #60770: origin
                    (at_c_p12)

                    ; #64503: origin
                    (not_at_c_p1)

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #64503: origin
                    (not_at_c_p1)

                    ; #79045: origin
                    (at_c_p2)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #64503: origin
                    (not_at_c_p1)

                    ; #84800: origin
                    (at_c_p3)

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #38213: origin
                    (at_c_p4)

                    ; #64503: origin
                    (not_at_c_p1)

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #64503: origin
                    (not_at_c_p1)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #64503: origin
                    (not_at_c_p1)

                    ; #82000: origin
                    (at_c_p6)

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #64503: origin
                    (not_at_c_p1)

                    ; #72984: origin
                    (at_c_p7)

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #34203: origin
                    (at_c_p8)

                    ; #64503: origin
                    (not_at_c_p1)

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #53718: origin
                    (at_c_p9)

                    ; #64503: origin
                    (not_at_c_p1)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #41383: <==negation-removal== 64503 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #41383: origin
                    (at_c_p1)

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #60451: origin
                    (at_c_p10)

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #60964: origin
                    (at_c_p11)

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #60770: origin
                    (at_c_p12)

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #79045: origin
                    (at_c_p2)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #84800: origin
                    (at_c_p3)

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #38213: origin
                    (at_c_p4)

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #82000: origin
                    (at_c_p6)

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #72984: origin
                    (at_c_p7)

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #34203: origin
                    (at_c_p8)

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #10572: origin
                    (not_at_c_p2)

                    ; #53718: origin
                    (at_c_p9)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #79045: <==negation-removal== 10572 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #41383: origin
                    (at_c_p1)

                    ; #62380: origin
                    (not_at_c_p3)

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #60451: origin
                    (at_c_p10)

                    ; #62380: origin
                    (not_at_c_p3)

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #60964: origin
                    (at_c_p11)

                    ; #62380: origin
                    (not_at_c_p3)

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #60770: origin
                    (at_c_p12)

                    ; #62380: origin
                    (not_at_c_p3)

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #62380: origin
                    (not_at_c_p3)

                    ; #79045: origin
                    (at_c_p2)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #62380: origin
                    (not_at_c_p3)

                    ; #84800: origin
                    (at_c_p3)

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #38213: origin
                    (at_c_p4)

                    ; #62380: origin
                    (not_at_c_p3)

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #62380: origin
                    (not_at_c_p3)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #62380: origin
                    (not_at_c_p3)

                    ; #82000: origin
                    (at_c_p6)

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #62380: origin
                    (not_at_c_p3)

                    ; #72984: origin
                    (at_c_p7)

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #34203: origin
                    (at_c_p8)

                    ; #62380: origin
                    (not_at_c_p3)

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #53718: origin
                    (at_c_p9)

                    ; #62380: origin
                    (not_at_c_p3)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #84800: <==negation-removal== 62380 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #41383: origin
                    (at_c_p1)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #60451: origin
                    (at_c_p10)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #60964: origin
                    (at_c_p11)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #60770: origin
                    (at_c_p12)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #79045: origin
                    (at_c_p2)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #84800: origin
                    (at_c_p3)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #38213: origin
                    (at_c_p4)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #87491: origin
                    (not_at_c_p4)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #82000: origin
                    (at_c_p6)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #72984: origin
                    (at_c_p7)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #34203: origin
                    (at_c_p8)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #53718: origin
                    (at_c_p9)

                    ; #87491: origin
                    (not_at_c_p4)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #38213: <==negation-removal== 87491 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #41383: origin
                    (at_c_p1)

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #60451: origin
                    (at_c_p10)

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #60964: origin
                    (at_c_p11)

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #60770: origin
                    (at_c_p12)

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #79045: origin
                    (at_c_p2)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #84800: origin
                    (at_c_p3)

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #38213: origin
                    (at_c_p4)

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #82000: origin
                    (at_c_p6)

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #72984: origin
                    (at_c_p7)

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #34203: origin
                    (at_c_p8)

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #26555: origin
                    (not_at_c_p5)

                    ; #53718: origin
                    (at_c_p9)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #91183: <==negation-removal== 26555 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #41383: origin
                    (at_c_p1)

                    ; #44812: origin
                    (not_at_c_p6)

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #44812: origin
                    (not_at_c_p6)

                    ; #60451: origin
                    (at_c_p10)

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #44812: origin
                    (not_at_c_p6)

                    ; #60964: origin
                    (at_c_p11)

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #44812: origin
                    (not_at_c_p6)

                    ; #60770: origin
                    (at_c_p12)

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #44812: origin
                    (not_at_c_p6)

                    ; #79045: origin
                    (at_c_p2)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #44812: origin
                    (not_at_c_p6)

                    ; #84800: origin
                    (at_c_p3)

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #38213: origin
                    (at_c_p4)

                    ; #44812: origin
                    (not_at_c_p6)

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #44812: origin
                    (not_at_c_p6)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #44812: origin
                    (not_at_c_p6)

                    ; #82000: origin
                    (at_c_p6)

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #44812: origin
                    (not_at_c_p6)

                    ; #72984: origin
                    (at_c_p7)

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #34203: origin
                    (at_c_p8)

                    ; #44812: origin
                    (not_at_c_p6)

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #44812: origin
                    (not_at_c_p6)

                    ; #53718: origin
                    (at_c_p9)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #82000: <==negation-removal== 44812 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #41383: origin
                    (at_c_p1)

                    ; #66544: origin
                    (not_at_c_p7)

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #60451: origin
                    (at_c_p10)

                    ; #66544: origin
                    (not_at_c_p7)

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #60964: origin
                    (at_c_p11)

                    ; #66544: origin
                    (not_at_c_p7)

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #60770: origin
                    (at_c_p12)

                    ; #66544: origin
                    (not_at_c_p7)

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #66544: origin
                    (not_at_c_p7)

                    ; #79045: origin
                    (at_c_p2)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #66544: origin
                    (not_at_c_p7)

                    ; #84800: origin
                    (at_c_p3)

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #38213: origin
                    (at_c_p4)

                    ; #66544: origin
                    (not_at_c_p7)

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #66544: origin
                    (not_at_c_p7)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #66544: origin
                    (not_at_c_p7)

                    ; #82000: origin
                    (at_c_p6)

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #66544: origin
                    (not_at_c_p7)

                    ; #72984: origin
                    (at_c_p7)

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #34203: origin
                    (at_c_p8)

                    ; #66544: origin
                    (not_at_c_p7)

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #53718: origin
                    (at_c_p9)

                    ; #66544: origin
                    (not_at_c_p7)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #72984: <==negation-removal== 66544 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #41383: origin
                    (at_c_p1)

                    ; #73243: origin
                    (not_at_c_p8)

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #60451: origin
                    (at_c_p10)

                    ; #73243: origin
                    (not_at_c_p8)

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #60964: origin
                    (at_c_p11)

                    ; #73243: origin
                    (not_at_c_p8)

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #60770: origin
                    (at_c_p12)

                    ; #73243: origin
                    (not_at_c_p8)

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #73243: origin
                    (not_at_c_p8)

                    ; #79045: origin
                    (at_c_p2)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #73243: origin
                    (not_at_c_p8)

                    ; #84800: origin
                    (at_c_p3)

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #38213: origin
                    (at_c_p4)

                    ; #73243: origin
                    (not_at_c_p8)

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #73243: origin
                    (not_at_c_p8)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #73243: origin
                    (not_at_c_p8)

                    ; #82000: origin
                    (at_c_p6)

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #72984: origin
                    (at_c_p7)

                    ; #73243: origin
                    (not_at_c_p8)

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #34203: origin
                    (at_c_p8)

                    ; #73243: origin
                    (not_at_c_p8)

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #53718: origin
                    (at_c_p9)

                    ; #73243: origin
                    (not_at_c_p8)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #34203: <==negation-removal== 73243 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #41383: origin
                    (at_c_p1)

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))

                    ; #64503: <==negation-removal== 41383 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #60451: origin
                    (at_c_p10)

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))

                    ; #85495: <==negation-removal== 60451 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #60964: origin
                    (at_c_p11)

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))

                    ; #84421: <==negation-removal== 60964 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #60770: origin
                    (at_c_p12)

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))

                    ; #71101: <==negation-removal== 60770 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #79045: origin
                    (at_c_p2)

                    ; #10572: <==negation-removal== 79045 (pos)
                    (not (not_at_c_p2))

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #84800: origin
                    (at_c_p3)

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))

                    ; #62380: <==negation-removal== 84800 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #38213: origin
                    (at_c_p4)

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))

                    ; #87491: <==negation-removal== 38213 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #91183: origin
                    (at_c_p5)

                    ; #26555: <==negation-removal== 91183 (pos)
                    (not (not_at_c_p5))

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #82000: origin
                    (at_c_p6)

                    ; #44812: <==negation-removal== 82000 (pos)
                    (not (not_at_c_p6))

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #72984: origin
                    (at_c_p7)

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))

                    ; #66544: <==negation-removal== 72984 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #34203: origin
                    (at_c_p8)

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))

                    ; #73243: <==negation-removal== 34203 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #19717: origin
                    (not_at_c_p9)

                    ; #53718: origin
                    (at_c_p9)

                    ; #19717: <==negation-removal== 53718 (pos)
                    (not (not_at_c_p9))

                    ; #53718: <==negation-removal== 19717 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (at_d_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #42806: origin
                    (not_at_d_p10)

                    ; #68549: origin
                    (at_d_p1)

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_d_p10))
        :effect (and
                    ; #42806: origin
                    (not_at_d_p10)

                    ; #51638: origin
                    (at_d_p10)

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (at_d_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #42806: origin
                    (not_at_d_p10)

                    ; #78547: origin
                    (at_d_p11)

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p12
        :precondition (and (at_d_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #28145: origin
                    (at_d_p12)

                    ; #42806: origin
                    (not_at_d_p10)

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_d_p10))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #42806: origin
                    (not_at_d_p10)

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p3
        :precondition (and (at_d_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #42806: origin
                    (not_at_d_p10)

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #42806: origin
                    (not_at_d_p10)

                    ; #68204: origin
                    (at_d_p4)

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_d_p10))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #42806: origin
                    (not_at_d_p10)

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (at_d_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #42806: origin
                    (not_at_d_p10)

                    ; #71239: origin
                    (at_d_p6)

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (at_d_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #42806: origin
                    (not_at_d_p10)

                    ; #82986: origin
                    (at_d_p7)

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_d_p10))
        :effect (and
                    ; #42806: origin
                    (not_at_d_p10)

                    ; #84129: origin
                    (at_d_p8)

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p10_p9
        :precondition (and (at_d_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #42806: origin
                    (not_at_d_p10)

                    ; #51638: <==negation-removal== 42806 (pos)
                    (not (at_d_p10))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p11_p1
        :precondition (and (at_d_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #24435: origin
                    (not_at_d_p11)

                    ; #68549: origin
                    (at_d_p1)

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p11_p10
        :precondition (and (at_d_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #24435: origin
                    (not_at_d_p11)

                    ; #51638: origin
                    (at_d_p10)

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p11
        :precondition (and (at_d_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #24435: origin
                    (not_at_d_p11)

                    ; #78547: origin
                    (at_d_p11)

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (at_d_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #24435: origin
                    (not_at_d_p11)

                    ; #28145: origin
                    (at_d_p12)

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p2
        :precondition (and (at_d_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #24435: origin
                    (not_at_d_p11)

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p3
        :precondition (and (at_d_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #24435: origin
                    (not_at_d_p11)

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p4
        :precondition (and (at_d_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #24435: origin
                    (not_at_d_p11)

                    ; #68204: origin
                    (at_d_p4)

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #24435: origin
                    (not_at_d_p11)

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p6
        :precondition (and (at_d_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #24435: origin
                    (not_at_d_p11)

                    ; #71239: origin
                    (at_d_p6)

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p7
        :precondition (and (at_d_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #24435: origin
                    (not_at_d_p11)

                    ; #82986: origin
                    (at_d_p7)

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p8
        :precondition (and (at_d_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #24435: origin
                    (not_at_d_p11)

                    ; #84129: origin
                    (at_d_p8)

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p11_p9
        :precondition (and (at_d_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #24435: origin
                    (not_at_d_p11)

                    ; #78547: <==negation-removal== 24435 (pos)
                    (not (at_d_p11))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p12_p1
        :precondition (and (at_d_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #18100: origin
                    (not_at_d_p12)

                    ; #68549: origin
                    (at_d_p1)

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p12_p10
        :precondition (and (at_d_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #18100: origin
                    (not_at_d_p12)

                    ; #51638: origin
                    (at_d_p10)

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #18100: origin
                    (not_at_d_p12)

                    ; #78547: origin
                    (at_d_p11)

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p12
        :precondition (and (at_d_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #18100: origin
                    (not_at_d_p12)

                    ; #28145: origin
                    (at_d_p12)

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (at_d_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #18100: origin
                    (not_at_d_p12)

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (at_d_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #18100: origin
                    (not_at_d_p12)

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p4
        :precondition (and (at_d_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #18100: origin
                    (not_at_d_p12)

                    ; #68204: origin
                    (at_d_p4)

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (at_d_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #18100: origin
                    (not_at_d_p12)

                    ; #24404: origin
                    (at_d_p5)

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p6
        :precondition (and (at_d_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #18100: origin
                    (not_at_d_p12)

                    ; #71239: origin
                    (at_d_p6)

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (at_d_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #18100: origin
                    (not_at_d_p12)

                    ; #82986: origin
                    (at_d_p7)

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #18100: origin
                    (not_at_d_p12)

                    ; #84129: origin
                    (at_d_p8)

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (at_d_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #18100: origin
                    (not_at_d_p12)

                    ; #28145: <==negation-removal== 18100 (pos)
                    (not (at_d_p12))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #68549: origin
                    (at_d_p1)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1))
        :effect (and
                    ; #51638: origin
                    (at_d_p10)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p11
        :precondition (and (at_d_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #78547: origin
                    (at_d_p11)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p12
        :precondition (and (at_d_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #28145: origin
                    (at_d_p12)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p3
        :precondition (and (at_d_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #68204: origin
                    (at_d_p4)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1))
        :effect (and
                    ; #71239: origin
                    (at_d_p6)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #82286: origin
                    (not_at_d_p1)

                    ; #82986: origin
                    (at_d_p7)

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #82286: origin
                    (not_at_d_p1)

                    ; #84129: origin
                    (at_d_p8)

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #82286: origin
                    (not_at_d_p1)

                    ; #68549: <==negation-removal== 82286 (pos)
                    (not (at_d_p1))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #31509: origin
                    (not_at_d_p2)

                    ; #68549: origin
                    (at_d_p1)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p10
        :precondition (and (at_d_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #31509: origin
                    (not_at_d_p2)

                    ; #51638: origin
                    (at_d_p10)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p2_p11
        :precondition (and (at_d_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #31509: origin
                    (not_at_d_p2)

                    ; #78547: origin
                    (at_d_p11)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p2_p12
        :precondition (and (at_d_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #28145: origin
                    (at_d_p12)

                    ; #31509: origin
                    (not_at_d_p2)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #31509: origin
                    (not_at_d_p2)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (at_d_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #31509: origin
                    (not_at_d_p2)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #31509: origin
                    (not_at_d_p2)

                    ; #68204: origin
                    (at_d_p4)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #31509: origin
                    (not_at_d_p2)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #31509: origin
                    (not_at_d_p2)

                    ; #71239: origin
                    (at_d_p6)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #31509: origin
                    (not_at_d_p2)

                    ; #82986: origin
                    (at_d_p7)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #31509: origin
                    (not_at_d_p2)

                    ; #84129: origin
                    (at_d_p8)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #31509: origin
                    (not_at_d_p2)

                    ; #11075: <==negation-removal== 31509 (pos)
                    (not (at_d_p2))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #25579: origin
                    (not_at_d_p3)

                    ; #68549: origin
                    (at_d_p1)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p10
        :precondition (and (at_d_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #25579: origin
                    (not_at_d_p3)

                    ; #51638: origin
                    (at_d_p10)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_d_p3))
        :effect (and
                    ; #25579: origin
                    (not_at_d_p3)

                    ; #78547: origin
                    (at_d_p11)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (at_d_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #25579: origin
                    (not_at_d_p3)

                    ; #28145: origin
                    (at_d_p12)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p3_p2
        :precondition (and (at_d_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #25579: origin
                    (not_at_d_p3)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #25579: origin
                    (not_at_d_p3)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #25579: origin
                    (not_at_d_p3)

                    ; #68204: origin
                    (at_d_p4)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #25579: origin
                    (not_at_d_p3)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #25579: origin
                    (not_at_d_p3)

                    ; #71239: origin
                    (at_d_p6)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #25579: origin
                    (not_at_d_p3)

                    ; #82986: origin
                    (at_d_p7)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #25579: origin
                    (not_at_d_p3)

                    ; #84129: origin
                    (at_d_p8)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #25579: origin
                    (not_at_d_p3)

                    ; #15148: <==negation-removal== 25579 (pos)
                    (not (at_d_p3))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #68549: origin
                    (at_d_p1)

                    ; #75345: origin
                    (not_at_d_p4)

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #51638: origin
                    (at_d_p10)

                    ; #75345: origin
                    (not_at_d_p4)

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #75345: origin
                    (not_at_d_p4)

                    ; #78547: origin
                    (at_d_p11)

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #28145: origin
                    (at_d_p12)

                    ; #75345: origin
                    (not_at_d_p4)

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #75345: origin
                    (not_at_d_p4)

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #75345: origin
                    (not_at_d_p4)

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #68204: origin
                    (at_d_p4)

                    ; #75345: origin
                    (not_at_d_p4)

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #75345: origin
                    (not_at_d_p4)

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #71239: origin
                    (at_d_p6)

                    ; #75345: origin
                    (not_at_d_p4)

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #75345: origin
                    (not_at_d_p4)

                    ; #82986: origin
                    (at_d_p7)

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #75345: origin
                    (not_at_d_p4)

                    ; #84129: origin
                    (at_d_p8)

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #75345: origin
                    (not_at_d_p4)

                    ; #68204: <==negation-removal== 75345 (pos)
                    (not (at_d_p4))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #24294: origin
                    (not_at_d_p5)

                    ; #68549: origin
                    (at_d_p1)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_d_p5))
        :effect (and
                    ; #24294: origin
                    (not_at_d_p5)

                    ; #51638: origin
                    (at_d_p10)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5))
        :effect (and
                    ; #24294: origin
                    (not_at_d_p5)

                    ; #78547: origin
                    (at_d_p11)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p5_p12
        :precondition (and (at_d_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #24294: origin
                    (not_at_d_p5)

                    ; #28145: origin
                    (at_d_p12)

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #24294: origin
                    (not_at_d_p5)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #24294: origin
                    (not_at_d_p5)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #24294: origin
                    (not_at_d_p5)

                    ; #68204: origin
                    (at_d_p4)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #24294: origin
                    (not_at_d_p5)

                    ; #24404: origin
                    (at_d_p5)

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #24294: origin
                    (not_at_d_p5)

                    ; #71239: origin
                    (at_d_p6)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (at_d_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #24294: origin
                    (not_at_d_p5)

                    ; #82986: origin
                    (at_d_p7)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #24294: origin
                    (not_at_d_p5)

                    ; #84129: origin
                    (at_d_p8)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #24294: origin
                    (not_at_d_p5)

                    ; #24404: <==negation-removal== 24294 (pos)
                    (not (at_d_p5))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #68549: origin
                    (at_d_p1)

                    ; #70665: origin
                    (not_at_d_p6)

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_d_p6))
        :effect (and
                    ; #51638: origin
                    (at_d_p10)

                    ; #70665: origin
                    (not_at_d_p6)

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_d_p6))
        :effect (and
                    ; #70665: origin
                    (not_at_d_p6)

                    ; #78547: origin
                    (at_d_p11)

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_d_p6))
        :effect (and
                    ; #28145: origin
                    (at_d_p12)

                    ; #70665: origin
                    (not_at_d_p6)

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #70665: origin
                    (not_at_d_p6)

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #70665: origin
                    (not_at_d_p6)

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #68204: origin
                    (at_d_p4)

                    ; #70665: origin
                    (not_at_d_p6)

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #70665: origin
                    (not_at_d_p6)

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #70665: origin
                    (not_at_d_p6)

                    ; #71239: origin
                    (at_d_p6)

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #70665: origin
                    (not_at_d_p6)

                    ; #82986: origin
                    (at_d_p7)

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #70665: origin
                    (not_at_d_p6)

                    ; #84129: origin
                    (at_d_p8)

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #70665: origin
                    (not_at_d_p6)

                    ; #71239: <==negation-removal== 70665 (pos)
                    (not (at_d_p6))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #37886: origin
                    (not_at_d_p7)

                    ; #68549: origin
                    (at_d_p1)

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p10
        :precondition (and (at_d_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #37886: origin
                    (not_at_d_p7)

                    ; #51638: origin
                    (at_d_p10)

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p11
        :precondition (and (at_d_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #37886: origin
                    (not_at_d_p7)

                    ; #78547: origin
                    (at_d_p11)

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p12
        :precondition (and (at_d_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #28145: origin
                    (at_d_p12)

                    ; #37886: origin
                    (not_at_d_p7)

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #37886: origin
                    (not_at_d_p7)

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #37886: origin
                    (not_at_d_p7)

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #37886: origin
                    (not_at_d_p7)

                    ; #68204: origin
                    (at_d_p4)

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #37886: origin
                    (not_at_d_p7)

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #37886: origin
                    (not_at_d_p7)

                    ; #71239: origin
                    (at_d_p6)

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #37886: origin
                    (not_at_d_p7)

                    ; #82986: origin
                    (at_d_p7)

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #37886: origin
                    (not_at_d_p7)

                    ; #84129: origin
                    (at_d_p8)

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #37886: origin
                    (not_at_d_p7)

                    ; #82986: <==negation-removal== 37886 (pos)
                    (not (at_d_p7))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #68549: origin
                    (at_d_p1)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p10
        :precondition (and (at_d_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #51638: origin
                    (at_d_p10)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p11
        :precondition (and (at_d_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #78547: origin
                    (at_d_p11)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #28145: origin
                    (at_d_p12)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #68204: origin
                    (at_d_p4)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #71239: origin
                    (at_d_p6)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #81844: origin
                    (not_at_d_p8)

                    ; #82986: origin
                    (at_d_p7)

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #81844: origin
                    (not_at_d_p8)

                    ; #84129: origin
                    (at_d_p8)

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #81844: origin
                    (not_at_d_p8)

                    ; #84129: <==negation-removal== 81844 (pos)
                    (not (at_d_p8))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #68549: origin
                    (at_d_p1)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #82286: <==negation-removal== 68549 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_d_p9))
        :effect (and
                    ; #51638: origin
                    (at_d_p10)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #42806: <==negation-removal== 51638 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_d_p9))
        :effect (and
                    ; #78547: origin
                    (at_d_p11)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #24435: <==negation-removal== 78547 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_d_p9))
        :effect (and
                    ; #28145: origin
                    (at_d_p12)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #18100: <==negation-removal== 28145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #11075: origin
                    (at_d_p2)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #31509: <==negation-removal== 11075 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #15148: origin
                    (at_d_p3)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #25579: <==negation-removal== 15148 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #68204: origin
                    (at_d_p4)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #75345: <==negation-removal== 68204 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_d_p9))
        :effect (and
                    ; #24404: origin
                    (at_d_p5)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #24294: <==negation-removal== 24404 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #71239: origin
                    (at_d_p6)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #70665: <==negation-removal== 71239 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_d_p9))
        :effect (and
                    ; #82986: origin
                    (at_d_p7)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #37886: <==negation-removal== 82986 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #84129: origin
                    (at_d_p8)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #81844: <==negation-removal== 84129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9))
        :effect (and
                    ; #18012: origin
                    (at_d_p9)

                    ; #88467: origin
                    (not_at_d_p9)

                    ; #18012: <==negation-removal== 88467 (pos)
                    (not (at_d_p9))

                    ; #88467: <==negation-removal== 18012 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11608: <==commonly_known== 22851 (neg)
                    (Pd_checked_p10)

                    ; #12192: <==commonly_known== 46925 (pos)
                    (Bd_checked_p10)

                    ; #19111: <==closure== 37146 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #31822: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #33866: <==commonly_known== 46925 (pos)
                    (Bb_checked_p10)

                    ; #34025: <==commonly_known== 22851 (neg)
                    (Pa_checked_p10)

                    ; #37146: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #40907: <==commonly_known== 22851 (neg)
                    (Pb_checked_p10)

                    ; #46925: origin
                    (checked_p10)

                    ; #46972: <==commonly_known== 22851 (neg)
                    (Pc_checked_p10)

                    ; #52887: <==commonly_known== 46925 (pos)
                    (Ba_checked_p10)

                    ; #63219: <==closure== 31822 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #66361: <==commonly_known== 46925 (pos)
                    (Bc_checked_p10)

                    ; #10722: <==uncertain_firing== 19111 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #11740: <==negation-removal== 12192 (pos)
                    (not (Pd_not_checked_p10))

                    ; #22851: <==negation-removal== 46925 (pos)
                    (not (not_checked_p10))

                    ; #38604: <==negation-removal== 31822 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #46294: <==negation-removal== 46972 (pos)
                    (not (Bc_not_checked_p10))

                    ; #48686: <==negation-removal== 52887 (pos)
                    (not (Pa_not_checked_p10))

                    ; #64656: <==uncertain_firing== 63219 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #66700: <==negation-removal== 40907 (pos)
                    (not (Bb_not_checked_p10))

                    ; #67320: <==negation-removal== 66361 (pos)
                    (not (Pc_not_checked_p10))

                    ; #67500: <==negation-removal== 19111 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #72113: <==negation-removal== 11608 (pos)
                    (not (Bd_not_checked_p10))

                    ; #74551: <==negation-removal== 33866 (pos)
                    (not (Pb_not_checked_p10))

                    ; #78908: <==negation-removal== 34025 (pos)
                    (not (Ba_not_checked_p10))

                    ; #79278: <==negation-removal== 37146 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #80917: <==negation-removal== 63219 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #84350: <==uncertain_firing== 31822 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #86902: <==uncertain_firing== 37146 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14408: <==commonly_known== 81180 (pos)
                    (Ba_checked_p11)

                    ; #14421: <==commonly_known== 81180 (pos)
                    (Bc_checked_p11)

                    ; #18634: <==commonly_known== 81180 (pos)
                    (Bd_checked_p11)

                    ; #51910: <==closure== 81402 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #54232: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #66051: <==commonly_known== 81180 (pos)
                    (Bb_checked_p11)

                    ; #70777: <==commonly_known== 75055 (neg)
                    (Pb_checked_p11)

                    ; #72140: <==commonly_known== 75055 (neg)
                    (Pc_checked_p11)

                    ; #77658: <==commonly_known== 75055 (neg)
                    (Pa_checked_p11)

                    ; #81180: origin
                    (checked_p11)

                    ; #81402: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #88779: <==commonly_known== 75055 (neg)
                    (Pd_checked_p11)

                    ; #91666: <==closure== 54232 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #11033: <==uncertain_firing== 51910 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #11816: <==negation-removal== 14421 (pos)
                    (not (Pc_not_checked_p11))

                    ; #15078: <==negation-removal== 70777 (pos)
                    (not (Bb_not_checked_p11))

                    ; #20733: <==negation-removal== 81402 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #21946: <==negation-removal== 18634 (pos)
                    (not (Pd_not_checked_p11))

                    ; #23629: <==negation-removal== 77658 (pos)
                    (not (Ba_not_checked_p11))

                    ; #23857: <==negation-removal== 14408 (pos)
                    (not (Pa_not_checked_p11))

                    ; #24429: <==uncertain_firing== 81402 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #46065: <==negation-removal== 72140 (pos)
                    (not (Bc_not_checked_p11))

                    ; #51405: <==negation-removal== 54232 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #56859: <==negation-removal== 66051 (pos)
                    (not (Pb_not_checked_p11))

                    ; #57996: <==negation-removal== 91666 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #71749: <==negation-removal== 88779 (pos)
                    (not (Bd_not_checked_p11))

                    ; #75055: <==negation-removal== 81180 (pos)
                    (not (not_checked_p11))

                    ; #79422: <==uncertain_firing== 54232 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #80332: <==uncertain_firing== 91666 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #87291: <==negation-removal== 51910 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #13619: <==commonly_known== 91731 (pos)
                    (Bc_checked_p12)

                    ; #21218: <==closure== 59213 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #31448: <==commonly_known== 54624 (neg)
                    (Pa_checked_p12)

                    ; #40928: <==commonly_known== 54624 (neg)
                    (Pc_checked_p12)

                    ; #45348: <==commonly_known== 91731 (pos)
                    (Bb_checked_p12)

                    ; #46995: <==commonly_known== 54624 (neg)
                    (Pd_checked_p12)

                    ; #59213: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #61935: <==commonly_known== 54624 (neg)
                    (Pb_checked_p12)

                    ; #65145: <==closure== 84387 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #70936: <==commonly_known== 91731 (pos)
                    (Bd_checked_p12)

                    ; #73749: <==commonly_known== 91731 (pos)
                    (Ba_checked_p12)

                    ; #84387: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #91731: origin
                    (checked_p12)

                    ; #12353: <==uncertain_firing== 59213 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #13481: <==negation-removal== 59213 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #19109: <==uncertain_firing== 21218 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #20845: <==negation-removal== 40928 (pos)
                    (not (Bc_not_checked_p12))

                    ; #22170: <==negation-removal== 84387 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #23276: <==negation-removal== 73749 (pos)
                    (not (Pa_not_checked_p12))

                    ; #26739: <==negation-removal== 45348 (pos)
                    (not (Pb_not_checked_p12))

                    ; #32068: <==negation-removal== 31448 (pos)
                    (not (Ba_not_checked_p12))

                    ; #34639: <==negation-removal== 70936 (pos)
                    (not (Pd_not_checked_p12))

                    ; #37086: <==uncertain_firing== 65145 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #38030: <==negation-removal== 46995 (pos)
                    (not (Bd_not_checked_p12))

                    ; #43684: <==negation-removal== 65145 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #46495: <==uncertain_firing== 84387 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #54624: <==negation-removal== 91731 (pos)
                    (not (not_checked_p12))

                    ; #66067: <==negation-removal== 13619 (pos)
                    (not (Pc_not_checked_p12))

                    ; #83533: <==negation-removal== 21218 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #88187: <==negation-removal== 61935 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11026: <==commonly_known== 40517 (pos)
                    (Bd_checked_p1)

                    ; #12288: <==commonly_known== 40517 (pos)
                    (Bb_checked_p1)

                    ; #21405: <==commonly_known== 33063 (neg)
                    (Pa_checked_p1)

                    ; #23959: <==commonly_known== 40517 (pos)
                    (Ba_checked_p1)

                    ; #40517: origin
                    (checked_p1)

                    ; #44514: <==commonly_known== 33063 (neg)
                    (Pc_checked_p1)

                    ; #50026: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #50854: <==commonly_known== 33063 (neg)
                    (Pb_checked_p1)

                    ; #58414: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #69501: <==closure== 58414 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #72637: <==commonly_known== 33063 (neg)
                    (Pd_checked_p1)

                    ; #79787: <==commonly_known== 40517 (pos)
                    (Bc_checked_p1)

                    ; #83304: <==closure== 50026 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #14470: <==negation-removal== 69501 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #16719: <==negation-removal== 79787 (pos)
                    (not (Pc_not_checked_p1))

                    ; #32553: <==negation-removal== 50026 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #33063: <==negation-removal== 40517 (pos)
                    (not (not_checked_p1))

                    ; #34737: <==negation-removal== 12288 (pos)
                    (not (Pb_not_checked_p1))

                    ; #39310: <==uncertain_firing== 69501 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #48928: <==negation-removal== 11026 (pos)
                    (not (Pd_not_checked_p1))

                    ; #58464: <==negation-removal== 44514 (pos)
                    (not (Bc_not_checked_p1))

                    ; #62699: <==negation-removal== 58414 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #68890: <==negation-removal== 50854 (pos)
                    (not (Bb_not_checked_p1))

                    ; #69080: <==uncertain_firing== 58414 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #70416: <==negation-removal== 21405 (pos)
                    (not (Ba_not_checked_p1))

                    ; #71462: <==negation-removal== 72637 (pos)
                    (not (Bd_not_checked_p1))

                    ; #73700: <==negation-removal== 23959 (pos)
                    (not (Pa_not_checked_p1))

                    ; #84591: <==uncertain_firing== 83304 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #85278: <==negation-removal== 83304 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #90301: <==uncertain_firing== 50026 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17217: <==commonly_known== 85614 (pos)
                    (Ba_checked_p2)

                    ; #32260: <==commonly_known== 85614 (pos)
                    (Bb_checked_p2)

                    ; #32431: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #37782: <==commonly_known== 15935 (neg)
                    (Pa_checked_p2)

                    ; #42319: <==commonly_known== 15935 (neg)
                    (Pd_checked_p2)

                    ; #42564: <==commonly_known== 15935 (neg)
                    (Pb_checked_p2)

                    ; #49861: <==closure== 83169 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #66516: <==commonly_known== 85614 (pos)
                    (Bd_checked_p2)

                    ; #75207: <==closure== 32431 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #83169: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #83976: <==commonly_known== 15935 (neg)
                    (Pc_checked_p2)

                    ; #84493: <==commonly_known== 85614 (pos)
                    (Bc_checked_p2)

                    ; #85614: origin
                    (checked_p2)

                    ; #13843: <==negation-removal== 42319 (pos)
                    (not (Bd_not_checked_p2))

                    ; #15935: <==negation-removal== 85614 (pos)
                    (not (not_checked_p2))

                    ; #20783: <==negation-removal== 32431 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #22654: <==negation-removal== 42564 (pos)
                    (not (Bb_not_checked_p2))

                    ; #31084: <==negation-removal== 32260 (pos)
                    (not (Pb_not_checked_p2))

                    ; #36774: <==uncertain_firing== 49861 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #39392: <==negation-removal== 75207 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #41381: <==uncertain_firing== 32431 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #51341: <==uncertain_firing== 83169 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #53024: <==negation-removal== 83976 (pos)
                    (not (Bc_not_checked_p2))

                    ; #53353: <==negation-removal== 49861 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #54962: <==negation-removal== 83169 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #55006: <==negation-removal== 84493 (pos)
                    (not (Pc_not_checked_p2))

                    ; #67768: <==uncertain_firing== 75207 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #79642: <==negation-removal== 17217 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82151: <==negation-removal== 66516 (pos)
                    (not (Pd_not_checked_p2))

                    ; #87074: <==negation-removal== 37782 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17841: <==commonly_known== 69854 (neg)
                    (Pa_checked_p3)

                    ; #23248: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #30120: <==commonly_known== 88907 (pos)
                    (Ba_checked_p3)

                    ; #31154: <==commonly_known== 69854 (neg)
                    (Pc_checked_p3)

                    ; #31618: <==closure== 23248 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #32183: <==commonly_known== 88907 (pos)
                    (Bd_checked_p3)

                    ; #36236: <==commonly_known== 69854 (neg)
                    (Pd_checked_p3)

                    ; #39270: <==commonly_known== 69854 (neg)
                    (Pb_checked_p3)

                    ; #45744: <==closure== 69197 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #62901: <==commonly_known== 88907 (pos)
                    (Bc_checked_p3)

                    ; #69197: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #84120: <==commonly_known== 88907 (pos)
                    (Bb_checked_p3)

                    ; #88907: origin
                    (checked_p3)

                    ; #13917: <==negation-removal== 31618 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #17658: <==negation-removal== 69197 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #22493: <==negation-removal== 23248 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #25119: <==negation-removal== 31154 (pos)
                    (not (Bc_not_checked_p3))

                    ; #31362: <==uncertain_firing== 69197 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #35833: <==negation-removal== 32183 (pos)
                    (not (Pd_not_checked_p3))

                    ; #37838: <==uncertain_firing== 23248 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #41555: <==negation-removal== 62901 (pos)
                    (not (Pc_not_checked_p3))

                    ; #47562: <==negation-removal== 17841 (pos)
                    (not (Ba_not_checked_p3))

                    ; #59867: <==negation-removal== 45744 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #69854: <==negation-removal== 88907 (pos)
                    (not (not_checked_p3))

                    ; #70605: <==uncertain_firing== 31618 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #76052: <==negation-removal== 84120 (pos)
                    (not (Pb_not_checked_p3))

                    ; #83970: <==negation-removal== 36236 (pos)
                    (not (Bd_not_checked_p3))

                    ; #86094: <==uncertain_firing== 45744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #89636: <==negation-removal== 30120 (pos)
                    (not (Pa_not_checked_p3))

                    ; #90995: <==negation-removal== 39270 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13537: <==commonly_known== 53489 (neg)
                    (Pd_checked_p4)

                    ; #29542: <==commonly_known== 53489 (neg)
                    (Pa_checked_p4)

                    ; #32832: <==commonly_known== 53489 (neg)
                    (Pb_checked_p4)

                    ; #35575: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #37170: <==commonly_known== 49144 (pos)
                    (Bd_checked_p4)

                    ; #49144: origin
                    (checked_p4)

                    ; #56919: <==commonly_known== 49144 (pos)
                    (Bb_checked_p4)

                    ; #61545: <==commonly_known== 49144 (pos)
                    (Ba_checked_p4)

                    ; #77391: <==closure== 35575 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #77463: <==closure== 78950 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #77860: <==commonly_known== 49144 (pos)
                    (Bc_checked_p4)

                    ; #78950: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #88594: <==commonly_known== 53489 (neg)
                    (Pc_checked_p4)

                    ; #13744: <==negation-removal== 37170 (pos)
                    (not (Pd_not_checked_p4))

                    ; #21495: <==negation-removal== 77860 (pos)
                    (not (Pc_not_checked_p4))

                    ; #25017: <==uncertain_firing== 78950 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #32903: <==negation-removal== 32832 (pos)
                    (not (Bb_not_checked_p4))

                    ; #34918: <==negation-removal== 29542 (pos)
                    (not (Ba_not_checked_p4))

                    ; #38799: <==uncertain_firing== 77463 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #39084: <==negation-removal== 77463 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #43693: <==negation-removal== 13537 (pos)
                    (not (Bd_not_checked_p4))

                    ; #45718: <==negation-removal== 88594 (pos)
                    (not (Bc_not_checked_p4))

                    ; #53099: <==uncertain_firing== 35575 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #53489: <==negation-removal== 49144 (pos)
                    (not (not_checked_p4))

                    ; #62350: <==negation-removal== 56919 (pos)
                    (not (Pb_not_checked_p4))

                    ; #62974: <==negation-removal== 78950 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #64938: <==negation-removal== 77391 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #81129: <==negation-removal== 35575 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #81776: <==negation-removal== 61545 (pos)
                    (not (Pa_not_checked_p4))

                    ; #89622: <==uncertain_firing== 77391 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #28582: <==commonly_known== 36722 (pos)
                    (Bd_checked_p5)

                    ; #28710: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #32633: <==commonly_known== 36722 (pos)
                    (Ba_checked_p5)

                    ; #33935: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #36722: origin
                    (checked_p5)

                    ; #41486: <==commonly_known== 81507 (neg)
                    (Pb_checked_p5)

                    ; #51221: <==closure== 33935 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #56077: <==commonly_known== 81507 (neg)
                    (Pc_checked_p5)

                    ; #59475: <==commonly_known== 81507 (neg)
                    (Pa_checked_p5)

                    ; #63297: <==commonly_known== 81507 (neg)
                    (Pd_checked_p5)

                    ; #87198: <==commonly_known== 36722 (pos)
                    (Bb_checked_p5)

                    ; #89748: <==commonly_known== 36722 (pos)
                    (Bc_checked_p5)

                    ; #90469: <==closure== 28710 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #17619: <==negation-removal== 63297 (pos)
                    (not (Bd_not_checked_p5))

                    ; #21328: <==negation-removal== 90469 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #26646: <==negation-removal== 56077 (pos)
                    (not (Bc_not_checked_p5))

                    ; #46892: <==negation-removal== 59475 (pos)
                    (not (Ba_not_checked_p5))

                    ; #53356: <==negation-removal== 28582 (pos)
                    (not (Pd_not_checked_p5))

                    ; #53900: <==negation-removal== 87198 (pos)
                    (not (Pb_not_checked_p5))

                    ; #54438: <==uncertain_firing== 28710 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #58617: <==negation-removal== 32633 (pos)
                    (not (Pa_not_checked_p5))

                    ; #62339: <==uncertain_firing== 51221 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #62879: <==uncertain_firing== 90469 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #68395: <==negation-removal== 89748 (pos)
                    (not (Pc_not_checked_p5))

                    ; #71120: <==negation-removal== 28710 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #80042: <==negation-removal== 41486 (pos)
                    (not (Bb_not_checked_p5))

                    ; #81248: <==negation-removal== 51221 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #81507: <==negation-removal== 36722 (pos)
                    (not (not_checked_p5))

                    ; #82880: <==uncertain_firing== 33935 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #91583: <==negation-removal== 33935 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #17190: <==commonly_known== 20315 (neg)
                    (Pc_checked_p6)

                    ; #28144: <==commonly_known== 20315 (neg)
                    (Pa_checked_p6)

                    ; #40360: <==commonly_known== 52797 (pos)
                    (Bb_checked_p6)

                    ; #48985: <==closure== 81243 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #52797: origin
                    (checked_p6)

                    ; #54754: <==commonly_known== 52797 (pos)
                    (Ba_checked_p6)

                    ; #56176: <==commonly_known== 20315 (neg)
                    (Pb_checked_p6)

                    ; #67777: <==closure== 88928 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #68757: <==commonly_known== 20315 (neg)
                    (Pd_checked_p6)

                    ; #81243: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #82476: <==commonly_known== 52797 (pos)
                    (Bc_checked_p6)

                    ; #84848: <==commonly_known== 52797 (pos)
                    (Bd_checked_p6)

                    ; #88928: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #16934: <==uncertain_firing== 81243 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #17844: <==negation-removal== 56176 (pos)
                    (not (Bb_not_checked_p6))

                    ; #20315: <==negation-removal== 52797 (pos)
                    (not (not_checked_p6))

                    ; #23026: <==uncertain_firing== 48985 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #29368: <==negation-removal== 48985 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #31709: <==negation-removal== 40360 (pos)
                    (not (Pb_not_checked_p6))

                    ; #39436: <==uncertain_firing== 67777 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #42391: <==negation-removal== 54754 (pos)
                    (not (Pa_not_checked_p6))

                    ; #42971: <==negation-removal== 67777 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #46050: <==negation-removal== 17190 (pos)
                    (not (Bc_not_checked_p6))

                    ; #50449: <==negation-removal== 84848 (pos)
                    (not (Pd_not_checked_p6))

                    ; #62132: <==negation-removal== 28144 (pos)
                    (not (Ba_not_checked_p6))

                    ; #62778: <==uncertain_firing== 88928 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76916: <==negation-removal== 81243 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #78685: <==negation-removal== 68757 (pos)
                    (not (Bd_not_checked_p6))

                    ; #79459: <==negation-removal== 82476 (pos)
                    (not (Pc_not_checked_p6))

                    ; #84856: <==negation-removal== 88928 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15894: <==closure== 24492 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #17343: <==commonly_known== 60083 (neg)
                    (Pb_checked_p7)

                    ; #19429: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #21002: <==commonly_known== 76384 (pos)
                    (Ba_checked_p7)

                    ; #24314: <==commonly_known== 76384 (pos)
                    (Bb_checked_p7)

                    ; #24492: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #32064: <==commonly_known== 76384 (pos)
                    (Bd_checked_p7)

                    ; #55118: <==closure== 19429 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #55197: <==commonly_known== 60083 (neg)
                    (Pc_checked_p7)

                    ; #61621: <==commonly_known== 60083 (neg)
                    (Pd_checked_p7)

                    ; #71085: <==commonly_known== 60083 (neg)
                    (Pa_checked_p7)

                    ; #76384: origin
                    (checked_p7)

                    ; #92696: <==commonly_known== 76384 (pos)
                    (Bc_checked_p7)

                    ; #13792: <==negation-removal== 21002 (pos)
                    (not (Pa_not_checked_p7))

                    ; #35169: <==negation-removal== 15894 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #39150: <==negation-removal== 55197 (pos)
                    (not (Bc_not_checked_p7))

                    ; #53454: <==negation-removal== 17343 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57015: <==negation-removal== 92696 (pos)
                    (not (Pc_not_checked_p7))

                    ; #59037: <==negation-removal== 61621 (pos)
                    (not (Bd_not_checked_p7))

                    ; #60083: <==negation-removal== 76384 (pos)
                    (not (not_checked_p7))

                    ; #63455: <==uncertain_firing== 15894 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #65349: <==uncertain_firing== 19429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #67710: <==negation-removal== 71085 (pos)
                    (not (Ba_not_checked_p7))

                    ; #75572: <==negation-removal== 55118 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #79492: <==negation-removal== 24314 (pos)
                    (not (Pb_not_checked_p7))

                    ; #79571: <==uncertain_firing== 55118 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #81385: <==uncertain_firing== 24492 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #82021: <==negation-removal== 19429 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #89888: <==negation-removal== 24492 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #91249: <==negation-removal== 32064 (pos)
                    (not (Pd_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12508: <==commonly_known== 31014 (pos)
                    (Bb_checked_p8)

                    ; #18260: <==commonly_known== 31014 (pos)
                    (Ba_checked_p8)

                    ; #19667: <==commonly_known== 32248 (neg)
                    (Pd_checked_p8)

                    ; #27378: <==closure== 51368 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #31014: origin
                    (checked_p8)

                    ; #32918: <==commonly_known== 32248 (neg)
                    (Pc_checked_p8)

                    ; #36097: <==commonly_known== 32248 (neg)
                    (Pa_checked_p8)

                    ; #43277: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #48476: <==closure== 43277 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #49693: <==commonly_known== 31014 (pos)
                    (Bd_checked_p8)

                    ; #51368: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #58107: <==commonly_known== 31014 (pos)
                    (Bc_checked_p8)

                    ; #69048: <==commonly_known== 32248 (neg)
                    (Pb_checked_p8)

                    ; #13621: <==negation-removal== 49693 (pos)
                    (not (Pd_not_checked_p8))

                    ; #32248: <==negation-removal== 31014 (pos)
                    (not (not_checked_p8))

                    ; #38618: <==negation-removal== 58107 (pos)
                    (not (Pc_not_checked_p8))

                    ; #40733: <==uncertain_firing== 43277 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42563: <==uncertain_firing== 48476 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #47348: <==uncertain_firing== 27378 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #48633: <==negation-removal== 69048 (pos)
                    (not (Bb_not_checked_p8))

                    ; #54382: <==negation-removal== 43277 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #67304: <==negation-removal== 27378 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #71253: <==negation-removal== 51368 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #75361: <==negation-removal== 32918 (pos)
                    (not (Bc_not_checked_p8))

                    ; #77972: <==negation-removal== 48476 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #78496: <==negation-removal== 36097 (pos)
                    (not (Ba_not_checked_p8))

                    ; #78661: <==negation-removal== 19667 (pos)
                    (not (Bd_not_checked_p8))

                    ; #86996: <==negation-removal== 18260 (pos)
                    (not (Pa_not_checked_p8))

                    ; #90425: <==uncertain_firing== 51368 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #91170: <==negation-removal== 12508 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11690: <==commonly_known== 71435 (pos)
                    (Ba_checked_p9)

                    ; #15348: <==commonly_known== 56654 (neg)
                    (Pb_checked_p9)

                    ; #15401: <==closure== 39075 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #29936: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #39075: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #42292: <==commonly_known== 71435 (pos)
                    (Bd_checked_p9)

                    ; #44899: <==commonly_known== 71435 (pos)
                    (Bb_checked_p9)

                    ; #49799: <==commonly_known== 56654 (neg)
                    (Pc_checked_p9)

                    ; #60482: <==commonly_known== 56654 (neg)
                    (Pd_checked_p9)

                    ; #62595: <==commonly_known== 56654 (neg)
                    (Pa_checked_p9)

                    ; #68301: <==closure== 29936 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #71435: origin
                    (checked_p9)

                    ; #75970: <==commonly_known== 71435 (pos)
                    (Bc_checked_p9)

                    ; #21767: <==uncertain_firing== 39075 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #21796: <==uncertain_firing== 29936 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #29257: <==negation-removal== 15348 (pos)
                    (not (Bb_not_checked_p9))

                    ; #29515: <==negation-removal== 11690 (pos)
                    (not (Pa_not_checked_p9))

                    ; #47456: <==uncertain_firing== 68301 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #55289: <==uncertain_firing== 15401 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #55637: <==negation-removal== 42292 (pos)
                    (not (Pd_not_checked_p9))

                    ; #56654: <==negation-removal== 71435 (pos)
                    (not (not_checked_p9))

                    ; #60155: <==negation-removal== 44899 (pos)
                    (not (Pb_not_checked_p9))

                    ; #64332: <==negation-removal== 68301 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #64990: <==negation-removal== 15401 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #67290: <==negation-removal== 75970 (pos)
                    (not (Pc_not_checked_p9))

                    ; #68396: <==negation-removal== 29936 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #78323: <==negation-removal== 62595 (pos)
                    (not (Ba_not_checked_p9))

                    ; #88255: <==negation-removal== 39075 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #91669: <==negation-removal== 49799 (pos)
                    (not (Bc_not_checked_p9))

                    ; #94999: <==negation-removal== 60482 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11608: <==commonly_known== 22851 (neg)
                    (Pd_checked_p10)

                    ; #12192: <==commonly_known== 46925 (pos)
                    (Bd_checked_p10)

                    ; #33866: <==commonly_known== 46925 (pos)
                    (Bb_checked_p10)

                    ; #34025: <==commonly_known== 22851 (neg)
                    (Pa_checked_p10)

                    ; #40907: <==commonly_known== 22851 (neg)
                    (Pb_checked_p10)

                    ; #42270: <==closure== 79246 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #45170: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #46925: origin
                    (checked_p10)

                    ; #46972: <==commonly_known== 22851 (neg)
                    (Pc_checked_p10)

                    ; #52887: <==commonly_known== 46925 (pos)
                    (Ba_checked_p10)

                    ; #66361: <==commonly_known== 46925 (pos)
                    (Bc_checked_p10)

                    ; #79246: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #80149: <==closure== 45170 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #11740: <==negation-removal== 12192 (pos)
                    (not (Pd_not_checked_p10))

                    ; #21234: <==negation-removal== 80149 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #22851: <==negation-removal== 46925 (pos)
                    (not (not_checked_p10))

                    ; #37158: <==negation-removal== 79246 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #39214: <==negation-removal== 42270 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #40280: <==uncertain_firing== 45170 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #46294: <==negation-removal== 46972 (pos)
                    (not (Bc_not_checked_p10))

                    ; #48686: <==negation-removal== 52887 (pos)
                    (not (Pa_not_checked_p10))

                    ; #61098: <==negation-removal== 45170 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #66700: <==negation-removal== 40907 (pos)
                    (not (Bb_not_checked_p10))

                    ; #67320: <==negation-removal== 66361 (pos)
                    (not (Pc_not_checked_p10))

                    ; #72113: <==negation-removal== 11608 (pos)
                    (not (Bd_not_checked_p10))

                    ; #72722: <==uncertain_firing== 42270 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #74551: <==negation-removal== 33866 (pos)
                    (not (Pb_not_checked_p10))

                    ; #78908: <==negation-removal== 34025 (pos)
                    (not (Ba_not_checked_p10))

                    ; #85439: <==uncertain_firing== 80149 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #87119: <==uncertain_firing== 79246 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14408: <==commonly_known== 81180 (pos)
                    (Ba_checked_p11)

                    ; #14421: <==commonly_known== 81180 (pos)
                    (Bc_checked_p11)

                    ; #18634: <==commonly_known== 81180 (pos)
                    (Bd_checked_p11)

                    ; #24669: <==closure== 25866 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #25866: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #58462: <==closure== 71239 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #66051: <==commonly_known== 81180 (pos)
                    (Bb_checked_p11)

                    ; #70777: <==commonly_known== 75055 (neg)
                    (Pb_checked_p11)

                    ; #71239: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #72140: <==commonly_known== 75055 (neg)
                    (Pc_checked_p11)

                    ; #77658: <==commonly_known== 75055 (neg)
                    (Pa_checked_p11)

                    ; #81180: origin
                    (checked_p11)

                    ; #88779: <==commonly_known== 75055 (neg)
                    (Pd_checked_p11)

                    ; #11816: <==negation-removal== 14421 (pos)
                    (not (Pc_not_checked_p11))

                    ; #15078: <==negation-removal== 70777 (pos)
                    (not (Bb_not_checked_p11))

                    ; #16394: <==uncertain_firing== 24669 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #21946: <==negation-removal== 18634 (pos)
                    (not (Pd_not_checked_p11))

                    ; #23011: <==negation-removal== 71239 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #23629: <==negation-removal== 77658 (pos)
                    (not (Ba_not_checked_p11))

                    ; #23857: <==negation-removal== 14408 (pos)
                    (not (Pa_not_checked_p11))

                    ; #25516: <==negation-removal== 25866 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #30123: <==uncertain_firing== 71239 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #46065: <==negation-removal== 72140 (pos)
                    (not (Bc_not_checked_p11))

                    ; #50471: <==negation-removal== 58462 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #50617: <==uncertain_firing== 58462 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #56859: <==negation-removal== 66051 (pos)
                    (not (Pb_not_checked_p11))

                    ; #63924: <==negation-removal== 24669 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #71749: <==negation-removal== 88779 (pos)
                    (not (Bd_not_checked_p11))

                    ; #75055: <==negation-removal== 81180 (pos)
                    (not (not_checked_p11))

                    ; #77459: <==uncertain_firing== 25866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12210: <==closure== 51625 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #13619: <==commonly_known== 91731 (pos)
                    (Bc_checked_p12)

                    ; #31448: <==commonly_known== 54624 (neg)
                    (Pa_checked_p12)

                    ; #40928: <==commonly_known== 54624 (neg)
                    (Pc_checked_p12)

                    ; #45348: <==commonly_known== 91731 (pos)
                    (Bb_checked_p12)

                    ; #46995: <==commonly_known== 54624 (neg)
                    (Pd_checked_p12)

                    ; #51625: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #52405: <==closure== 88260 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #61935: <==commonly_known== 54624 (neg)
                    (Pb_checked_p12)

                    ; #70936: <==commonly_known== 91731 (pos)
                    (Bd_checked_p12)

                    ; #73749: <==commonly_known== 91731 (pos)
                    (Ba_checked_p12)

                    ; #88260: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #91731: origin
                    (checked_p12)

                    ; #15885: <==uncertain_firing== 12210 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #20845: <==negation-removal== 40928 (pos)
                    (not (Bc_not_checked_p12))

                    ; #23276: <==negation-removal== 73749 (pos)
                    (not (Pa_not_checked_p12))

                    ; #23609: <==negation-removal== 12210 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #26739: <==negation-removal== 45348 (pos)
                    (not (Pb_not_checked_p12))

                    ; #32068: <==negation-removal== 31448 (pos)
                    (not (Ba_not_checked_p12))

                    ; #34639: <==negation-removal== 70936 (pos)
                    (not (Pd_not_checked_p12))

                    ; #38030: <==negation-removal== 46995 (pos)
                    (not (Bd_not_checked_p12))

                    ; #52433: <==negation-removal== 88260 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #53579: <==uncertain_firing== 88260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #54624: <==negation-removal== 91731 (pos)
                    (not (not_checked_p12))

                    ; #57456: <==negation-removal== 52405 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #66067: <==negation-removal== 13619 (pos)
                    (not (Pc_not_checked_p12))

                    ; #69840: <==uncertain_firing== 51625 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #73150: <==negation-removal== 51625 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #88187: <==negation-removal== 61935 (pos)
                    (not (Bb_not_checked_p12))

                    ; #90042: <==uncertain_firing== 52405 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11026: <==commonly_known== 40517 (pos)
                    (Bd_checked_p1)

                    ; #12288: <==commonly_known== 40517 (pos)
                    (Bb_checked_p1)

                    ; #21405: <==commonly_known== 33063 (neg)
                    (Pa_checked_p1)

                    ; #23959: <==commonly_known== 40517 (pos)
                    (Ba_checked_p1)

                    ; #37394: <==closure== 89134 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #40517: origin
                    (checked_p1)

                    ; #44514: <==commonly_known== 33063 (neg)
                    (Pc_checked_p1)

                    ; #48927: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #50854: <==commonly_known== 33063 (neg)
                    (Pb_checked_p1)

                    ; #62869: <==closure== 48927 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #72637: <==commonly_known== 33063 (neg)
                    (Pd_checked_p1)

                    ; #79787: <==commonly_known== 40517 (pos)
                    (Bc_checked_p1)

                    ; #89134: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #13566: <==uncertain_firing== 89134 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #16719: <==negation-removal== 79787 (pos)
                    (not (Pc_not_checked_p1))

                    ; #29058: <==negation-removal== 48927 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #33063: <==negation-removal== 40517 (pos)
                    (not (not_checked_p1))

                    ; #34109: <==negation-removal== 89134 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #34528: <==uncertain_firing== 37394 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #34737: <==negation-removal== 12288 (pos)
                    (not (Pb_not_checked_p1))

                    ; #38808: <==uncertain_firing== 48927 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47126: <==negation-removal== 62869 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #48928: <==negation-removal== 11026 (pos)
                    (not (Pd_not_checked_p1))

                    ; #58464: <==negation-removal== 44514 (pos)
                    (not (Bc_not_checked_p1))

                    ; #60636: <==negation-removal== 37394 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #68890: <==negation-removal== 50854 (pos)
                    (not (Bb_not_checked_p1))

                    ; #70416: <==negation-removal== 21405 (pos)
                    (not (Ba_not_checked_p1))

                    ; #71462: <==negation-removal== 72637 (pos)
                    (not (Bd_not_checked_p1))

                    ; #73700: <==negation-removal== 23959 (pos)
                    (not (Pa_not_checked_p1))

                    ; #83009: <==uncertain_firing== 62869 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11509: <==closure== 26897 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #17217: <==commonly_known== 85614 (pos)
                    (Ba_checked_p2)

                    ; #26897: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #32260: <==commonly_known== 85614 (pos)
                    (Bb_checked_p2)

                    ; #37782: <==commonly_known== 15935 (neg)
                    (Pa_checked_p2)

                    ; #42319: <==commonly_known== 15935 (neg)
                    (Pd_checked_p2)

                    ; #42564: <==commonly_known== 15935 (neg)
                    (Pb_checked_p2)

                    ; #52606: <==closure== 79333 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #66516: <==commonly_known== 85614 (pos)
                    (Bd_checked_p2)

                    ; #79333: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #83976: <==commonly_known== 15935 (neg)
                    (Pc_checked_p2)

                    ; #84493: <==commonly_known== 85614 (pos)
                    (Bc_checked_p2)

                    ; #85614: origin
                    (checked_p2)

                    ; #13800: <==uncertain_firing== 79333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #13843: <==negation-removal== 42319 (pos)
                    (not (Bd_not_checked_p2))

                    ; #15935: <==negation-removal== 85614 (pos)
                    (not (not_checked_p2))

                    ; #20895: <==uncertain_firing== 52606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #22654: <==negation-removal== 42564 (pos)
                    (not (Bb_not_checked_p2))

                    ; #25218: <==uncertain_firing== 11509 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #25554: <==negation-removal== 79333 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #31084: <==negation-removal== 32260 (pos)
                    (not (Pb_not_checked_p2))

                    ; #38604: <==negation-removal== 52606 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #53024: <==negation-removal== 83976 (pos)
                    (not (Bc_not_checked_p2))

                    ; #55006: <==negation-removal== 84493 (pos)
                    (not (Pc_not_checked_p2))

                    ; #57386: <==negation-removal== 11509 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #62004: <==negation-removal== 26897 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #79642: <==negation-removal== 17217 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82151: <==negation-removal== 66516 (pos)
                    (not (Pd_not_checked_p2))

                    ; #86371: <==uncertain_firing== 26897 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #87074: <==negation-removal== 37782 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17841: <==commonly_known== 69854 (neg)
                    (Pa_checked_p3)

                    ; #29927: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #30120: <==commonly_known== 88907 (pos)
                    (Ba_checked_p3)

                    ; #31154: <==commonly_known== 69854 (neg)
                    (Pc_checked_p3)

                    ; #32183: <==commonly_known== 88907 (pos)
                    (Bd_checked_p3)

                    ; #36236: <==commonly_known== 69854 (neg)
                    (Pd_checked_p3)

                    ; #39270: <==commonly_known== 69854 (neg)
                    (Pb_checked_p3)

                    ; #57562: <==closure== 81593 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #60758: <==closure== 29927 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #62901: <==commonly_known== 88907 (pos)
                    (Bc_checked_p3)

                    ; #81593: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #84120: <==commonly_known== 88907 (pos)
                    (Bb_checked_p3)

                    ; #88907: origin
                    (checked_p3)

                    ; #14346: <==uncertain_firing== 57562 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #23909: <==negation-removal== 60758 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #25119: <==negation-removal== 31154 (pos)
                    (not (Bc_not_checked_p3))

                    ; #35833: <==negation-removal== 32183 (pos)
                    (not (Pd_not_checked_p3))

                    ; #41555: <==negation-removal== 62901 (pos)
                    (not (Pc_not_checked_p3))

                    ; #47562: <==negation-removal== 17841 (pos)
                    (not (Ba_not_checked_p3))

                    ; #49687: <==uncertain_firing== 81593 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #58915: <==negation-removal== 29927 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #61241: <==negation-removal== 81593 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #64443: <==uncertain_firing== 29927 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #69854: <==negation-removal== 88907 (pos)
                    (not (not_checked_p3))

                    ; #76052: <==negation-removal== 84120 (pos)
                    (not (Pb_not_checked_p3))

                    ; #82588: <==negation-removal== 57562 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #83321: <==uncertain_firing== 60758 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #83970: <==negation-removal== 36236 (pos)
                    (not (Bd_not_checked_p3))

                    ; #89636: <==negation-removal== 30120 (pos)
                    (not (Pa_not_checked_p3))

                    ; #90995: <==negation-removal== 39270 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13537: <==commonly_known== 53489 (neg)
                    (Pd_checked_p4)

                    ; #25482: <==closure== 86250 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #29542: <==commonly_known== 53489 (neg)
                    (Pa_checked_p4)

                    ; #32832: <==commonly_known== 53489 (neg)
                    (Pb_checked_p4)

                    ; #37170: <==commonly_known== 49144 (pos)
                    (Bd_checked_p4)

                    ; #44483: <==closure== 90383 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #49144: origin
                    (checked_p4)

                    ; #56919: <==commonly_known== 49144 (pos)
                    (Bb_checked_p4)

                    ; #61545: <==commonly_known== 49144 (pos)
                    (Ba_checked_p4)

                    ; #77860: <==commonly_known== 49144 (pos)
                    (Bc_checked_p4)

                    ; #86250: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #88594: <==commonly_known== 53489 (neg)
                    (Pc_checked_p4)

                    ; #90383: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #13593: <==uncertain_firing== 25482 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #13612: <==negation-removal== 86250 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #13744: <==negation-removal== 37170 (pos)
                    (not (Pd_not_checked_p4))

                    ; #21495: <==negation-removal== 77860 (pos)
                    (not (Pc_not_checked_p4))

                    ; #32903: <==negation-removal== 32832 (pos)
                    (not (Bb_not_checked_p4))

                    ; #34918: <==negation-removal== 29542 (pos)
                    (not (Ba_not_checked_p4))

                    ; #43693: <==negation-removal== 13537 (pos)
                    (not (Bd_not_checked_p4))

                    ; #45443: <==negation-removal== 44483 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #45718: <==negation-removal== 88594 (pos)
                    (not (Bc_not_checked_p4))

                    ; #53489: <==negation-removal== 49144 (pos)
                    (not (not_checked_p4))

                    ; #53513: <==uncertain_firing== 90383 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #60126: <==negation-removal== 90383 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #62350: <==negation-removal== 56919 (pos)
                    (not (Pb_not_checked_p4))

                    ; #68131: <==uncertain_firing== 44483 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #70767: <==negation-removal== 25482 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #81776: <==negation-removal== 61545 (pos)
                    (not (Pa_not_checked_p4))

                    ; #89394: <==uncertain_firing== 86250 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #28582: <==commonly_known== 36722 (pos)
                    (Bd_checked_p5)

                    ; #29502: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #32633: <==commonly_known== 36722 (pos)
                    (Ba_checked_p5)

                    ; #36722: origin
                    (checked_p5)

                    ; #41486: <==commonly_known== 81507 (neg)
                    (Pb_checked_p5)

                    ; #47324: <==closure== 61171 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #56077: <==commonly_known== 81507 (neg)
                    (Pc_checked_p5)

                    ; #59475: <==commonly_known== 81507 (neg)
                    (Pa_checked_p5)

                    ; #61171: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #63297: <==commonly_known== 81507 (neg)
                    (Pd_checked_p5)

                    ; #87198: <==commonly_known== 36722 (pos)
                    (Bb_checked_p5)

                    ; #89748: <==commonly_known== 36722 (pos)
                    (Bc_checked_p5)

                    ; #95318: <==closure== 29502 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #16828: <==uncertain_firing== 95318 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #17619: <==negation-removal== 63297 (pos)
                    (not (Bd_not_checked_p5))

                    ; #25824: <==negation-removal== 95318 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #26646: <==negation-removal== 56077 (pos)
                    (not (Bc_not_checked_p5))

                    ; #29297: <==negation-removal== 61171 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42051: <==uncertain_firing== 29502 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #46892: <==negation-removal== 59475 (pos)
                    (not (Ba_not_checked_p5))

                    ; #47227: <==uncertain_firing== 47324 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #53356: <==negation-removal== 28582 (pos)
                    (not (Pd_not_checked_p5))

                    ; #53900: <==negation-removal== 87198 (pos)
                    (not (Pb_not_checked_p5))

                    ; #58617: <==negation-removal== 32633 (pos)
                    (not (Pa_not_checked_p5))

                    ; #68395: <==negation-removal== 89748 (pos)
                    (not (Pc_not_checked_p5))

                    ; #80042: <==negation-removal== 41486 (pos)
                    (not (Bb_not_checked_p5))

                    ; #81167: <==negation-removal== 29502 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #81507: <==negation-removal== 36722 (pos)
                    (not (not_checked_p5))

                    ; #86753: <==uncertain_firing== 61171 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #89041: <==negation-removal== 47324 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13850: <==closure== 45263 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #17190: <==commonly_known== 20315 (neg)
                    (Pc_checked_p6)

                    ; #22417: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #28144: <==commonly_known== 20315 (neg)
                    (Pa_checked_p6)

                    ; #36462: <==closure== 22417 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #40360: <==commonly_known== 52797 (pos)
                    (Bb_checked_p6)

                    ; #45263: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #52797: origin
                    (checked_p6)

                    ; #54754: <==commonly_known== 52797 (pos)
                    (Ba_checked_p6)

                    ; #56176: <==commonly_known== 20315 (neg)
                    (Pb_checked_p6)

                    ; #68757: <==commonly_known== 20315 (neg)
                    (Pd_checked_p6)

                    ; #82476: <==commonly_known== 52797 (pos)
                    (Bc_checked_p6)

                    ; #84848: <==commonly_known== 52797 (pos)
                    (Bd_checked_p6)

                    ; #13899: <==uncertain_firing== 13850 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #17146: <==uncertain_firing== 36462 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #17844: <==negation-removal== 56176 (pos)
                    (not (Bb_not_checked_p6))

                    ; #20315: <==negation-removal== 52797 (pos)
                    (not (not_checked_p6))

                    ; #28134: <==negation-removal== 45263 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #31709: <==negation-removal== 40360 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34550: <==negation-removal== 22417 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #36944: <==negation-removal== 36462 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #42391: <==negation-removal== 54754 (pos)
                    (not (Pa_not_checked_p6))

                    ; #46050: <==negation-removal== 17190 (pos)
                    (not (Bc_not_checked_p6))

                    ; #48999: <==uncertain_firing== 22417 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #50449: <==negation-removal== 84848 (pos)
                    (not (Pd_not_checked_p6))

                    ; #62132: <==negation-removal== 28144 (pos)
                    (not (Ba_not_checked_p6))

                    ; #65394: <==negation-removal== 13850 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #78685: <==negation-removal== 68757 (pos)
                    (not (Bd_not_checked_p6))

                    ; #79459: <==negation-removal== 82476 (pos)
                    (not (Pc_not_checked_p6))

                    ; #83176: <==uncertain_firing== 45263 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17343: <==commonly_known== 60083 (neg)
                    (Pb_checked_p7)

                    ; #21002: <==commonly_known== 76384 (pos)
                    (Ba_checked_p7)

                    ; #24314: <==commonly_known== 76384 (pos)
                    (Bb_checked_p7)

                    ; #32064: <==commonly_known== 76384 (pos)
                    (Bd_checked_p7)

                    ; #37281: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #46756: <==closure== 37281 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #50805: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #55197: <==commonly_known== 60083 (neg)
                    (Pc_checked_p7)

                    ; #61621: <==commonly_known== 60083 (neg)
                    (Pd_checked_p7)

                    ; #69759: <==closure== 50805 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71085: <==commonly_known== 60083 (neg)
                    (Pa_checked_p7)

                    ; #76384: origin
                    (checked_p7)

                    ; #92696: <==commonly_known== 76384 (pos)
                    (Bc_checked_p7)

                    ; #12986: <==negation-removal== 46756 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #13792: <==negation-removal== 21002 (pos)
                    (not (Pa_not_checked_p7))

                    ; #24401: <==uncertain_firing== 37281 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #39150: <==negation-removal== 55197 (pos)
                    (not (Bc_not_checked_p7))

                    ; #53454: <==negation-removal== 17343 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57015: <==negation-removal== 92696 (pos)
                    (not (Pc_not_checked_p7))

                    ; #59037: <==negation-removal== 61621 (pos)
                    (not (Bd_not_checked_p7))

                    ; #60083: <==negation-removal== 76384 (pos)
                    (not (not_checked_p7))

                    ; #60352: <==uncertain_firing== 50805 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #67710: <==negation-removal== 71085 (pos)
                    (not (Ba_not_checked_p7))

                    ; #71445: <==negation-removal== 37281 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #79492: <==negation-removal== 24314 (pos)
                    (not (Pb_not_checked_p7))

                    ; #85396: <==uncertain_firing== 69759 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #88505: <==negation-removal== 50805 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #91249: <==negation-removal== 32064 (pos)
                    (not (Pd_not_checked_p7))

                    ; #95518: <==negation-removal== 69759 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #96192: <==uncertain_firing== 46756 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12508: <==commonly_known== 31014 (pos)
                    (Bb_checked_p8)

                    ; #18260: <==commonly_known== 31014 (pos)
                    (Ba_checked_p8)

                    ; #19667: <==commonly_known== 32248 (neg)
                    (Pd_checked_p8)

                    ; #20627: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #31014: origin
                    (checked_p8)

                    ; #32918: <==commonly_known== 32248 (neg)
                    (Pc_checked_p8)

                    ; #36097: <==commonly_known== 32248 (neg)
                    (Pa_checked_p8)

                    ; #37165: <==closure== 74408 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #49693: <==commonly_known== 31014 (pos)
                    (Bd_checked_p8)

                    ; #58107: <==commonly_known== 31014 (pos)
                    (Bc_checked_p8)

                    ; #66166: <==closure== 20627 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #69048: <==commonly_known== 32248 (neg)
                    (Pb_checked_p8)

                    ; #74408: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #13621: <==negation-removal== 49693 (pos)
                    (not (Pd_not_checked_p8))

                    ; #16374: <==uncertain_firing== 74408 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #16981: <==negation-removal== 66166 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #20350: <==uncertain_firing== 37165 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #24721: <==negation-removal== 37165 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #30641: <==negation-removal== 20627 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #32248: <==negation-removal== 31014 (pos)
                    (not (not_checked_p8))

                    ; #38595: <==uncertain_firing== 20627 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #38618: <==negation-removal== 58107 (pos)
                    (not (Pc_not_checked_p8))

                    ; #39189: <==uncertain_firing== 66166 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #48633: <==negation-removal== 69048 (pos)
                    (not (Bb_not_checked_p8))

                    ; #75361: <==negation-removal== 32918 (pos)
                    (not (Bc_not_checked_p8))

                    ; #76303: <==negation-removal== 74408 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #78496: <==negation-removal== 36097 (pos)
                    (not (Ba_not_checked_p8))

                    ; #78661: <==negation-removal== 19667 (pos)
                    (not (Bd_not_checked_p8))

                    ; #86996: <==negation-removal== 18260 (pos)
                    (not (Pa_not_checked_p8))

                    ; #91170: <==negation-removal== 12508 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11690: <==commonly_known== 71435 (pos)
                    (Ba_checked_p9)

                    ; #15348: <==commonly_known== 56654 (neg)
                    (Pb_checked_p9)

                    ; #29875: <==closure== 83262 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #33207: <==closure== 57423 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #42292: <==commonly_known== 71435 (pos)
                    (Bd_checked_p9)

                    ; #44899: <==commonly_known== 71435 (pos)
                    (Bb_checked_p9)

                    ; #49799: <==commonly_known== 56654 (neg)
                    (Pc_checked_p9)

                    ; #57423: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #60482: <==commonly_known== 56654 (neg)
                    (Pd_checked_p9)

                    ; #62595: <==commonly_known== 56654 (neg)
                    (Pa_checked_p9)

                    ; #71435: origin
                    (checked_p9)

                    ; #75970: <==commonly_known== 71435 (pos)
                    (Bc_checked_p9)

                    ; #83262: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #27732: <==negation-removal== 57423 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #29257: <==negation-removal== 15348 (pos)
                    (not (Bb_not_checked_p9))

                    ; #29515: <==negation-removal== 11690 (pos)
                    (not (Pa_not_checked_p9))

                    ; #35789: <==uncertain_firing== 29875 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45604: <==uncertain_firing== 83262 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #55238: <==negation-removal== 83262 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #55637: <==negation-removal== 42292 (pos)
                    (not (Pd_not_checked_p9))

                    ; #56654: <==negation-removal== 71435 (pos)
                    (not (not_checked_p9))

                    ; #60155: <==negation-removal== 44899 (pos)
                    (not (Pb_not_checked_p9))

                    ; #62702: <==uncertain_firing== 33207 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #66728: <==uncertain_firing== 57423 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #66746: <==negation-removal== 29875 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #67290: <==negation-removal== 75970 (pos)
                    (not (Pc_not_checked_p9))

                    ; #78323: <==negation-removal== 62595 (pos)
                    (not (Ba_not_checked_p9))

                    ; #87978: <==negation-removal== 33207 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #91669: <==negation-removal== 49799 (pos)
                    (not (Bc_not_checked_p9))

                    ; #94999: <==negation-removal== 60482 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #10228: <==closure== 15312 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #11608: <==commonly_known== 22851 (neg)
                    (Pd_checked_p10)

                    ; #12192: <==commonly_known== 46925 (pos)
                    (Bd_checked_p10)

                    ; #15312: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #33866: <==commonly_known== 46925 (pos)
                    (Bb_checked_p10)

                    ; #34025: <==commonly_known== 22851 (neg)
                    (Pa_checked_p10)

                    ; #40907: <==commonly_known== 22851 (neg)
                    (Pb_checked_p10)

                    ; #46925: origin
                    (checked_p10)

                    ; #46972: <==commonly_known== 22851 (neg)
                    (Pc_checked_p10)

                    ; #52887: <==commonly_known== 46925 (pos)
                    (Ba_checked_p10)

                    ; #66361: <==commonly_known== 46925 (pos)
                    (Bc_checked_p10)

                    ; #81009: <==closure== 90915 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #90915: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #11010: <==uncertain_firing== 10228 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #11740: <==negation-removal== 12192 (pos)
                    (not (Pd_not_checked_p10))

                    ; #22851: <==negation-removal== 46925 (pos)
                    (not (not_checked_p10))

                    ; #27969: <==uncertain_firing== 90915 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #46294: <==negation-removal== 46972 (pos)
                    (not (Bc_not_checked_p10))

                    ; #48686: <==negation-removal== 52887 (pos)
                    (not (Pa_not_checked_p10))

                    ; #53764: <==negation-removal== 10228 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #58121: <==negation-removal== 90915 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #59574: <==negation-removal== 15312 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #60889: <==negation-removal== 81009 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #66700: <==negation-removal== 40907 (pos)
                    (not (Bb_not_checked_p10))

                    ; #67320: <==negation-removal== 66361 (pos)
                    (not (Pc_not_checked_p10))

                    ; #68623: <==uncertain_firing== 81009 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #72113: <==negation-removal== 11608 (pos)
                    (not (Bd_not_checked_p10))

                    ; #74551: <==negation-removal== 33866 (pos)
                    (not (Pb_not_checked_p10))

                    ; #74928: <==uncertain_firing== 15312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #78908: <==negation-removal== 34025 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10534: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #14408: <==commonly_known== 81180 (pos)
                    (Ba_checked_p11)

                    ; #14421: <==commonly_known== 81180 (pos)
                    (Bc_checked_p11)

                    ; #18634: <==commonly_known== 81180 (pos)
                    (Bd_checked_p11)

                    ; #66051: <==commonly_known== 81180 (pos)
                    (Bb_checked_p11)

                    ; #70777: <==commonly_known== 75055 (neg)
                    (Pb_checked_p11)

                    ; #71572: <==closure== 72687 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #71691: <==closure== 10534 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #72140: <==commonly_known== 75055 (neg)
                    (Pc_checked_p11)

                    ; #72687: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #77658: <==commonly_known== 75055 (neg)
                    (Pa_checked_p11)

                    ; #81180: origin
                    (checked_p11)

                    ; #88779: <==commonly_known== 75055 (neg)
                    (Pd_checked_p11)

                    ; #11816: <==negation-removal== 14421 (pos)
                    (not (Pc_not_checked_p11))

                    ; #14742: <==negation-removal== 10534 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #15078: <==negation-removal== 70777 (pos)
                    (not (Bb_not_checked_p11))

                    ; #19926: <==uncertain_firing== 72687 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #21946: <==negation-removal== 18634 (pos)
                    (not (Pd_not_checked_p11))

                    ; #23629: <==negation-removal== 77658 (pos)
                    (not (Ba_not_checked_p11))

                    ; #23857: <==negation-removal== 14408 (pos)
                    (not (Pa_not_checked_p11))

                    ; #25782: <==uncertain_firing== 71691 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #27625: <==negation-removal== 71691 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #46065: <==negation-removal== 72140 (pos)
                    (not (Bc_not_checked_p11))

                    ; #56859: <==negation-removal== 66051 (pos)
                    (not (Pb_not_checked_p11))

                    ; #57128: <==uncertain_firing== 10534 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #68221: <==negation-removal== 71572 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #71749: <==negation-removal== 88779 (pos)
                    (not (Bd_not_checked_p11))

                    ; #75055: <==negation-removal== 81180 (pos)
                    (not (not_checked_p11))

                    ; #76271: <==uncertain_firing== 71572 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #84019: <==negation-removal== 72687 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #13619: <==commonly_known== 91731 (pos)
                    (Bc_checked_p12)

                    ; #31448: <==commonly_known== 54624 (neg)
                    (Pa_checked_p12)

                    ; #38449: <==closure== 42041 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #40928: <==commonly_known== 54624 (neg)
                    (Pc_checked_p12)

                    ; #42041: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #42746: <==closure== 79217 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #45348: <==commonly_known== 91731 (pos)
                    (Bb_checked_p12)

                    ; #46995: <==commonly_known== 54624 (neg)
                    (Pd_checked_p12)

                    ; #61935: <==commonly_known== 54624 (neg)
                    (Pb_checked_p12)

                    ; #70936: <==commonly_known== 91731 (pos)
                    (Bd_checked_p12)

                    ; #73749: <==commonly_known== 91731 (pos)
                    (Ba_checked_p12)

                    ; #79217: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #91731: origin
                    (checked_p12)

                    ; #12250: <==uncertain_firing== 38449 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #17823: <==uncertain_firing== 79217 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #20845: <==negation-removal== 40928 (pos)
                    (not (Bc_not_checked_p12))

                    ; #23276: <==negation-removal== 73749 (pos)
                    (not (Pa_not_checked_p12))

                    ; #26739: <==negation-removal== 45348 (pos)
                    (not (Pb_not_checked_p12))

                    ; #30119: <==negation-removal== 42041 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #32068: <==negation-removal== 31448 (pos)
                    (not (Ba_not_checked_p12))

                    ; #34639: <==negation-removal== 70936 (pos)
                    (not (Pd_not_checked_p12))

                    ; #38030: <==negation-removal== 46995 (pos)
                    (not (Bd_not_checked_p12))

                    ; #40289: <==negation-removal== 42746 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #43357: <==uncertain_firing== 42041 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #54624: <==negation-removal== 91731 (pos)
                    (not (not_checked_p12))

                    ; #59980: <==uncertain_firing== 42746 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #63630: <==negation-removal== 79217 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #66067: <==negation-removal== 13619 (pos)
                    (not (Pc_not_checked_p12))

                    ; #71248: <==negation-removal== 38449 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #88187: <==negation-removal== 61935 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11026: <==commonly_known== 40517 (pos)
                    (Bd_checked_p1)

                    ; #12288: <==commonly_known== 40517 (pos)
                    (Bb_checked_p1)

                    ; #21405: <==commonly_known== 33063 (neg)
                    (Pa_checked_p1)

                    ; #23135: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #23959: <==commonly_known== 40517 (pos)
                    (Ba_checked_p1)

                    ; #40517: origin
                    (checked_p1)

                    ; #44514: <==commonly_known== 33063 (neg)
                    (Pc_checked_p1)

                    ; #45748: <==closure== 23135 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #50854: <==commonly_known== 33063 (neg)
                    (Pb_checked_p1)

                    ; #54654: <==closure== 84545 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #72637: <==commonly_known== 33063 (neg)
                    (Pd_checked_p1)

                    ; #79787: <==commonly_known== 40517 (pos)
                    (Bc_checked_p1)

                    ; #84545: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #10945: <==negation-removal== 45748 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #12872: <==negation-removal== 84545 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #16719: <==negation-removal== 79787 (pos)
                    (not (Pc_not_checked_p1))

                    ; #28309: <==uncertain_firing== 54654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #33063: <==negation-removal== 40517 (pos)
                    (not (not_checked_p1))

                    ; #34737: <==negation-removal== 12288 (pos)
                    (not (Pb_not_checked_p1))

                    ; #48928: <==negation-removal== 11026 (pos)
                    (not (Pd_not_checked_p1))

                    ; #58464: <==negation-removal== 44514 (pos)
                    (not (Bc_not_checked_p1))

                    ; #58726: <==negation-removal== 54654 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #62397: <==negation-removal== 23135 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #68890: <==negation-removal== 50854 (pos)
                    (not (Bb_not_checked_p1))

                    ; #70416: <==negation-removal== 21405 (pos)
                    (not (Ba_not_checked_p1))

                    ; #71462: <==negation-removal== 72637 (pos)
                    (not (Bd_not_checked_p1))

                    ; #73700: <==negation-removal== 23959 (pos)
                    (not (Pa_not_checked_p1))

                    ; #79906: <==uncertain_firing== 23135 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #82553: <==uncertain_firing== 45748 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #91023: <==uncertain_firing== 84545 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17217: <==commonly_known== 85614 (pos)
                    (Ba_checked_p2)

                    ; #32260: <==commonly_known== 85614 (pos)
                    (Bb_checked_p2)

                    ; #37782: <==commonly_known== 15935 (neg)
                    (Pa_checked_p2)

                    ; #41241: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #42319: <==commonly_known== 15935 (neg)
                    (Pd_checked_p2)

                    ; #42564: <==commonly_known== 15935 (neg)
                    (Pb_checked_p2)

                    ; #43089: <==closure== 41241 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #66516: <==commonly_known== 85614 (pos)
                    (Bd_checked_p2)

                    ; #83976: <==commonly_known== 15935 (neg)
                    (Pc_checked_p2)

                    ; #84493: <==commonly_known== 85614 (pos)
                    (Bc_checked_p2)

                    ; #85614: origin
                    (checked_p2)

                    ; #87868: <==closure== 90439 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #90439: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #12485: <==negation-removal== 43089 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #13843: <==negation-removal== 42319 (pos)
                    (not (Bd_not_checked_p2))

                    ; #14120: <==negation-removal== 87868 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #14808: <==uncertain_firing== 90439 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #15935: <==negation-removal== 85614 (pos)
                    (not (not_checked_p2))

                    ; #20119: <==negation-removal== 41241 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #22654: <==negation-removal== 42564 (pos)
                    (not (Bb_not_checked_p2))

                    ; #23037: <==uncertain_firing== 43089 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #31084: <==negation-removal== 32260 (pos)
                    (not (Pb_not_checked_p2))

                    ; #37033: <==uncertain_firing== 41241 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #53024: <==negation-removal== 83976 (pos)
                    (not (Bc_not_checked_p2))

                    ; #55006: <==negation-removal== 84493 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79642: <==negation-removal== 17217 (pos)
                    (not (Pa_not_checked_p2))

                    ; #80904: <==uncertain_firing== 87868 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #82151: <==negation-removal== 66516 (pos)
                    (not (Pd_not_checked_p2))

                    ; #87074: <==negation-removal== 37782 (pos)
                    (not (Ba_not_checked_p2))

                    ; #90843: <==negation-removal== 90439 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17841: <==commonly_known== 69854 (neg)
                    (Pa_checked_p3)

                    ; #28453: <==closure== 31872 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #30120: <==commonly_known== 88907 (pos)
                    (Ba_checked_p3)

                    ; #31154: <==commonly_known== 69854 (neg)
                    (Pc_checked_p3)

                    ; #31872: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #32183: <==commonly_known== 88907 (pos)
                    (Bd_checked_p3)

                    ; #36236: <==commonly_known== 69854 (neg)
                    (Pd_checked_p3)

                    ; #39270: <==commonly_known== 69854 (neg)
                    (Pb_checked_p3)

                    ; #40459: <==closure== 45200 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #45200: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #62901: <==commonly_known== 88907 (pos)
                    (Bc_checked_p3)

                    ; #84120: <==commonly_known== 88907 (pos)
                    (Bb_checked_p3)

                    ; #88907: origin
                    (checked_p3)

                    ; #14911: <==uncertain_firing== 40459 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #25119: <==negation-removal== 31154 (pos)
                    (not (Bc_not_checked_p3))

                    ; #27596: <==negation-removal== 31872 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #29511: <==uncertain_firing== 31872 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #31717: <==negation-removal== 40459 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #35833: <==negation-removal== 32183 (pos)
                    (not (Pd_not_checked_p3))

                    ; #39712: <==uncertain_firing== 28453 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #41555: <==negation-removal== 62901 (pos)
                    (not (Pc_not_checked_p3))

                    ; #47562: <==negation-removal== 17841 (pos)
                    (not (Ba_not_checked_p3))

                    ; #58621: <==negation-removal== 45200 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #59339: <==uncertain_firing== 45200 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #69854: <==negation-removal== 88907 (pos)
                    (not (not_checked_p3))

                    ; #76052: <==negation-removal== 84120 (pos)
                    (not (Pb_not_checked_p3))

                    ; #76471: <==negation-removal== 28453 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #83970: <==negation-removal== 36236 (pos)
                    (not (Bd_not_checked_p3))

                    ; #89636: <==negation-removal== 30120 (pos)
                    (not (Pa_not_checked_p3))

                    ; #90995: <==negation-removal== 39270 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13537: <==commonly_known== 53489 (neg)
                    (Pd_checked_p4)

                    ; #20741: <==closure== 87049 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #22592: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #29542: <==commonly_known== 53489 (neg)
                    (Pa_checked_p4)

                    ; #32832: <==commonly_known== 53489 (neg)
                    (Pb_checked_p4)

                    ; #37170: <==commonly_known== 49144 (pos)
                    (Bd_checked_p4)

                    ; #49144: origin
                    (checked_p4)

                    ; #56919: <==commonly_known== 49144 (pos)
                    (Bb_checked_p4)

                    ; #61545: <==commonly_known== 49144 (pos)
                    (Ba_checked_p4)

                    ; #69265: <==closure== 22592 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #77860: <==commonly_known== 49144 (pos)
                    (Bc_checked_p4)

                    ; #87049: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #88594: <==commonly_known== 53489 (neg)
                    (Pc_checked_p4)

                    ; #13744: <==negation-removal== 37170 (pos)
                    (not (Pd_not_checked_p4))

                    ; #19088: <==negation-removal== 20741 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #21495: <==negation-removal== 77860 (pos)
                    (not (Pc_not_checked_p4))

                    ; #21903: <==negation-removal== 87049 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #28590: <==negation-removal== 69265 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #32903: <==negation-removal== 32832 (pos)
                    (not (Bb_not_checked_p4))

                    ; #34918: <==negation-removal== 29542 (pos)
                    (not (Ba_not_checked_p4))

                    ; #43693: <==negation-removal== 13537 (pos)
                    (not (Bd_not_checked_p4))

                    ; #45718: <==negation-removal== 88594 (pos)
                    (not (Bc_not_checked_p4))

                    ; #46415: <==uncertain_firing== 69265 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #53489: <==negation-removal== 49144 (pos)
                    (not (not_checked_p4))

                    ; #54363: <==uncertain_firing== 20741 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #62350: <==negation-removal== 56919 (pos)
                    (not (Pb_not_checked_p4))

                    ; #81776: <==negation-removal== 61545 (pos)
                    (not (Pa_not_checked_p4))

                    ; #83271: <==uncertain_firing== 87049 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #91648: <==negation-removal== 22592 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #99140: <==uncertain_firing== 22592 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #28582: <==commonly_known== 36722 (pos)
                    (Bd_checked_p5)

                    ; #32633: <==commonly_known== 36722 (pos)
                    (Ba_checked_p5)

                    ; #34436: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #36722: origin
                    (checked_p5)

                    ; #41486: <==commonly_known== 81507 (neg)
                    (Pb_checked_p5)

                    ; #42476: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #48018: <==closure== 42476 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #56077: <==commonly_known== 81507 (neg)
                    (Pc_checked_p5)

                    ; #59475: <==commonly_known== 81507 (neg)
                    (Pa_checked_p5)

                    ; #63297: <==commonly_known== 81507 (neg)
                    (Pd_checked_p5)

                    ; #72701: <==closure== 34436 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #87198: <==commonly_known== 36722 (pos)
                    (Bb_checked_p5)

                    ; #89748: <==commonly_known== 36722 (pos)
                    (Bc_checked_p5)

                    ; #17619: <==negation-removal== 63297 (pos)
                    (not (Bd_not_checked_p5))

                    ; #23285: <==negation-removal== 42476 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #26646: <==negation-removal== 56077 (pos)
                    (not (Bc_not_checked_p5))

                    ; #32892: <==negation-removal== 48018 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #38368: <==uncertain_firing== 42476 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #42139: <==uncertain_firing== 48018 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #46892: <==negation-removal== 59475 (pos)
                    (not (Ba_not_checked_p5))

                    ; #53356: <==negation-removal== 28582 (pos)
                    (not (Pd_not_checked_p5))

                    ; #53900: <==negation-removal== 87198 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55813: <==uncertain_firing== 34436 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #58617: <==negation-removal== 32633 (pos)
                    (not (Pa_not_checked_p5))

                    ; #67772: <==negation-removal== 72701 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #68395: <==negation-removal== 89748 (pos)
                    (not (Pc_not_checked_p5))

                    ; #72319: <==negation-removal== 34436 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #80042: <==negation-removal== 41486 (pos)
                    (not (Bb_not_checked_p5))

                    ; #81507: <==negation-removal== 36722 (pos)
                    (not (not_checked_p5))

                    ; #83728: <==uncertain_firing== 72701 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #17190: <==commonly_known== 20315 (neg)
                    (Pc_checked_p6)

                    ; #28144: <==commonly_known== 20315 (neg)
                    (Pa_checked_p6)

                    ; #40055: <==closure== 47605 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #40360: <==commonly_known== 52797 (pos)
                    (Bb_checked_p6)

                    ; #47605: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #52797: origin
                    (checked_p6)

                    ; #54754: <==commonly_known== 52797 (pos)
                    (Ba_checked_p6)

                    ; #56176: <==commonly_known== 20315 (neg)
                    (Pb_checked_p6)

                    ; #56347: <==closure== 62658 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #62658: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #68757: <==commonly_known== 20315 (neg)
                    (Pd_checked_p6)

                    ; #82476: <==commonly_known== 52797 (pos)
                    (Bc_checked_p6)

                    ; #84848: <==commonly_known== 52797 (pos)
                    (Bd_checked_p6)

                    ; #17844: <==negation-removal== 56176 (pos)
                    (not (Bb_not_checked_p6))

                    ; #20315: <==negation-removal== 52797 (pos)
                    (not (not_checked_p6))

                    ; #20648: <==uncertain_firing== 47605 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #31709: <==negation-removal== 40360 (pos)
                    (not (Pb_not_checked_p6))

                    ; #35310: <==negation-removal== 62658 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #37629: <==negation-removal== 40055 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #42391: <==negation-removal== 54754 (pos)
                    (not (Pa_not_checked_p6))

                    ; #46050: <==negation-removal== 17190 (pos)
                    (not (Bc_not_checked_p6))

                    ; #50449: <==negation-removal== 84848 (pos)
                    (not (Pd_not_checked_p6))

                    ; #60369: <==uncertain_firing== 56347 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #62132: <==negation-removal== 28144 (pos)
                    (not (Ba_not_checked_p6))

                    ; #71043: <==uncertain_firing== 40055 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #75179: <==negation-removal== 47605 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #76483: <==uncertain_firing== 62658 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #78685: <==negation-removal== 68757 (pos)
                    (not (Bd_not_checked_p6))

                    ; #79459: <==negation-removal== 82476 (pos)
                    (not (Pc_not_checked_p6))

                    ; #90190: <==negation-removal== 56347 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17343: <==commonly_known== 60083 (neg)
                    (Pb_checked_p7)

                    ; #21002: <==commonly_known== 76384 (pos)
                    (Ba_checked_p7)

                    ; #24314: <==commonly_known== 76384 (pos)
                    (Bb_checked_p7)

                    ; #25649: <==closure== 68302 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #27244: <==closure== 35967 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #32064: <==commonly_known== 76384 (pos)
                    (Bd_checked_p7)

                    ; #35967: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #55197: <==commonly_known== 60083 (neg)
                    (Pc_checked_p7)

                    ; #61621: <==commonly_known== 60083 (neg)
                    (Pd_checked_p7)

                    ; #68302: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #71085: <==commonly_known== 60083 (neg)
                    (Pa_checked_p7)

                    ; #76384: origin
                    (checked_p7)

                    ; #92696: <==commonly_known== 76384 (pos)
                    (Bc_checked_p7)

                    ; #13792: <==negation-removal== 21002 (pos)
                    (not (Pa_not_checked_p7))

                    ; #25016: <==negation-removal== 27244 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #32954: <==negation-removal== 68302 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #39150: <==negation-removal== 55197 (pos)
                    (not (Bc_not_checked_p7))

                    ; #53454: <==negation-removal== 17343 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57015: <==negation-removal== 92696 (pos)
                    (not (Pc_not_checked_p7))

                    ; #59037: <==negation-removal== 61621 (pos)
                    (not (Bd_not_checked_p7))

                    ; #60083: <==negation-removal== 76384 (pos)
                    (not (not_checked_p7))

                    ; #64243: <==uncertain_firing== 68302 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #67710: <==negation-removal== 71085 (pos)
                    (not (Ba_not_checked_p7))

                    ; #71121: <==uncertain_firing== 35967 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #79492: <==negation-removal== 24314 (pos)
                    (not (Pb_not_checked_p7))

                    ; #79620: <==uncertain_firing== 27244 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #83490: <==negation-removal== 35967 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #84451: <==negation-removal== 25649 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #90899: <==uncertain_firing== 25649 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #91249: <==negation-removal== 32064 (pos)
                    (not (Pd_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12508: <==commonly_known== 31014 (pos)
                    (Bb_checked_p8)

                    ; #18260: <==commonly_known== 31014 (pos)
                    (Ba_checked_p8)

                    ; #19667: <==commonly_known== 32248 (neg)
                    (Pd_checked_p8)

                    ; #31014: origin
                    (checked_p8)

                    ; #32918: <==commonly_known== 32248 (neg)
                    (Pc_checked_p8)

                    ; #34853: <==closure== 78611 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #36097: <==commonly_known== 32248 (neg)
                    (Pa_checked_p8)

                    ; #49693: <==commonly_known== 31014 (pos)
                    (Bd_checked_p8)

                    ; #58107: <==commonly_known== 31014 (pos)
                    (Bc_checked_p8)

                    ; #69048: <==commonly_known== 32248 (neg)
                    (Pb_checked_p8)

                    ; #69189: <==closure== 81721 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #78611: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #81721: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #11035: <==uncertain_firing== 69189 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #13621: <==negation-removal== 49693 (pos)
                    (not (Pd_not_checked_p8))

                    ; #21631: <==negation-removal== 34853 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #32248: <==negation-removal== 31014 (pos)
                    (not (not_checked_p8))

                    ; #38618: <==negation-removal== 58107 (pos)
                    (not (Pc_not_checked_p8))

                    ; #40560: <==negation-removal== 69189 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #45827: <==uncertain_firing== 81721 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #48633: <==negation-removal== 69048 (pos)
                    (not (Bb_not_checked_p8))

                    ; #51199: <==negation-removal== 81721 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #62610: <==uncertain_firing== 78611 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #66960: <==negation-removal== 78611 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #71352: <==uncertain_firing== 34853 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #75361: <==negation-removal== 32918 (pos)
                    (not (Bc_not_checked_p8))

                    ; #78496: <==negation-removal== 36097 (pos)
                    (not (Ba_not_checked_p8))

                    ; #78661: <==negation-removal== 19667 (pos)
                    (not (Bd_not_checked_p8))

                    ; #86996: <==negation-removal== 18260 (pos)
                    (not (Pa_not_checked_p8))

                    ; #91170: <==negation-removal== 12508 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11690: <==commonly_known== 71435 (pos)
                    (Ba_checked_p9)

                    ; #15348: <==commonly_known== 56654 (neg)
                    (Pb_checked_p9)

                    ; #20038: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #20468: <==closure== 47938 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #30468: <==closure== 20038 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #42292: <==commonly_known== 71435 (pos)
                    (Bd_checked_p9)

                    ; #44899: <==commonly_known== 71435 (pos)
                    (Bb_checked_p9)

                    ; #47938: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #49799: <==commonly_known== 56654 (neg)
                    (Pc_checked_p9)

                    ; #60482: <==commonly_known== 56654 (neg)
                    (Pd_checked_p9)

                    ; #62595: <==commonly_known== 56654 (neg)
                    (Pa_checked_p9)

                    ; #71435: origin
                    (checked_p9)

                    ; #75970: <==commonly_known== 71435 (pos)
                    (Bc_checked_p9)

                    ; #15044: <==uncertain_firing== 30468 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #22378: <==negation-removal== 20038 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #29257: <==negation-removal== 15348 (pos)
                    (not (Bb_not_checked_p9))

                    ; #29515: <==negation-removal== 11690 (pos)
                    (not (Pa_not_checked_p9))

                    ; #40398: <==negation-removal== 47938 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #44311: <==uncertain_firing== 20038 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #55637: <==negation-removal== 42292 (pos)
                    (not (Pd_not_checked_p9))

                    ; #56654: <==negation-removal== 71435 (pos)
                    (not (not_checked_p9))

                    ; #60155: <==negation-removal== 44899 (pos)
                    (not (Pb_not_checked_p9))

                    ; #67290: <==negation-removal== 75970 (pos)
                    (not (Pc_not_checked_p9))

                    ; #67474: <==negation-removal== 20468 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #78323: <==negation-removal== 62595 (pos)
                    (not (Ba_not_checked_p9))

                    ; #78824: <==uncertain_firing== 20468 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #86086: <==uncertain_firing== 47938 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #91669: <==negation-removal== 49799 (pos)
                    (not (Bc_not_checked_p9))

                    ; #94999: <==negation-removal== 60482 (pos)
                    (not (Bd_not_checked_p9))

                    ; #97260: <==negation-removal== 30468 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11608: <==commonly_known== 22851 (neg)
                    (Pd_checked_p10)

                    ; #12192: <==commonly_known== 46925 (pos)
                    (Bd_checked_p10)

                    ; #33866: <==commonly_known== 46925 (pos)
                    (Bb_checked_p10)

                    ; #34025: <==commonly_known== 22851 (neg)
                    (Pa_checked_p10)

                    ; #38764: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #39492: <==closure== 38764 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #40907: <==commonly_known== 22851 (neg)
                    (Pb_checked_p10)

                    ; #46925: origin
                    (checked_p10)

                    ; #46972: <==commonly_known== 22851 (neg)
                    (Pc_checked_p10)

                    ; #52887: <==commonly_known== 46925 (pos)
                    (Ba_checked_p10)

                    ; #66361: <==commonly_known== 46925 (pos)
                    (Bc_checked_p10)

                    ; #73601: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #74477: <==closure== 73601 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #10795: <==uncertain_firing== 74477 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #11740: <==negation-removal== 12192 (pos)
                    (not (Pd_not_checked_p10))

                    ; #22851: <==negation-removal== 46925 (pos)
                    (not (not_checked_p10))

                    ; #33027: <==negation-removal== 73601 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #39339: <==negation-removal== 39492 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #46294: <==negation-removal== 46972 (pos)
                    (not (Bc_not_checked_p10))

                    ; #48686: <==negation-removal== 52887 (pos)
                    (not (Pa_not_checked_p10))

                    ; #54846: <==uncertain_firing== 73601 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #66700: <==negation-removal== 40907 (pos)
                    (not (Bb_not_checked_p10))

                    ; #67320: <==negation-removal== 66361 (pos)
                    (not (Pc_not_checked_p10))

                    ; #68411: <==uncertain_firing== 39492 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #72113: <==negation-removal== 11608 (pos)
                    (not (Bd_not_checked_p10))

                    ; #74551: <==negation-removal== 33866 (pos)
                    (not (Pb_not_checked_p10))

                    ; #78519: <==negation-removal== 38764 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #78908: <==negation-removal== 34025 (pos)
                    (not (Ba_not_checked_p10))

                    ; #80493: <==negation-removal== 74477 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #92695: <==uncertain_firing== 38764 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14408: <==commonly_known== 81180 (pos)
                    (Ba_checked_p11)

                    ; #14421: <==commonly_known== 81180 (pos)
                    (Bc_checked_p11)

                    ; #18634: <==commonly_known== 81180 (pos)
                    (Bd_checked_p11)

                    ; #56928: <==closure== 84983 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #66051: <==commonly_known== 81180 (pos)
                    (Bb_checked_p11)

                    ; #68748: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #70777: <==commonly_known== 75055 (neg)
                    (Pb_checked_p11)

                    ; #72140: <==commonly_known== 75055 (neg)
                    (Pc_checked_p11)

                    ; #77658: <==commonly_known== 75055 (neg)
                    (Pa_checked_p11)

                    ; #78830: <==closure== 68748 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #81180: origin
                    (checked_p11)

                    ; #84983: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #88779: <==commonly_known== 75055 (neg)
                    (Pd_checked_p11)

                    ; #11186: <==negation-removal== 56928 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #11816: <==negation-removal== 14421 (pos)
                    (not (Pc_not_checked_p11))

                    ; #15078: <==negation-removal== 70777 (pos)
                    (not (Bb_not_checked_p11))

                    ; #18571: <==uncertain_firing== 84983 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #20911: <==negation-removal== 78830 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #21946: <==negation-removal== 18634 (pos)
                    (not (Pd_not_checked_p11))

                    ; #23629: <==negation-removal== 77658 (pos)
                    (not (Ba_not_checked_p11))

                    ; #23857: <==negation-removal== 14408 (pos)
                    (not (Pa_not_checked_p11))

                    ; #29016: <==negation-removal== 84983 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #43659: <==uncertain_firing== 56928 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #45231: <==uncertain_firing== 78830 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #46065: <==negation-removal== 72140 (pos)
                    (not (Bc_not_checked_p11))

                    ; #56859: <==negation-removal== 66051 (pos)
                    (not (Pb_not_checked_p11))

                    ; #71749: <==negation-removal== 88779 (pos)
                    (not (Bd_not_checked_p11))

                    ; #75055: <==negation-removal== 81180 (pos)
                    (not (not_checked_p11))

                    ; #84998: <==negation-removal== 68748 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #92605: <==uncertain_firing== 68748 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #13619: <==commonly_known== 91731 (pos)
                    (Bc_checked_p12)

                    ; #30275: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #31448: <==commonly_known== 54624 (neg)
                    (Pa_checked_p12)

                    ; #38182: <==closure== 30275 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #40928: <==commonly_known== 54624 (neg)
                    (Pc_checked_p12)

                    ; #45348: <==commonly_known== 91731 (pos)
                    (Bb_checked_p12)

                    ; #46995: <==commonly_known== 54624 (neg)
                    (Pd_checked_p12)

                    ; #57404: <==closure== 82737 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #61935: <==commonly_known== 54624 (neg)
                    (Pb_checked_p12)

                    ; #70936: <==commonly_known== 91731 (pos)
                    (Bd_checked_p12)

                    ; #73749: <==commonly_known== 91731 (pos)
                    (Ba_checked_p12)

                    ; #82737: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #91731: origin
                    (checked_p12)

                    ; #20845: <==negation-removal== 40928 (pos)
                    (not (Bc_not_checked_p12))

                    ; #23276: <==negation-removal== 73749 (pos)
                    (not (Pa_not_checked_p12))

                    ; #26739: <==negation-removal== 45348 (pos)
                    (not (Pb_not_checked_p12))

                    ; #29533: <==negation-removal== 30275 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #32068: <==negation-removal== 31448 (pos)
                    (not (Ba_not_checked_p12))

                    ; #32710: <==uncertain_firing== 38182 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #33221: <==uncertain_firing== 30275 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #34639: <==negation-removal== 70936 (pos)
                    (not (Pd_not_checked_p12))

                    ; #38030: <==negation-removal== 46995 (pos)
                    (not (Bd_not_checked_p12))

                    ; #38940: <==negation-removal== 82737 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #45735: <==negation-removal== 57404 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #54624: <==negation-removal== 91731 (pos)
                    (not (not_checked_p12))

                    ; #66067: <==negation-removal== 13619 (pos)
                    (not (Pc_not_checked_p12))

                    ; #66493: <==uncertain_firing== 82737 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #67838: <==negation-removal== 38182 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #68298: <==uncertain_firing== 57404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #88187: <==negation-removal== 61935 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11018: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #11026: <==commonly_known== 40517 (pos)
                    (Bd_checked_p1)

                    ; #12288: <==commonly_known== 40517 (pos)
                    (Bb_checked_p1)

                    ; #21405: <==commonly_known== 33063 (neg)
                    (Pa_checked_p1)

                    ; #23959: <==commonly_known== 40517 (pos)
                    (Ba_checked_p1)

                    ; #40517: origin
                    (checked_p1)

                    ; #44514: <==commonly_known== 33063 (neg)
                    (Pc_checked_p1)

                    ; #50854: <==commonly_known== 33063 (neg)
                    (Pb_checked_p1)

                    ; #54049: <==closure== 11018 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #64215: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #72637: <==commonly_known== 33063 (neg)
                    (Pd_checked_p1)

                    ; #75941: <==closure== 64215 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #79787: <==commonly_known== 40517 (pos)
                    (Bc_checked_p1)

                    ; #16719: <==negation-removal== 79787 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24864: <==negation-removal== 11018 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #32374: <==uncertain_firing== 11018 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #33063: <==negation-removal== 40517 (pos)
                    (not (not_checked_p1))

                    ; #34737: <==negation-removal== 12288 (pos)
                    (not (Pb_not_checked_p1))

                    ; #43999: <==uncertain_firing== 54049 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #48928: <==negation-removal== 11026 (pos)
                    (not (Pd_not_checked_p1))

                    ; #52573: <==negation-removal== 64215 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #57086: <==negation-removal== 75941 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #58464: <==negation-removal== 44514 (pos)
                    (not (Bc_not_checked_p1))

                    ; #68890: <==negation-removal== 50854 (pos)
                    (not (Bb_not_checked_p1))

                    ; #70416: <==negation-removal== 21405 (pos)
                    (not (Ba_not_checked_p1))

                    ; #71462: <==negation-removal== 72637 (pos)
                    (not (Bd_not_checked_p1))

                    ; #73700: <==negation-removal== 23959 (pos)
                    (not (Pa_not_checked_p1))

                    ; #84970: <==negation-removal== 54049 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #87237: <==uncertain_firing== 75941 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #87655: <==uncertain_firing== 64215 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17217: <==commonly_known== 85614 (pos)
                    (Ba_checked_p2)

                    ; #23093: <==closure== 67378 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #32260: <==commonly_known== 85614 (pos)
                    (Bb_checked_p2)

                    ; #37782: <==commonly_known== 15935 (neg)
                    (Pa_checked_p2)

                    ; #42319: <==commonly_known== 15935 (neg)
                    (Pd_checked_p2)

                    ; #42564: <==commonly_known== 15935 (neg)
                    (Pb_checked_p2)

                    ; #62922: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #64019: <==closure== 62922 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #66516: <==commonly_known== 85614 (pos)
                    (Bd_checked_p2)

                    ; #67378: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #83976: <==commonly_known== 15935 (neg)
                    (Pc_checked_p2)

                    ; #84493: <==commonly_known== 85614 (pos)
                    (Bc_checked_p2)

                    ; #85614: origin
                    (checked_p2)

                    ; #13843: <==negation-removal== 42319 (pos)
                    (not (Bd_not_checked_p2))

                    ; #15935: <==negation-removal== 85614 (pos)
                    (not (not_checked_p2))

                    ; #18178: <==negation-removal== 64019 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #22654: <==negation-removal== 42564 (pos)
                    (not (Bb_not_checked_p2))

                    ; #28680: <==uncertain_firing== 64019 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #31084: <==negation-removal== 32260 (pos)
                    (not (Pb_not_checked_p2))

                    ; #44423: <==uncertain_firing== 67378 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #53024: <==negation-removal== 83976 (pos)
                    (not (Bc_not_checked_p2))

                    ; #55006: <==negation-removal== 84493 (pos)
                    (not (Pc_not_checked_p2))

                    ; #65435: <==uncertain_firing== 62922 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #68734: <==uncertain_firing== 23093 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #76376: <==negation-removal== 67378 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #79642: <==negation-removal== 17217 (pos)
                    (not (Pa_not_checked_p2))

                    ; #81100: <==negation-removal== 62922 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #82151: <==negation-removal== 66516 (pos)
                    (not (Pd_not_checked_p2))

                    ; #87074: <==negation-removal== 37782 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87600: <==negation-removal== 23093 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14772: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #17841: <==commonly_known== 69854 (neg)
                    (Pa_checked_p3)

                    ; #30120: <==commonly_known== 88907 (pos)
                    (Ba_checked_p3)

                    ; #31154: <==commonly_known== 69854 (neg)
                    (Pc_checked_p3)

                    ; #32183: <==commonly_known== 88907 (pos)
                    (Bd_checked_p3)

                    ; #36236: <==commonly_known== 69854 (neg)
                    (Pd_checked_p3)

                    ; #36698: <==closure== 14772 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #39270: <==commonly_known== 69854 (neg)
                    (Pb_checked_p3)

                    ; #41790: <==closure== 80667 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #62901: <==commonly_known== 88907 (pos)
                    (Bc_checked_p3)

                    ; #80667: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #84120: <==commonly_known== 88907 (pos)
                    (Bb_checked_p3)

                    ; #88907: origin
                    (checked_p3)

                    ; #20325: <==uncertain_firing== 41790 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #25119: <==negation-removal== 31154 (pos)
                    (not (Bc_not_checked_p3))

                    ; #35833: <==negation-removal== 32183 (pos)
                    (not (Pd_not_checked_p3))

                    ; #41285: <==negation-removal== 14772 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #41555: <==negation-removal== 62901 (pos)
                    (not (Pc_not_checked_p3))

                    ; #44464: <==negation-removal== 36698 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #45161: <==uncertain_firing== 36698 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #47562: <==negation-removal== 17841 (pos)
                    (not (Ba_not_checked_p3))

                    ; #52567: <==negation-removal== 41790 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #60116: <==uncertain_firing== 80667 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #69854: <==negation-removal== 88907 (pos)
                    (not (not_checked_p3))

                    ; #70730: <==uncertain_firing== 14772 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #76052: <==negation-removal== 84120 (pos)
                    (not (Pb_not_checked_p3))

                    ; #76562: <==negation-removal== 80667 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #83970: <==negation-removal== 36236 (pos)
                    (not (Bd_not_checked_p3))

                    ; #89636: <==negation-removal== 30120 (pos)
                    (not (Pa_not_checked_p3))

                    ; #90995: <==negation-removal== 39270 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11178: <==closure== 68747 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #13537: <==commonly_known== 53489 (neg)
                    (Pd_checked_p4)

                    ; #23839: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #29542: <==commonly_known== 53489 (neg)
                    (Pa_checked_p4)

                    ; #32832: <==commonly_known== 53489 (neg)
                    (Pb_checked_p4)

                    ; #35455: <==closure== 23839 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #37170: <==commonly_known== 49144 (pos)
                    (Bd_checked_p4)

                    ; #49144: origin
                    (checked_p4)

                    ; #56919: <==commonly_known== 49144 (pos)
                    (Bb_checked_p4)

                    ; #61545: <==commonly_known== 49144 (pos)
                    (Ba_checked_p4)

                    ; #68747: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #77860: <==commonly_known== 49144 (pos)
                    (Bc_checked_p4)

                    ; #88594: <==commonly_known== 53489 (neg)
                    (Pc_checked_p4)

                    ; #13744: <==negation-removal== 37170 (pos)
                    (not (Pd_not_checked_p4))

                    ; #14578: <==negation-removal== 35455 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #21495: <==negation-removal== 77860 (pos)
                    (not (Pc_not_checked_p4))

                    ; #31502: <==uncertain_firing== 35455 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #32903: <==negation-removal== 32832 (pos)
                    (not (Bb_not_checked_p4))

                    ; #34918: <==negation-removal== 29542 (pos)
                    (not (Ba_not_checked_p4))

                    ; #35267: <==uncertain_firing== 23839 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #43693: <==negation-removal== 13537 (pos)
                    (not (Bd_not_checked_p4))

                    ; #45718: <==negation-removal== 88594 (pos)
                    (not (Bc_not_checked_p4))

                    ; #53489: <==negation-removal== 49144 (pos)
                    (not (not_checked_p4))

                    ; #58630: <==uncertain_firing== 11178 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #60334: <==negation-removal== 11178 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #62350: <==negation-removal== 56919 (pos)
                    (not (Pb_not_checked_p4))

                    ; #70535: <==negation-removal== 23839 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #73040: <==uncertain_firing== 68747 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #81776: <==negation-removal== 61545 (pos)
                    (not (Pa_not_checked_p4))

                    ; #83766: <==negation-removal== 68747 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #28582: <==commonly_known== 36722 (pos)
                    (Bd_checked_p5)

                    ; #31603: <==closure== 45492 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #32633: <==commonly_known== 36722 (pos)
                    (Ba_checked_p5)

                    ; #36722: origin
                    (checked_p5)

                    ; #37699: <==closure== 82264 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #41486: <==commonly_known== 81507 (neg)
                    (Pb_checked_p5)

                    ; #45492: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #56077: <==commonly_known== 81507 (neg)
                    (Pc_checked_p5)

                    ; #59475: <==commonly_known== 81507 (neg)
                    (Pa_checked_p5)

                    ; #63297: <==commonly_known== 81507 (neg)
                    (Pd_checked_p5)

                    ; #82264: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #87198: <==commonly_known== 36722 (pos)
                    (Bb_checked_p5)

                    ; #89748: <==commonly_known== 36722 (pos)
                    (Bc_checked_p5)

                    ; #17619: <==negation-removal== 63297 (pos)
                    (not (Bd_not_checked_p5))

                    ; #17774: <==uncertain_firing== 82264 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #26646: <==negation-removal== 56077 (pos)
                    (not (Bc_not_checked_p5))

                    ; #39412: <==negation-removal== 82264 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #46686: <==uncertain_firing== 45492 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #46892: <==negation-removal== 59475 (pos)
                    (not (Ba_not_checked_p5))

                    ; #47926: <==negation-removal== 45492 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #53356: <==negation-removal== 28582 (pos)
                    (not (Pd_not_checked_p5))

                    ; #53900: <==negation-removal== 87198 (pos)
                    (not (Pb_not_checked_p5))

                    ; #58617: <==negation-removal== 32633 (pos)
                    (not (Pa_not_checked_p5))

                    ; #62687: <==negation-removal== 31603 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #68395: <==negation-removal== 89748 (pos)
                    (not (Pc_not_checked_p5))

                    ; #77540: <==uncertain_firing== 31603 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #78238: <==negation-removal== 37699 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #79455: <==uncertain_firing== 37699 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #80042: <==negation-removal== 41486 (pos)
                    (not (Bb_not_checked_p5))

                    ; #81507: <==negation-removal== 36722 (pos)
                    (not (not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #17190: <==commonly_known== 20315 (neg)
                    (Pc_checked_p6)

                    ; #18696: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #21081: <==closure== 65381 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #28144: <==commonly_known== 20315 (neg)
                    (Pa_checked_p6)

                    ; #40360: <==commonly_known== 52797 (pos)
                    (Bb_checked_p6)

                    ; #46786: <==closure== 18696 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #52797: origin
                    (checked_p6)

                    ; #54754: <==commonly_known== 52797 (pos)
                    (Ba_checked_p6)

                    ; #56176: <==commonly_known== 20315 (neg)
                    (Pb_checked_p6)

                    ; #65381: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #68757: <==commonly_known== 20315 (neg)
                    (Pd_checked_p6)

                    ; #82476: <==commonly_known== 52797 (pos)
                    (Bc_checked_p6)

                    ; #84848: <==commonly_known== 52797 (pos)
                    (Bd_checked_p6)

                    ; #11074: <==uncertain_firing== 65381 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #12113: <==negation-removal== 46786 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #13532: <==uncertain_firing== 21081 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #17844: <==negation-removal== 56176 (pos)
                    (not (Bb_not_checked_p6))

                    ; #20315: <==negation-removal== 52797 (pos)
                    (not (not_checked_p6))

                    ; #27871: <==uncertain_firing== 46786 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #31709: <==negation-removal== 40360 (pos)
                    (not (Pb_not_checked_p6))

                    ; #41166: <==uncertain_firing== 18696 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #42391: <==negation-removal== 54754 (pos)
                    (not (Pa_not_checked_p6))

                    ; #46050: <==negation-removal== 17190 (pos)
                    (not (Bc_not_checked_p6))

                    ; #50449: <==negation-removal== 84848 (pos)
                    (not (Pd_not_checked_p6))

                    ; #53837: <==negation-removal== 18696 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #62132: <==negation-removal== 28144 (pos)
                    (not (Ba_not_checked_p6))

                    ; #75792: <==negation-removal== 65381 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #78685: <==negation-removal== 68757 (pos)
                    (not (Bd_not_checked_p6))

                    ; #79459: <==negation-removal== 82476 (pos)
                    (not (Pc_not_checked_p6))

                    ; #89243: <==negation-removal== 21081 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #17343: <==commonly_known== 60083 (neg)
                    (Pb_checked_p7)

                    ; #21002: <==commonly_known== 76384 (pos)
                    (Ba_checked_p7)

                    ; #24314: <==commonly_known== 76384 (pos)
                    (Bb_checked_p7)

                    ; #32064: <==commonly_known== 76384 (pos)
                    (Bd_checked_p7)

                    ; #43439: <==closure== 66105 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #55197: <==commonly_known== 60083 (neg)
                    (Pc_checked_p7)

                    ; #61621: <==commonly_known== 60083 (neg)
                    (Pd_checked_p7)

                    ; #66105: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #71085: <==commonly_known== 60083 (neg)
                    (Pa_checked_p7)

                    ; #76384: origin
                    (checked_p7)

                    ; #83252: <==closure== 91265 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #91265: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #92696: <==commonly_known== 76384 (pos)
                    (Bc_checked_p7)

                    ; #12847: <==negation-removal== 83252 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #13792: <==negation-removal== 21002 (pos)
                    (not (Pa_not_checked_p7))

                    ; #26224: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #28494: <==uncertain_firing== 43439 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #39150: <==negation-removal== 55197 (pos)
                    (not (Bc_not_checked_p7))

                    ; #39986: <==uncertain_firing== 83252 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #43424: <==negation-removal== 66105 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #53454: <==negation-removal== 17343 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57015: <==negation-removal== 92696 (pos)
                    (not (Pc_not_checked_p7))

                    ; #59037: <==negation-removal== 61621 (pos)
                    (not (Bd_not_checked_p7))

                    ; #60083: <==negation-removal== 76384 (pos)
                    (not (not_checked_p7))

                    ; #67710: <==negation-removal== 71085 (pos)
                    (not (Ba_not_checked_p7))

                    ; #77079: <==negation-removal== 43439 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #77537: <==uncertain_firing== 66105 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #79492: <==negation-removal== 24314 (pos)
                    (not (Pb_not_checked_p7))

                    ; #88619: <==negation-removal== 91265 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #91249: <==negation-removal== 32064 (pos)
                    (not (Pd_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12508: <==commonly_known== 31014 (pos)
                    (Bb_checked_p8)

                    ; #18260: <==commonly_known== 31014 (pos)
                    (Ba_checked_p8)

                    ; #19667: <==commonly_known== 32248 (neg)
                    (Pd_checked_p8)

                    ; #23637: <==closure== 82467 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #31014: origin
                    (checked_p8)

                    ; #32918: <==commonly_known== 32248 (neg)
                    (Pc_checked_p8)

                    ; #36097: <==commonly_known== 32248 (neg)
                    (Pa_checked_p8)

                    ; #47402: <==closure== 89828 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #49693: <==commonly_known== 31014 (pos)
                    (Bd_checked_p8)

                    ; #58107: <==commonly_known== 31014 (pos)
                    (Bc_checked_p8)

                    ; #69048: <==commonly_known== 32248 (neg)
                    (Pb_checked_p8)

                    ; #82467: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #89828: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #13621: <==negation-removal== 49693 (pos)
                    (not (Pd_not_checked_p8))

                    ; #20080: <==uncertain_firing== 89828 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #25275: <==negation-removal== 47402 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #32248: <==negation-removal== 31014 (pos)
                    (not (not_checked_p8))

                    ; #38618: <==negation-removal== 58107 (pos)
                    (not (Pc_not_checked_p8))

                    ; #44530: <==uncertain_firing== 23637 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #48003: <==negation-removal== 89828 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #48633: <==negation-removal== 69048 (pos)
                    (not (Bb_not_checked_p8))

                    ; #58340: <==uncertain_firing== 82467 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #75361: <==negation-removal== 32918 (pos)
                    (not (Bc_not_checked_p8))

                    ; #78496: <==negation-removal== 36097 (pos)
                    (not (Ba_not_checked_p8))

                    ; #78661: <==negation-removal== 19667 (pos)
                    (not (Bd_not_checked_p8))

                    ; #86604: <==uncertain_firing== 47402 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #86996: <==negation-removal== 18260 (pos)
                    (not (Pa_not_checked_p8))

                    ; #87438: <==negation-removal== 82467 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #89075: <==negation-removal== 23637 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #91170: <==negation-removal== 12508 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11690: <==commonly_known== 71435 (pos)
                    (Ba_checked_p9)

                    ; #13537: <==closure== 72422 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #15348: <==commonly_known== 56654 (neg)
                    (Pb_checked_p9)

                    ; #36540: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #42292: <==commonly_known== 71435 (pos)
                    (Bd_checked_p9)

                    ; #44899: <==commonly_known== 71435 (pos)
                    (Bb_checked_p9)

                    ; #49799: <==commonly_known== 56654 (neg)
                    (Pc_checked_p9)

                    ; #55548: <==closure== 36540 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #60482: <==commonly_known== 56654 (neg)
                    (Pd_checked_p9)

                    ; #62595: <==commonly_known== 56654 (neg)
                    (Pa_checked_p9)

                    ; #71435: origin
                    (checked_p9)

                    ; #72422: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #75970: <==commonly_known== 71435 (pos)
                    (Bc_checked_p9)

                    ; #12347: <==uncertain_firing== 36540 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #25544: <==negation-removal== 55548 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #29257: <==negation-removal== 15348 (pos)
                    (not (Bb_not_checked_p9))

                    ; #29515: <==negation-removal== 11690 (pos)
                    (not (Pa_not_checked_p9))

                    ; #30982: <==negation-removal== 13537 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #31268: <==negation-removal== 72422 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #35009: <==negation-removal== 36540 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #36725: <==uncertain_firing== 72422 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #55637: <==negation-removal== 42292 (pos)
                    (not (Pd_not_checked_p9))

                    ; #56654: <==negation-removal== 71435 (pos)
                    (not (not_checked_p9))

                    ; #57259: <==uncertain_firing== 13537 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #60155: <==negation-removal== 44899 (pos)
                    (not (Pb_not_checked_p9))

                    ; #64992: <==uncertain_firing== 55548 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #67290: <==negation-removal== 75970 (pos)
                    (not (Pc_not_checked_p9))

                    ; #78323: <==negation-removal== 62595 (pos)
                    (not (Ba_not_checked_p9))

                    ; #91669: <==negation-removal== 49799 (pos)
                    (not (Bc_not_checked_p9))

                    ; #94999: <==negation-removal== 60482 (pos)
                    (not (Bd_not_checked_p9))))

)