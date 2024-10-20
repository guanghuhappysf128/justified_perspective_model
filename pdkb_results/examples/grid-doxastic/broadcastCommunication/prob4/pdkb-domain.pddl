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
        (not_leader_a)
        (not_leader_b)
        (not_leader_c)
        (not_leader_d)
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
        (leader_a)
        (leader_b)
        (leader_c)
        (leader_d)
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

    (:action badcomm_p10_a_a_s
        :precondition (and (leader_a)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #15051: origin
                    (Ba_not_survivorat_s_p10)

                    ; #30251: <==closure== 15051 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #44692: <==negation-removal== 30251 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #74796: <==negation-removal== 15051 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (leader_b)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #10111: <==closure== 80242 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #80242: origin
                    (Bb_not_survivorat_s_p10)

                    ; #66440: <==negation-removal== 80242 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #82710: <==negation-removal== 10111 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #14178: <==closure== 58178 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #58178: origin
                    (Bc_not_survivorat_s_p10)

                    ; #44768: <==negation-removal== 14178 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #46055: <==negation-removal== 58178 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_a_d_s
        :precondition (and (leader_d)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #22589: origin
                    (Bd_not_survivorat_s_p10)

                    ; #44738: <==closure== 22589 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #54097: <==negation-removal== 22589 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #56509: <==negation-removal== 44738 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (leader_a)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #15051: origin
                    (Ba_not_survivorat_s_p10)

                    ; #30251: <==closure== 15051 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #44692: <==negation-removal== 30251 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #74796: <==negation-removal== 15051 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (leader_b)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #10111: <==closure== 80242 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #80242: origin
                    (Bb_not_survivorat_s_p10)

                    ; #66440: <==negation-removal== 80242 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #82710: <==negation-removal== 10111 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (at_b_p10)
                           (leader_c)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #14178: <==closure== 58178 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #58178: origin
                    (Bc_not_survivorat_s_p10)

                    ; #44768: <==negation-removal== 14178 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #46055: <==negation-removal== 58178 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_b_d_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #22589: origin
                    (Bd_not_survivorat_s_p10)

                    ; #44738: <==closure== 22589 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #54097: <==negation-removal== 22589 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #56509: <==negation-removal== 44738 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #15051: origin
                    (Ba_not_survivorat_s_p10)

                    ; #30251: <==closure== 15051 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #44692: <==negation-removal== 30251 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #74796: <==negation-removal== 15051 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_b)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #10111: <==closure== 80242 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #80242: origin
                    (Bb_not_survivorat_s_p10)

                    ; #66440: <==negation-removal== 80242 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #82710: <==negation-removal== 10111 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_c)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #14178: <==closure== 58178 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #58178: origin
                    (Bc_not_survivorat_s_p10)

                    ; #44768: <==negation-removal== 14178 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #46055: <==negation-removal== 58178 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_c_d_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_d)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #22589: origin
                    (Bd_not_survivorat_s_p10)

                    ; #44738: <==closure== 22589 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #54097: <==negation-removal== 22589 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #56509: <==negation-removal== 44738 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #15051: origin
                    (Ba_not_survivorat_s_p10)

                    ; #30251: <==closure== 15051 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #44692: <==negation-removal== 30251 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #74796: <==negation-removal== 15051 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_d_b_s
        :precondition (and (leader_b)
                           (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #10111: <==closure== 80242 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #80242: origin
                    (Bb_not_survivorat_s_p10)

                    ; #66440: <==negation-removal== 80242 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #82710: <==negation-removal== 10111 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_d_c_s
        :precondition (and (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_c))
        :effect (and
                    ; #14178: <==closure== 58178 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #58178: origin
                    (Bc_not_survivorat_s_p10)

                    ; #44768: <==negation-removal== 14178 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #46055: <==negation-removal== 58178 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_d_d_s
        :precondition (and (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_d))
        :effect (and
                    ; #22589: origin
                    (Bd_not_survivorat_s_p10)

                    ; #44738: <==closure== 22589 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #54097: <==negation-removal== 22589 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #56509: <==negation-removal== 44738 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (leader_a)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #30093: origin
                    (Ba_not_survivorat_s_p11)

                    ; #37652: <==closure== 30093 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #35956: <==negation-removal== 30093 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #51073: <==negation-removal== 37652 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (leader_b)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #17743: origin
                    (Bb_not_survivorat_s_p11)

                    ; #38593: <==closure== 17743 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #18569: <==negation-removal== 38593 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #38449: <==negation-removal== 17743 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (leader_c)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #60814: origin
                    (Bc_not_survivorat_s_p11)

                    ; #83975: <==closure== 60814 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #40635: <==negation-removal== 60814 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #76120: <==negation-removal== 83975 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p11_a_d_s
        :precondition (and (at_a_p11)
                           (leader_d)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #31410: <==closure== 85565 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #85565: origin
                    (Bd_not_survivorat_s_p11)

                    ; #25451: <==negation-removal== 85565 (pos)
                    (not (Pd_survivorat_s_p11))

                    ; #62170: <==negation-removal== 31410 (pos)
                    (not (Bd_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (leader_a)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #30093: origin
                    (Ba_not_survivorat_s_p11)

                    ; #37652: <==closure== 30093 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #35956: <==negation-removal== 30093 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #51073: <==negation-removal== 37652 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (leader_b)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #17743: origin
                    (Bb_not_survivorat_s_p11)

                    ; #38593: <==closure== 17743 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #18569: <==negation-removal== 38593 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #38449: <==negation-removal== 17743 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (leader_c)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #60814: origin
                    (Bc_not_survivorat_s_p11)

                    ; #83975: <==closure== 60814 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #40635: <==negation-removal== 60814 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #76120: <==negation-removal== 83975 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p11_b_d_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (leader_d)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #31410: <==closure== 85565 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #85565: origin
                    (Bd_not_survivorat_s_p11)

                    ; #25451: <==negation-removal== 85565 (pos)
                    (not (Pd_survivorat_s_p11))

                    ; #62170: <==negation-removal== 31410 (pos)
                    (not (Bd_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #30093: origin
                    (Ba_not_survivorat_s_p11)

                    ; #37652: <==closure== 30093 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #35956: <==negation-removal== 30093 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #51073: <==negation-removal== 37652 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #17743: origin
                    (Bb_not_survivorat_s_p11)

                    ; #38593: <==closure== 17743 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #18569: <==negation-removal== 38593 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #38449: <==negation-removal== 17743 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (leader_c)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #60814: origin
                    (Bc_not_survivorat_s_p11)

                    ; #83975: <==closure== 60814 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #40635: <==negation-removal== 60814 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #76120: <==negation-removal== 83975 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p11_c_d_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #31410: <==closure== 85565 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #85565: origin
                    (Bd_not_survivorat_s_p11)

                    ; #25451: <==negation-removal== 85565 (pos)
                    (not (Pd_survivorat_s_p11))

                    ; #62170: <==negation-removal== 31410 (pos)
                    (not (Bd_survivorat_s_p11))))

    (:action badcomm_p11_d_a_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_a))
        :effect (and
                    ; #30093: origin
                    (Ba_not_survivorat_s_p11)

                    ; #37652: <==closure== 30093 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #35956: <==negation-removal== 30093 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #51073: <==negation-removal== 37652 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_d_b_s
        :precondition (and (Pd_survivorat_s_p11)
                           (leader_b)
                           (Bd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #17743: origin
                    (Bb_not_survivorat_s_p11)

                    ; #38593: <==closure== 17743 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #18569: <==negation-removal== 38593 (pos)
                    (not (Bb_survivorat_s_p11))

                    ; #38449: <==negation-removal== 17743 (pos)
                    (not (Pb_survivorat_s_p11))))

    (:action badcomm_p11_d_c_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_c))
        :effect (and
                    ; #60814: origin
                    (Bc_not_survivorat_s_p11)

                    ; #83975: <==closure== 60814 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #40635: <==negation-removal== 60814 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #76120: <==negation-removal== 83975 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p11_d_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_d))
        :effect (and
                    ; #31410: <==closure== 85565 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #85565: origin
                    (Bd_not_survivorat_s_p11)

                    ; #25451: <==negation-removal== 85565 (pos)
                    (not (Pd_survivorat_s_p11))

                    ; #62170: <==negation-removal== 31410 (pos)
                    (not (Bd_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #38490: <==closure== 54309 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #54309: origin
                    (Ba_not_survivorat_s_p12)

                    ; #64404: <==negation-removal== 38490 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #77799: <==negation-removal== 54309 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #36731: origin
                    (Bb_not_survivorat_s_p12)

                    ; #61571: <==closure== 36731 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #38788: <==negation-removal== 61571 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #39186: <==negation-removal== 36731 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (leader_c)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #43803: origin
                    (Bc_not_survivorat_s_p12)

                    ; #55544: <==closure== 43803 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #10370: <==negation-removal== 55544 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #44513: <==negation-removal== 43803 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_a_d_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #19907: origin
                    (Bd_not_survivorat_s_p12)

                    ; #80152: <==closure== 19907 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #58505: <==negation-removal== 19907 (pos)
                    (not (Pd_survivorat_s_p12))

                    ; #80685: <==negation-removal== 80152 (pos)
                    (not (Bd_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #38490: <==closure== 54309 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #54309: origin
                    (Ba_not_survivorat_s_p12)

                    ; #64404: <==negation-removal== 38490 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #77799: <==negation-removal== 54309 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #36731: origin
                    (Bb_not_survivorat_s_p12)

                    ; #61571: <==closure== 36731 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #38788: <==negation-removal== 61571 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #39186: <==negation-removal== 36731 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #43803: origin
                    (Bc_not_survivorat_s_p12)

                    ; #55544: <==closure== 43803 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #10370: <==negation-removal== 55544 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #44513: <==negation-removal== 43803 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_b_d_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #19907: origin
                    (Bd_not_survivorat_s_p12)

                    ; #80152: <==closure== 19907 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #58505: <==negation-removal== 19907 (pos)
                    (not (Pd_survivorat_s_p12))

                    ; #80685: <==negation-removal== 80152 (pos)
                    (not (Bd_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #38490: <==closure== 54309 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #54309: origin
                    (Ba_not_survivorat_s_p12)

                    ; #64404: <==negation-removal== 38490 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #77799: <==negation-removal== 54309 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (at_c_p12)
                           (leader_b)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #36731: origin
                    (Bb_not_survivorat_s_p12)

                    ; #61571: <==closure== 36731 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #38788: <==negation-removal== 61571 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #39186: <==negation-removal== 36731 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #43803: origin
                    (Bc_not_survivorat_s_p12)

                    ; #55544: <==closure== 43803 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #10370: <==negation-removal== 55544 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #44513: <==negation-removal== 43803 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_c_d_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #19907: origin
                    (Bd_not_survivorat_s_p12)

                    ; #80152: <==closure== 19907 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #58505: <==negation-removal== 19907 (pos)
                    (not (Pd_survivorat_s_p12))

                    ; #80685: <==negation-removal== 80152 (pos)
                    (not (Bd_survivorat_s_p12))))

    (:action badcomm_p12_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p12)
                           (at_d_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #38490: <==closure== 54309 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #54309: origin
                    (Ba_not_survivorat_s_p12)

                    ; #64404: <==negation-removal== 38490 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #77799: <==negation-removal== 54309 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_d_b_s
        :precondition (and (Pd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_b)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #36731: origin
                    (Bb_not_survivorat_s_p12)

                    ; #61571: <==closure== 36731 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #38788: <==negation-removal== 61571 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #39186: <==negation-removal== 36731 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_d_c_s
        :precondition (and (Pd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_c)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #43803: origin
                    (Bc_not_survivorat_s_p12)

                    ; #55544: <==closure== 43803 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #10370: <==negation-removal== 55544 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #44513: <==negation-removal== 43803 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_d_d_s
        :precondition (and (Pd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_d)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #19907: origin
                    (Bd_not_survivorat_s_p12)

                    ; #80152: <==closure== 19907 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #58505: <==negation-removal== 19907 (pos)
                    (not (Pd_survivorat_s_p12))

                    ; #80685: <==negation-removal== 80152 (pos)
                    (not (Bd_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #22778: origin
                    (Ba_not_survivorat_s_p1)

                    ; #49509: <==closure== 22778 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #33299: <==negation-removal== 22778 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #57224: <==negation-removal== 49509 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_b)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #42086: <==closure== 70599 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #70599: origin
                    (Bb_not_survivorat_s_p1)

                    ; #61600: <==negation-removal== 70599 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #76315: <==negation-removal== 42086 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #14347: <==closure== 89535 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #89535: origin
                    (Bc_not_survivorat_s_p1)

                    ; #43354: <==negation-removal== 89535 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #49992: <==negation-removal== 14347 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_a_d_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_d))
        :effect (and
                    ; #44167: origin
                    (Bd_not_survivorat_s_p1)

                    ; #69904: <==closure== 44167 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #44090: <==negation-removal== 44167 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #69915: <==negation-removal== 69904 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #22778: origin
                    (Ba_not_survivorat_s_p1)

                    ; #49509: <==closure== 22778 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #33299: <==negation-removal== 22778 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #57224: <==negation-removal== 49509 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #42086: <==closure== 70599 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #70599: origin
                    (Bb_not_survivorat_s_p1)

                    ; #61600: <==negation-removal== 70599 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #76315: <==negation-removal== 42086 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #14347: <==closure== 89535 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #89535: origin
                    (Bc_not_survivorat_s_p1)

                    ; #43354: <==negation-removal== 89535 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #49992: <==negation-removal== 14347 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_d_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_d))
        :effect (and
                    ; #44167: origin
                    (Bd_not_survivorat_s_p1)

                    ; #69904: <==closure== 44167 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #44090: <==negation-removal== 44167 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #69915: <==negation-removal== 69904 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_a))
        :effect (and
                    ; #22778: origin
                    (Ba_not_survivorat_s_p1)

                    ; #49509: <==closure== 22778 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #33299: <==negation-removal== 22778 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #57224: <==negation-removal== 49509 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #42086: <==closure== 70599 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #70599: origin
                    (Bb_not_survivorat_s_p1)

                    ; #61600: <==negation-removal== 70599 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #76315: <==negation-removal== 42086 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_c))
        :effect (and
                    ; #14347: <==closure== 89535 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #89535: origin
                    (Bc_not_survivorat_s_p1)

                    ; #43354: <==negation-removal== 89535 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #49992: <==negation-removal== 14347 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_d_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_d))
        :effect (and
                    ; #44167: origin
                    (Bd_not_survivorat_s_p1)

                    ; #69904: <==closure== 44167 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #44090: <==negation-removal== 44167 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #69915: <==negation-removal== 69904 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #22778: origin
                    (Ba_not_survivorat_s_p1)

                    ; #49509: <==closure== 22778 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #33299: <==negation-removal== 22778 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #57224: <==negation-removal== 49509 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_d_b_s
        :precondition (and (Pd_survivorat_s_p1)
                           (leader_b)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #42086: <==closure== 70599 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #70599: origin
                    (Bb_not_survivorat_s_p1)

                    ; #61600: <==negation-removal== 70599 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #76315: <==negation-removal== 42086 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_d_c_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (leader_c))
        :effect (and
                    ; #14347: <==closure== 89535 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #89535: origin
                    (Bc_not_survivorat_s_p1)

                    ; #43354: <==negation-removal== 89535 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #49992: <==negation-removal== 14347 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_d_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (leader_d))
        :effect (and
                    ; #44167: origin
                    (Bd_not_survivorat_s_p1)

                    ; #69904: <==closure== 44167 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #44090: <==negation-removal== 44167 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #69915: <==negation-removal== 69904 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #10974: <==closure== 52466 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #52466: origin
                    (Ba_not_survivorat_s_p2)

                    ; #17519: <==negation-removal== 10974 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #70805: <==negation-removal== 52466 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_b)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #11447: origin
                    (Bb_not_survivorat_s_p2)

                    ; #40832: <==closure== 11447 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #51159: <==negation-removal== 11447 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #73807: <==negation-removal== 40832 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_c)
                           (at_a_p2))
        :effect (and
                    ; #30833: origin
                    (Bc_not_survivorat_s_p2)

                    ; #85256: <==closure== 30833 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #27091: <==negation-removal== 85256 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #84538: <==negation-removal== 30833 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_d)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #54747: <==closure== 80879 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #80879: origin
                    (Bd_not_survivorat_s_p2)

                    ; #61184: <==negation-removal== 54747 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #88466: <==negation-removal== 80879 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #10974: <==closure== 52466 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #52466: origin
                    (Ba_not_survivorat_s_p2)

                    ; #17519: <==negation-removal== 10974 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #70805: <==negation-removal== 52466 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #11447: origin
                    (Bb_not_survivorat_s_p2)

                    ; #40832: <==closure== 11447 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #51159: <==negation-removal== 11447 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #73807: <==negation-removal== 40832 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #30833: origin
                    (Bc_not_survivorat_s_p2)

                    ; #85256: <==closure== 30833 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #27091: <==negation-removal== 85256 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #84538: <==negation-removal== 30833 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_b_d_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_d)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #54747: <==closure== 80879 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #80879: origin
                    (Bd_not_survivorat_s_p2)

                    ; #61184: <==negation-removal== 54747 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #88466: <==negation-removal== 80879 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_a))
        :effect (and
                    ; #10974: <==closure== 52466 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #52466: origin
                    (Ba_not_survivorat_s_p2)

                    ; #17519: <==negation-removal== 10974 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #70805: <==negation-removal== 52466 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_b))
        :effect (and
                    ; #11447: origin
                    (Bb_not_survivorat_s_p2)

                    ; #40832: <==closure== 11447 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #51159: <==negation-removal== 11447 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #73807: <==negation-removal== 40832 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_c))
        :effect (and
                    ; #30833: origin
                    (Bc_not_survivorat_s_p2)

                    ; #85256: <==closure== 30833 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #27091: <==negation-removal== 85256 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #84538: <==negation-removal== 30833 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_c_d_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_d))
        :effect (and
                    ; #54747: <==closure== 80879 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #80879: origin
                    (Bd_not_survivorat_s_p2)

                    ; #61184: <==negation-removal== 54747 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #88466: <==negation-removal== 80879 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #10974: <==closure== 52466 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #52466: origin
                    (Ba_not_survivorat_s_p2)

                    ; #17519: <==negation-removal== 10974 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #70805: <==negation-removal== 52466 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_d_b_s
        :precondition (and (at_d_p2)
                           (leader_b)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #11447: origin
                    (Bb_not_survivorat_s_p2)

                    ; #40832: <==closure== 11447 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #51159: <==negation-removal== 11447 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #73807: <==negation-removal== 40832 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_d_c_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (leader_c)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #30833: origin
                    (Bc_not_survivorat_s_p2)

                    ; #85256: <==closure== 30833 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #27091: <==negation-removal== 85256 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #84538: <==negation-removal== 30833 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_d_d_s
        :precondition (and (at_d_p2)
                           (leader_d)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #54747: <==closure== 80879 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #80879: origin
                    (Bd_not_survivorat_s_p2)

                    ; #61184: <==negation-removal== 54747 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #88466: <==negation-removal== 80879 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #28329: <==closure== 73193 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #73193: origin
                    (Ba_not_survivorat_s_p3)

                    ; #13548: <==negation-removal== 73193 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #78647: <==negation-removal== 28329 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #60940: origin
                    (Bb_not_survivorat_s_p3)

                    ; #68616: <==closure== 60940 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #32784: <==negation-removal== 68616 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #84527: <==negation-removal== 60940 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #70124: origin
                    (Bc_not_survivorat_s_p3)

                    ; #70404: <==closure== 70124 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #26456: <==negation-removal== 70124 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #29469: <==negation-removal== 70404 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_a_d_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_d)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #24260: origin
                    (Bd_not_survivorat_s_p3)

                    ; #87113: <==closure== 24260 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #40849: <==negation-removal== 87113 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #44690: <==negation-removal== 24260 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #28329: <==closure== 73193 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #73193: origin
                    (Ba_not_survivorat_s_p3)

                    ; #13548: <==negation-removal== 73193 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #78647: <==negation-removal== 28329 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #60940: origin
                    (Bb_not_survivorat_s_p3)

                    ; #68616: <==closure== 60940 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #32784: <==negation-removal== 68616 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #84527: <==negation-removal== 60940 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_c))
        :effect (and
                    ; #70124: origin
                    (Bc_not_survivorat_s_p3)

                    ; #70404: <==closure== 70124 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #26456: <==negation-removal== 70124 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #29469: <==negation-removal== 70404 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_b_d_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_d))
        :effect (and
                    ; #24260: origin
                    (Bd_not_survivorat_s_p3)

                    ; #87113: <==closure== 24260 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #40849: <==negation-removal== 87113 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #44690: <==negation-removal== 24260 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (leader_a))
        :effect (and
                    ; #28329: <==closure== 73193 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #73193: origin
                    (Ba_not_survivorat_s_p3)

                    ; #13548: <==negation-removal== 73193 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #78647: <==negation-removal== 28329 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #60940: origin
                    (Bb_not_survivorat_s_p3)

                    ; #68616: <==closure== 60940 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #32784: <==negation-removal== 68616 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #84527: <==negation-removal== 60940 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #70124: origin
                    (Bc_not_survivorat_s_p3)

                    ; #70404: <==closure== 70124 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #26456: <==negation-removal== 70124 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #29469: <==negation-removal== 70404 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_c_d_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (leader_d))
        :effect (and
                    ; #24260: origin
                    (Bd_not_survivorat_s_p3)

                    ; #87113: <==closure== 24260 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #40849: <==negation-removal== 87113 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #44690: <==negation-removal== 24260 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_d_a_s
        :precondition (and (leader_a)
                           (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #28329: <==closure== 73193 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #73193: origin
                    (Ba_not_survivorat_s_p3)

                    ; #13548: <==negation-removal== 73193 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #78647: <==negation-removal== 28329 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_d_b_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (leader_b)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #60940: origin
                    (Bb_not_survivorat_s_p3)

                    ; #68616: <==closure== 60940 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #32784: <==negation-removal== 68616 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #84527: <==negation-removal== 60940 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_d_c_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #70124: origin
                    (Bc_not_survivorat_s_p3)

                    ; #70404: <==closure== 70124 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #26456: <==negation-removal== 70124 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #29469: <==negation-removal== 70404 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_d_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (leader_d))
        :effect (and
                    ; #24260: origin
                    (Bd_not_survivorat_s_p3)

                    ; #87113: <==closure== 24260 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #40849: <==negation-removal== 87113 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #44690: <==negation-removal== 24260 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #46334: <==closure== 60835 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #60835: origin
                    (Ba_not_survivorat_s_p4)

                    ; #17402: <==negation-removal== 46334 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #49696: <==negation-removal== 60835 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #10727: origin
                    (Bb_not_survivorat_s_p4)

                    ; #32457: <==closure== 10727 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #44788: <==negation-removal== 32457 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #87744: <==negation-removal== 10727 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c))
        :effect (and
                    ; #33258: <==closure== 55375 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #55375: origin
                    (Bc_not_survivorat_s_p4)

                    ; #31998: <==negation-removal== 33258 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #41684: <==negation-removal== 55375 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_a_d_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_d))
        :effect (and
                    ; #26554: origin
                    (Bd_not_survivorat_s_p4)

                    ; #53764: <==closure== 26554 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #24661: <==negation-removal== 53764 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #50264: <==negation-removal== 26554 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #46334: <==closure== 60835 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #60835: origin
                    (Ba_not_survivorat_s_p4)

                    ; #17402: <==negation-removal== 46334 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #49696: <==negation-removal== 60835 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #10727: origin
                    (Bb_not_survivorat_s_p4)

                    ; #32457: <==closure== 10727 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #44788: <==negation-removal== 32457 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #87744: <==negation-removal== 10727 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (leader_c)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #33258: <==closure== 55375 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #55375: origin
                    (Bc_not_survivorat_s_p4)

                    ; #31998: <==negation-removal== 33258 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #41684: <==negation-removal== 55375 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_d_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_d))
        :effect (and
                    ; #26554: origin
                    (Bd_not_survivorat_s_p4)

                    ; #53764: <==closure== 26554 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #24661: <==negation-removal== 53764 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #50264: <==negation-removal== 26554 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_a)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #46334: <==closure== 60835 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #60835: origin
                    (Ba_not_survivorat_s_p4)

                    ; #17402: <==negation-removal== 46334 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #49696: <==negation-removal== 60835 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #10727: origin
                    (Bb_not_survivorat_s_p4)

                    ; #32457: <==closure== 10727 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #44788: <==negation-removal== 32457 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #87744: <==negation-removal== 10727 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #33258: <==closure== 55375 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #55375: origin
                    (Bc_not_survivorat_s_p4)

                    ; #31998: <==negation-removal== 33258 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #41684: <==negation-removal== 55375 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_d_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_d)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #26554: origin
                    (Bd_not_survivorat_s_p4)

                    ; #53764: <==closure== 26554 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #24661: <==negation-removal== 53764 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #50264: <==negation-removal== 26554 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_d_a_s
        :precondition (and (leader_a)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #46334: <==closure== 60835 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #60835: origin
                    (Ba_not_survivorat_s_p4)

                    ; #17402: <==negation-removal== 46334 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #49696: <==negation-removal== 60835 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_d_b_s
        :precondition (and (leader_b)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #10727: origin
                    (Bb_not_survivorat_s_p4)

                    ; #32457: <==closure== 10727 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #44788: <==negation-removal== 32457 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #87744: <==negation-removal== 10727 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_d_c_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_c)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #33258: <==closure== 55375 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #55375: origin
                    (Bc_not_survivorat_s_p4)

                    ; #31998: <==negation-removal== 33258 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #41684: <==negation-removal== 55375 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_d_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #26554: origin
                    (Bd_not_survivorat_s_p4)

                    ; #53764: <==closure== 26554 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #24661: <==negation-removal== 53764 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #50264: <==negation-removal== 26554 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #25025: origin
                    (Ba_not_survivorat_s_p5)

                    ; #40440: <==closure== 25025 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #12433: <==negation-removal== 25025 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #28000: <==negation-removal== 40440 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #56475: <==closure== 91846 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #91846: origin
                    (Bb_not_survivorat_s_p5)

                    ; #66512: <==negation-removal== 56475 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #83897: <==negation-removal== 91846 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #26356: <==closure== 42189 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #42189: origin
                    (Bc_not_survivorat_s_p5)

                    ; #41410: <==negation-removal== 42189 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #83238: <==negation-removal== 26356 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_a_d_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #78926: origin
                    (Bd_not_survivorat_s_p5)

                    ; #84706: <==closure== 78926 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #25791: <==negation-removal== 78926 (pos)
                    (not (Pd_survivorat_s_p5))

                    ; #64546: <==negation-removal== 84706 (pos)
                    (not (Bd_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (leader_a)
                           (at_b_p5))
        :effect (and
                    ; #25025: origin
                    (Ba_not_survivorat_s_p5)

                    ; #40440: <==closure== 25025 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #12433: <==negation-removal== 25025 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #28000: <==negation-removal== 40440 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #56475: <==closure== 91846 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #91846: origin
                    (Bb_not_survivorat_s_p5)

                    ; #66512: <==negation-removal== 56475 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #83897: <==negation-removal== 91846 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (leader_c)
                           (at_b_p5))
        :effect (and
                    ; #26356: <==closure== 42189 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #42189: origin
                    (Bc_not_survivorat_s_p5)

                    ; #41410: <==negation-removal== 42189 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #83238: <==negation-removal== 26356 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_b_d_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (leader_d)
                           (at_b_p5))
        :effect (and
                    ; #78926: origin
                    (Bd_not_survivorat_s_p5)

                    ; #84706: <==closure== 78926 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #25791: <==negation-removal== 78926 (pos)
                    (not (Pd_survivorat_s_p5))

                    ; #64546: <==negation-removal== 84706 (pos)
                    (not (Bd_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #25025: origin
                    (Ba_not_survivorat_s_p5)

                    ; #40440: <==closure== 25025 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #12433: <==negation-removal== 25025 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #28000: <==negation-removal== 40440 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_b)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #56475: <==closure== 91846 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #91846: origin
                    (Bb_not_survivorat_s_p5)

                    ; #66512: <==negation-removal== 56475 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #83897: <==negation-removal== 91846 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #26356: <==closure== 42189 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #42189: origin
                    (Bc_not_survivorat_s_p5)

                    ; #41410: <==negation-removal== 42189 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #83238: <==negation-removal== 26356 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_c_d_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #78926: origin
                    (Bd_not_survivorat_s_p5)

                    ; #84706: <==closure== 78926 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #25791: <==negation-removal== 78926 (pos)
                    (not (Pd_survivorat_s_p5))

                    ; #64546: <==negation-removal== 84706 (pos)
                    (not (Bd_survivorat_s_p5))))

    (:action badcomm_p5_d_a_s
        :precondition (and (Bd_survivorat_s_p5)
                           (leader_a)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #25025: origin
                    (Ba_not_survivorat_s_p5)

                    ; #40440: <==closure== 25025 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #12433: <==negation-removal== 25025 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #28000: <==negation-removal== 40440 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_d_b_s
        :precondition (and (Bd_survivorat_s_p5)
                           (leader_b)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #56475: <==closure== 91846 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #91846: origin
                    (Bb_not_survivorat_s_p5)

                    ; #66512: <==negation-removal== 56475 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #83897: <==negation-removal== 91846 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_d_c_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_c)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #26356: <==closure== 42189 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #42189: origin
                    (Bc_not_survivorat_s_p5)

                    ; #41410: <==negation-removal== 42189 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #83238: <==negation-removal== 26356 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_d_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (leader_d)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #78926: origin
                    (Bd_not_survivorat_s_p5)

                    ; #84706: <==closure== 78926 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #25791: <==negation-removal== 78926 (pos)
                    (not (Pd_survivorat_s_p5))

                    ; #64546: <==negation-removal== 84706 (pos)
                    (not (Bd_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #14990: origin
                    (Ba_not_survivorat_s_p6)

                    ; #22408: <==closure== 14990 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #26520: <==negation-removal== 22408 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #30762: <==negation-removal== 14990 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #35834: origin
                    (Bb_not_survivorat_s_p6)

                    ; #53289: <==closure== 35834 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #10842: <==negation-removal== 35834 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #66713: <==negation-removal== 53289 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #20830: <==closure== 79418 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #79418: origin
                    (Bc_not_survivorat_s_p6)

                    ; #16427: <==negation-removal== 79418 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #62897: <==negation-removal== 20830 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_a_d_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_d)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #32601: origin
                    (Bd_not_survivorat_s_p6)

                    ; #83113: <==closure== 32601 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #30623: <==negation-removal== 32601 (pos)
                    (not (Pd_survivorat_s_p6))

                    ; #71450: <==negation-removal== 83113 (pos)
                    (not (Bd_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (leader_a)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #14990: origin
                    (Ba_not_survivorat_s_p6)

                    ; #22408: <==closure== 14990 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #26520: <==negation-removal== 22408 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #30762: <==negation-removal== 14990 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (leader_b)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #35834: origin
                    (Bb_not_survivorat_s_p6)

                    ; #53289: <==closure== 35834 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #10842: <==negation-removal== 35834 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #66713: <==negation-removal== 53289 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (leader_c)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #20830: <==closure== 79418 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #79418: origin
                    (Bc_not_survivorat_s_p6)

                    ; #16427: <==negation-removal== 79418 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #62897: <==negation-removal== 20830 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_b_d_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (leader_d)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #32601: origin
                    (Bd_not_survivorat_s_p6)

                    ; #83113: <==closure== 32601 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #30623: <==negation-removal== 32601 (pos)
                    (not (Pd_survivorat_s_p6))

                    ; #71450: <==negation-removal== 83113 (pos)
                    (not (Bd_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #14990: origin
                    (Ba_not_survivorat_s_p6)

                    ; #22408: <==closure== 14990 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #26520: <==negation-removal== 22408 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #30762: <==negation-removal== 14990 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #35834: origin
                    (Bb_not_survivorat_s_p6)

                    ; #53289: <==closure== 35834 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #10842: <==negation-removal== 35834 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #66713: <==negation-removal== 53289 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_c)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #20830: <==closure== 79418 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #79418: origin
                    (Bc_not_survivorat_s_p6)

                    ; #16427: <==negation-removal== 79418 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #62897: <==negation-removal== 20830 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_c_d_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #32601: origin
                    (Bd_not_survivorat_s_p6)

                    ; #83113: <==closure== 32601 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #30623: <==negation-removal== 32601 (pos)
                    (not (Pd_survivorat_s_p6))

                    ; #71450: <==negation-removal== 83113 (pos)
                    (not (Bd_survivorat_s_p6))))

    (:action badcomm_p6_d_a_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #14990: origin
                    (Ba_not_survivorat_s_p6)

                    ; #22408: <==closure== 14990 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #26520: <==negation-removal== 22408 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #30762: <==negation-removal== 14990 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_d_b_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #35834: origin
                    (Bb_not_survivorat_s_p6)

                    ; #53289: <==closure== 35834 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #10842: <==negation-removal== 35834 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #66713: <==negation-removal== 53289 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_d_c_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #20830: <==closure== 79418 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #79418: origin
                    (Bc_not_survivorat_s_p6)

                    ; #16427: <==negation-removal== 79418 (pos)
                    (not (Pc_survivorat_s_p6))

                    ; #62897: <==negation-removal== 20830 (pos)
                    (not (Bc_survivorat_s_p6))))

    (:action badcomm_p6_d_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #32601: origin
                    (Bd_not_survivorat_s_p6)

                    ; #83113: <==closure== 32601 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #30623: <==negation-removal== 32601 (pos)
                    (not (Pd_survivorat_s_p6))

                    ; #71450: <==negation-removal== 83113 (pos)
                    (not (Bd_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #18302: <==closure== 22774 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #22774: origin
                    (Ba_not_survivorat_s_p7)

                    ; #61920: <==negation-removal== 18302 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #70446: <==negation-removal== 22774 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #17507: <==closure== 87463 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #87463: origin
                    (Bb_not_survivorat_s_p7)

                    ; #14832: <==negation-removal== 87463 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #53573: <==negation-removal== 17507 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #72481: origin
                    (Bc_not_survivorat_s_p7)

                    ; #86005: <==closure== 72481 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #47722: <==negation-removal== 86005 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #63655: <==negation-removal== 72481 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_a_d_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_d)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #23528: <==closure== 76873 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #76873: origin
                    (Bd_not_survivorat_s_p7)

                    ; #40545: <==negation-removal== 76873 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #90428: <==negation-removal== 23528 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #18302: <==closure== 22774 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #22774: origin
                    (Ba_not_survivorat_s_p7)

                    ; #61920: <==negation-removal== 18302 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #70446: <==negation-removal== 22774 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b)
                           (at_b_p7))
        :effect (and
                    ; #17507: <==closure== 87463 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #87463: origin
                    (Bb_not_survivorat_s_p7)

                    ; #14832: <==negation-removal== 87463 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #53573: <==negation-removal== 17507 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c))
        :effect (and
                    ; #72481: origin
                    (Bc_not_survivorat_s_p7)

                    ; #86005: <==closure== 72481 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #47722: <==negation-removal== 86005 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #63655: <==negation-removal== 72481 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_b_d_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_d))
        :effect (and
                    ; #23528: <==closure== 76873 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #76873: origin
                    (Bd_not_survivorat_s_p7)

                    ; #40545: <==negation-removal== 76873 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #90428: <==negation-removal== 23528 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #18302: <==closure== 22774 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #22774: origin
                    (Ba_not_survivorat_s_p7)

                    ; #61920: <==negation-removal== 18302 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #70446: <==negation-removal== 22774 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #17507: <==closure== 87463 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #87463: origin
                    (Bb_not_survivorat_s_p7)

                    ; #14832: <==negation-removal== 87463 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #53573: <==negation-removal== 17507 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #72481: origin
                    (Bc_not_survivorat_s_p7)

                    ; #86005: <==closure== 72481 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #47722: <==negation-removal== 86005 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #63655: <==negation-removal== 72481 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_c_d_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_d))
        :effect (and
                    ; #23528: <==closure== 76873 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #76873: origin
                    (Bd_not_survivorat_s_p7)

                    ; #40545: <==negation-removal== 76873 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #90428: <==negation-removal== 23528 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p7_d_a_s
        :precondition (and (leader_a)
                           (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #18302: <==closure== 22774 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #22774: origin
                    (Ba_not_survivorat_s_p7)

                    ; #61920: <==negation-removal== 18302 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #70446: <==negation-removal== 22774 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_d_b_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (leader_b)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #17507: <==closure== 87463 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #87463: origin
                    (Bb_not_survivorat_s_p7)

                    ; #14832: <==negation-removal== 87463 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #53573: <==negation-removal== 17507 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_d_c_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #72481: origin
                    (Bc_not_survivorat_s_p7)

                    ; #86005: <==closure== 72481 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #47722: <==negation-removal== 86005 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #63655: <==negation-removal== 72481 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_d_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_d))
        :effect (and
                    ; #23528: <==closure== 76873 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #76873: origin
                    (Bd_not_survivorat_s_p7)

                    ; #40545: <==negation-removal== 76873 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #90428: <==negation-removal== 23528 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #40512: <==closure== 62369 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #62369: origin
                    (Ba_not_survivorat_s_p8)

                    ; #61323: <==negation-removal== 62369 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #91446: <==negation-removal== 40512 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #15385: origin
                    (Bb_not_survivorat_s_p8)

                    ; #22687: <==closure== 15385 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #24887: <==negation-removal== 15385 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #40479: <==negation-removal== 22687 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_c)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #51744: origin
                    (Bc_not_survivorat_s_p8)

                    ; #77422: <==closure== 51744 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #38201: <==negation-removal== 77422 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #56410: <==negation-removal== 51744 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_a_d_s
        :precondition (and (leader_d)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #18507: <==closure== 43493 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #43493: origin
                    (Bd_not_survivorat_s_p8)

                    ; #36157: <==negation-removal== 43493 (pos)
                    (not (Pd_survivorat_s_p8))

                    ; #55901: <==negation-removal== 18507 (pos)
                    (not (Bd_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #40512: <==closure== 62369 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #62369: origin
                    (Ba_not_survivorat_s_p8)

                    ; #61323: <==negation-removal== 62369 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #91446: <==negation-removal== 40512 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #15385: origin
                    (Bb_not_survivorat_s_p8)

                    ; #22687: <==closure== 15385 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #24887: <==negation-removal== 15385 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #40479: <==negation-removal== 22687 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_c)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #51744: origin
                    (Bc_not_survivorat_s_p8)

                    ; #77422: <==closure== 51744 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #38201: <==negation-removal== 77422 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #56410: <==negation-removal== 51744 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_d_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #18507: <==closure== 43493 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #43493: origin
                    (Bd_not_survivorat_s_p8)

                    ; #36157: <==negation-removal== 43493 (pos)
                    (not (Pd_survivorat_s_p8))

                    ; #55901: <==negation-removal== 18507 (pos)
                    (not (Bd_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #40512: <==closure== 62369 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #62369: origin
                    (Ba_not_survivorat_s_p8)

                    ; #61323: <==negation-removal== 62369 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #91446: <==negation-removal== 40512 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_b)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #15385: origin
                    (Bb_not_survivorat_s_p8)

                    ; #22687: <==closure== 15385 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #24887: <==negation-removal== 15385 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #40479: <==negation-removal== 22687 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_c)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #51744: origin
                    (Bc_not_survivorat_s_p8)

                    ; #77422: <==closure== 51744 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #38201: <==negation-removal== 77422 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #56410: <==negation-removal== 51744 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_d_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #18507: <==closure== 43493 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #43493: origin
                    (Bd_not_survivorat_s_p8)

                    ; #36157: <==negation-removal== 43493 (pos)
                    (not (Pd_survivorat_s_p8))

                    ; #55901: <==negation-removal== 18507 (pos)
                    (not (Bd_survivorat_s_p8))))

    (:action badcomm_p8_d_a_s
        :precondition (and (leader_a)
                           (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #40512: <==closure== 62369 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #62369: origin
                    (Ba_not_survivorat_s_p8)

                    ; #61323: <==negation-removal== 62369 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #91446: <==negation-removal== 40512 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_d_b_s
        :precondition (and (leader_b)
                           (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #15385: origin
                    (Bb_not_survivorat_s_p8)

                    ; #22687: <==closure== 15385 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #24887: <==negation-removal== 15385 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #40479: <==negation-removal== 22687 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_d_c_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #51744: origin
                    (Bc_not_survivorat_s_p8)

                    ; #77422: <==closure== 51744 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #38201: <==negation-removal== 77422 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #56410: <==negation-removal== 51744 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_d_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #18507: <==closure== 43493 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #43493: origin
                    (Bd_not_survivorat_s_p8)

                    ; #36157: <==negation-removal== 43493 (pos)
                    (not (Pd_survivorat_s_p8))

                    ; #55901: <==negation-removal== 18507 (pos)
                    (not (Bd_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #40011: <==closure== 72410 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #72410: origin
                    (Ba_not_survivorat_s_p9)

                    ; #17412: <==negation-removal== 72410 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #18571: <==negation-removal== 40011 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (Pa_survivorat_s_p9)
                           (leader_b)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #66168: <==closure== 91221 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #91221: origin
                    (Bb_not_survivorat_s_p9)

                    ; #36522: <==negation-removal== 66168 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #90056: <==negation-removal== 91221 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #54792: <==closure== 66965 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #66965: origin
                    (Bc_not_survivorat_s_p9)

                    ; #33361: <==negation-removal== 66965 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #36203: <==negation-removal== 54792 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_a_d_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (leader_d))
        :effect (and
                    ; #30062: <==closure== 58473 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #58473: origin
                    (Bd_not_survivorat_s_p9)

                    ; #19373: <==negation-removal== 30062 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #26294: <==negation-removal== 58473 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #40011: <==closure== 72410 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #72410: origin
                    (Ba_not_survivorat_s_p9)

                    ; #17412: <==negation-removal== 72410 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #18571: <==negation-removal== 40011 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #66168: <==closure== 91221 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #91221: origin
                    (Bb_not_survivorat_s_p9)

                    ; #36522: <==negation-removal== 66168 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #90056: <==negation-removal== 91221 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_c)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #54792: <==closure== 66965 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #66965: origin
                    (Bc_not_survivorat_s_p9)

                    ; #33361: <==negation-removal== 66965 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #36203: <==negation-removal== 54792 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_d_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #30062: <==closure== 58473 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #58473: origin
                    (Bd_not_survivorat_s_p9)

                    ; #19373: <==negation-removal== 30062 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #26294: <==negation-removal== 58473 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #40011: <==closure== 72410 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #72410: origin
                    (Ba_not_survivorat_s_p9)

                    ; #17412: <==negation-removal== 72410 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #18571: <==negation-removal== 40011 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #66168: <==closure== 91221 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #91221: origin
                    (Bb_not_survivorat_s_p9)

                    ; #36522: <==negation-removal== 66168 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #90056: <==negation-removal== 91221 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #54792: <==closure== 66965 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #66965: origin
                    (Bc_not_survivorat_s_p9)

                    ; #33361: <==negation-removal== 66965 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #36203: <==negation-removal== 54792 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_d_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #30062: <==closure== 58473 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #58473: origin
                    (Bd_not_survivorat_s_p9)

                    ; #19373: <==negation-removal== 30062 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #26294: <==negation-removal== 58473 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action badcomm_p9_d_a_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_a))
        :effect (and
                    ; #40011: <==closure== 72410 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #72410: origin
                    (Ba_not_survivorat_s_p9)

                    ; #17412: <==negation-removal== 72410 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #18571: <==negation-removal== 40011 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_d_b_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_b))
        :effect (and
                    ; #66168: <==closure== 91221 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #91221: origin
                    (Bb_not_survivorat_s_p9)

                    ; #36522: <==negation-removal== 66168 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #90056: <==negation-removal== 91221 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_d_c_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_c))
        :effect (and
                    ; #54792: <==closure== 66965 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #66965: origin
                    (Bc_not_survivorat_s_p9)

                    ; #33361: <==negation-removal== 66965 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #36203: <==negation-removal== 54792 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_d_d_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_d))
        :effect (and
                    ; #30062: <==closure== 58473 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #58473: origin
                    (Bd_not_survivorat_s_p9)

                    ; #19373: <==negation-removal== 30062 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #26294: <==negation-removal== 58473 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (leader_a)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #44692: origin
                    (Ba_survivorat_s_p10)

                    ; #74796: <==closure== 44692 (pos)
                    (Pa_survivorat_s_p10)

                    ; #15051: <==negation-removal== 74796 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #30251: <==negation-removal== 44692 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (leader_b)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #66440: <==closure== 82710 (pos)
                    (Pb_survivorat_s_p10)

                    ; #82710: origin
                    (Bb_survivorat_s_p10)

                    ; #10111: <==negation-removal== 82710 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #80242: <==negation-removal== 66440 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #44768: origin
                    (Bc_survivorat_s_p10)

                    ; #46055: <==closure== 44768 (pos)
                    (Pc_survivorat_s_p10)

                    ; #14178: <==negation-removal== 44768 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #58178: <==negation-removal== 46055 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_a_d_s
        :precondition (and (leader_d)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #54097: <==closure== 56509 (pos)
                    (Pd_survivorat_s_p10)

                    ; #56509: origin
                    (Bd_survivorat_s_p10)

                    ; #22589: <==negation-removal== 54097 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #44738: <==negation-removal== 56509 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (leader_a)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #44692: origin
                    (Ba_survivorat_s_p10)

                    ; #74796: <==closure== 44692 (pos)
                    (Pa_survivorat_s_p10)

                    ; #15051: <==negation-removal== 74796 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #30251: <==negation-removal== 44692 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (leader_b)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #66440: <==closure== 82710 (pos)
                    (Pb_survivorat_s_p10)

                    ; #82710: origin
                    (Bb_survivorat_s_p10)

                    ; #10111: <==negation-removal== 82710 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #80242: <==negation-removal== 66440 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (at_b_p10)
                           (leader_c)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #44768: origin
                    (Bc_survivorat_s_p10)

                    ; #46055: <==closure== 44768 (pos)
                    (Pc_survivorat_s_p10)

                    ; #14178: <==negation-removal== 44768 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #58178: <==negation-removal== 46055 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_d_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #54097: <==closure== 56509 (pos)
                    (Pd_survivorat_s_p10)

                    ; #56509: origin
                    (Bd_survivorat_s_p10)

                    ; #22589: <==negation-removal== 54097 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #44738: <==negation-removal== 56509 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #44692: origin
                    (Ba_survivorat_s_p10)

                    ; #74796: <==closure== 44692 (pos)
                    (Pa_survivorat_s_p10)

                    ; #15051: <==negation-removal== 74796 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #30251: <==negation-removal== 44692 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_b)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #66440: <==closure== 82710 (pos)
                    (Pb_survivorat_s_p10)

                    ; #82710: origin
                    (Bb_survivorat_s_p10)

                    ; #10111: <==negation-removal== 82710 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #80242: <==negation-removal== 66440 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_c)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #44768: origin
                    (Bc_survivorat_s_p10)

                    ; #46055: <==closure== 44768 (pos)
                    (Pc_survivorat_s_p10)

                    ; #14178: <==negation-removal== 44768 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #58178: <==negation-removal== 46055 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_d_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_d)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #54097: <==closure== 56509 (pos)
                    (Pd_survivorat_s_p10)

                    ; #56509: origin
                    (Bd_survivorat_s_p10)

                    ; #22589: <==negation-removal== 54097 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #44738: <==negation-removal== 56509 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #44692: origin
                    (Ba_survivorat_s_p10)

                    ; #74796: <==closure== 44692 (pos)
                    (Pa_survivorat_s_p10)

                    ; #15051: <==negation-removal== 74796 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #30251: <==negation-removal== 44692 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_d_b_s
        :precondition (and (leader_b)
                           (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #66440: <==closure== 82710 (pos)
                    (Pb_survivorat_s_p10)

                    ; #82710: origin
                    (Bb_survivorat_s_p10)

                    ; #10111: <==negation-removal== 82710 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #80242: <==negation-removal== 66440 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_d_c_s
        :precondition (and (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_c))
        :effect (and
                    ; #44768: origin
                    (Bc_survivorat_s_p10)

                    ; #46055: <==closure== 44768 (pos)
                    (Pc_survivorat_s_p10)

                    ; #14178: <==negation-removal== 44768 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #58178: <==negation-removal== 46055 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_d_d_s
        :precondition (and (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_d))
        :effect (and
                    ; #54097: <==closure== 56509 (pos)
                    (Pd_survivorat_s_p10)

                    ; #56509: origin
                    (Bd_survivorat_s_p10)

                    ; #22589: <==negation-removal== 54097 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #44738: <==negation-removal== 56509 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (leader_a)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #35956: <==closure== 51073 (pos)
                    (Pa_survivorat_s_p11)

                    ; #51073: origin
                    (Ba_survivorat_s_p11)

                    ; #30093: <==negation-removal== 35956 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #37652: <==negation-removal== 51073 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (leader_b)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #18569: origin
                    (Bb_survivorat_s_p11)

                    ; #38449: <==closure== 18569 (pos)
                    (Pb_survivorat_s_p11)

                    ; #17743: <==negation-removal== 38449 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #38593: <==negation-removal== 18569 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (leader_c)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #40635: <==closure== 76120 (pos)
                    (Pc_survivorat_s_p11)

                    ; #76120: origin
                    (Bc_survivorat_s_p11)

                    ; #60814: <==negation-removal== 40635 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #83975: <==negation-removal== 76120 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_a_d_s
        :precondition (and (at_a_p11)
                           (leader_d)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #25451: <==closure== 62170 (pos)
                    (Pd_survivorat_s_p11)

                    ; #62170: origin
                    (Bd_survivorat_s_p11)

                    ; #31410: <==negation-removal== 62170 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #85565: <==negation-removal== 25451 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #35956: <==closure== 51073 (pos)
                    (Pa_survivorat_s_p11)

                    ; #51073: origin
                    (Ba_survivorat_s_p11)

                    ; #30093: <==negation-removal== 35956 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #37652: <==negation-removal== 51073 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (leader_b)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #18569: origin
                    (Bb_survivorat_s_p11)

                    ; #38449: <==closure== 18569 (pos)
                    (Pb_survivorat_s_p11)

                    ; #17743: <==negation-removal== 38449 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #38593: <==negation-removal== 18569 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (leader_c)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #40635: <==closure== 76120 (pos)
                    (Pc_survivorat_s_p11)

                    ; #76120: origin
                    (Bc_survivorat_s_p11)

                    ; #60814: <==negation-removal== 40635 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #83975: <==negation-removal== 76120 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_d_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (leader_d)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #25451: <==closure== 62170 (pos)
                    (Pd_survivorat_s_p11)

                    ; #62170: origin
                    (Bd_survivorat_s_p11)

                    ; #31410: <==negation-removal== 62170 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #85565: <==negation-removal== 25451 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #35956: <==closure== 51073 (pos)
                    (Pa_survivorat_s_p11)

                    ; #51073: origin
                    (Ba_survivorat_s_p11)

                    ; #30093: <==negation-removal== 35956 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #37652: <==negation-removal== 51073 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #18569: origin
                    (Bb_survivorat_s_p11)

                    ; #38449: <==closure== 18569 (pos)
                    (Pb_survivorat_s_p11)

                    ; #17743: <==negation-removal== 38449 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #38593: <==negation-removal== 18569 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (leader_c)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #40635: <==closure== 76120 (pos)
                    (Pc_survivorat_s_p11)

                    ; #76120: origin
                    (Bc_survivorat_s_p11)

                    ; #60814: <==negation-removal== 40635 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #83975: <==negation-removal== 76120 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_d_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #25451: <==closure== 62170 (pos)
                    (Pd_survivorat_s_p11)

                    ; #62170: origin
                    (Bd_survivorat_s_p11)

                    ; #31410: <==negation-removal== 62170 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #85565: <==negation-removal== 25451 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_d_a_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_a))
        :effect (and
                    ; #35956: <==closure== 51073 (pos)
                    (Pa_survivorat_s_p11)

                    ; #51073: origin
                    (Ba_survivorat_s_p11)

                    ; #30093: <==negation-removal== 35956 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #37652: <==negation-removal== 51073 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_d_b_s
        :precondition (and (Pd_survivorat_s_p11)
                           (leader_b)
                           (Bd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #18569: origin
                    (Bb_survivorat_s_p11)

                    ; #38449: <==closure== 18569 (pos)
                    (Pb_survivorat_s_p11)

                    ; #17743: <==negation-removal== 38449 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #38593: <==negation-removal== 18569 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_d_c_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_c))
        :effect (and
                    ; #40635: <==closure== 76120 (pos)
                    (Pc_survivorat_s_p11)

                    ; #76120: origin
                    (Bc_survivorat_s_p11)

                    ; #60814: <==negation-removal== 40635 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #83975: <==negation-removal== 76120 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_d_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_d))
        :effect (and
                    ; #25451: <==closure== 62170 (pos)
                    (Pd_survivorat_s_p11)

                    ; #62170: origin
                    (Bd_survivorat_s_p11)

                    ; #31410: <==negation-removal== 62170 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #85565: <==negation-removal== 25451 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #64404: origin
                    (Ba_survivorat_s_p12)

                    ; #77799: <==closure== 64404 (pos)
                    (Pa_survivorat_s_p12)

                    ; #38490: <==negation-removal== 64404 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #54309: <==negation-removal== 77799 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #38788: origin
                    (Bb_survivorat_s_p12)

                    ; #39186: <==closure== 38788 (pos)
                    (Pb_survivorat_s_p12)

                    ; #36731: <==negation-removal== 39186 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #61571: <==negation-removal== 38788 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (leader_c)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #10370: origin
                    (Bc_survivorat_s_p12)

                    ; #44513: <==closure== 10370 (pos)
                    (Pc_survivorat_s_p12)

                    ; #43803: <==negation-removal== 44513 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #55544: <==negation-removal== 10370 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_a_d_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #58505: <==closure== 80685 (pos)
                    (Pd_survivorat_s_p12)

                    ; #80685: origin
                    (Bd_survivorat_s_p12)

                    ; #19907: <==negation-removal== 58505 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #80152: <==negation-removal== 80685 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #64404: origin
                    (Ba_survivorat_s_p12)

                    ; #77799: <==closure== 64404 (pos)
                    (Pa_survivorat_s_p12)

                    ; #38490: <==negation-removal== 64404 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #54309: <==negation-removal== 77799 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #38788: origin
                    (Bb_survivorat_s_p12)

                    ; #39186: <==closure== 38788 (pos)
                    (Pb_survivorat_s_p12)

                    ; #36731: <==negation-removal== 39186 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #61571: <==negation-removal== 38788 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #10370: origin
                    (Bc_survivorat_s_p12)

                    ; #44513: <==closure== 10370 (pos)
                    (Pc_survivorat_s_p12)

                    ; #43803: <==negation-removal== 44513 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #55544: <==negation-removal== 10370 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_d_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #58505: <==closure== 80685 (pos)
                    (Pd_survivorat_s_p12)

                    ; #80685: origin
                    (Bd_survivorat_s_p12)

                    ; #19907: <==negation-removal== 58505 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #80152: <==negation-removal== 80685 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #64404: origin
                    (Ba_survivorat_s_p12)

                    ; #77799: <==closure== 64404 (pos)
                    (Pa_survivorat_s_p12)

                    ; #38490: <==negation-removal== 64404 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #54309: <==negation-removal== 77799 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (at_c_p12)
                           (leader_b)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #38788: origin
                    (Bb_survivorat_s_p12)

                    ; #39186: <==closure== 38788 (pos)
                    (Pb_survivorat_s_p12)

                    ; #36731: <==negation-removal== 39186 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #61571: <==negation-removal== 38788 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #10370: origin
                    (Bc_survivorat_s_p12)

                    ; #44513: <==closure== 10370 (pos)
                    (Pc_survivorat_s_p12)

                    ; #43803: <==negation-removal== 44513 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #55544: <==negation-removal== 10370 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_d_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #58505: <==closure== 80685 (pos)
                    (Pd_survivorat_s_p12)

                    ; #80685: origin
                    (Bd_survivorat_s_p12)

                    ; #19907: <==negation-removal== 58505 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #80152: <==negation-removal== 80685 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p12_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p12)
                           (at_d_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #64404: origin
                    (Ba_survivorat_s_p12)

                    ; #77799: <==closure== 64404 (pos)
                    (Pa_survivorat_s_p12)

                    ; #38490: <==negation-removal== 64404 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #54309: <==negation-removal== 77799 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_d_b_s
        :precondition (and (Pd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_b)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #38788: origin
                    (Bb_survivorat_s_p12)

                    ; #39186: <==closure== 38788 (pos)
                    (Pb_survivorat_s_p12)

                    ; #36731: <==negation-removal== 39186 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #61571: <==negation-removal== 38788 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_d_c_s
        :precondition (and (Pd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_c)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #10370: origin
                    (Bc_survivorat_s_p12)

                    ; #44513: <==closure== 10370 (pos)
                    (Pc_survivorat_s_p12)

                    ; #43803: <==negation-removal== 44513 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #55544: <==negation-removal== 10370 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_d_d_s
        :precondition (and (Pd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_d)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #58505: <==closure== 80685 (pos)
                    (Pd_survivorat_s_p12)

                    ; #80685: origin
                    (Bd_survivorat_s_p12)

                    ; #19907: <==negation-removal== 58505 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #80152: <==negation-removal== 80685 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #33299: <==closure== 57224 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57224: origin
                    (Ba_survivorat_s_p1)

                    ; #22778: <==negation-removal== 33299 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #49509: <==negation-removal== 57224 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_b)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #61600: <==closure== 76315 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76315: origin
                    (Bb_survivorat_s_p1)

                    ; #42086: <==negation-removal== 76315 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #70599: <==negation-removal== 61600 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #43354: <==closure== 49992 (pos)
                    (Pc_survivorat_s_p1)

                    ; #49992: origin
                    (Bc_survivorat_s_p1)

                    ; #14347: <==negation-removal== 49992 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89535: <==negation-removal== 43354 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_a_d_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_d))
        :effect (and
                    ; #44090: <==closure== 69915 (pos)
                    (Pd_survivorat_s_p1)

                    ; #69915: origin
                    (Bd_survivorat_s_p1)

                    ; #44167: <==negation-removal== 44090 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #69904: <==negation-removal== 69915 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #33299: <==closure== 57224 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57224: origin
                    (Ba_survivorat_s_p1)

                    ; #22778: <==negation-removal== 33299 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #49509: <==negation-removal== 57224 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #61600: <==closure== 76315 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76315: origin
                    (Bb_survivorat_s_p1)

                    ; #42086: <==negation-removal== 76315 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #70599: <==negation-removal== 61600 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #43354: <==closure== 49992 (pos)
                    (Pc_survivorat_s_p1)

                    ; #49992: origin
                    (Bc_survivorat_s_p1)

                    ; #14347: <==negation-removal== 49992 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89535: <==negation-removal== 43354 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_d_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_d))
        :effect (and
                    ; #44090: <==closure== 69915 (pos)
                    (Pd_survivorat_s_p1)

                    ; #69915: origin
                    (Bd_survivorat_s_p1)

                    ; #44167: <==negation-removal== 44090 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #69904: <==negation-removal== 69915 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_a))
        :effect (and
                    ; #33299: <==closure== 57224 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57224: origin
                    (Ba_survivorat_s_p1)

                    ; #22778: <==negation-removal== 33299 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #49509: <==negation-removal== 57224 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #61600: <==closure== 76315 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76315: origin
                    (Bb_survivorat_s_p1)

                    ; #42086: <==negation-removal== 76315 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #70599: <==negation-removal== 61600 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_c))
        :effect (and
                    ; #43354: <==closure== 49992 (pos)
                    (Pc_survivorat_s_p1)

                    ; #49992: origin
                    (Bc_survivorat_s_p1)

                    ; #14347: <==negation-removal== 49992 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89535: <==negation-removal== 43354 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_d_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_d))
        :effect (and
                    ; #44090: <==closure== 69915 (pos)
                    (Pd_survivorat_s_p1)

                    ; #69915: origin
                    (Bd_survivorat_s_p1)

                    ; #44167: <==negation-removal== 44090 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #69904: <==negation-removal== 69915 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #33299: <==closure== 57224 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57224: origin
                    (Ba_survivorat_s_p1)

                    ; #22778: <==negation-removal== 33299 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #49509: <==negation-removal== 57224 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_d_b_s
        :precondition (and (Pd_survivorat_s_p1)
                           (leader_b)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #61600: <==closure== 76315 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76315: origin
                    (Bb_survivorat_s_p1)

                    ; #42086: <==negation-removal== 76315 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #70599: <==negation-removal== 61600 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_d_c_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (leader_c))
        :effect (and
                    ; #43354: <==closure== 49992 (pos)
                    (Pc_survivorat_s_p1)

                    ; #49992: origin
                    (Bc_survivorat_s_p1)

                    ; #14347: <==negation-removal== 49992 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #89535: <==negation-removal== 43354 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_d_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (leader_d))
        :effect (and
                    ; #44090: <==closure== 69915 (pos)
                    (Pd_survivorat_s_p1)

                    ; #69915: origin
                    (Bd_survivorat_s_p1)

                    ; #44167: <==negation-removal== 44090 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #69904: <==negation-removal== 69915 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #17519: origin
                    (Ba_survivorat_s_p2)

                    ; #70805: <==closure== 17519 (pos)
                    (Pa_survivorat_s_p2)

                    ; #10974: <==negation-removal== 17519 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #52466: <==negation-removal== 70805 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_b)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #51159: <==closure== 73807 (pos)
                    (Pb_survivorat_s_p2)

                    ; #73807: origin
                    (Bb_survivorat_s_p2)

                    ; #11447: <==negation-removal== 51159 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40832: <==negation-removal== 73807 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_c)
                           (at_a_p2))
        :effect (and
                    ; #27091: origin
                    (Bc_survivorat_s_p2)

                    ; #84538: <==closure== 27091 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30833: <==negation-removal== 84538 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85256: <==negation-removal== 27091 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_d)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #61184: origin
                    (Bd_survivorat_s_p2)

                    ; #88466: <==closure== 61184 (pos)
                    (Pd_survivorat_s_p2)

                    ; #54747: <==negation-removal== 61184 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #80879: <==negation-removal== 88466 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #17519: origin
                    (Ba_survivorat_s_p2)

                    ; #70805: <==closure== 17519 (pos)
                    (Pa_survivorat_s_p2)

                    ; #10974: <==negation-removal== 17519 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #52466: <==negation-removal== 70805 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #51159: <==closure== 73807 (pos)
                    (Pb_survivorat_s_p2)

                    ; #73807: origin
                    (Bb_survivorat_s_p2)

                    ; #11447: <==negation-removal== 51159 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40832: <==negation-removal== 73807 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #27091: origin
                    (Bc_survivorat_s_p2)

                    ; #84538: <==closure== 27091 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30833: <==negation-removal== 84538 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85256: <==negation-removal== 27091 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_d_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_d)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #61184: origin
                    (Bd_survivorat_s_p2)

                    ; #88466: <==closure== 61184 (pos)
                    (Pd_survivorat_s_p2)

                    ; #54747: <==negation-removal== 61184 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #80879: <==negation-removal== 88466 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_a))
        :effect (and
                    ; #17519: origin
                    (Ba_survivorat_s_p2)

                    ; #70805: <==closure== 17519 (pos)
                    (Pa_survivorat_s_p2)

                    ; #10974: <==negation-removal== 17519 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #52466: <==negation-removal== 70805 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_b))
        :effect (and
                    ; #51159: <==closure== 73807 (pos)
                    (Pb_survivorat_s_p2)

                    ; #73807: origin
                    (Bb_survivorat_s_p2)

                    ; #11447: <==negation-removal== 51159 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40832: <==negation-removal== 73807 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_c))
        :effect (and
                    ; #27091: origin
                    (Bc_survivorat_s_p2)

                    ; #84538: <==closure== 27091 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30833: <==negation-removal== 84538 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85256: <==negation-removal== 27091 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_d_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_d))
        :effect (and
                    ; #61184: origin
                    (Bd_survivorat_s_p2)

                    ; #88466: <==closure== 61184 (pos)
                    (Pd_survivorat_s_p2)

                    ; #54747: <==negation-removal== 61184 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #80879: <==negation-removal== 88466 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #17519: origin
                    (Ba_survivorat_s_p2)

                    ; #70805: <==closure== 17519 (pos)
                    (Pa_survivorat_s_p2)

                    ; #10974: <==negation-removal== 17519 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #52466: <==negation-removal== 70805 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_d_b_s
        :precondition (and (at_d_p2)
                           (leader_b)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #51159: <==closure== 73807 (pos)
                    (Pb_survivorat_s_p2)

                    ; #73807: origin
                    (Bb_survivorat_s_p2)

                    ; #11447: <==negation-removal== 51159 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40832: <==negation-removal== 73807 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_d_c_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (leader_c)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #27091: origin
                    (Bc_survivorat_s_p2)

                    ; #84538: <==closure== 27091 (pos)
                    (Pc_survivorat_s_p2)

                    ; #30833: <==negation-removal== 84538 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #85256: <==negation-removal== 27091 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_d_d_s
        :precondition (and (at_d_p2)
                           (leader_d)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #61184: origin
                    (Bd_survivorat_s_p2)

                    ; #88466: <==closure== 61184 (pos)
                    (Pd_survivorat_s_p2)

                    ; #54747: <==negation-removal== 61184 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #80879: <==negation-removal== 88466 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #13548: <==closure== 78647 (pos)
                    (Pa_survivorat_s_p3)

                    ; #78647: origin
                    (Ba_survivorat_s_p3)

                    ; #28329: <==negation-removal== 78647 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #73193: <==negation-removal== 13548 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #32784: origin
                    (Bb_survivorat_s_p3)

                    ; #84527: <==closure== 32784 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60940: <==negation-removal== 84527 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #68616: <==negation-removal== 32784 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #26456: <==closure== 29469 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29469: origin
                    (Bc_survivorat_s_p3)

                    ; #70124: <==negation-removal== 26456 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #70404: <==negation-removal== 29469 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_a_d_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_d)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #40849: origin
                    (Bd_survivorat_s_p3)

                    ; #44690: <==closure== 40849 (pos)
                    (Pd_survivorat_s_p3)

                    ; #24260: <==negation-removal== 44690 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #87113: <==negation-removal== 40849 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #13548: <==closure== 78647 (pos)
                    (Pa_survivorat_s_p3)

                    ; #78647: origin
                    (Ba_survivorat_s_p3)

                    ; #28329: <==negation-removal== 78647 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #73193: <==negation-removal== 13548 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #32784: origin
                    (Bb_survivorat_s_p3)

                    ; #84527: <==closure== 32784 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60940: <==negation-removal== 84527 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #68616: <==negation-removal== 32784 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_c))
        :effect (and
                    ; #26456: <==closure== 29469 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29469: origin
                    (Bc_survivorat_s_p3)

                    ; #70124: <==negation-removal== 26456 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #70404: <==negation-removal== 29469 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_d_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_d))
        :effect (and
                    ; #40849: origin
                    (Bd_survivorat_s_p3)

                    ; #44690: <==closure== 40849 (pos)
                    (Pd_survivorat_s_p3)

                    ; #24260: <==negation-removal== 44690 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #87113: <==negation-removal== 40849 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (leader_a))
        :effect (and
                    ; #13548: <==closure== 78647 (pos)
                    (Pa_survivorat_s_p3)

                    ; #78647: origin
                    (Ba_survivorat_s_p3)

                    ; #28329: <==negation-removal== 78647 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #73193: <==negation-removal== 13548 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #32784: origin
                    (Bb_survivorat_s_p3)

                    ; #84527: <==closure== 32784 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60940: <==negation-removal== 84527 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #68616: <==negation-removal== 32784 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #26456: <==closure== 29469 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29469: origin
                    (Bc_survivorat_s_p3)

                    ; #70124: <==negation-removal== 26456 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #70404: <==negation-removal== 29469 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_d_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (leader_d))
        :effect (and
                    ; #40849: origin
                    (Bd_survivorat_s_p3)

                    ; #44690: <==closure== 40849 (pos)
                    (Pd_survivorat_s_p3)

                    ; #24260: <==negation-removal== 44690 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #87113: <==negation-removal== 40849 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_d_a_s
        :precondition (and (leader_a)
                           (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #13548: <==closure== 78647 (pos)
                    (Pa_survivorat_s_p3)

                    ; #78647: origin
                    (Ba_survivorat_s_p3)

                    ; #28329: <==negation-removal== 78647 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #73193: <==negation-removal== 13548 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_d_b_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (leader_b)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #32784: origin
                    (Bb_survivorat_s_p3)

                    ; #84527: <==closure== 32784 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60940: <==negation-removal== 84527 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #68616: <==negation-removal== 32784 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_d_c_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #26456: <==closure== 29469 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29469: origin
                    (Bc_survivorat_s_p3)

                    ; #70124: <==negation-removal== 26456 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #70404: <==negation-removal== 29469 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_d_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (leader_d))
        :effect (and
                    ; #40849: origin
                    (Bd_survivorat_s_p3)

                    ; #44690: <==closure== 40849 (pos)
                    (Pd_survivorat_s_p3)

                    ; #24260: <==negation-removal== 44690 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #87113: <==negation-removal== 40849 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #17402: origin
                    (Ba_survivorat_s_p4)

                    ; #49696: <==closure== 17402 (pos)
                    (Pa_survivorat_s_p4)

                    ; #46334: <==negation-removal== 17402 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60835: <==negation-removal== 49696 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #44788: origin
                    (Bb_survivorat_s_p4)

                    ; #87744: <==closure== 44788 (pos)
                    (Pb_survivorat_s_p4)

                    ; #10727: <==negation-removal== 87744 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #32457: <==negation-removal== 44788 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c))
        :effect (and
                    ; #31998: origin
                    (Bc_survivorat_s_p4)

                    ; #41684: <==closure== 31998 (pos)
                    (Pc_survivorat_s_p4)

                    ; #33258: <==negation-removal== 31998 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55375: <==negation-removal== 41684 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_a_d_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (leader_d))
        :effect (and
                    ; #24661: origin
                    (Bd_survivorat_s_p4)

                    ; #50264: <==closure== 24661 (pos)
                    (Pd_survivorat_s_p4)

                    ; #26554: <==negation-removal== 50264 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #53764: <==negation-removal== 24661 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #17402: origin
                    (Ba_survivorat_s_p4)

                    ; #49696: <==closure== 17402 (pos)
                    (Pa_survivorat_s_p4)

                    ; #46334: <==negation-removal== 17402 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60835: <==negation-removal== 49696 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #44788: origin
                    (Bb_survivorat_s_p4)

                    ; #87744: <==closure== 44788 (pos)
                    (Pb_survivorat_s_p4)

                    ; #10727: <==negation-removal== 87744 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #32457: <==negation-removal== 44788 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (leader_c)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #31998: origin
                    (Bc_survivorat_s_p4)

                    ; #41684: <==closure== 31998 (pos)
                    (Pc_survivorat_s_p4)

                    ; #33258: <==negation-removal== 31998 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55375: <==negation-removal== 41684 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_d_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_d))
        :effect (and
                    ; #24661: origin
                    (Bd_survivorat_s_p4)

                    ; #50264: <==closure== 24661 (pos)
                    (Pd_survivorat_s_p4)

                    ; #26554: <==negation-removal== 50264 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #53764: <==negation-removal== 24661 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_a)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #17402: origin
                    (Ba_survivorat_s_p4)

                    ; #49696: <==closure== 17402 (pos)
                    (Pa_survivorat_s_p4)

                    ; #46334: <==negation-removal== 17402 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60835: <==negation-removal== 49696 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #44788: origin
                    (Bb_survivorat_s_p4)

                    ; #87744: <==closure== 44788 (pos)
                    (Pb_survivorat_s_p4)

                    ; #10727: <==negation-removal== 87744 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #32457: <==negation-removal== 44788 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #31998: origin
                    (Bc_survivorat_s_p4)

                    ; #41684: <==closure== 31998 (pos)
                    (Pc_survivorat_s_p4)

                    ; #33258: <==negation-removal== 31998 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55375: <==negation-removal== 41684 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_d_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_d)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #24661: origin
                    (Bd_survivorat_s_p4)

                    ; #50264: <==closure== 24661 (pos)
                    (Pd_survivorat_s_p4)

                    ; #26554: <==negation-removal== 50264 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #53764: <==negation-removal== 24661 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_d_a_s
        :precondition (and (leader_a)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #17402: origin
                    (Ba_survivorat_s_p4)

                    ; #49696: <==closure== 17402 (pos)
                    (Pa_survivorat_s_p4)

                    ; #46334: <==negation-removal== 17402 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60835: <==negation-removal== 49696 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_d_b_s
        :precondition (and (leader_b)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #44788: origin
                    (Bb_survivorat_s_p4)

                    ; #87744: <==closure== 44788 (pos)
                    (Pb_survivorat_s_p4)

                    ; #10727: <==negation-removal== 87744 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #32457: <==negation-removal== 44788 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_d_c_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_c)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #31998: origin
                    (Bc_survivorat_s_p4)

                    ; #41684: <==closure== 31998 (pos)
                    (Pc_survivorat_s_p4)

                    ; #33258: <==negation-removal== 31998 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55375: <==negation-removal== 41684 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_d_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #24661: origin
                    (Bd_survivorat_s_p4)

                    ; #50264: <==closure== 24661 (pos)
                    (Pd_survivorat_s_p4)

                    ; #26554: <==negation-removal== 50264 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #53764: <==negation-removal== 24661 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #12433: <==closure== 28000 (pos)
                    (Pa_survivorat_s_p5)

                    ; #28000: origin
                    (Ba_survivorat_s_p5)

                    ; #25025: <==negation-removal== 12433 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #40440: <==negation-removal== 28000 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #66512: origin
                    (Bb_survivorat_s_p5)

                    ; #83897: <==closure== 66512 (pos)
                    (Pb_survivorat_s_p5)

                    ; #56475: <==negation-removal== 66512 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91846: <==negation-removal== 83897 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #41410: <==closure== 83238 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83238: origin
                    (Bc_survivorat_s_p5)

                    ; #26356: <==negation-removal== 83238 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #42189: <==negation-removal== 41410 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_a_d_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #25791: <==closure== 64546 (pos)
                    (Pd_survivorat_s_p5)

                    ; #64546: origin
                    (Bd_survivorat_s_p5)

                    ; #78926: <==negation-removal== 25791 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #84706: <==negation-removal== 64546 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (leader_a)
                           (at_b_p5))
        :effect (and
                    ; #12433: <==closure== 28000 (pos)
                    (Pa_survivorat_s_p5)

                    ; #28000: origin
                    (Ba_survivorat_s_p5)

                    ; #25025: <==negation-removal== 12433 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #40440: <==negation-removal== 28000 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #66512: origin
                    (Bb_survivorat_s_p5)

                    ; #83897: <==closure== 66512 (pos)
                    (Pb_survivorat_s_p5)

                    ; #56475: <==negation-removal== 66512 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91846: <==negation-removal== 83897 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (leader_c)
                           (at_b_p5))
        :effect (and
                    ; #41410: <==closure== 83238 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83238: origin
                    (Bc_survivorat_s_p5)

                    ; #26356: <==negation-removal== 83238 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #42189: <==negation-removal== 41410 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_d_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (leader_d)
                           (at_b_p5))
        :effect (and
                    ; #25791: <==closure== 64546 (pos)
                    (Pd_survivorat_s_p5)

                    ; #64546: origin
                    (Bd_survivorat_s_p5)

                    ; #78926: <==negation-removal== 25791 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #84706: <==negation-removal== 64546 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #12433: <==closure== 28000 (pos)
                    (Pa_survivorat_s_p5)

                    ; #28000: origin
                    (Ba_survivorat_s_p5)

                    ; #25025: <==negation-removal== 12433 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #40440: <==negation-removal== 28000 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_b)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #66512: origin
                    (Bb_survivorat_s_p5)

                    ; #83897: <==closure== 66512 (pos)
                    (Pb_survivorat_s_p5)

                    ; #56475: <==negation-removal== 66512 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91846: <==negation-removal== 83897 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #41410: <==closure== 83238 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83238: origin
                    (Bc_survivorat_s_p5)

                    ; #26356: <==negation-removal== 83238 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #42189: <==negation-removal== 41410 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_d_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #25791: <==closure== 64546 (pos)
                    (Pd_survivorat_s_p5)

                    ; #64546: origin
                    (Bd_survivorat_s_p5)

                    ; #78926: <==negation-removal== 25791 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #84706: <==negation-removal== 64546 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p5_d_a_s
        :precondition (and (Bd_survivorat_s_p5)
                           (leader_a)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #12433: <==closure== 28000 (pos)
                    (Pa_survivorat_s_p5)

                    ; #28000: origin
                    (Ba_survivorat_s_p5)

                    ; #25025: <==negation-removal== 12433 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #40440: <==negation-removal== 28000 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_d_b_s
        :precondition (and (Bd_survivorat_s_p5)
                           (leader_b)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #66512: origin
                    (Bb_survivorat_s_p5)

                    ; #83897: <==closure== 66512 (pos)
                    (Pb_survivorat_s_p5)

                    ; #56475: <==negation-removal== 66512 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #91846: <==negation-removal== 83897 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_d_c_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_c)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #41410: <==closure== 83238 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83238: origin
                    (Bc_survivorat_s_p5)

                    ; #26356: <==negation-removal== 83238 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #42189: <==negation-removal== 41410 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_d_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (leader_d)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #25791: <==closure== 64546 (pos)
                    (Pd_survivorat_s_p5)

                    ; #64546: origin
                    (Bd_survivorat_s_p5)

                    ; #78926: <==negation-removal== 25791 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #84706: <==negation-removal== 64546 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #26520: origin
                    (Ba_survivorat_s_p6)

                    ; #30762: <==closure== 26520 (pos)
                    (Pa_survivorat_s_p6)

                    ; #14990: <==negation-removal== 30762 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #22408: <==negation-removal== 26520 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #10842: <==closure== 66713 (pos)
                    (Pb_survivorat_s_p6)

                    ; #66713: origin
                    (Bb_survivorat_s_p6)

                    ; #35834: <==negation-removal== 10842 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #53289: <==negation-removal== 66713 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #16427: <==closure== 62897 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62897: origin
                    (Bc_survivorat_s_p6)

                    ; #20830: <==negation-removal== 62897 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #79418: <==negation-removal== 16427 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_a_d_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_d)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #30623: <==closure== 71450 (pos)
                    (Pd_survivorat_s_p6)

                    ; #71450: origin
                    (Bd_survivorat_s_p6)

                    ; #32601: <==negation-removal== 30623 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83113: <==negation-removal== 71450 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (leader_a)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #26520: origin
                    (Ba_survivorat_s_p6)

                    ; #30762: <==closure== 26520 (pos)
                    (Pa_survivorat_s_p6)

                    ; #14990: <==negation-removal== 30762 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #22408: <==negation-removal== 26520 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (leader_b)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #10842: <==closure== 66713 (pos)
                    (Pb_survivorat_s_p6)

                    ; #66713: origin
                    (Bb_survivorat_s_p6)

                    ; #35834: <==negation-removal== 10842 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #53289: <==negation-removal== 66713 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (leader_c)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #16427: <==closure== 62897 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62897: origin
                    (Bc_survivorat_s_p6)

                    ; #20830: <==negation-removal== 62897 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #79418: <==negation-removal== 16427 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_d_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (leader_d)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #30623: <==closure== 71450 (pos)
                    (Pd_survivorat_s_p6)

                    ; #71450: origin
                    (Bd_survivorat_s_p6)

                    ; #32601: <==negation-removal== 30623 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83113: <==negation-removal== 71450 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #26520: origin
                    (Ba_survivorat_s_p6)

                    ; #30762: <==closure== 26520 (pos)
                    (Pa_survivorat_s_p6)

                    ; #14990: <==negation-removal== 30762 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #22408: <==negation-removal== 26520 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #10842: <==closure== 66713 (pos)
                    (Pb_survivorat_s_p6)

                    ; #66713: origin
                    (Bb_survivorat_s_p6)

                    ; #35834: <==negation-removal== 10842 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #53289: <==negation-removal== 66713 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_c)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #16427: <==closure== 62897 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62897: origin
                    (Bc_survivorat_s_p6)

                    ; #20830: <==negation-removal== 62897 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #79418: <==negation-removal== 16427 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_d_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #30623: <==closure== 71450 (pos)
                    (Pd_survivorat_s_p6)

                    ; #71450: origin
                    (Bd_survivorat_s_p6)

                    ; #32601: <==negation-removal== 30623 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83113: <==negation-removal== 71450 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_d_a_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #26520: origin
                    (Ba_survivorat_s_p6)

                    ; #30762: <==closure== 26520 (pos)
                    (Pa_survivorat_s_p6)

                    ; #14990: <==negation-removal== 30762 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #22408: <==negation-removal== 26520 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_d_b_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #10842: <==closure== 66713 (pos)
                    (Pb_survivorat_s_p6)

                    ; #66713: origin
                    (Bb_survivorat_s_p6)

                    ; #35834: <==negation-removal== 10842 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #53289: <==negation-removal== 66713 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_d_c_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #16427: <==closure== 62897 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62897: origin
                    (Bc_survivorat_s_p6)

                    ; #20830: <==negation-removal== 62897 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #79418: <==negation-removal== 16427 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_d_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #30623: <==closure== 71450 (pos)
                    (Pd_survivorat_s_p6)

                    ; #71450: origin
                    (Bd_survivorat_s_p6)

                    ; #32601: <==negation-removal== 30623 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83113: <==negation-removal== 71450 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #61920: origin
                    (Ba_survivorat_s_p7)

                    ; #70446: <==closure== 61920 (pos)
                    (Pa_survivorat_s_p7)

                    ; #18302: <==negation-removal== 61920 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #22774: <==negation-removal== 70446 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #14832: <==closure== 53573 (pos)
                    (Pb_survivorat_s_p7)

                    ; #53573: origin
                    (Bb_survivorat_s_p7)

                    ; #17507: <==negation-removal== 53573 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #87463: <==negation-removal== 14832 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #47722: origin
                    (Bc_survivorat_s_p7)

                    ; #63655: <==closure== 47722 (pos)
                    (Pc_survivorat_s_p7)

                    ; #72481: <==negation-removal== 63655 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #86005: <==negation-removal== 47722 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_a_d_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_d)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #40545: <==closure== 90428 (pos)
                    (Pd_survivorat_s_p7)

                    ; #90428: origin
                    (Bd_survivorat_s_p7)

                    ; #23528: <==negation-removal== 90428 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #76873: <==negation-removal== 40545 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #61920: origin
                    (Ba_survivorat_s_p7)

                    ; #70446: <==closure== 61920 (pos)
                    (Pa_survivorat_s_p7)

                    ; #18302: <==negation-removal== 61920 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #22774: <==negation-removal== 70446 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b)
                           (at_b_p7))
        :effect (and
                    ; #14832: <==closure== 53573 (pos)
                    (Pb_survivorat_s_p7)

                    ; #53573: origin
                    (Bb_survivorat_s_p7)

                    ; #17507: <==negation-removal== 53573 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #87463: <==negation-removal== 14832 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c))
        :effect (and
                    ; #47722: origin
                    (Bc_survivorat_s_p7)

                    ; #63655: <==closure== 47722 (pos)
                    (Pc_survivorat_s_p7)

                    ; #72481: <==negation-removal== 63655 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #86005: <==negation-removal== 47722 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_d_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_d))
        :effect (and
                    ; #40545: <==closure== 90428 (pos)
                    (Pd_survivorat_s_p7)

                    ; #90428: origin
                    (Bd_survivorat_s_p7)

                    ; #23528: <==negation-removal== 90428 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #76873: <==negation-removal== 40545 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #61920: origin
                    (Ba_survivorat_s_p7)

                    ; #70446: <==closure== 61920 (pos)
                    (Pa_survivorat_s_p7)

                    ; #18302: <==negation-removal== 61920 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #22774: <==negation-removal== 70446 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #14832: <==closure== 53573 (pos)
                    (Pb_survivorat_s_p7)

                    ; #53573: origin
                    (Bb_survivorat_s_p7)

                    ; #17507: <==negation-removal== 53573 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #87463: <==negation-removal== 14832 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #47722: origin
                    (Bc_survivorat_s_p7)

                    ; #63655: <==closure== 47722 (pos)
                    (Pc_survivorat_s_p7)

                    ; #72481: <==negation-removal== 63655 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #86005: <==negation-removal== 47722 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_d_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_d))
        :effect (and
                    ; #40545: <==closure== 90428 (pos)
                    (Pd_survivorat_s_p7)

                    ; #90428: origin
                    (Bd_survivorat_s_p7)

                    ; #23528: <==negation-removal== 90428 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #76873: <==negation-removal== 40545 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_d_a_s
        :precondition (and (leader_a)
                           (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #61920: origin
                    (Ba_survivorat_s_p7)

                    ; #70446: <==closure== 61920 (pos)
                    (Pa_survivorat_s_p7)

                    ; #18302: <==negation-removal== 61920 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #22774: <==negation-removal== 70446 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_d_b_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (leader_b)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #14832: <==closure== 53573 (pos)
                    (Pb_survivorat_s_p7)

                    ; #53573: origin
                    (Bb_survivorat_s_p7)

                    ; #17507: <==negation-removal== 53573 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #87463: <==negation-removal== 14832 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_d_c_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #47722: origin
                    (Bc_survivorat_s_p7)

                    ; #63655: <==closure== 47722 (pos)
                    (Pc_survivorat_s_p7)

                    ; #72481: <==negation-removal== 63655 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #86005: <==negation-removal== 47722 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_d_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_d))
        :effect (and
                    ; #40545: <==closure== 90428 (pos)
                    (Pd_survivorat_s_p7)

                    ; #90428: origin
                    (Bd_survivorat_s_p7)

                    ; #23528: <==negation-removal== 90428 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #76873: <==negation-removal== 40545 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #61323: <==closure== 91446 (pos)
                    (Pa_survivorat_s_p8)

                    ; #91446: origin
                    (Ba_survivorat_s_p8)

                    ; #40512: <==negation-removal== 91446 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #62369: <==negation-removal== 61323 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #24887: <==closure== 40479 (pos)
                    (Pb_survivorat_s_p8)

                    ; #40479: origin
                    (Bb_survivorat_s_p8)

                    ; #15385: <==negation-removal== 24887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #22687: <==negation-removal== 40479 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_c)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #38201: origin
                    (Bc_survivorat_s_p8)

                    ; #56410: <==closure== 38201 (pos)
                    (Pc_survivorat_s_p8)

                    ; #51744: <==negation-removal== 56410 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #77422: <==negation-removal== 38201 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_a_d_s
        :precondition (and (leader_d)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #36157: <==closure== 55901 (pos)
                    (Pd_survivorat_s_p8)

                    ; #55901: origin
                    (Bd_survivorat_s_p8)

                    ; #18507: <==negation-removal== 55901 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #43493: <==negation-removal== 36157 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #61323: <==closure== 91446 (pos)
                    (Pa_survivorat_s_p8)

                    ; #91446: origin
                    (Ba_survivorat_s_p8)

                    ; #40512: <==negation-removal== 91446 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #62369: <==negation-removal== 61323 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #24887: <==closure== 40479 (pos)
                    (Pb_survivorat_s_p8)

                    ; #40479: origin
                    (Bb_survivorat_s_p8)

                    ; #15385: <==negation-removal== 24887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #22687: <==negation-removal== 40479 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_c)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #38201: origin
                    (Bc_survivorat_s_p8)

                    ; #56410: <==closure== 38201 (pos)
                    (Pc_survivorat_s_p8)

                    ; #51744: <==negation-removal== 56410 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #77422: <==negation-removal== 38201 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_d_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #36157: <==closure== 55901 (pos)
                    (Pd_survivorat_s_p8)

                    ; #55901: origin
                    (Bd_survivorat_s_p8)

                    ; #18507: <==negation-removal== 55901 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #43493: <==negation-removal== 36157 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #61323: <==closure== 91446 (pos)
                    (Pa_survivorat_s_p8)

                    ; #91446: origin
                    (Ba_survivorat_s_p8)

                    ; #40512: <==negation-removal== 91446 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #62369: <==negation-removal== 61323 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_b)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #24887: <==closure== 40479 (pos)
                    (Pb_survivorat_s_p8)

                    ; #40479: origin
                    (Bb_survivorat_s_p8)

                    ; #15385: <==negation-removal== 24887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #22687: <==negation-removal== 40479 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (leader_c)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #38201: origin
                    (Bc_survivorat_s_p8)

                    ; #56410: <==closure== 38201 (pos)
                    (Pc_survivorat_s_p8)

                    ; #51744: <==negation-removal== 56410 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #77422: <==negation-removal== 38201 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_d_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #36157: <==closure== 55901 (pos)
                    (Pd_survivorat_s_p8)

                    ; #55901: origin
                    (Bd_survivorat_s_p8)

                    ; #18507: <==negation-removal== 55901 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #43493: <==negation-removal== 36157 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p8_d_a_s
        :precondition (and (leader_a)
                           (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #61323: <==closure== 91446 (pos)
                    (Pa_survivorat_s_p8)

                    ; #91446: origin
                    (Ba_survivorat_s_p8)

                    ; #40512: <==negation-removal== 91446 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #62369: <==negation-removal== 61323 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_d_b_s
        :precondition (and (leader_b)
                           (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #24887: <==closure== 40479 (pos)
                    (Pb_survivorat_s_p8)

                    ; #40479: origin
                    (Bb_survivorat_s_p8)

                    ; #15385: <==negation-removal== 24887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #22687: <==negation-removal== 40479 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_d_c_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #38201: origin
                    (Bc_survivorat_s_p8)

                    ; #56410: <==closure== 38201 (pos)
                    (Pc_survivorat_s_p8)

                    ; #51744: <==negation-removal== 56410 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #77422: <==negation-removal== 38201 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_d_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #36157: <==closure== 55901 (pos)
                    (Pd_survivorat_s_p8)

                    ; #55901: origin
                    (Bd_survivorat_s_p8)

                    ; #18507: <==negation-removal== 55901 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #43493: <==negation-removal== 36157 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #17412: <==closure== 18571 (pos)
                    (Pa_survivorat_s_p9)

                    ; #18571: origin
                    (Ba_survivorat_s_p9)

                    ; #40011: <==negation-removal== 18571 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #72410: <==negation-removal== 17412 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Pa_survivorat_s_p9)
                           (leader_b)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #36522: origin
                    (Bb_survivorat_s_p9)

                    ; #90056: <==closure== 36522 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66168: <==negation-removal== 36522 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #91221: <==negation-removal== 90056 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #33361: <==closure== 36203 (pos)
                    (Pc_survivorat_s_p9)

                    ; #36203: origin
                    (Bc_survivorat_s_p9)

                    ; #54792: <==negation-removal== 36203 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66965: <==negation-removal== 33361 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_a_d_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (leader_d))
        :effect (and
                    ; #19373: origin
                    (Bd_survivorat_s_p9)

                    ; #26294: <==closure== 19373 (pos)
                    (Pd_survivorat_s_p9)

                    ; #30062: <==negation-removal== 19373 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #58473: <==negation-removal== 26294 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #17412: <==closure== 18571 (pos)
                    (Pa_survivorat_s_p9)

                    ; #18571: origin
                    (Ba_survivorat_s_p9)

                    ; #40011: <==negation-removal== 18571 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #72410: <==negation-removal== 17412 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #36522: origin
                    (Bb_survivorat_s_p9)

                    ; #90056: <==closure== 36522 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66168: <==negation-removal== 36522 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #91221: <==negation-removal== 90056 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_c)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #33361: <==closure== 36203 (pos)
                    (Pc_survivorat_s_p9)

                    ; #36203: origin
                    (Bc_survivorat_s_p9)

                    ; #54792: <==negation-removal== 36203 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66965: <==negation-removal== 33361 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_d_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #19373: origin
                    (Bd_survivorat_s_p9)

                    ; #26294: <==closure== 19373 (pos)
                    (Pd_survivorat_s_p9)

                    ; #30062: <==negation-removal== 19373 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #58473: <==negation-removal== 26294 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #17412: <==closure== 18571 (pos)
                    (Pa_survivorat_s_p9)

                    ; #18571: origin
                    (Ba_survivorat_s_p9)

                    ; #40011: <==negation-removal== 18571 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #72410: <==negation-removal== 17412 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #36522: origin
                    (Bb_survivorat_s_p9)

                    ; #90056: <==closure== 36522 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66168: <==negation-removal== 36522 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #91221: <==negation-removal== 90056 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #33361: <==closure== 36203 (pos)
                    (Pc_survivorat_s_p9)

                    ; #36203: origin
                    (Bc_survivorat_s_p9)

                    ; #54792: <==negation-removal== 36203 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66965: <==negation-removal== 33361 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_d_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #19373: origin
                    (Bd_survivorat_s_p9)

                    ; #26294: <==closure== 19373 (pos)
                    (Pd_survivorat_s_p9)

                    ; #30062: <==negation-removal== 19373 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #58473: <==negation-removal== 26294 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_d_a_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_a))
        :effect (and
                    ; #17412: <==closure== 18571 (pos)
                    (Pa_survivorat_s_p9)

                    ; #18571: origin
                    (Ba_survivorat_s_p9)

                    ; #40011: <==negation-removal== 18571 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #72410: <==negation-removal== 17412 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_d_b_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_b))
        :effect (and
                    ; #36522: origin
                    (Bb_survivorat_s_p9)

                    ; #90056: <==closure== 36522 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66168: <==negation-removal== 36522 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #91221: <==negation-removal== 90056 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_d_c_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_c))
        :effect (and
                    ; #33361: <==closure== 36203 (pos)
                    (Pc_survivorat_s_p9)

                    ; #36203: origin
                    (Bc_survivorat_s_p9)

                    ; #54792: <==negation-removal== 36203 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66965: <==negation-removal== 33361 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_d_d_s
        :precondition (and (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_d))
        :effect (and
                    ; #19373: origin
                    (Bd_survivorat_s_p9)

                    ; #26294: <==closure== 19373 (pos)
                    (Pd_survivorat_s_p9)

                    ; #30062: <==negation-removal== 19373 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #58473: <==negation-removal== 26294 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #88983: origin
                    (at_a_p1)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #29622: origin
                    (not_at_a_p10)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #77744: origin
                    (at_a_p11)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #73974: origin
                    (at_a_p12)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #40207: origin
                    (at_a_p2)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #33883: origin
                    (at_a_p3)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #62937: origin
                    (at_a_p4)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #29622: origin
                    (not_at_a_p10)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #79464: origin
                    (at_a_p6)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #80076: origin
                    (at_a_p7)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #61045: origin
                    (at_a_p8)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9)
                           (not (leader_a)))
        :effect (and
                    ; #29622: origin
                    (not_at_a_p10)

                    ; #83577: origin
                    (at_a_p9)

                    ; #23473: <==negation-removal== 29622 (pos)
                    (not (at_a_p10))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #88983: origin
                    (at_a_p1)

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #26426: origin
                    (not_at_a_p11)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #77744: origin
                    (at_a_p11)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #73974: origin
                    (at_a_p12)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #40207: origin
                    (at_a_p2)

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #33883: origin
                    (at_a_p3)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #62937: origin
                    (at_a_p4)

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #26426: origin
                    (not_at_a_p11)

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #79464: origin
                    (at_a_p6)

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #80076: origin
                    (at_a_p7)

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #61045: origin
                    (at_a_p8)

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9)
                           (not (leader_a)))
        :effect (and
                    ; #26426: origin
                    (not_at_a_p11)

                    ; #83577: origin
                    (at_a_p9)

                    ; #77744: <==negation-removal== 26426 (pos)
                    (not (at_a_p11))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #88983: origin
                    (at_a_p1)

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #31094: origin
                    (not_at_a_p12)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #77744: origin
                    (at_a_p11)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #73974: origin
                    (at_a_p12)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #40207: origin
                    (at_a_p2)

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #33883: origin
                    (at_a_p3)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #62937: origin
                    (at_a_p4)

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #31094: origin
                    (not_at_a_p12)

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #79464: origin
                    (at_a_p6)

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #80076: origin
                    (at_a_p7)

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #61045: origin
                    (at_a_p8)

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31094: origin
                    (not_at_a_p12)

                    ; #83577: origin
                    (at_a_p9)

                    ; #73974: <==negation-removal== 31094 (pos)
                    (not (at_a_p12))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #36021: origin
                    (not_at_a_p1)

                    ; #88983: origin
                    (at_a_p1)

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #36021: origin
                    (not_at_a_p1)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #36021: origin
                    (not_at_a_p1)

                    ; #77744: origin
                    (at_a_p11)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #36021: origin
                    (not_at_a_p1)

                    ; #73974: origin
                    (at_a_p12)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #36021: origin
                    (not_at_a_p1)

                    ; #40207: origin
                    (at_a_p2)

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #33883: origin
                    (at_a_p3)

                    ; #36021: origin
                    (not_at_a_p1)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #36021: origin
                    (not_at_a_p1)

                    ; #62937: origin
                    (at_a_p4)

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #36021: origin
                    (not_at_a_p1)

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #36021: origin
                    (not_at_a_p1)

                    ; #79464: origin
                    (at_a_p6)

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #36021: origin
                    (not_at_a_p1)

                    ; #80076: origin
                    (at_a_p7)

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #36021: origin
                    (not_at_a_p1)

                    ; #61045: origin
                    (at_a_p8)

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36021: origin
                    (not_at_a_p1)

                    ; #83577: origin
                    (at_a_p9)

                    ; #88983: <==negation-removal== 36021 (pos)
                    (not (at_a_p1))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #42597: origin
                    (not_at_a_p2)

                    ; #88983: origin
                    (at_a_p1)

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #42597: origin
                    (not_at_a_p2)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #42597: origin
                    (not_at_a_p2)

                    ; #77744: origin
                    (at_a_p11)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #42597: origin
                    (not_at_a_p2)

                    ; #73974: origin
                    (at_a_p12)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #40207: origin
                    (at_a_p2)

                    ; #42597: origin
                    (not_at_a_p2)

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #33883: origin
                    (at_a_p3)

                    ; #42597: origin
                    (not_at_a_p2)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #42597: origin
                    (not_at_a_p2)

                    ; #62937: origin
                    (at_a_p4)

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #42597: origin
                    (not_at_a_p2)

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #42597: origin
                    (not_at_a_p2)

                    ; #79464: origin
                    (at_a_p6)

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #42597: origin
                    (not_at_a_p2)

                    ; #80076: origin
                    (at_a_p7)

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #42597: origin
                    (not_at_a_p2)

                    ; #61045: origin
                    (at_a_p8)

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #42597: origin
                    (not_at_a_p2)

                    ; #83577: origin
                    (at_a_p9)

                    ; #40207: <==negation-removal== 42597 (pos)
                    (not (at_a_p2))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #88983: origin
                    (at_a_p1)

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #32025: origin
                    (not_at_a_p3)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #77744: origin
                    (at_a_p11)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #73974: origin
                    (at_a_p12)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #40207: origin
                    (at_a_p2)

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #33883: origin
                    (at_a_p3)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #62937: origin
                    (at_a_p4)

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #32025: origin
                    (not_at_a_p3)

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #79464: origin
                    (at_a_p6)

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #80076: origin
                    (at_a_p7)

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #61045: origin
                    (at_a_p8)

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #32025: origin
                    (not_at_a_p3)

                    ; #83577: origin
                    (at_a_p9)

                    ; #33883: <==negation-removal== 32025 (pos)
                    (not (at_a_p3))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #70422: origin
                    (not_at_a_p4)

                    ; #88983: origin
                    (at_a_p1)

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #70422: origin
                    (not_at_a_p4)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #70422: origin
                    (not_at_a_p4)

                    ; #77744: origin
                    (at_a_p11)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #70422: origin
                    (not_at_a_p4)

                    ; #73974: origin
                    (at_a_p12)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #40207: origin
                    (at_a_p2)

                    ; #70422: origin
                    (not_at_a_p4)

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #33883: origin
                    (at_a_p3)

                    ; #70422: origin
                    (not_at_a_p4)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #62937: origin
                    (at_a_p4)

                    ; #70422: origin
                    (not_at_a_p4)

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #70422: origin
                    (not_at_a_p4)

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #70422: origin
                    (not_at_a_p4)

                    ; #79464: origin
                    (at_a_p6)

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #70422: origin
                    (not_at_a_p4)

                    ; #80076: origin
                    (at_a_p7)

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #61045: origin
                    (at_a_p8)

                    ; #70422: origin
                    (not_at_a_p4)

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #70422: origin
                    (not_at_a_p4)

                    ; #83577: origin
                    (at_a_p9)

                    ; #62937: <==negation-removal== 70422 (pos)
                    (not (at_a_p4))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #85923: origin
                    (not_at_a_p5)

                    ; #88983: origin
                    (at_a_p1)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11)
                           (not (leader_a)))
        :effect (and
                    ; #77744: origin
                    (at_a_p11)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12)
                           (not (leader_a)))
        :effect (and
                    ; #73974: origin
                    (at_a_p12)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #40207: origin
                    (at_a_p2)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #33883: origin
                    (at_a_p3)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #62937: origin
                    (at_a_p4)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #79464: origin
                    (at_a_p6)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #80076: origin
                    (at_a_p7)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #61045: origin
                    (at_a_p8)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #83577: origin
                    (at_a_p9)

                    ; #85923: origin
                    (not_at_a_p5)

                    ; #15026: <==negation-removal== 85923 (pos)
                    (not (at_a_p5))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #73672: origin
                    (not_at_a_p6)

                    ; #88983: origin
                    (at_a_p1)

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #73672: origin
                    (not_at_a_p6)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #73672: origin
                    (not_at_a_p6)

                    ; #77744: origin
                    (at_a_p11)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12)
                           (not (leader_a)))
        :effect (and
                    ; #73672: origin
                    (not_at_a_p6)

                    ; #73974: origin
                    (at_a_p12)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #40207: origin
                    (at_a_p2)

                    ; #73672: origin
                    (not_at_a_p6)

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #33883: origin
                    (at_a_p3)

                    ; #73672: origin
                    (not_at_a_p6)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4)
                           (not (leader_a)))
        :effect (and
                    ; #62937: origin
                    (at_a_p4)

                    ; #73672: origin
                    (not_at_a_p6)

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #73672: origin
                    (not_at_a_p6)

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #73672: origin
                    (not_at_a_p6)

                    ; #79464: origin
                    (at_a_p6)

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #73672: origin
                    (not_at_a_p6)

                    ; #80076: origin
                    (at_a_p7)

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #61045: origin
                    (at_a_p8)

                    ; #73672: origin
                    (not_at_a_p6)

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #73672: origin
                    (not_at_a_p6)

                    ; #83577: origin
                    (at_a_p9)

                    ; #79464: <==negation-removal== 73672 (pos)
                    (not (at_a_p6))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38041: origin
                    (not_at_a_p7)

                    ; #88983: origin
                    (at_a_p1)

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #38041: origin
                    (not_at_a_p7)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38041: origin
                    (not_at_a_p7)

                    ; #77744: origin
                    (at_a_p11)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38041: origin
                    (not_at_a_p7)

                    ; #73974: origin
                    (at_a_p12)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38041: origin
                    (not_at_a_p7)

                    ; #40207: origin
                    (at_a_p2)

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #33883: origin
                    (at_a_p3)

                    ; #38041: origin
                    (not_at_a_p7)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38041: origin
                    (not_at_a_p7)

                    ; #62937: origin
                    (at_a_p4)

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #38041: origin
                    (not_at_a_p7)

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38041: origin
                    (not_at_a_p7)

                    ; #79464: origin
                    (at_a_p6)

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38041: origin
                    (not_at_a_p7)

                    ; #80076: origin
                    (at_a_p7)

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38041: origin
                    (not_at_a_p7)

                    ; #61045: origin
                    (at_a_p8)

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #38041: origin
                    (not_at_a_p7)

                    ; #83577: origin
                    (at_a_p9)

                    ; #80076: <==negation-removal== 38041 (pos)
                    (not (at_a_p7))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #74910: origin
                    (not_at_a_p8)

                    ; #88983: origin
                    (at_a_p1)

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #74910: origin
                    (not_at_a_p8)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #74910: origin
                    (not_at_a_p8)

                    ; #77744: origin
                    (at_a_p11)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #73974: origin
                    (at_a_p12)

                    ; #74910: origin
                    (not_at_a_p8)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #40207: origin
                    (at_a_p2)

                    ; #74910: origin
                    (not_at_a_p8)

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33883: origin
                    (at_a_p3)

                    ; #74910: origin
                    (not_at_a_p8)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #62937: origin
                    (at_a_p4)

                    ; #74910: origin
                    (not_at_a_p8)

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #74910: origin
                    (not_at_a_p8)

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #74910: origin
                    (not_at_a_p8)

                    ; #79464: origin
                    (at_a_p6)

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #74910: origin
                    (not_at_a_p8)

                    ; #80076: origin
                    (at_a_p7)

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #61045: origin
                    (at_a_p8)

                    ; #74910: origin
                    (not_at_a_p8)

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #74910: origin
                    (not_at_a_p8)

                    ; #83577: origin
                    (at_a_p9)

                    ; #61045: <==negation-removal== 74910 (pos)
                    (not (at_a_p8))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #88983: origin
                    (at_a_p1)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #36021: <==negation-removal== 88983 (pos)
                    (not (not_at_a_p1))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #23473: origin
                    (at_a_p10)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #29622: <==negation-removal== 23473 (pos)
                    (not (not_at_a_p10))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #77744: origin
                    (at_a_p11)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #26426: <==negation-removal== 77744 (pos)
                    (not (not_at_a_p11))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #73974: origin
                    (at_a_p12)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #31094: <==negation-removal== 73974 (pos)
                    (not (not_at_a_p12))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #40207: origin
                    (at_a_p2)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #42597: <==negation-removal== 40207 (pos)
                    (not (not_at_a_p2))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #33883: origin
                    (at_a_p3)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #32025: <==negation-removal== 33883 (pos)
                    (not (not_at_a_p3))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #62937: origin
                    (at_a_p4)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #70422: <==negation-removal== 62937 (pos)
                    (not (not_at_a_p4))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #15026: origin
                    (at_a_p5)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))

                    ; #85923: <==negation-removal== 15026 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #79464: origin
                    (at_a_p6)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #73672: <==negation-removal== 79464 (pos)
                    (not (not_at_a_p6))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #80076: origin
                    (at_a_p7)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #38041: <==negation-removal== 80076 (pos)
                    (not (not_at_a_p7))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #61045: origin
                    (at_a_p8)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #74910: <==negation-removal== 61045 (pos)
                    (not (not_at_a_p8))

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #83577: origin
                    (at_a_p9)

                    ; #97713: origin
                    (not_at_a_p9)

                    ; #83577: <==negation-removal== 97713 (pos)
                    (not (at_a_p9))

                    ; #97713: <==negation-removal== 83577 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #18165: origin
                    (at_b_p1)

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #33941: origin
                    (at_b_p10)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #57027: origin
                    (at_b_p11)

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #73500: origin
                    (at_b_p12)

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #71116: origin
                    (at_b_p2)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #39291: origin
                    (at_b_p3)

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #88442: origin
                    (at_b_p4)

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #85855: origin
                    (at_b_p5)

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #43583: origin
                    (at_b_p6)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #77670: origin
                    (at_b_p7)

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #87150: origin
                    (at_b_p8)

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12660: origin
                    (not_at_b_p10)

                    ; #36821: origin
                    (at_b_p9)

                    ; #33941: <==negation-removal== 12660 (pos)
                    (not (at_b_p10))

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #66235: origin
                    (not_at_b_p11)

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10)
                           (not (leader_b)))
        :effect (and
                    ; #33941: origin
                    (at_b_p10)

                    ; #66235: origin
                    (not_at_b_p11)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #57027: origin
                    (at_b_p11)

                    ; #66235: origin
                    (not_at_b_p11)

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12)
                           (not (leader_b)))
        :effect (and
                    ; #66235: origin
                    (not_at_b_p11)

                    ; #73500: origin
                    (at_b_p12)

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2)
                           (not (leader_b)))
        :effect (and
                    ; #66235: origin
                    (not_at_b_p11)

                    ; #71116: origin
                    (at_b_p2)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3)
                           (not (leader_b)))
        :effect (and
                    ; #39291: origin
                    (at_b_p3)

                    ; #66235: origin
                    (not_at_b_p11)

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4)
                           (not (leader_b)))
        :effect (and
                    ; #66235: origin
                    (not_at_b_p11)

                    ; #88442: origin
                    (at_b_p4)

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5)
                           (not (leader_b)))
        :effect (and
                    ; #66235: origin
                    (not_at_b_p11)

                    ; #85855: origin
                    (at_b_p5)

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6)
                           (not (leader_b)))
        :effect (and
                    ; #43583: origin
                    (at_b_p6)

                    ; #66235: origin
                    (not_at_b_p11)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #66235: origin
                    (not_at_b_p11)

                    ; #77670: origin
                    (at_b_p7)

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8)
                           (not (leader_b)))
        :effect (and
                    ; #66235: origin
                    (not_at_b_p11)

                    ; #87150: origin
                    (at_b_p8)

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36821: origin
                    (at_b_p9)

                    ; #66235: origin
                    (not_at_b_p11)

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))

                    ; #57027: <==negation-removal== 66235 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #49077: origin
                    (not_at_b_p12)

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #33941: origin
                    (at_b_p10)

                    ; #49077: origin
                    (not_at_b_p12)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49077: origin
                    (not_at_b_p12)

                    ; #57027: origin
                    (at_b_p11)

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49077: origin
                    (not_at_b_p12)

                    ; #73500: origin
                    (at_b_p12)

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49077: origin
                    (not_at_b_p12)

                    ; #71116: origin
                    (at_b_p2)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #39291: origin
                    (at_b_p3)

                    ; #49077: origin
                    (not_at_b_p12)

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #49077: origin
                    (not_at_b_p12)

                    ; #88442: origin
                    (at_b_p4)

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49077: origin
                    (not_at_b_p12)

                    ; #85855: origin
                    (at_b_p5)

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #43583: origin
                    (at_b_p6)

                    ; #49077: origin
                    (not_at_b_p12)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49077: origin
                    (not_at_b_p12)

                    ; #77670: origin
                    (at_b_p7)

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49077: origin
                    (not_at_b_p12)

                    ; #87150: origin
                    (at_b_p8)

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36821: origin
                    (at_b_p9)

                    ; #49077: origin
                    (not_at_b_p12)

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))

                    ; #73500: <==negation-removal== 49077 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #49533: origin
                    (not_at_b_p1)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #33941: origin
                    (at_b_p10)

                    ; #49533: origin
                    (not_at_b_p1)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #49533: origin
                    (not_at_b_p1)

                    ; #57027: origin
                    (at_b_p11)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49533: origin
                    (not_at_b_p1)

                    ; #73500: origin
                    (at_b_p12)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49533: origin
                    (not_at_b_p1)

                    ; #71116: origin
                    (at_b_p2)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #39291: origin
                    (at_b_p3)

                    ; #49533: origin
                    (not_at_b_p1)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #49533: origin
                    (not_at_b_p1)

                    ; #88442: origin
                    (at_b_p4)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #49533: origin
                    (not_at_b_p1)

                    ; #85855: origin
                    (at_b_p5)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #43583: origin
                    (at_b_p6)

                    ; #49533: origin
                    (not_at_b_p1)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #49533: origin
                    (not_at_b_p1)

                    ; #77670: origin
                    (at_b_p7)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #49533: origin
                    (not_at_b_p1)

                    ; #87150: origin
                    (at_b_p8)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36821: origin
                    (at_b_p9)

                    ; #49533: origin
                    (not_at_b_p1)

                    ; #18165: <==negation-removal== 49533 (pos)
                    (not (at_b_p1))

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #30251: origin
                    (not_at_b_p2)

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #33941: origin
                    (at_b_p10)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #57027: origin
                    (at_b_p11)

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #73500: origin
                    (at_b_p12)

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #71116: origin
                    (at_b_p2)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #39291: origin
                    (at_b_p3)

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #88442: origin
                    (at_b_p4)

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #85855: origin
                    (at_b_p5)

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #43583: origin
                    (at_b_p6)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #77670: origin
                    (at_b_p7)

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #87150: origin
                    (at_b_p8)

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #30251: origin
                    (not_at_b_p2)

                    ; #36821: origin
                    (at_b_p9)

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))

                    ; #71116: <==negation-removal== 30251 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #48560: origin
                    (not_at_b_p3)

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #33941: origin
                    (at_b_p10)

                    ; #48560: origin
                    (not_at_b_p3)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #48560: origin
                    (not_at_b_p3)

                    ; #57027: origin
                    (at_b_p11)

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #48560: origin
                    (not_at_b_p3)

                    ; #73500: origin
                    (at_b_p12)

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #48560: origin
                    (not_at_b_p3)

                    ; #71116: origin
                    (at_b_p2)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #39291: origin
                    (at_b_p3)

                    ; #48560: origin
                    (not_at_b_p3)

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #48560: origin
                    (not_at_b_p3)

                    ; #88442: origin
                    (at_b_p4)

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #48560: origin
                    (not_at_b_p3)

                    ; #85855: origin
                    (at_b_p5)

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43583: origin
                    (at_b_p6)

                    ; #48560: origin
                    (not_at_b_p3)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #48560: origin
                    (not_at_b_p3)

                    ; #77670: origin
                    (at_b_p7)

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #48560: origin
                    (not_at_b_p3)

                    ; #87150: origin
                    (at_b_p8)

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36821: origin
                    (at_b_p9)

                    ; #48560: origin
                    (not_at_b_p3)

                    ; #39291: <==negation-removal== 48560 (pos)
                    (not (at_b_p3))

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #84162: origin
                    (not_at_b_p4)

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #33941: origin
                    (at_b_p10)

                    ; #84162: origin
                    (not_at_b_p4)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #57027: origin
                    (at_b_p11)

                    ; #84162: origin
                    (not_at_b_p4)

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #73500: origin
                    (at_b_p12)

                    ; #84162: origin
                    (not_at_b_p4)

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #71116: origin
                    (at_b_p2)

                    ; #84162: origin
                    (not_at_b_p4)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #39291: origin
                    (at_b_p3)

                    ; #84162: origin
                    (not_at_b_p4)

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #84162: origin
                    (not_at_b_p4)

                    ; #88442: origin
                    (at_b_p4)

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #84162: origin
                    (not_at_b_p4)

                    ; #85855: origin
                    (at_b_p5)

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #43583: origin
                    (at_b_p6)

                    ; #84162: origin
                    (not_at_b_p4)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #77670: origin
                    (at_b_p7)

                    ; #84162: origin
                    (not_at_b_p4)

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #84162: origin
                    (not_at_b_p4)

                    ; #87150: origin
                    (at_b_p8)

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #36821: origin
                    (at_b_p9)

                    ; #84162: origin
                    (not_at_b_p4)

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))

                    ; #88442: <==negation-removal== 84162 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #33941: origin
                    (at_b_p10)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #57027: origin
                    (at_b_p11)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #73500: origin
                    (at_b_p12)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #71116: origin
                    (at_b_p2)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #39291: origin
                    (at_b_p3)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #88030: origin
                    (not_at_b_p5)

                    ; #88442: origin
                    (at_b_p4)

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #85855: origin
                    (at_b_p5)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43583: origin
                    (at_b_p6)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #77670: origin
                    (at_b_p7)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #87150: origin
                    (at_b_p8)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #36821: origin
                    (at_b_p9)

                    ; #88030: origin
                    (not_at_b_p5)

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))

                    ; #85855: <==negation-removal== 88030 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #22781: origin
                    (not_at_b_p6)

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #33941: origin
                    (at_b_p10)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #57027: origin
                    (at_b_p11)

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #73500: origin
                    (at_b_p12)

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #71116: origin
                    (at_b_p2)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #39291: origin
                    (at_b_p3)

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #88442: origin
                    (at_b_p4)

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #85855: origin
                    (at_b_p5)

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #43583: origin
                    (at_b_p6)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #77670: origin
                    (at_b_p7)

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #87150: origin
                    (at_b_p8)

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #22781: origin
                    (not_at_b_p6)

                    ; #36821: origin
                    (at_b_p9)

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))

                    ; #43583: <==negation-removal== 22781 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #38435: origin
                    (not_at_b_p7)

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #33941: origin
                    (at_b_p10)

                    ; #38435: origin
                    (not_at_b_p7)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38435: origin
                    (not_at_b_p7)

                    ; #57027: origin
                    (at_b_p11)

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38435: origin
                    (not_at_b_p7)

                    ; #73500: origin
                    (at_b_p12)

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38435: origin
                    (not_at_b_p7)

                    ; #71116: origin
                    (at_b_p2)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38435: origin
                    (not_at_b_p7)

                    ; #39291: origin
                    (at_b_p3)

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38435: origin
                    (not_at_b_p7)

                    ; #88442: origin
                    (at_b_p4)

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #38435: origin
                    (not_at_b_p7)

                    ; #85855: origin
                    (at_b_p5)

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38435: origin
                    (not_at_b_p7)

                    ; #43583: origin
                    (at_b_p6)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38435: origin
                    (not_at_b_p7)

                    ; #77670: origin
                    (at_b_p7)

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38435: origin
                    (not_at_b_p7)

                    ; #87150: origin
                    (at_b_p8)

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #36821: origin
                    (at_b_p9)

                    ; #38435: origin
                    (not_at_b_p7)

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))

                    ; #77670: <==negation-removal== 38435 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #33941: origin
                    (at_b_p10)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #57027: origin
                    (at_b_p11)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #73500: origin
                    (at_b_p12)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #71116: origin
                    (at_b_p2)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #39291: origin
                    (at_b_p3)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #88442: origin
                    (at_b_p4)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #85855: origin
                    (at_b_p5)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #43583: origin
                    (at_b_p6)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #77670: origin
                    (at_b_p7)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #87150: origin
                    (at_b_p8)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36821: origin
                    (at_b_p9)

                    ; #88576: origin
                    (not_at_b_p8)

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))

                    ; #87150: <==negation-removal== 88576 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #18165: origin
                    (at_b_p1)

                    ; #41080: origin
                    (not_at_b_p9)

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))

                    ; #49533: <==negation-removal== 18165 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #33941: origin
                    (at_b_p10)

                    ; #41080: origin
                    (not_at_b_p9)

                    ; #12660: <==negation-removal== 33941 (pos)
                    (not (not_at_b_p10))

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41080: origin
                    (not_at_b_p9)

                    ; #57027: origin
                    (at_b_p11)

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))

                    ; #66235: <==negation-removal== 57027 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41080: origin
                    (not_at_b_p9)

                    ; #73500: origin
                    (at_b_p12)

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))

                    ; #49077: <==negation-removal== 73500 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41080: origin
                    (not_at_b_p9)

                    ; #71116: origin
                    (at_b_p2)

                    ; #30251: <==negation-removal== 71116 (pos)
                    (not (not_at_b_p2))

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #39291: origin
                    (at_b_p3)

                    ; #41080: origin
                    (not_at_b_p9)

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))

                    ; #48560: <==negation-removal== 39291 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41080: origin
                    (not_at_b_p9)

                    ; #88442: origin
                    (at_b_p4)

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))

                    ; #84162: <==negation-removal== 88442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #41080: origin
                    (not_at_b_p9)

                    ; #85855: origin
                    (at_b_p5)

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))

                    ; #88030: <==negation-removal== 85855 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6)
                           (not (leader_b)))
        :effect (and
                    ; #41080: origin
                    (not_at_b_p9)

                    ; #43583: origin
                    (at_b_p6)

                    ; #22781: <==negation-removal== 43583 (pos)
                    (not (not_at_b_p6))

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41080: origin
                    (not_at_b_p9)

                    ; #77670: origin
                    (at_b_p7)

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))

                    ; #38435: <==negation-removal== 77670 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #41080: origin
                    (not_at_b_p9)

                    ; #87150: origin
                    (at_b_p8)

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))

                    ; #88576: <==negation-removal== 87150 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36821: origin
                    (at_b_p9)

                    ; #41080: origin
                    (not_at_b_p9)

                    ; #36821: <==negation-removal== 41080 (pos)
                    (not (at_b_p9))

                    ; #41080: <==negation-removal== 36821 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #22230: origin
                    (at_c_p1)

                    ; #34532: origin
                    (not_at_c_p10)

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #34532: origin
                    (not_at_c_p10)

                    ; #75110: origin
                    (at_c_p10)

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #34532: origin
                    (not_at_c_p10)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #34532: origin
                    (not_at_c_p10)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #34532: origin
                    (not_at_c_p10)

                    ; #54986: origin
                    (at_c_p2)

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3)
                           (not (leader_c)))
        :effect (and
                    ; #34532: origin
                    (not_at_c_p10)

                    ; #78735: origin
                    (at_c_p3)

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #34532: origin
                    (not_at_c_p10)

                    ; #42594: origin
                    (at_c_p4)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #34532: origin
                    (not_at_c_p10)

                    ; #68245: origin
                    (at_c_p5)

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #34532: origin
                    (not_at_c_p10)

                    ; #52705: origin
                    (at_c_p6)

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #34532: origin
                    (not_at_c_p10)

                    ; #90581: origin
                    (at_c_p7)

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #34532: origin
                    (not_at_c_p10)

                    ; #58074: origin
                    (at_c_p8)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #33428: origin
                    (at_c_p9)

                    ; #34532: origin
                    (not_at_c_p10)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #75110: <==negation-removal== 34532 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22230: origin
                    (at_c_p1)

                    ; #22760: origin
                    (not_at_c_p11)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #75110: origin
                    (at_c_p10)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #22760: origin
                    (not_at_c_p11)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #64907: origin
                    (at_c_p12)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #54986: origin
                    (at_c_p2)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #78735: origin
                    (at_c_p3)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #42594: origin
                    (at_c_p4)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #68245: origin
                    (at_c_p5)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #52705: origin
                    (at_c_p6)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #90581: origin
                    (at_c_p7)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #58074: origin
                    (at_c_p8)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #22760: origin
                    (not_at_c_p11)

                    ; #33428: origin
                    (at_c_p9)

                    ; #12347: <==negation-removal== 22760 (pos)
                    (not (at_c_p11))

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #22230: origin
                    (at_c_p1)

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #75110: origin
                    (at_c_p10)

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #14097: origin
                    (not_at_c_p12)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #54986: origin
                    (at_c_p2)

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #78735: origin
                    (at_c_p3)

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #42594: origin
                    (at_c_p4)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #68245: origin
                    (at_c_p5)

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #52705: origin
                    (at_c_p6)

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #90581: origin
                    (at_c_p7)

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #58074: origin
                    (at_c_p8)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9)
                           (not (leader_c)))
        :effect (and
                    ; #14097: origin
                    (not_at_c_p12)

                    ; #33428: origin
                    (at_c_p9)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #64907: <==negation-removal== 14097 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22230: origin
                    (at_c_p1)

                    ; #46354: origin
                    (not_at_c_p1)

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #46354: origin
                    (not_at_c_p1)

                    ; #75110: origin
                    (at_c_p10)

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #46354: origin
                    (not_at_c_p1)

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #46354: origin
                    (not_at_c_p1)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #46354: origin
                    (not_at_c_p1)

                    ; #54986: origin
                    (at_c_p2)

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #46354: origin
                    (not_at_c_p1)

                    ; #78735: origin
                    (at_c_p3)

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #42594: origin
                    (at_c_p4)

                    ; #46354: origin
                    (not_at_c_p1)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #46354: origin
                    (not_at_c_p1)

                    ; #68245: origin
                    (at_c_p5)

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #46354: origin
                    (not_at_c_p1)

                    ; #52705: origin
                    (at_c_p6)

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #46354: origin
                    (not_at_c_p1)

                    ; #90581: origin
                    (at_c_p7)

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #46354: origin
                    (not_at_c_p1)

                    ; #58074: origin
                    (at_c_p8)

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33428: origin
                    (at_c_p9)

                    ; #46354: origin
                    (not_at_c_p1)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #22230: <==negation-removal== 46354 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22230: origin
                    (at_c_p1)

                    ; #61262: origin
                    (not_at_c_p2)

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10)
                           (not (leader_c)))
        :effect (and
                    ; #61262: origin
                    (not_at_c_p2)

                    ; #75110: origin
                    (at_c_p10)

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #61262: origin
                    (not_at_c_p2)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #61262: origin
                    (not_at_c_p2)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #54986: origin
                    (at_c_p2)

                    ; #61262: origin
                    (not_at_c_p2)

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #61262: origin
                    (not_at_c_p2)

                    ; #78735: origin
                    (at_c_p3)

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #42594: origin
                    (at_c_p4)

                    ; #61262: origin
                    (not_at_c_p2)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #61262: origin
                    (not_at_c_p2)

                    ; #68245: origin
                    (at_c_p5)

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52705: origin
                    (at_c_p6)

                    ; #61262: origin
                    (not_at_c_p2)

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #61262: origin
                    (not_at_c_p2)

                    ; #90581: origin
                    (at_c_p7)

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #58074: origin
                    (at_c_p8)

                    ; #61262: origin
                    (not_at_c_p2)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #33428: origin
                    (at_c_p9)

                    ; #61262: origin
                    (not_at_c_p2)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #54986: <==negation-removal== 61262 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #22230: origin
                    (at_c_p1)

                    ; #42802: origin
                    (not_at_c_p3)

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42802: origin
                    (not_at_c_p3)

                    ; #75110: origin
                    (at_c_p10)

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #42802: origin
                    (not_at_c_p3)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42802: origin
                    (not_at_c_p3)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42802: origin
                    (not_at_c_p3)

                    ; #54986: origin
                    (at_c_p2)

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42802: origin
                    (not_at_c_p3)

                    ; #78735: origin
                    (at_c_p3)

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42594: origin
                    (at_c_p4)

                    ; #42802: origin
                    (not_at_c_p3)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42802: origin
                    (not_at_c_p3)

                    ; #68245: origin
                    (at_c_p5)

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42802: origin
                    (not_at_c_p3)

                    ; #52705: origin
                    (at_c_p6)

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42802: origin
                    (not_at_c_p3)

                    ; #90581: origin
                    (at_c_p7)

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42802: origin
                    (not_at_c_p3)

                    ; #58074: origin
                    (at_c_p8)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33428: origin
                    (at_c_p9)

                    ; #42802: origin
                    (not_at_c_p3)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #78735: <==negation-removal== 42802 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #22230: origin
                    (at_c_p1)

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #75110: origin
                    (at_c_p10)

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #17385: origin
                    (not_at_c_p4)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #54986: origin
                    (at_c_p2)

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #78735: origin
                    (at_c_p3)

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #42594: origin
                    (at_c_p4)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #68245: origin
                    (at_c_p5)

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #52705: origin
                    (at_c_p6)

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #90581: origin
                    (at_c_p7)

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #58074: origin
                    (at_c_p8)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9)
                           (not (leader_c)))
        :effect (and
                    ; #17385: origin
                    (not_at_c_p4)

                    ; #33428: origin
                    (at_c_p9)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #42594: <==negation-removal== 17385 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22230: origin
                    (at_c_p1)

                    ; #49166: origin
                    (not_at_c_p5)

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #49166: origin
                    (not_at_c_p5)

                    ; #75110: origin
                    (at_c_p10)

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #49166: origin
                    (not_at_c_p5)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #49166: origin
                    (not_at_c_p5)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #49166: origin
                    (not_at_c_p5)

                    ; #54986: origin
                    (at_c_p2)

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #49166: origin
                    (not_at_c_p5)

                    ; #78735: origin
                    (at_c_p3)

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #42594: origin
                    (at_c_p4)

                    ; #49166: origin
                    (not_at_c_p5)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #49166: origin
                    (not_at_c_p5)

                    ; #68245: origin
                    (at_c_p5)

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #49166: origin
                    (not_at_c_p5)

                    ; #52705: origin
                    (at_c_p6)

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #49166: origin
                    (not_at_c_p5)

                    ; #90581: origin
                    (at_c_p7)

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #49166: origin
                    (not_at_c_p5)

                    ; #58074: origin
                    (at_c_p8)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33428: origin
                    (at_c_p9)

                    ; #49166: origin
                    (not_at_c_p5)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #68245: <==negation-removal== 49166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #22230: origin
                    (at_c_p1)

                    ; #45705: origin
                    (not_at_c_p6)

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10)
                           (not (leader_c)))
        :effect (and
                    ; #45705: origin
                    (not_at_c_p6)

                    ; #75110: origin
                    (at_c_p10)

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #45705: origin
                    (not_at_c_p6)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12)
                           (not (leader_c)))
        :effect (and
                    ; #45705: origin
                    (not_at_c_p6)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #45705: origin
                    (not_at_c_p6)

                    ; #54986: origin
                    (at_c_p2)

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #45705: origin
                    (not_at_c_p6)

                    ; #78735: origin
                    (at_c_p3)

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #42594: origin
                    (at_c_p4)

                    ; #45705: origin
                    (not_at_c_p6)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45705: origin
                    (not_at_c_p6)

                    ; #68245: origin
                    (at_c_p5)

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #45705: origin
                    (not_at_c_p6)

                    ; #52705: origin
                    (at_c_p6)

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #45705: origin
                    (not_at_c_p6)

                    ; #90581: origin
                    (at_c_p7)

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #45705: origin
                    (not_at_c_p6)

                    ; #58074: origin
                    (at_c_p8)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33428: origin
                    (at_c_p9)

                    ; #45705: origin
                    (not_at_c_p6)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #52705: <==negation-removal== 45705 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #22230: origin
                    (at_c_p1)

                    ; #40350: origin
                    (not_at_c_p7)

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40350: origin
                    (not_at_c_p7)

                    ; #75110: origin
                    (at_c_p10)

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #40350: origin
                    (not_at_c_p7)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #40350: origin
                    (not_at_c_p7)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40350: origin
                    (not_at_c_p7)

                    ; #54986: origin
                    (at_c_p2)

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #40350: origin
                    (not_at_c_p7)

                    ; #78735: origin
                    (at_c_p3)

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40350: origin
                    (not_at_c_p7)

                    ; #42594: origin
                    (at_c_p4)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5)
                           (not (leader_c)))
        :effect (and
                    ; #40350: origin
                    (not_at_c_p7)

                    ; #68245: origin
                    (at_c_p5)

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40350: origin
                    (not_at_c_p7)

                    ; #52705: origin
                    (at_c_p6)

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40350: origin
                    (not_at_c_p7)

                    ; #90581: origin
                    (at_c_p7)

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40350: origin
                    (not_at_c_p7)

                    ; #58074: origin
                    (at_c_p8)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9)
                           (not (leader_c)))
        :effect (and
                    ; #33428: origin
                    (at_c_p9)

                    ; #40350: origin
                    (not_at_c_p7)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #90581: <==negation-removal== 40350 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #22230: origin
                    (at_c_p1)

                    ; #32238: origin
                    (not_at_c_p8)

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #75110: origin
                    (at_c_p10)

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #32238: origin
                    (not_at_c_p8)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #54986: origin
                    (at_c_p2)

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #78735: origin
                    (at_c_p3)

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #42594: origin
                    (at_c_p4)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #68245: origin
                    (at_c_p5)

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #52705: origin
                    (at_c_p6)

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #90581: origin
                    (at_c_p7)

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #58074: origin
                    (at_c_p8)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #32238: origin
                    (not_at_c_p8)

                    ; #33428: origin
                    (at_c_p9)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #58074: <==negation-removal== 32238 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #22230: origin
                    (at_c_p1)

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))

                    ; #46354: <==negation-removal== 22230 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #75110: origin
                    (at_c_p10)

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))

                    ; #34532: <==negation-removal== 75110 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12347: origin
                    (at_c_p11)

                    ; #20928: origin
                    (not_at_c_p9)

                    ; #22760: <==negation-removal== 12347 (pos)
                    (not (not_at_c_p11))

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #64907: origin
                    (at_c_p12)

                    ; #14097: <==negation-removal== 64907 (pos)
                    (not (not_at_c_p12))

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #54986: origin
                    (at_c_p2)

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))

                    ; #61262: <==negation-removal== 54986 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #78735: origin
                    (at_c_p3)

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))

                    ; #42802: <==negation-removal== 78735 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #42594: origin
                    (at_c_p4)

                    ; #17385: <==negation-removal== 42594 (pos)
                    (not (not_at_c_p4))

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #68245: origin
                    (at_c_p5)

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))

                    ; #49166: <==negation-removal== 68245 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #52705: origin
                    (at_c_p6)

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))

                    ; #45705: <==negation-removal== 52705 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #90581: origin
                    (at_c_p7)

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))

                    ; #40350: <==negation-removal== 90581 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #58074: origin
                    (at_c_p8)

                    ; #32238: <==negation-removal== 58074 (pos)
                    (not (not_at_c_p8))

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20928: origin
                    (not_at_c_p9)

                    ; #33428: origin
                    (at_c_p9)

                    ; #20928: <==negation-removal== 33428 (pos)
                    (not (not_at_c_p9))

                    ; #33428: <==negation-removal== 20928 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #54161: origin
                    (at_d_p1)

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #50666: origin
                    (at_d_p10)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (at_d_p10)
                           (succ_p10_p11)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #85695: origin
                    (at_d_p11)

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #53483: origin
                    (at_d_p12)

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p10_p2
        :precondition (and (at_d_p10)
                           (succ_p10_p2)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #21969: origin
                    (at_d_p2)

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p3
        :precondition (and (at_d_p10)
                           (succ_p10_p3)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #47409: origin
                    (at_d_p3)

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #35770: origin
                    (at_d_p4)

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p5
        :precondition (and (at_d_p10)
                           (succ_p10_p5)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #94644: origin
                    (at_d_p5)

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #25396: origin
                    (at_d_p6)

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (at_d_p10)
                           (succ_p10_p7)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #68608: origin
                    (at_d_p7)

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #17852: origin
                    (not_at_d_p10)

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #17852: origin
                    (not_at_d_p10)

                    ; #86905: origin
                    (at_d_p9)

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))

                    ; #50666: <==negation-removal== 17852 (pos)
                    (not (at_d_p10))))

    (:action move_d_p11_p1
        :precondition (and (at_d_p11)
                           (succ_p11_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54161: origin
                    (at_d_p1)

                    ; #81586: origin
                    (not_at_d_p11)

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #50666: origin
                    (at_d_p10)

                    ; #81586: origin
                    (not_at_d_p11)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #81586: origin
                    (not_at_d_p11)

                    ; #85695: origin
                    (at_d_p11)

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #53483: origin
                    (at_d_p12)

                    ; #81586: origin
                    (not_at_d_p11)

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #81586: origin
                    (not_at_d_p11)

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p3
        :precondition (and (at_d_p11)
                           (succ_p11_p3)
                           (not (leader_d)))
        :effect (and
                    ; #47409: origin
                    (at_d_p3)

                    ; #81586: origin
                    (not_at_d_p11)

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #35770: origin
                    (at_d_p4)

                    ; #81586: origin
                    (not_at_d_p11)

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5)
                           (not (leader_d)))
        :effect (and
                    ; #81586: origin
                    (not_at_d_p11)

                    ; #94644: origin
                    (at_d_p5)

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p11_p6
        :precondition (and (at_d_p11)
                           (succ_p11_p6)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #81586: origin
                    (not_at_d_p11)

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #68608: origin
                    (at_d_p7)

                    ; #81586: origin
                    (not_at_d_p11)

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p8
        :precondition (and (at_d_p11)
                           (succ_p11_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #81586: origin
                    (not_at_d_p11)

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #81586: origin
                    (not_at_d_p11)

                    ; #86905: origin
                    (at_d_p9)

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))

                    ; #85695: <==negation-removal== 81586 (pos)
                    (not (at_d_p11))))

    (:action move_d_p12_p1
        :precondition (and (at_d_p12)
                           (succ_p12_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54161: origin
                    (at_d_p1)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p10
        :precondition (and (at_d_p12)
                           (succ_p12_p10)
                           (not (leader_d)))
        :effect (and
                    ; #50666: origin
                    (at_d_p10)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11)
                           (not (leader_d)))
        :effect (and
                    ; #85695: origin
                    (at_d_p11)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #53483: origin
                    (at_d_p12)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #47409: origin
                    (at_d_p3)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p12_p4
        :precondition (and (at_d_p12)
                           (succ_p12_p4)
                           (not (leader_d)))
        :effect (and
                    ; #35770: origin
                    (at_d_p4)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #87705: origin
                    (not_at_d_p12)

                    ; #94644: origin
                    (at_d_p5)

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p12_p6
        :precondition (and (at_d_p12)
                           (succ_p12_p6)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (at_d_p12)
                           (succ_p12_p7)
                           (not (leader_d)))
        :effect (and
                    ; #68608: origin
                    (at_d_p7)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (at_d_p12)
                           (succ_p12_p9)
                           (not (leader_d)))
        :effect (and
                    ; #86905: origin
                    (at_d_p9)

                    ; #87705: origin
                    (not_at_d_p12)

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))

                    ; #53483: <==negation-removal== 87705 (pos)
                    (not (at_d_p12))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #31479: origin
                    (not_at_d_p1)

                    ; #54161: origin
                    (at_d_p1)

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #31479: origin
                    (not_at_d_p1)

                    ; #50666: origin
                    (at_d_p10)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p11
        :precondition (and (at_d_p1)
                           (succ_p1_p11)
                           (not (leader_d)))
        :effect (and
                    ; #31479: origin
                    (not_at_d_p1)

                    ; #85695: origin
                    (at_d_p11)

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #31479: origin
                    (not_at_d_p1)

                    ; #53483: origin
                    (at_d_p12)

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #31479: origin
                    (not_at_d_p1)

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #31479: origin
                    (not_at_d_p1)

                    ; #47409: origin
                    (at_d_p3)

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #31479: origin
                    (not_at_d_p1)

                    ; #35770: origin
                    (at_d_p4)

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #31479: origin
                    (not_at_d_p1)

                    ; #94644: origin
                    (at_d_p5)

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #31479: origin
                    (not_at_d_p1)

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #31479: origin
                    (not_at_d_p1)

                    ; #68608: origin
                    (at_d_p7)

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #31479: origin
                    (not_at_d_p1)

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9)
                           (not (leader_d)))
        :effect (and
                    ; #31479: origin
                    (not_at_d_p1)

                    ; #86905: origin
                    (at_d_p9)

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))

                    ; #54161: <==negation-removal== 31479 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1)
                           (not (leader_d)))
        :effect (and
                    ; #27170: origin
                    (not_at_d_p2)

                    ; #54161: origin
                    (at_d_p1)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p10
        :precondition (and (at_d_p2)
                           (succ_p2_p10)
                           (not (leader_d)))
        :effect (and
                    ; #27170: origin
                    (not_at_d_p2)

                    ; #50666: origin
                    (at_d_p10)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p11
        :precondition (and (at_d_p2)
                           (succ_p2_p11)
                           (not (leader_d)))
        :effect (and
                    ; #27170: origin
                    (not_at_d_p2)

                    ; #85695: origin
                    (at_d_p11)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p2_p12
        :precondition (and (at_d_p2)
                           (succ_p2_p12)
                           (not (leader_d)))
        :effect (and
                    ; #27170: origin
                    (not_at_d_p2)

                    ; #53483: origin
                    (at_d_p12)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #27170: origin
                    (not_at_d_p2)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (at_d_p2)
                           (succ_p2_p3)
                           (not (leader_d)))
        :effect (and
                    ; #27170: origin
                    (not_at_d_p2)

                    ; #47409: origin
                    (at_d_p3)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #27170: origin
                    (not_at_d_p2)

                    ; #35770: origin
                    (at_d_p4)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5)
                           (not (leader_d)))
        :effect (and
                    ; #27170: origin
                    (not_at_d_p2)

                    ; #94644: origin
                    (at_d_p5)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #27170: origin
                    (not_at_d_p2)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27170: origin
                    (not_at_d_p2)

                    ; #68608: origin
                    (at_d_p7)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #27170: origin
                    (not_at_d_p2)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #27170: origin
                    (not_at_d_p2)

                    ; #86905: origin
                    (at_d_p9)

                    ; #21969: <==negation-removal== 27170 (pos)
                    (not (at_d_p2))

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54161: origin
                    (at_d_p1)

                    ; #75527: origin
                    (not_at_d_p3)

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p10
        :precondition (and (at_d_p3)
                           (succ_p3_p10)
                           (not (leader_d)))
        :effect (and
                    ; #50666: origin
                    (at_d_p10)

                    ; #75527: origin
                    (not_at_d_p3)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p11
        :precondition (and (at_d_p3)
                           (succ_p3_p11)
                           (not (leader_d)))
        :effect (and
                    ; #75527: origin
                    (not_at_d_p3)

                    ; #85695: origin
                    (at_d_p11)

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (at_d_p3)
                           (succ_p3_p12)
                           (not (leader_d)))
        :effect (and
                    ; #53483: origin
                    (at_d_p12)

                    ; #75527: origin
                    (not_at_d_p3)

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p3_p2
        :precondition (and (at_d_p3)
                           (succ_p3_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #75527: origin
                    (not_at_d_p3)

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3)
                           (not (leader_d)))
        :effect (and
                    ; #47409: origin
                    (at_d_p3)

                    ; #75527: origin
                    (not_at_d_p3)

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4)
                           (not (leader_d)))
        :effect (and
                    ; #35770: origin
                    (at_d_p4)

                    ; #75527: origin
                    (not_at_d_p3)

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5)
                           (not (leader_d)))
        :effect (and
                    ; #75527: origin
                    (not_at_d_p3)

                    ; #94644: origin
                    (at_d_p5)

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #75527: origin
                    (not_at_d_p3)

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7)
                           (not (leader_d)))
        :effect (and
                    ; #68608: origin
                    (at_d_p7)

                    ; #75527: origin
                    (not_at_d_p3)

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #75527: origin
                    (not_at_d_p3)

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (at_d_p3)
                           (succ_p3_p9)
                           (not (leader_d)))
        :effect (and
                    ; #75527: origin
                    (not_at_d_p3)

                    ; #86905: origin
                    (at_d_p9)

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))

                    ; #47409: <==negation-removal== 75527 (pos)
                    (not (at_d_p3))))

    (:action move_d_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #34780: origin
                    (not_at_d_p4)

                    ; #54161: origin
                    (at_d_p1)

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10)
                           (not (leader_d)))
        :effect (and
                    ; #34780: origin
                    (not_at_d_p4)

                    ; #50666: origin
                    (at_d_p10)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11)
                           (not (leader_d)))
        :effect (and
                    ; #34780: origin
                    (not_at_d_p4)

                    ; #85695: origin
                    (at_d_p11)

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12)
                           (not (leader_d)))
        :effect (and
                    ; #34780: origin
                    (not_at_d_p4)

                    ; #53483: origin
                    (at_d_p12)

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #34780: origin
                    (not_at_d_p4)

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #34780: origin
                    (not_at_d_p4)

                    ; #47409: origin
                    (at_d_p3)

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #34780: origin
                    (not_at_d_p4)

                    ; #35770: origin
                    (at_d_p4)

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5)
                           (not (leader_d)))
        :effect (and
                    ; #34780: origin
                    (not_at_d_p4)

                    ; #94644: origin
                    (at_d_p5)

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #34780: origin
                    (not_at_d_p4)

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7)
                           (not (leader_d)))
        :effect (and
                    ; #34780: origin
                    (not_at_d_p4)

                    ; #68608: origin
                    (at_d_p7)

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #34780: origin
                    (not_at_d_p4)

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9)
                           (not (leader_d)))
        :effect (and
                    ; #34780: origin
                    (not_at_d_p4)

                    ; #86905: origin
                    (at_d_p9)

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))

                    ; #35770: <==negation-removal== 34780 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #54161: origin
                    (at_d_p1)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #50666: origin
                    (at_d_p10)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p11
        :precondition (and (at_d_p5)
                           (succ_p5_p11)
                           (not (leader_d)))
        :effect (and
                    ; #85695: origin
                    (at_d_p11)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #53483: origin
                    (at_d_p12)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #47409: origin
                    (at_d_p3)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #35770: origin
                    (at_d_p4)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5)
                           (not (leader_d)))
        :effect (and
                    ; #94257: origin
                    (not_at_d_p5)

                    ; #94644: origin
                    (at_d_p5)

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #68608: origin
                    (at_d_p7)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9)
                           (not (leader_d)))
        :effect (and
                    ; #86905: origin
                    (at_d_p9)

                    ; #94257: origin
                    (not_at_d_p5)

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))

                    ; #94644: <==negation-removal== 94257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54161: origin
                    (at_d_p1)

                    ; #70118: origin
                    (not_at_d_p6)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p10
        :precondition (and (at_d_p6)
                           (succ_p6_p10)
                           (not (leader_d)))
        :effect (and
                    ; #50666: origin
                    (at_d_p10)

                    ; #70118: origin
                    (not_at_d_p6)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11)
                           (not (leader_d)))
        :effect (and
                    ; #70118: origin
                    (not_at_d_p6)

                    ; #85695: origin
                    (at_d_p11)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p6_p12
        :precondition (and (at_d_p6)
                           (succ_p6_p12)
                           (not (leader_d)))
        :effect (and
                    ; #53483: origin
                    (at_d_p12)

                    ; #70118: origin
                    (not_at_d_p6)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #70118: origin
                    (not_at_d_p6)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3)
                           (not (leader_d)))
        :effect (and
                    ; #47409: origin
                    (at_d_p3)

                    ; #70118: origin
                    (not_at_d_p6)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4)
                           (not (leader_d)))
        :effect (and
                    ; #35770: origin
                    (at_d_p4)

                    ; #70118: origin
                    (not_at_d_p6)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5)
                           (not (leader_d)))
        :effect (and
                    ; #70118: origin
                    (not_at_d_p6)

                    ; #94644: origin
                    (at_d_p5)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #70118: origin
                    (not_at_d_p6)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7)
                           (not (leader_d)))
        :effect (and
                    ; #68608: origin
                    (at_d_p7)

                    ; #70118: origin
                    (not_at_d_p6)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #70118: origin
                    (not_at_d_p6)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9)
                           (not (leader_d)))
        :effect (and
                    ; #70118: origin
                    (not_at_d_p6)

                    ; #86905: origin
                    (at_d_p9)

                    ; #25396: <==negation-removal== 70118 (pos)
                    (not (at_d_p6))

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #31794: origin
                    (not_at_d_p7)

                    ; #54161: origin
                    (at_d_p1)

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #31794: origin
                    (not_at_d_p7)

                    ; #50666: origin
                    (at_d_p10)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #31794: origin
                    (not_at_d_p7)

                    ; #85695: origin
                    (at_d_p11)

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p7_p12
        :precondition (and (at_d_p7)
                           (succ_p7_p12)
                           (not (leader_d)))
        :effect (and
                    ; #31794: origin
                    (not_at_d_p7)

                    ; #53483: origin
                    (at_d_p12)

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #31794: origin
                    (not_at_d_p7)

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3)
                           (not (leader_d)))
        :effect (and
                    ; #31794: origin
                    (not_at_d_p7)

                    ; #47409: origin
                    (at_d_p3)

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #31794: origin
                    (not_at_d_p7)

                    ; #35770: origin
                    (at_d_p4)

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5)
                           (not (leader_d)))
        :effect (and
                    ; #31794: origin
                    (not_at_d_p7)

                    ; #94644: origin
                    (at_d_p5)

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #31794: origin
                    (not_at_d_p7)

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7)
                           (not (leader_d)))
        :effect (and
                    ; #31794: origin
                    (not_at_d_p7)

                    ; #68608: origin
                    (at_d_p7)

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #31794: origin
                    (not_at_d_p7)

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9)
                           (not (leader_d)))
        :effect (and
                    ; #31794: origin
                    (not_at_d_p7)

                    ; #86905: origin
                    (at_d_p9)

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))

                    ; #68608: <==negation-removal== 31794 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54161: origin
                    (at_d_p1)

                    ; #74179: origin
                    (not_at_d_p8)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #50666: origin
                    (at_d_p10)

                    ; #74179: origin
                    (not_at_d_p8)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p8_p11
        :precondition (and (at_d_p8)
                           (succ_p8_p11)
                           (not (leader_d)))
        :effect (and
                    ; #74179: origin
                    (not_at_d_p8)

                    ; #85695: origin
                    (at_d_p11)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12)
                           (not (leader_d)))
        :effect (and
                    ; #53483: origin
                    (at_d_p12)

                    ; #74179: origin
                    (not_at_d_p8)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #74179: origin
                    (not_at_d_p8)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3)
                           (not (leader_d)))
        :effect (and
                    ; #47409: origin
                    (at_d_p3)

                    ; #74179: origin
                    (not_at_d_p8)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4)
                           (not (leader_d)))
        :effect (and
                    ; #35770: origin
                    (at_d_p4)

                    ; #74179: origin
                    (not_at_d_p8)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5)
                           (not (leader_d)))
        :effect (and
                    ; #74179: origin
                    (not_at_d_p8)

                    ; #94644: origin
                    (at_d_p5)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #74179: origin
                    (not_at_d_p8)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #68608: origin
                    (at_d_p7)

                    ; #74179: origin
                    (not_at_d_p8)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #74179: origin
                    (not_at_d_p8)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9)
                           (not (leader_d)))
        :effect (and
                    ; #74179: origin
                    (not_at_d_p8)

                    ; #86905: origin
                    (at_d_p9)

                    ; #13812: <==negation-removal== 74179 (pos)
                    (not (at_d_p8))

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1)
                           (not (leader_d)))
        :effect (and
                    ; #26767: origin
                    (not_at_d_p9)

                    ; #54161: origin
                    (at_d_p1)

                    ; #31479: <==negation-removal== 54161 (pos)
                    (not (not_at_d_p1))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p10
        :precondition (and (at_d_p9)
                           (succ_p9_p10)
                           (not (leader_d)))
        :effect (and
                    ; #26767: origin
                    (not_at_d_p9)

                    ; #50666: origin
                    (at_d_p10)

                    ; #17852: <==negation-removal== 50666 (pos)
                    (not (not_at_d_p10))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p11
        :precondition (and (at_d_p9)
                           (succ_p9_p11)
                           (not (leader_d)))
        :effect (and
                    ; #26767: origin
                    (not_at_d_p9)

                    ; #85695: origin
                    (at_d_p11)

                    ; #81586: <==negation-removal== 85695 (pos)
                    (not (not_at_d_p11))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #26767: origin
                    (not_at_d_p9)

                    ; #53483: origin
                    (at_d_p12)

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))

                    ; #87705: <==negation-removal== 53483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #21969: origin
                    (at_d_p2)

                    ; #26767: origin
                    (not_at_d_p9)

                    ; #27170: <==negation-removal== 21969 (pos)
                    (not (not_at_d_p2))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3)
                           (not (leader_d)))
        :effect (and
                    ; #26767: origin
                    (not_at_d_p9)

                    ; #47409: origin
                    (at_d_p3)

                    ; #75527: <==negation-removal== 47409 (pos)
                    (not (not_at_d_p3))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4)
                           (not (leader_d)))
        :effect (and
                    ; #26767: origin
                    (not_at_d_p9)

                    ; #35770: origin
                    (at_d_p4)

                    ; #34780: <==negation-removal== 35770 (pos)
                    (not (not_at_d_p4))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5)
                           (not (leader_d)))
        :effect (and
                    ; #26767: origin
                    (not_at_d_p9)

                    ; #94644: origin
                    (at_d_p5)

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))

                    ; #94257: <==negation-removal== 94644 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6)
                           (not (leader_d)))
        :effect (and
                    ; #25396: origin
                    (at_d_p6)

                    ; #26767: origin
                    (not_at_d_p9)

                    ; #70118: <==negation-removal== 25396 (pos)
                    (not (not_at_d_p6))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7)
                           (not (leader_d)))
        :effect (and
                    ; #26767: origin
                    (not_at_d_p9)

                    ; #68608: origin
                    (at_d_p7)

                    ; #31794: <==negation-removal== 68608 (pos)
                    (not (not_at_d_p7))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13812: origin
                    (at_d_p8)

                    ; #26767: origin
                    (not_at_d_p9)

                    ; #74179: <==negation-removal== 13812 (pos)
                    (not (not_at_d_p8))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #26767: origin
                    (not_at_d_p9)

                    ; #86905: origin
                    (at_d_p9)

                    ; #26767: <==negation-removal== 86905 (pos)
                    (not (not_at_d_p9))

                    ; #86905: <==negation-removal== 26767 (pos)
                    (not (at_d_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16188: <==commonly_known== 54763 (neg)
                    (Pd_checked_p10)

                    ; #29205: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #29790: <==commonly_known== 52597 (pos)
                    (Bb_checked_p10)

                    ; #37854: <==closure== 29205 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #45967: <==closure== 69672 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #46649: <==commonly_known== 52597 (pos)
                    (Bd_checked_p10)

                    ; #52597: origin
                    (checked_p10)

                    ; #56564: <==commonly_known== 52597 (pos)
                    (Bc_checked_p10)

                    ; #60856: <==commonly_known== 54763 (neg)
                    (Pc_checked_p10)

                    ; #69300: <==commonly_known== 54763 (neg)
                    (Pb_checked_p10)

                    ; #69672: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #81976: <==commonly_known== 54763 (neg)
                    (Pa_checked_p10)

                    ; #91049: <==commonly_known== 52597 (pos)
                    (Ba_checked_p10)

                    ; #28001: <==negation-removal== 69672 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #29531: <==uncertain_firing== 37854 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30316: <==negation-removal== 16188 (pos)
                    (not (Bd_not_checked_p10))

                    ; #32310: <==negation-removal== 91049 (pos)
                    (not (Pa_not_checked_p10))

                    ; #39705: <==negation-removal== 37854 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #41109: <==negation-removal== 29790 (pos)
                    (not (Pb_not_checked_p10))

                    ; #42321: <==uncertain_firing== 69672 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #46681: <==negation-removal== 45967 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #49458: <==uncertain_firing== 29205 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #54763: <==negation-removal== 52597 (pos)
                    (not (not_checked_p10))

                    ; #62768: <==negation-removal== 81976 (pos)
                    (not (Ba_not_checked_p10))

                    ; #69791: <==negation-removal== 56564 (pos)
                    (not (Pc_not_checked_p10))

                    ; #71861: <==negation-removal== 29205 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #79436: <==negation-removal== 69300 (pos)
                    (not (Bb_not_checked_p10))

                    ; #80298: <==negation-removal== 60856 (pos)
                    (not (Bc_not_checked_p10))

                    ; #87151: <==uncertain_firing== 45967 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #92013: <==negation-removal== 46649 (pos)
                    (not (Pd_not_checked_p10))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #10219: <==commonly_known== 95875 (neg)
                    (Pb_checked_p11)

                    ; #12675: <==commonly_known== 85650 (pos)
                    (Bb_checked_p11)

                    ; #22406: <==commonly_known== 85650 (pos)
                    (Bc_checked_p11)

                    ; #37371: <==commonly_known== 85650 (pos)
                    (Bd_checked_p11)

                    ; #69306: <==commonly_known== 95875 (neg)
                    (Pd_checked_p11)

                    ; #72229: <==commonly_known== 95875 (neg)
                    (Pa_checked_p11)

                    ; #75870: <==closure== 90216 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #78478: <==commonly_known== 85650 (pos)
                    (Ba_checked_p11)

                    ; #78583: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #85650: origin
                    (checked_p11)

                    ; #89104: <==commonly_known== 95875 (neg)
                    (Pc_checked_p11)

                    ; #89618: <==closure== 78583 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #90216: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #10410: <==uncertain_firing== 78583 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #15080: <==negation-removal== 12675 (pos)
                    (not (Pb_not_checked_p11))

                    ; #28086: <==negation-removal== 37371 (pos)
                    (not (Pd_not_checked_p11))

                    ; #30084: <==negation-removal== 10219 (pos)
                    (not (Bb_not_checked_p11))

                    ; #34134: <==negation-removal== 89104 (pos)
                    (not (Bc_not_checked_p11))

                    ; #48939: <==uncertain_firing== 89618 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #52609: <==negation-removal== 72229 (pos)
                    (not (Ba_not_checked_p11))

                    ; #59333: <==uncertain_firing== 75870 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #64718: <==negation-removal== 78583 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #66241: <==negation-removal== 69306 (pos)
                    (not (Bd_not_checked_p11))

                    ; #71230: <==negation-removal== 75870 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #73031: <==negation-removal== 89618 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #79038: <==uncertain_firing== 90216 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #85262: <==negation-removal== 78478 (pos)
                    (not (Pa_not_checked_p11))

                    ; #88142: <==negation-removal== 90216 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #90279: <==negation-removal== 22406 (pos)
                    (not (Pc_not_checked_p11))

                    ; #95875: <==negation-removal== 85650 (pos)
                    (not (not_checked_p11))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #16207: <==commonly_known== 69661 (neg)
                    (Pc_checked_p12)

                    ; #16938: <==commonly_known== 24532 (pos)
                    (Bb_checked_p12)

                    ; #19746: <==commonly_known== 69661 (neg)
                    (Pb_checked_p12)

                    ; #24532: origin
                    (checked_p12)

                    ; #28653: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #28938: <==commonly_known== 69661 (neg)
                    (Pa_checked_p12)

                    ; #33841: <==commonly_known== 24532 (pos)
                    (Bc_checked_p12)

                    ; #71609: <==commonly_known== 69661 (neg)
                    (Pd_checked_p12)

                    ; #72772: <==commonly_known== 24532 (pos)
                    (Ba_checked_p12)

                    ; #78387: <==commonly_known== 24532 (pos)
                    (Bd_checked_p12)

                    ; #84912: <==closure== 28653 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #88557: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #90034: <==closure== 88557 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #14229: <==negation-removal== 28653 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #15925: <==negation-removal== 28938 (pos)
                    (not (Ba_not_checked_p12))

                    ; #19345: <==negation-removal== 90034 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #44042: <==uncertain_firing== 90034 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #55590: <==uncertain_firing== 84912 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #56708: <==negation-removal== 33841 (pos)
                    (not (Pc_not_checked_p12))

                    ; #64673: <==uncertain_firing== 88557 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #66725: <==negation-removal== 16938 (pos)
                    (not (Pb_not_checked_p12))

                    ; #66833: <==negation-removal== 72772 (pos)
                    (not (Pa_not_checked_p12))

                    ; #68564: <==negation-removal== 88557 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #69661: <==negation-removal== 24532 (pos)
                    (not (not_checked_p12))

                    ; #75169: <==negation-removal== 16207 (pos)
                    (not (Bc_not_checked_p12))

                    ; #77140: <==negation-removal== 19746 (pos)
                    (not (Bb_not_checked_p12))

                    ; #77493: <==negation-removal== 71609 (pos)
                    (not (Bd_not_checked_p12))

                    ; #81128: <==negation-removal== 78387 (pos)
                    (not (Pd_not_checked_p12))

                    ; #84843: <==uncertain_firing== 28653 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #98876: <==negation-removal== 84912 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #10405: <==closure== 41313 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #18550: <==closure== 73086 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #41313: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #47250: <==commonly_known== 80195 (pos)
                    (Bc_checked_p1)

                    ; #49342: <==commonly_known== 80195 (pos)
                    (Bd_checked_p1)

                    ; #50492: <==commonly_known== 89887 (neg)
                    (Pa_checked_p1)

                    ; #67695: <==commonly_known== 89887 (neg)
                    (Pc_checked_p1)

                    ; #73086: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #80195: origin
                    (checked_p1)

                    ; #83767: <==commonly_known== 89887 (neg)
                    (Pb_checked_p1)

                    ; #87039: <==commonly_known== 89887 (neg)
                    (Pd_checked_p1)

                    ; #88143: <==commonly_known== 80195 (pos)
                    (Ba_checked_p1)

                    ; #89451: <==commonly_known== 80195 (pos)
                    (Bb_checked_p1)

                    ; #10492: <==uncertain_firing== 18550 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #16179: <==negation-removal== 87039 (pos)
                    (not (Bd_not_checked_p1))

                    ; #16891: <==negation-removal== 89451 (pos)
                    (not (Pb_not_checked_p1))

                    ; #24541: <==negation-removal== 88143 (pos)
                    (not (Pa_not_checked_p1))

                    ; #39194: <==negation-removal== 47250 (pos)
                    (not (Pc_not_checked_p1))

                    ; #50362: <==negation-removal== 10405 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #51773: <==uncertain_firing== 10405 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #54325: <==negation-removal== 83767 (pos)
                    (not (Bb_not_checked_p1))

                    ; #55567: <==negation-removal== 18550 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #56230: <==uncertain_firing== 73086 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #57681: <==negation-removal== 73086 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #72031: <==negation-removal== 50492 (pos)
                    (not (Ba_not_checked_p1))

                    ; #73795: <==negation-removal== 67695 (pos)
                    (not (Bc_not_checked_p1))

                    ; #75254: <==negation-removal== 41313 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #80951: <==uncertain_firing== 41313 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #85315: <==negation-removal== 49342 (pos)
                    (not (Pd_not_checked_p1))

                    ; #89887: <==negation-removal== 80195 (pos)
                    (not (not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12106: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #16260: origin
                    (checked_p2)

                    ; #31536: <==closure== 12106 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #39590: <==commonly_known== 16260 (pos)
                    (Bc_checked_p2)

                    ; #41623: <==commonly_known== 16260 (pos)
                    (Bb_checked_p2)

                    ; #42801: <==commonly_known== 83038 (neg)
                    (Pb_checked_p2)

                    ; #43723: <==commonly_known== 83038 (neg)
                    (Pc_checked_p2)

                    ; #44211: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #53361: <==commonly_known== 16260 (pos)
                    (Bd_checked_p2)

                    ; #61951: <==closure== 44211 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #61956: <==commonly_known== 16260 (pos)
                    (Ba_checked_p2)

                    ; #79956: <==commonly_known== 83038 (neg)
                    (Pd_checked_p2)

                    ; #87062: <==commonly_known== 83038 (neg)
                    (Pa_checked_p2)

                    ; #10445: <==negation-removal== 61951 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #11154: <==negation-removal== 61956 (pos)
                    (not (Pa_not_checked_p2))

                    ; #12547: <==negation-removal== 41623 (pos)
                    (not (Pb_not_checked_p2))

                    ; #15698: <==negation-removal== 87062 (pos)
                    (not (Ba_not_checked_p2))

                    ; #21878: <==negation-removal== 39590 (pos)
                    (not (Pc_not_checked_p2))

                    ; #25116: <==negation-removal== 42801 (pos)
                    (not (Bb_not_checked_p2))

                    ; #40709: <==uncertain_firing== 44211 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #59214: <==negation-removal== 53361 (pos)
                    (not (Pd_not_checked_p2))

                    ; #59821: <==negation-removal== 79956 (pos)
                    (not (Bd_not_checked_p2))

                    ; #60926: <==negation-removal== 44211 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #62639: <==uncertain_firing== 12106 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #66693: <==negation-removal== 43723 (pos)
                    (not (Bc_not_checked_p2))

                    ; #76176: <==uncertain_firing== 61951 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #78663: <==uncertain_firing== 31536 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #80078: <==negation-removal== 12106 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #83038: <==negation-removal== 16260 (pos)
                    (not (not_checked_p2))

                    ; #92196: <==negation-removal== 31536 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14675: <==commonly_known== 30143 (pos)
                    (Ba_checked_p3)

                    ; #26260: <==commonly_known== 72606 (neg)
                    (Pc_checked_p3)

                    ; #30143: origin
                    (checked_p3)

                    ; #36314: <==commonly_known== 72606 (neg)
                    (Pd_checked_p3)

                    ; #43996: <==commonly_known== 30143 (pos)
                    (Bd_checked_p3)

                    ; #45011: <==closure== 84270 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #52411: <==commonly_known== 72606 (neg)
                    (Pa_checked_p3)

                    ; #54950: <==commonly_known== 30143 (pos)
                    (Bb_checked_p3)

                    ; #57160: <==commonly_known== 30143 (pos)
                    (Bc_checked_p3)

                    ; #61187: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #68841: <==closure== 61187 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #72044: <==commonly_known== 72606 (neg)
                    (Pb_checked_p3)

                    ; #84270: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #20899: <==negation-removal== 26260 (pos)
                    (not (Bc_not_checked_p3))

                    ; #24764: <==negation-removal== 43996 (pos)
                    (not (Pd_not_checked_p3))

                    ; #25437: <==uncertain_firing== 61187 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #44666: <==negation-removal== 57160 (pos)
                    (not (Pc_not_checked_p3))

                    ; #45427: <==negation-removal== 84270 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #52623: <==negation-removal== 68841 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #54348: <==negation-removal== 72044 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56900: <==negation-removal== 14675 (pos)
                    (not (Pa_not_checked_p3))

                    ; #60026: <==uncertain_firing== 68841 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #65870: <==negation-removal== 61187 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #67967: <==negation-removal== 52411 (pos)
                    (not (Ba_not_checked_p3))

                    ; #71394: <==negation-removal== 36314 (pos)
                    (not (Bd_not_checked_p3))

                    ; #72033: <==uncertain_firing== 45011 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #72606: <==negation-removal== 30143 (pos)
                    (not (not_checked_p3))

                    ; #79605: <==negation-removal== 54950 (pos)
                    (not (Pb_not_checked_p3))

                    ; #81585: <==uncertain_firing== 84270 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #83705: <==negation-removal== 45011 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10590: <==commonly_known== 24450 (neg)
                    (Pb_checked_p4)

                    ; #23074: <==commonly_known== 24450 (neg)
                    (Pc_checked_p4)

                    ; #25293: <==commonly_known== 24450 (neg)
                    (Pd_checked_p4)

                    ; #33919: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #36113: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #43865: <==closure== 33919 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #44237: <==commonly_known== 24450 (neg)
                    (Pa_checked_p4)

                    ; #58744: origin
                    (checked_p4)

                    ; #64072: <==commonly_known== 58744 (pos)
                    (Ba_checked_p4)

                    ; #69619: <==closure== 36113 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #80583: <==commonly_known== 58744 (pos)
                    (Bd_checked_p4)

                    ; #83990: <==commonly_known== 58744 (pos)
                    (Bb_checked_p4)

                    ; #90912: <==commonly_known== 58744 (pos)
                    (Bc_checked_p4)

                    ; #18550: <==uncertain_firing== 33919 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #18974: <==negation-removal== 83990 (pos)
                    (not (Pb_not_checked_p4))

                    ; #22787: <==negation-removal== 69619 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #24450: <==negation-removal== 58744 (pos)
                    (not (not_checked_p4))

                    ; #26580: <==negation-removal== 25293 (pos)
                    (not (Bd_not_checked_p4))

                    ; #30526: <==negation-removal== 10590 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37580: <==negation-removal== 23074 (pos)
                    (not (Bc_not_checked_p4))

                    ; #44064: <==negation-removal== 44237 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45785: <==negation-removal== 64072 (pos)
                    (not (Pa_not_checked_p4))

                    ; #54984: <==negation-removal== 80583 (pos)
                    (not (Pd_not_checked_p4))

                    ; #62518: <==negation-removal== 33919 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #66804: <==uncertain_firing== 69619 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #68603: <==uncertain_firing== 43865 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #79577: <==negation-removal== 90912 (pos)
                    (not (Pc_not_checked_p4))

                    ; #83370: <==uncertain_firing== 36113 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #85637: <==negation-removal== 36113 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #87321: <==negation-removal== 43865 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #10904: <==commonly_known== 87421 (pos)
                    (Bd_checked_p5)

                    ; #11394: <==commonly_known== 30777 (neg)
                    (Pb_checked_p5)

                    ; #23672: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #31996: <==closure== 80423 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #41971: <==commonly_known== 30777 (neg)
                    (Pd_checked_p5)

                    ; #50357: <==commonly_known== 30777 (neg)
                    (Pa_checked_p5)

                    ; #53079: <==commonly_known== 87421 (pos)
                    (Ba_checked_p5)

                    ; #64460: <==commonly_known== 30777 (neg)
                    (Pc_checked_p5)

                    ; #66550: <==closure== 23672 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #71103: <==commonly_known== 87421 (pos)
                    (Bb_checked_p5)

                    ; #75246: <==commonly_known== 87421 (pos)
                    (Bc_checked_p5)

                    ; #80423: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #87421: origin
                    (checked_p5)

                    ; #11302: <==negation-removal== 11394 (pos)
                    (not (Bb_not_checked_p5))

                    ; #11906: <==negation-removal== 10904 (pos)
                    (not (Pd_not_checked_p5))

                    ; #25554: <==uncertain_firing== 31996 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #30777: <==negation-removal== 87421 (pos)
                    (not (not_checked_p5))

                    ; #33036: <==negation-removal== 23672 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #36536: <==negation-removal== 66550 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #40426: <==negation-removal== 41971 (pos)
                    (not (Bd_not_checked_p5))

                    ; #51701: <==uncertain_firing== 80423 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #56242: <==negation-removal== 31996 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #58290: <==negation-removal== 64460 (pos)
                    (not (Bc_not_checked_p5))

                    ; #59656: <==uncertain_firing== 23672 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #61419: <==uncertain_firing== 66550 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63680: <==negation-removal== 75246 (pos)
                    (not (Pc_not_checked_p5))

                    ; #66538: <==negation-removal== 53079 (pos)
                    (not (Pa_not_checked_p5))

                    ; #78078: <==negation-removal== 80423 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #79680: <==negation-removal== 50357 (pos)
                    (not (Ba_not_checked_p5))

                    ; #85744: <==negation-removal== 71103 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #30944: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #43918: <==commonly_known== 50958 (pos)
                    (Bd_checked_p6)

                    ; #45900: <==commonly_known== 45880 (neg)
                    (Pb_checked_p6)

                    ; #50958: origin
                    (checked_p6)

                    ; #61228: <==commonly_known== 45880 (neg)
                    (Pa_checked_p6)

                    ; #70044: <==closure== 87304 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #72924: <==commonly_known== 50958 (pos)
                    (Bc_checked_p6)

                    ; #77070: <==commonly_known== 45880 (neg)
                    (Pd_checked_p6)

                    ; #80222: <==commonly_known== 50958 (pos)
                    (Ba_checked_p6)

                    ; #80481: <==closure== 30944 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #81071: <==commonly_known== 45880 (neg)
                    (Pc_checked_p6)

                    ; #86694: <==commonly_known== 50958 (pos)
                    (Bb_checked_p6)

                    ; #87304: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #16790: <==uncertain_firing== 87304 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #17529: <==negation-removal== 86694 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34676: <==negation-removal== 43918 (pos)
                    (not (Pd_not_checked_p6))

                    ; #36156: <==negation-removal== 45900 (pos)
                    (not (Bb_not_checked_p6))

                    ; #43257: <==negation-removal== 77070 (pos)
                    (not (Bd_not_checked_p6))

                    ; #45880: <==negation-removal== 50958 (pos)
                    (not (not_checked_p6))

                    ; #52579: <==negation-removal== 87304 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #57269: <==negation-removal== 30944 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #60794: <==negation-removal== 72924 (pos)
                    (not (Pc_not_checked_p6))

                    ; #61293: <==uncertain_firing== 80481 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #68392: <==negation-removal== 80481 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #72418: <==negation-removal== 81071 (pos)
                    (not (Bc_not_checked_p6))

                    ; #83714: <==negation-removal== 70044 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #85265: <==negation-removal== 61228 (pos)
                    (not (Ba_not_checked_p6))

                    ; #86134: <==uncertain_firing== 30944 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #88568: <==negation-removal== 80222 (pos)
                    (not (Pa_not_checked_p6))

                    ; #88906: <==uncertain_firing== 70044 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #19882: <==commonly_known== 82793 (pos)
                    (Bc_checked_p7)

                    ; #24551: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #24831: <==commonly_known== 80236 (neg)
                    (Pb_checked_p7)

                    ; #29506: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #32999: <==commonly_known== 80236 (neg)
                    (Pd_checked_p7)

                    ; #45111: <==commonly_known== 82793 (pos)
                    (Bd_checked_p7)

                    ; #49109: <==commonly_known== 82793 (pos)
                    (Bb_checked_p7)

                    ; #52432: <==commonly_known== 80236 (neg)
                    (Pa_checked_p7)

                    ; #52537: <==closure== 24551 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #64878: <==commonly_known== 82793 (pos)
                    (Ba_checked_p7)

                    ; #82793: origin
                    (checked_p7)

                    ; #84829: <==commonly_known== 80236 (neg)
                    (Pc_checked_p7)

                    ; #87203: <==closure== 29506 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #28382: <==negation-removal== 87203 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #28683: <==negation-removal== 84829 (pos)
                    (not (Bc_not_checked_p7))

                    ; #29759: <==negation-removal== 29506 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #31146: <==negation-removal== 52537 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #42815: <==negation-removal== 52432 (pos)
                    (not (Ba_not_checked_p7))

                    ; #43015: <==negation-removal== 64878 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46549: <==negation-removal== 45111 (pos)
                    (not (Pd_not_checked_p7))

                    ; #47739: <==uncertain_firing== 87203 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #59770: <==uncertain_firing== 52537 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #69753: <==negation-removal== 32999 (pos)
                    (not (Bd_not_checked_p7))

                    ; #69769: <==uncertain_firing== 24551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #75985: <==negation-removal== 19882 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80236: <==negation-removal== 82793 (pos)
                    (not (not_checked_p7))

                    ; #84494: <==negation-removal== 49109 (pos)
                    (not (Pb_not_checked_p7))

                    ; #84764: <==uncertain_firing== 29506 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #87971: <==negation-removal== 24831 (pos)
                    (not (Bb_not_checked_p7))

                    ; #88611: <==negation-removal== 24551 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #10971: <==commonly_known== 22886 (pos)
                    (Bc_checked_p8)

                    ; #22886: origin
                    (checked_p8)

                    ; #24755: <==commonly_known== 22886 (pos)
                    (Bb_checked_p8)

                    ; #37190: <==closure== 86704 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #37329: <==commonly_known== 30036 (neg)
                    (Pd_checked_p8)

                    ; #38942: <==commonly_known== 30036 (neg)
                    (Pb_checked_p8)

                    ; #44732: <==closure== 58886 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #50191: <==commonly_known== 22886 (pos)
                    (Bd_checked_p8)

                    ; #58886: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #64380: <==commonly_known== 22886 (pos)
                    (Ba_checked_p8)

                    ; #77790: <==commonly_known== 30036 (neg)
                    (Pc_checked_p8)

                    ; #85603: <==commonly_known== 30036 (neg)
                    (Pa_checked_p8)

                    ; #86704: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #12158: <==negation-removal== 50191 (pos)
                    (not (Pd_not_checked_p8))

                    ; #12292: <==uncertain_firing== 58886 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19552: <==negation-removal== 86704 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #20311: <==negation-removal== 64380 (pos)
                    (not (Pa_not_checked_p8))

                    ; #27386: <==negation-removal== 44732 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #30036: <==negation-removal== 22886 (pos)
                    (not (not_checked_p8))

                    ; #31295: <==negation-removal== 58886 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #37968: <==negation-removal== 85603 (pos)
                    (not (Ba_not_checked_p8))

                    ; #40438: <==uncertain_firing== 86704 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #41878: <==uncertain_firing== 37190 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #48833: <==negation-removal== 77790 (pos)
                    (not (Bc_not_checked_p8))

                    ; #49584: <==negation-removal== 24755 (pos)
                    (not (Pb_not_checked_p8))

                    ; #51471: <==negation-removal== 37329 (pos)
                    (not (Bd_not_checked_p8))

                    ; #51967: <==negation-removal== 10971 (pos)
                    (not (Pc_not_checked_p8))

                    ; #57092: <==negation-removal== 37190 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #65584: <==uncertain_firing== 44732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #86184: <==negation-removal== 38942 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #21007: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #22148: <==commonly_known== 67724 (pos)
                    (Bc_checked_p9)

                    ; #23037: <==commonly_known== 29044 (neg)
                    (Pd_checked_p9)

                    ; #25761: <==commonly_known== 67724 (pos)
                    (Bb_checked_p9)

                    ; #34062: <==commonly_known== 29044 (neg)
                    (Pb_checked_p9)

                    ; #38323: <==commonly_known== 67724 (pos)
                    (Ba_checked_p9)

                    ; #39927: <==closure== 80161 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #41797: <==commonly_known== 29044 (neg)
                    (Pa_checked_p9)

                    ; #67724: origin
                    (checked_p9)

                    ; #77230: <==commonly_known== 29044 (neg)
                    (Pc_checked_p9)

                    ; #79388: <==closure== 21007 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #80161: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #83857: <==commonly_known== 67724 (pos)
                    (Bd_checked_p9)

                    ; #13629: <==negation-removal== 38323 (pos)
                    (not (Pa_not_checked_p9))

                    ; #15719: <==uncertain_firing== 21007 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #21039: <==uncertain_firing== 79388 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #25182: <==uncertain_firing== 80161 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #28357: <==negation-removal== 34062 (pos)
                    (not (Bb_not_checked_p9))

                    ; #29044: <==negation-removal== 67724 (pos)
                    (not (not_checked_p9))

                    ; #33336: <==uncertain_firing== 39927 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #38207: <==negation-removal== 23037 (pos)
                    (not (Bd_not_checked_p9))

                    ; #41678: <==negation-removal== 77230 (pos)
                    (not (Bc_not_checked_p9))

                    ; #41919: <==negation-removal== 80161 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #43448: <==negation-removal== 41797 (pos)
                    (not (Ba_not_checked_p9))

                    ; #44305: <==negation-removal== 39927 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #67107: <==negation-removal== 79388 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #72584: <==negation-removal== 83857 (pos)
                    (not (Pd_not_checked_p9))

                    ; #82792: <==negation-removal== 21007 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #85614: <==negation-removal== 22148 (pos)
                    (not (Pc_not_checked_p9))

                    ; #89468: <==negation-removal== 25761 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #14947: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #16188: <==commonly_known== 54763 (neg)
                    (Pd_checked_p10)

                    ; #29790: <==commonly_known== 52597 (pos)
                    (Bb_checked_p10)

                    ; #46649: <==commonly_known== 52597 (pos)
                    (Bd_checked_p10)

                    ; #52597: origin
                    (checked_p10)

                    ; #56564: <==commonly_known== 52597 (pos)
                    (Bc_checked_p10)

                    ; #60856: <==commonly_known== 54763 (neg)
                    (Pc_checked_p10)

                    ; #69300: <==commonly_known== 54763 (neg)
                    (Pb_checked_p10)

                    ; #72554: <==closure== 91788 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #78065: <==closure== 14947 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #81976: <==commonly_known== 54763 (neg)
                    (Pa_checked_p10)

                    ; #91049: <==commonly_known== 52597 (pos)
                    (Ba_checked_p10)

                    ; #91788: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #13760: <==uncertain_firing== 14947 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #14689: <==negation-removal== 14947 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #21058: <==negation-removal== 91788 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #30009: <==negation-removal== 78065 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #30316: <==negation-removal== 16188 (pos)
                    (not (Bd_not_checked_p10))

                    ; #32310: <==negation-removal== 91049 (pos)
                    (not (Pa_not_checked_p10))

                    ; #40572: <==uncertain_firing== 91788 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #41109: <==negation-removal== 29790 (pos)
                    (not (Pb_not_checked_p10))

                    ; #54060: <==uncertain_firing== 72554 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #54763: <==negation-removal== 52597 (pos)
                    (not (not_checked_p10))

                    ; #55680: <==uncertain_firing== 78065 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #62768: <==negation-removal== 81976 (pos)
                    (not (Ba_not_checked_p10))

                    ; #69791: <==negation-removal== 56564 (pos)
                    (not (Pc_not_checked_p10))

                    ; #79436: <==negation-removal== 69300 (pos)
                    (not (Bb_not_checked_p10))

                    ; #80298: <==negation-removal== 60856 (pos)
                    (not (Bc_not_checked_p10))

                    ; #84825: <==negation-removal== 72554 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #92013: <==negation-removal== 46649 (pos)
                    (not (Pd_not_checked_p10))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #10219: <==commonly_known== 95875 (neg)
                    (Pb_checked_p11)

                    ; #12675: <==commonly_known== 85650 (pos)
                    (Bb_checked_p11)

                    ; #13416: <==closure== 44846 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #22406: <==commonly_known== 85650 (pos)
                    (Bc_checked_p11)

                    ; #24846: <==closure== 46726 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #37371: <==commonly_known== 85650 (pos)
                    (Bd_checked_p11)

                    ; #44846: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #46726: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #69306: <==commonly_known== 95875 (neg)
                    (Pd_checked_p11)

                    ; #72229: <==commonly_known== 95875 (neg)
                    (Pa_checked_p11)

                    ; #78478: <==commonly_known== 85650 (pos)
                    (Ba_checked_p11)

                    ; #85650: origin
                    (checked_p11)

                    ; #89104: <==commonly_known== 95875 (neg)
                    (Pc_checked_p11)

                    ; #14546: <==uncertain_firing== 46726 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #15080: <==negation-removal== 12675 (pos)
                    (not (Pb_not_checked_p11))

                    ; #28086: <==negation-removal== 37371 (pos)
                    (not (Pd_not_checked_p11))

                    ; #30084: <==negation-removal== 10219 (pos)
                    (not (Bb_not_checked_p11))

                    ; #34134: <==negation-removal== 89104 (pos)
                    (not (Bc_not_checked_p11))

                    ; #38065: <==uncertain_firing== 44846 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #51045: <==uncertain_firing== 13416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #52609: <==negation-removal== 72229 (pos)
                    (not (Ba_not_checked_p11))

                    ; #63649: <==uncertain_firing== 24846 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #66241: <==negation-removal== 69306 (pos)
                    (not (Bd_not_checked_p11))

                    ; #68811: <==negation-removal== 46726 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #81561: <==negation-removal== 24846 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #85262: <==negation-removal== 78478 (pos)
                    (not (Pa_not_checked_p11))

                    ; #85406: <==negation-removal== 13416 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #90275: <==negation-removal== 44846 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #90279: <==negation-removal== 22406 (pos)
                    (not (Pc_not_checked_p11))

                    ; #95875: <==negation-removal== 85650 (pos)
                    (not (not_checked_p11))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #16207: <==commonly_known== 69661 (neg)
                    (Pc_checked_p12)

                    ; #16938: <==commonly_known== 24532 (pos)
                    (Bb_checked_p12)

                    ; #19746: <==commonly_known== 69661 (neg)
                    (Pb_checked_p12)

                    ; #24532: origin
                    (checked_p12)

                    ; #26986: <==closure== 44530 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #28938: <==commonly_known== 69661 (neg)
                    (Pa_checked_p12)

                    ; #32934: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #33841: <==commonly_known== 24532 (pos)
                    (Bc_checked_p12)

                    ; #44530: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #67319: <==closure== 32934 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #71609: <==commonly_known== 69661 (neg)
                    (Pd_checked_p12)

                    ; #72772: <==commonly_known== 24532 (pos)
                    (Ba_checked_p12)

                    ; #78387: <==commonly_known== 24532 (pos)
                    (Bd_checked_p12)

                    ; #13319: <==uncertain_firing== 32934 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #15925: <==negation-removal== 28938 (pos)
                    (not (Ba_not_checked_p12))

                    ; #16553: <==negation-removal== 67319 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #39774: <==negation-removal== 26986 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #44571: <==uncertain_firing== 67319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #56708: <==negation-removal== 33841 (pos)
                    (not (Pc_not_checked_p12))

                    ; #66725: <==negation-removal== 16938 (pos)
                    (not (Pb_not_checked_p12))

                    ; #66833: <==negation-removal== 72772 (pos)
                    (not (Pa_not_checked_p12))

                    ; #68544: <==uncertain_firing== 26986 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #69661: <==negation-removal== 24532 (pos)
                    (not (not_checked_p12))

                    ; #71286: <==uncertain_firing== 44530 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #75169: <==negation-removal== 16207 (pos)
                    (not (Bc_not_checked_p12))

                    ; #77140: <==negation-removal== 19746 (pos)
                    (not (Bb_not_checked_p12))

                    ; #77493: <==negation-removal== 71609 (pos)
                    (not (Bd_not_checked_p12))

                    ; #81128: <==negation-removal== 78387 (pos)
                    (not (Pd_not_checked_p12))

                    ; #89021: <==negation-removal== 44530 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #90399: <==negation-removal== 32934 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #21098: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #33219: <==closure== 86876 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #47250: <==commonly_known== 80195 (pos)
                    (Bc_checked_p1)

                    ; #49342: <==commonly_known== 80195 (pos)
                    (Bd_checked_p1)

                    ; #50492: <==commonly_known== 89887 (neg)
                    (Pa_checked_p1)

                    ; #67695: <==commonly_known== 89887 (neg)
                    (Pc_checked_p1)

                    ; #80195: origin
                    (checked_p1)

                    ; #80702: <==closure== 21098 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #83767: <==commonly_known== 89887 (neg)
                    (Pb_checked_p1)

                    ; #86876: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #87039: <==commonly_known== 89887 (neg)
                    (Pd_checked_p1)

                    ; #88143: <==commonly_known== 80195 (pos)
                    (Ba_checked_p1)

                    ; #89451: <==commonly_known== 80195 (pos)
                    (Bb_checked_p1)

                    ; #12881: <==uncertain_firing== 86876 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #14358: <==uncertain_firing== 80702 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #16179: <==negation-removal== 87039 (pos)
                    (not (Bd_not_checked_p1))

                    ; #16891: <==negation-removal== 89451 (pos)
                    (not (Pb_not_checked_p1))

                    ; #24541: <==negation-removal== 88143 (pos)
                    (not (Pa_not_checked_p1))

                    ; #39194: <==negation-removal== 47250 (pos)
                    (not (Pc_not_checked_p1))

                    ; #47840: <==uncertain_firing== 33219 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #48042: <==negation-removal== 33219 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #54325: <==negation-removal== 83767 (pos)
                    (not (Bb_not_checked_p1))

                    ; #55400: <==uncertain_firing== 21098 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #72031: <==negation-removal== 50492 (pos)
                    (not (Ba_not_checked_p1))

                    ; #73795: <==negation-removal== 67695 (pos)
                    (not (Bc_not_checked_p1))

                    ; #74678: <==negation-removal== 80702 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #85315: <==negation-removal== 49342 (pos)
                    (not (Pd_not_checked_p1))

                    ; #89175: <==negation-removal== 21098 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #89887: <==negation-removal== 80195 (pos)
                    (not (not_checked_p1))

                    ; #90661: <==negation-removal== 86876 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #16260: origin
                    (checked_p2)

                    ; #39590: <==commonly_known== 16260 (pos)
                    (Bc_checked_p2)

                    ; #41623: <==commonly_known== 16260 (pos)
                    (Bb_checked_p2)

                    ; #42801: <==commonly_known== 83038 (neg)
                    (Pb_checked_p2)

                    ; #43723: <==commonly_known== 83038 (neg)
                    (Pc_checked_p2)

                    ; #53361: <==commonly_known== 16260 (pos)
                    (Bd_checked_p2)

                    ; #56394: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #60517: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #61956: <==commonly_known== 16260 (pos)
                    (Ba_checked_p2)

                    ; #73328: <==closure== 60517 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #77759: <==closure== 56394 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #79956: <==commonly_known== 83038 (neg)
                    (Pd_checked_p2)

                    ; #87062: <==commonly_known== 83038 (neg)
                    (Pa_checked_p2)

                    ; #11154: <==negation-removal== 61956 (pos)
                    (not (Pa_not_checked_p2))

                    ; #12547: <==negation-removal== 41623 (pos)
                    (not (Pb_not_checked_p2))

                    ; #15698: <==negation-removal== 87062 (pos)
                    (not (Ba_not_checked_p2))

                    ; #17135: <==uncertain_firing== 56394 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #21878: <==negation-removal== 39590 (pos)
                    (not (Pc_not_checked_p2))

                    ; #22152: <==negation-removal== 73328 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #24709: <==uncertain_firing== 73328 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #25116: <==negation-removal== 42801 (pos)
                    (not (Bb_not_checked_p2))

                    ; #30922: <==negation-removal== 60517 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #35050: <==negation-removal== 56394 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #59214: <==negation-removal== 53361 (pos)
                    (not (Pd_not_checked_p2))

                    ; #59821: <==negation-removal== 79956 (pos)
                    (not (Bd_not_checked_p2))

                    ; #63123: <==uncertain_firing== 77759 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #66693: <==negation-removal== 43723 (pos)
                    (not (Bc_not_checked_p2))

                    ; #67659: <==negation-removal== 77759 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #83038: <==negation-removal== 16260 (pos)
                    (not (not_checked_p2))

                    ; #86349: <==uncertain_firing== 60517 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14675: <==commonly_known== 30143 (pos)
                    (Ba_checked_p3)

                    ; #26260: <==commonly_known== 72606 (neg)
                    (Pc_checked_p3)

                    ; #30143: origin
                    (checked_p3)

                    ; #34914: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #36314: <==commonly_known== 72606 (neg)
                    (Pd_checked_p3)

                    ; #43996: <==commonly_known== 30143 (pos)
                    (Bd_checked_p3)

                    ; #51406: <==closure== 34914 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #52260: <==closure== 89010 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #52411: <==commonly_known== 72606 (neg)
                    (Pa_checked_p3)

                    ; #54950: <==commonly_known== 30143 (pos)
                    (Bb_checked_p3)

                    ; #57160: <==commonly_known== 30143 (pos)
                    (Bc_checked_p3)

                    ; #72044: <==commonly_known== 72606 (neg)
                    (Pb_checked_p3)

                    ; #89010: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #19423: <==uncertain_firing== 34914 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #20899: <==negation-removal== 26260 (pos)
                    (not (Bc_not_checked_p3))

                    ; #24764: <==negation-removal== 43996 (pos)
                    (not (Pd_not_checked_p3))

                    ; #28584: <==uncertain_firing== 51406 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #44666: <==negation-removal== 57160 (pos)
                    (not (Pc_not_checked_p3))

                    ; #46541: <==uncertain_firing== 52260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #54348: <==negation-removal== 72044 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56900: <==negation-removal== 14675 (pos)
                    (not (Pa_not_checked_p3))

                    ; #57300: <==negation-removal== 51406 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #67967: <==negation-removal== 52411 (pos)
                    (not (Ba_not_checked_p3))

                    ; #71394: <==negation-removal== 36314 (pos)
                    (not (Bd_not_checked_p3))

                    ; #72606: <==negation-removal== 30143 (pos)
                    (not (not_checked_p3))

                    ; #76539: <==negation-removal== 52260 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #79605: <==negation-removal== 54950 (pos)
                    (not (Pb_not_checked_p3))

                    ; #82787: <==uncertain_firing== 89010 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #82977: <==negation-removal== 34914 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #88598: <==negation-removal== 89010 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #10590: <==commonly_known== 24450 (neg)
                    (Pb_checked_p4)

                    ; #22086: <==closure== 65228 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #23074: <==commonly_known== 24450 (neg)
                    (Pc_checked_p4)

                    ; #25293: <==commonly_known== 24450 (neg)
                    (Pd_checked_p4)

                    ; #27171: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #31501: <==closure== 27171 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #44237: <==commonly_known== 24450 (neg)
                    (Pa_checked_p4)

                    ; #58744: origin
                    (checked_p4)

                    ; #64072: <==commonly_known== 58744 (pos)
                    (Ba_checked_p4)

                    ; #65228: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #80583: <==commonly_known== 58744 (pos)
                    (Bd_checked_p4)

                    ; #83990: <==commonly_known== 58744 (pos)
                    (Bb_checked_p4)

                    ; #90912: <==commonly_known== 58744 (pos)
                    (Bc_checked_p4)

                    ; #10870: <==uncertain_firing== 65228 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #18974: <==negation-removal== 83990 (pos)
                    (not (Pb_not_checked_p4))

                    ; #24450: <==negation-removal== 58744 (pos)
                    (not (not_checked_p4))

                    ; #24620: <==negation-removal== 65228 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #26580: <==negation-removal== 25293 (pos)
                    (not (Bd_not_checked_p4))

                    ; #30526: <==negation-removal== 10590 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37580: <==negation-removal== 23074 (pos)
                    (not (Bc_not_checked_p4))

                    ; #44039: <==uncertain_firing== 27171 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #44064: <==negation-removal== 44237 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45785: <==negation-removal== 64072 (pos)
                    (not (Pa_not_checked_p4))

                    ; #45839: <==uncertain_firing== 22086 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #54984: <==negation-removal== 80583 (pos)
                    (not (Pd_not_checked_p4))

                    ; #61384: <==negation-removal== 31501 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #79577: <==negation-removal== 90912 (pos)
                    (not (Pc_not_checked_p4))

                    ; #82934: <==uncertain_firing== 31501 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #86174: <==negation-removal== 22086 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #89126: <==negation-removal== 27171 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #10904: <==commonly_known== 87421 (pos)
                    (Bd_checked_p5)

                    ; #11394: <==commonly_known== 30777 (neg)
                    (Pb_checked_p5)

                    ; #41971: <==commonly_known== 30777 (neg)
                    (Pd_checked_p5)

                    ; #43089: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #50357: <==commonly_known== 30777 (neg)
                    (Pa_checked_p5)

                    ; #53079: <==commonly_known== 87421 (pos)
                    (Ba_checked_p5)

                    ; #62137: <==closure== 43089 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #64460: <==commonly_known== 30777 (neg)
                    (Pc_checked_p5)

                    ; #71103: <==commonly_known== 87421 (pos)
                    (Bb_checked_p5)

                    ; #71710: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #75246: <==commonly_known== 87421 (pos)
                    (Bc_checked_p5)

                    ; #86149: <==closure== 71710 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #87421: origin
                    (checked_p5)

                    ; #11302: <==negation-removal== 11394 (pos)
                    (not (Bb_not_checked_p5))

                    ; #11906: <==negation-removal== 10904 (pos)
                    (not (Pd_not_checked_p5))

                    ; #18554: <==uncertain_firing== 86149 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #23630: <==negation-removal== 43089 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #30777: <==negation-removal== 87421 (pos)
                    (not (not_checked_p5))

                    ; #35896: <==negation-removal== 62137 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #40426: <==negation-removal== 41971 (pos)
                    (not (Bd_not_checked_p5))

                    ; #43045: <==uncertain_firing== 71710 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #57529: <==uncertain_firing== 43089 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #58290: <==negation-removal== 64460 (pos)
                    (not (Bc_not_checked_p5))

                    ; #61183: <==negation-removal== 86149 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #62563: <==uncertain_firing== 62137 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #63680: <==negation-removal== 75246 (pos)
                    (not (Pc_not_checked_p5))

                    ; #66538: <==negation-removal== 53079 (pos)
                    (not (Pa_not_checked_p5))

                    ; #79680: <==negation-removal== 50357 (pos)
                    (not (Ba_not_checked_p5))

                    ; #83250: <==negation-removal== 71710 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #85744: <==negation-removal== 71103 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12933: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #43918: <==commonly_known== 50958 (pos)
                    (Bd_checked_p6)

                    ; #45900: <==commonly_known== 45880 (neg)
                    (Pb_checked_p6)

                    ; #46472: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #50958: origin
                    (checked_p6)

                    ; #61228: <==commonly_known== 45880 (neg)
                    (Pa_checked_p6)

                    ; #63430: <==closure== 12933 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #72924: <==commonly_known== 50958 (pos)
                    (Bc_checked_p6)

                    ; #77070: <==commonly_known== 45880 (neg)
                    (Pd_checked_p6)

                    ; #80222: <==commonly_known== 50958 (pos)
                    (Ba_checked_p6)

                    ; #81071: <==commonly_known== 45880 (neg)
                    (Pc_checked_p6)

                    ; #86694: <==commonly_known== 50958 (pos)
                    (Bb_checked_p6)

                    ; #91543: <==closure== 46472 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #12343: <==uncertain_firing== 46472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #17529: <==negation-removal== 86694 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34676: <==negation-removal== 43918 (pos)
                    (not (Pd_not_checked_p6))

                    ; #36156: <==negation-removal== 45900 (pos)
                    (not (Bb_not_checked_p6))

                    ; #43257: <==negation-removal== 77070 (pos)
                    (not (Bd_not_checked_p6))

                    ; #45880: <==negation-removal== 50958 (pos)
                    (not (not_checked_p6))

                    ; #52816: <==uncertain_firing== 63430 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #60794: <==negation-removal== 72924 (pos)
                    (not (Pc_not_checked_p6))

                    ; #62577: <==uncertain_firing== 12933 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #67514: <==negation-removal== 91543 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #70813: <==uncertain_firing== 91543 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #72418: <==negation-removal== 81071 (pos)
                    (not (Bc_not_checked_p6))

                    ; #85265: <==negation-removal== 61228 (pos)
                    (not (Ba_not_checked_p6))

                    ; #85565: <==negation-removal== 12933 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #88568: <==negation-removal== 80222 (pos)
                    (not (Pa_not_checked_p6))

                    ; #90055: <==negation-removal== 63430 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #91162: <==negation-removal== 46472 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #19882: <==commonly_known== 82793 (pos)
                    (Bc_checked_p7)

                    ; #24831: <==commonly_known== 80236 (neg)
                    (Pb_checked_p7)

                    ; #32999: <==commonly_known== 80236 (neg)
                    (Pd_checked_p7)

                    ; #45111: <==commonly_known== 82793 (pos)
                    (Bd_checked_p7)

                    ; #45182: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #49109: <==commonly_known== 82793 (pos)
                    (Bb_checked_p7)

                    ; #52432: <==commonly_known== 80236 (neg)
                    (Pa_checked_p7)

                    ; #64878: <==commonly_known== 82793 (pos)
                    (Ba_checked_p7)

                    ; #66221: <==closure== 80315 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #70217: <==closure== 45182 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #80315: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #82793: origin
                    (checked_p7)

                    ; #84829: <==commonly_known== 80236 (neg)
                    (Pc_checked_p7)

                    ; #14347: <==negation-removal== 66221 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #16912: <==uncertain_firing== 45182 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #22282: <==uncertain_firing== 66221 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #28683: <==negation-removal== 84829 (pos)
                    (not (Bc_not_checked_p7))

                    ; #39747: <==negation-removal== 80315 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #42815: <==negation-removal== 52432 (pos)
                    (not (Ba_not_checked_p7))

                    ; #43015: <==negation-removal== 64878 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46549: <==negation-removal== 45111 (pos)
                    (not (Pd_not_checked_p7))

                    ; #50992: <==negation-removal== 45182 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #68576: <==uncertain_firing== 70217 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #69753: <==negation-removal== 32999 (pos)
                    (not (Bd_not_checked_p7))

                    ; #75985: <==negation-removal== 19882 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80236: <==negation-removal== 82793 (pos)
                    (not (not_checked_p7))

                    ; #81701: <==negation-removal== 70217 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #83399: <==uncertain_firing== 80315 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #84494: <==negation-removal== 49109 (pos)
                    (not (Pb_not_checked_p7))

                    ; #87971: <==negation-removal== 24831 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #10971: <==commonly_known== 22886 (pos)
                    (Bc_checked_p8)

                    ; #11356: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #22886: origin
                    (checked_p8)

                    ; #24755: <==commonly_known== 22886 (pos)
                    (Bb_checked_p8)

                    ; #32303: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #37329: <==commonly_known== 30036 (neg)
                    (Pd_checked_p8)

                    ; #38942: <==commonly_known== 30036 (neg)
                    (Pb_checked_p8)

                    ; #50191: <==commonly_known== 22886 (pos)
                    (Bd_checked_p8)

                    ; #50529: <==closure== 11356 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #54285: <==closure== 32303 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #64380: <==commonly_known== 22886 (pos)
                    (Ba_checked_p8)

                    ; #77790: <==commonly_known== 30036 (neg)
                    (Pc_checked_p8)

                    ; #85603: <==commonly_known== 30036 (neg)
                    (Pa_checked_p8)

                    ; #12158: <==negation-removal== 50191 (pos)
                    (not (Pd_not_checked_p8))

                    ; #15753: <==uncertain_firing== 11356 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #20311: <==negation-removal== 64380 (pos)
                    (not (Pa_not_checked_p8))

                    ; #25868: <==uncertain_firing== 32303 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #28690: <==negation-removal== 11356 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #30036: <==negation-removal== 22886 (pos)
                    (not (not_checked_p8))

                    ; #37968: <==negation-removal== 85603 (pos)
                    (not (Ba_not_checked_p8))

                    ; #47598: <==negation-removal== 32303 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48833: <==negation-removal== 77790 (pos)
                    (not (Bc_not_checked_p8))

                    ; #49584: <==negation-removal== 24755 (pos)
                    (not (Pb_not_checked_p8))

                    ; #51471: <==negation-removal== 37329 (pos)
                    (not (Bd_not_checked_p8))

                    ; #51967: <==negation-removal== 10971 (pos)
                    (not (Pc_not_checked_p8))

                    ; #56629: <==uncertain_firing== 50529 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #67752: <==uncertain_firing== 54285 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #74937: <==negation-removal== 54285 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #86184: <==negation-removal== 38942 (pos)
                    (not (Bb_not_checked_p8))

                    ; #89581: <==negation-removal== 50529 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #22148: <==commonly_known== 67724 (pos)
                    (Bc_checked_p9)

                    ; #23037: <==commonly_known== 29044 (neg)
                    (Pd_checked_p9)

                    ; #25761: <==commonly_known== 67724 (pos)
                    (Bb_checked_p9)

                    ; #34062: <==commonly_known== 29044 (neg)
                    (Pb_checked_p9)

                    ; #38323: <==commonly_known== 67724 (pos)
                    (Ba_checked_p9)

                    ; #39857: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #41797: <==commonly_known== 29044 (neg)
                    (Pa_checked_p9)

                    ; #61708: <==closure== 91315 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #67724: origin
                    (checked_p9)

                    ; #77230: <==commonly_known== 29044 (neg)
                    (Pc_checked_p9)

                    ; #83857: <==commonly_known== 67724 (pos)
                    (Bd_checked_p9)

                    ; #89090: <==closure== 39857 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #91315: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #13629: <==negation-removal== 38323 (pos)
                    (not (Pa_not_checked_p9))

                    ; #16193: <==negation-removal== 89090 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #27228: <==uncertain_firing== 91315 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #28357: <==negation-removal== 34062 (pos)
                    (not (Bb_not_checked_p9))

                    ; #29044: <==negation-removal== 67724 (pos)
                    (not (not_checked_p9))

                    ; #38207: <==negation-removal== 23037 (pos)
                    (not (Bd_not_checked_p9))

                    ; #41678: <==negation-removal== 77230 (pos)
                    (not (Bc_not_checked_p9))

                    ; #41732: <==uncertain_firing== 61708 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #43448: <==negation-removal== 41797 (pos)
                    (not (Ba_not_checked_p9))

                    ; #60590: <==negation-removal== 91315 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #61554: <==negation-removal== 61708 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #64236: <==uncertain_firing== 89090 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #72584: <==negation-removal== 83857 (pos)
                    (not (Pd_not_checked_p9))

                    ; #73693: <==negation-removal== 39857 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #82491: <==uncertain_firing== 39857 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #85614: <==negation-removal== 22148 (pos)
                    (not (Pc_not_checked_p9))

                    ; #89468: <==negation-removal== 25761 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16188: <==commonly_known== 54763 (neg)
                    (Pd_checked_p10)

                    ; #17405: <==closure== 48207 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #29790: <==commonly_known== 52597 (pos)
                    (Bb_checked_p10)

                    ; #46649: <==commonly_known== 52597 (pos)
                    (Bd_checked_p10)

                    ; #48207: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #52597: origin
                    (checked_p10)

                    ; #53361: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #56564: <==commonly_known== 52597 (pos)
                    (Bc_checked_p10)

                    ; #60856: <==commonly_known== 54763 (neg)
                    (Pc_checked_p10)

                    ; #69300: <==commonly_known== 54763 (neg)
                    (Pb_checked_p10)

                    ; #71928: <==closure== 53361 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #81976: <==commonly_known== 54763 (neg)
                    (Pa_checked_p10)

                    ; #91049: <==commonly_known== 52597 (pos)
                    (Ba_checked_p10)

                    ; #23869: <==uncertain_firing== 71928 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #30316: <==negation-removal== 16188 (pos)
                    (not (Bd_not_checked_p10))

                    ; #32310: <==negation-removal== 91049 (pos)
                    (not (Pa_not_checked_p10))

                    ; #41109: <==negation-removal== 29790 (pos)
                    (not (Pb_not_checked_p10))

                    ; #49296: <==uncertain_firing== 17405 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #51467: <==negation-removal== 17405 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #52428: <==negation-removal== 48207 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #54763: <==negation-removal== 52597 (pos)
                    (not (not_checked_p10))

                    ; #62768: <==negation-removal== 81976 (pos)
                    (not (Ba_not_checked_p10))

                    ; #65522: <==negation-removal== 53361 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #69044: <==negation-removal== 71928 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #69791: <==negation-removal== 56564 (pos)
                    (not (Pc_not_checked_p10))

                    ; #73975: <==uncertain_firing== 53361 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #77282: <==uncertain_firing== 48207 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #79436: <==negation-removal== 69300 (pos)
                    (not (Bb_not_checked_p10))

                    ; #80298: <==negation-removal== 60856 (pos)
                    (not (Bc_not_checked_p10))

                    ; #92013: <==negation-removal== 46649 (pos)
                    (not (Pd_not_checked_p10))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10219: <==commonly_known== 95875 (neg)
                    (Pb_checked_p11)

                    ; #12675: <==commonly_known== 85650 (pos)
                    (Bb_checked_p11)

                    ; #17205: <==closure== 74392 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #22406: <==commonly_known== 85650 (pos)
                    (Bc_checked_p11)

                    ; #32671: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #35198: <==closure== 32671 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #37371: <==commonly_known== 85650 (pos)
                    (Bd_checked_p11)

                    ; #69306: <==commonly_known== 95875 (neg)
                    (Pd_checked_p11)

                    ; #72229: <==commonly_known== 95875 (neg)
                    (Pa_checked_p11)

                    ; #74392: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #78478: <==commonly_known== 85650 (pos)
                    (Ba_checked_p11)

                    ; #85650: origin
                    (checked_p11)

                    ; #89104: <==commonly_known== 95875 (neg)
                    (Pc_checked_p11)

                    ; #15080: <==negation-removal== 12675 (pos)
                    (not (Pb_not_checked_p11))

                    ; #21316: <==negation-removal== 32671 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #26772: <==uncertain_firing== 35198 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #28086: <==negation-removal== 37371 (pos)
                    (not (Pd_not_checked_p11))

                    ; #30084: <==negation-removal== 10219 (pos)
                    (not (Bb_not_checked_p11))

                    ; #31479: <==negation-removal== 74392 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #34134: <==negation-removal== 89104 (pos)
                    (not (Bc_not_checked_p11))

                    ; #43387: <==uncertain_firing== 17205 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #52609: <==negation-removal== 72229 (pos)
                    (not (Ba_not_checked_p11))

                    ; #60346: <==uncertain_firing== 74392 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #61585: <==uncertain_firing== 32671 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #66241: <==negation-removal== 69306 (pos)
                    (not (Bd_not_checked_p11))

                    ; #69378: <==negation-removal== 17205 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #72383: <==negation-removal== 35198 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #85262: <==negation-removal== 78478 (pos)
                    (not (Pa_not_checked_p11))

                    ; #90279: <==negation-removal== 22406 (pos)
                    (not (Pc_not_checked_p11))

                    ; #95875: <==negation-removal== 85650 (pos)
                    (not (not_checked_p11))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14976: <==closure== 83523 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #16207: <==commonly_known== 69661 (neg)
                    (Pc_checked_p12)

                    ; #16938: <==commonly_known== 24532 (pos)
                    (Bb_checked_p12)

                    ; #19746: <==commonly_known== 69661 (neg)
                    (Pb_checked_p12)

                    ; #19980: <==closure== 59249 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #24532: origin
                    (checked_p12)

                    ; #28938: <==commonly_known== 69661 (neg)
                    (Pa_checked_p12)

                    ; #33841: <==commonly_known== 24532 (pos)
                    (Bc_checked_p12)

                    ; #59249: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #71609: <==commonly_known== 69661 (neg)
                    (Pd_checked_p12)

                    ; #72772: <==commonly_known== 24532 (pos)
                    (Ba_checked_p12)

                    ; #78387: <==commonly_known== 24532 (pos)
                    (Bd_checked_p12)

                    ; #83523: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #11336: <==negation-removal== 19980 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #15925: <==negation-removal== 28938 (pos)
                    (not (Ba_not_checked_p12))

                    ; #22494: <==uncertain_firing== 59249 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #34532: <==negation-removal== 59249 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #48306: <==uncertain_firing== 14976 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #54715: <==uncertain_firing== 83523 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #56355: <==negation-removal== 83523 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #56708: <==negation-removal== 33841 (pos)
                    (not (Pc_not_checked_p12))

                    ; #66725: <==negation-removal== 16938 (pos)
                    (not (Pb_not_checked_p12))

                    ; #66833: <==negation-removal== 72772 (pos)
                    (not (Pa_not_checked_p12))

                    ; #69661: <==negation-removal== 24532 (pos)
                    (not (not_checked_p12))

                    ; #71730: <==negation-removal== 14976 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #75169: <==negation-removal== 16207 (pos)
                    (not (Bc_not_checked_p12))

                    ; #77140: <==negation-removal== 19746 (pos)
                    (not (Bb_not_checked_p12))

                    ; #77493: <==negation-removal== 71609 (pos)
                    (not (Bd_not_checked_p12))

                    ; #81128: <==negation-removal== 78387 (pos)
                    (not (Pd_not_checked_p12))

                    ; #84685: <==uncertain_firing== 19980 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17529: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #38395: <==closure== 70730 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #47250: <==commonly_known== 80195 (pos)
                    (Bc_checked_p1)

                    ; #49342: <==commonly_known== 80195 (pos)
                    (Bd_checked_p1)

                    ; #50492: <==commonly_known== 89887 (neg)
                    (Pa_checked_p1)

                    ; #64147: <==closure== 17529 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #67695: <==commonly_known== 89887 (neg)
                    (Pc_checked_p1)

                    ; #70730: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #80195: origin
                    (checked_p1)

                    ; #83767: <==commonly_known== 89887 (neg)
                    (Pb_checked_p1)

                    ; #87039: <==commonly_known== 89887 (neg)
                    (Pd_checked_p1)

                    ; #88143: <==commonly_known== 80195 (pos)
                    (Ba_checked_p1)

                    ; #89451: <==commonly_known== 80195 (pos)
                    (Bb_checked_p1)

                    ; #12233: <==uncertain_firing== 64147 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #16179: <==negation-removal== 87039 (pos)
                    (not (Bd_not_checked_p1))

                    ; #16891: <==negation-removal== 89451 (pos)
                    (not (Pb_not_checked_p1))

                    ; #24408: <==uncertain_firing== 38395 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #24541: <==negation-removal== 88143 (pos)
                    (not (Pa_not_checked_p1))

                    ; #27047: <==negation-removal== 64147 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #39194: <==negation-removal== 47250 (pos)
                    (not (Pc_not_checked_p1))

                    ; #43623: <==uncertain_firing== 17529 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #52705: <==negation-removal== 17529 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54325: <==negation-removal== 83767 (pos)
                    (not (Bb_not_checked_p1))

                    ; #68471: <==negation-removal== 70730 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #72031: <==negation-removal== 50492 (pos)
                    (not (Ba_not_checked_p1))

                    ; #73284: <==uncertain_firing== 70730 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #73795: <==negation-removal== 67695 (pos)
                    (not (Bc_not_checked_p1))

                    ; #85315: <==negation-removal== 49342 (pos)
                    (not (Pd_not_checked_p1))

                    ; #89887: <==negation-removal== 80195 (pos)
                    (not (not_checked_p1))

                    ; #95657: <==negation-removal== 38395 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #14310: <==closure== 25964 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #16260: origin
                    (checked_p2)

                    ; #25964: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #27193: <==closure== 72149 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #39590: <==commonly_known== 16260 (pos)
                    (Bc_checked_p2)

                    ; #41623: <==commonly_known== 16260 (pos)
                    (Bb_checked_p2)

                    ; #42801: <==commonly_known== 83038 (neg)
                    (Pb_checked_p2)

                    ; #43723: <==commonly_known== 83038 (neg)
                    (Pc_checked_p2)

                    ; #53361: <==commonly_known== 16260 (pos)
                    (Bd_checked_p2)

                    ; #61956: <==commonly_known== 16260 (pos)
                    (Ba_checked_p2)

                    ; #72149: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #79956: <==commonly_known== 83038 (neg)
                    (Pd_checked_p2)

                    ; #87062: <==commonly_known== 83038 (neg)
                    (Pa_checked_p2)

                    ; #11154: <==negation-removal== 61956 (pos)
                    (not (Pa_not_checked_p2))

                    ; #12547: <==negation-removal== 41623 (pos)
                    (not (Pb_not_checked_p2))

                    ; #15698: <==negation-removal== 87062 (pos)
                    (not (Ba_not_checked_p2))

                    ; #16244: <==uncertain_firing== 27193 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #21878: <==negation-removal== 39590 (pos)
                    (not (Pc_not_checked_p2))

                    ; #22691: <==negation-removal== 14310 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #25116: <==negation-removal== 42801 (pos)
                    (not (Bb_not_checked_p2))

                    ; #30421: <==uncertain_firing== 72149 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #34004: <==negation-removal== 72149 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #36234: <==uncertain_firing== 14310 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #40340: <==negation-removal== 27193 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #59214: <==negation-removal== 53361 (pos)
                    (not (Pd_not_checked_p2))

                    ; #59821: <==negation-removal== 79956 (pos)
                    (not (Bd_not_checked_p2))

                    ; #66693: <==negation-removal== 43723 (pos)
                    (not (Bc_not_checked_p2))

                    ; #83038: <==negation-removal== 16260 (pos)
                    (not (not_checked_p2))

                    ; #84288: <==negation-removal== 25964 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #96617: <==uncertain_firing== 25964 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14675: <==commonly_known== 30143 (pos)
                    (Ba_checked_p3)

                    ; #26260: <==commonly_known== 72606 (neg)
                    (Pc_checked_p3)

                    ; #30143: origin
                    (checked_p3)

                    ; #36314: <==commonly_known== 72606 (neg)
                    (Pd_checked_p3)

                    ; #43996: <==commonly_known== 30143 (pos)
                    (Bd_checked_p3)

                    ; #44271: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #49573: <==closure== 72459 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #52411: <==commonly_known== 72606 (neg)
                    (Pa_checked_p3)

                    ; #54950: <==commonly_known== 30143 (pos)
                    (Bb_checked_p3)

                    ; #57160: <==commonly_known== 30143 (pos)
                    (Bc_checked_p3)

                    ; #57611: <==closure== 44271 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #72044: <==commonly_known== 72606 (neg)
                    (Pb_checked_p3)

                    ; #72459: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #12837: <==uncertain_firing== 57611 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #18782: <==uncertain_firing== 44271 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #20899: <==negation-removal== 26260 (pos)
                    (not (Bc_not_checked_p3))

                    ; #24764: <==negation-removal== 43996 (pos)
                    (not (Pd_not_checked_p3))

                    ; #25356: <==negation-removal== 72459 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #34592: <==uncertain_firing== 72459 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #40140: <==negation-removal== 49573 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #44666: <==negation-removal== 57160 (pos)
                    (not (Pc_not_checked_p3))

                    ; #48008: <==uncertain_firing== 49573 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #53069: <==negation-removal== 57611 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #54348: <==negation-removal== 72044 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56900: <==negation-removal== 14675 (pos)
                    (not (Pa_not_checked_p3))

                    ; #67967: <==negation-removal== 52411 (pos)
                    (not (Ba_not_checked_p3))

                    ; #71394: <==negation-removal== 36314 (pos)
                    (not (Bd_not_checked_p3))

                    ; #72606: <==negation-removal== 30143 (pos)
                    (not (not_checked_p3))

                    ; #75035: <==negation-removal== 44271 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #79605: <==negation-removal== 54950 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10590: <==commonly_known== 24450 (neg)
                    (Pb_checked_p4)

                    ; #14300: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #22248: <==closure== 14300 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #23074: <==commonly_known== 24450 (neg)
                    (Pc_checked_p4)

                    ; #25293: <==commonly_known== 24450 (neg)
                    (Pd_checked_p4)

                    ; #42050: <==closure== 69245 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #44237: <==commonly_known== 24450 (neg)
                    (Pa_checked_p4)

                    ; #58744: origin
                    (checked_p4)

                    ; #64072: <==commonly_known== 58744 (pos)
                    (Ba_checked_p4)

                    ; #69245: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #80583: <==commonly_known== 58744 (pos)
                    (Bd_checked_p4)

                    ; #83990: <==commonly_known== 58744 (pos)
                    (Bb_checked_p4)

                    ; #90912: <==commonly_known== 58744 (pos)
                    (Bc_checked_p4)

                    ; #18974: <==negation-removal== 83990 (pos)
                    (not (Pb_not_checked_p4))

                    ; #24450: <==negation-removal== 58744 (pos)
                    (not (not_checked_p4))

                    ; #26580: <==negation-removal== 25293 (pos)
                    (not (Bd_not_checked_p4))

                    ; #28367: <==negation-removal== 22248 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #30526: <==negation-removal== 10590 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37580: <==negation-removal== 23074 (pos)
                    (not (Bc_not_checked_p4))

                    ; #41524: <==negation-removal== 69245 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #44064: <==negation-removal== 44237 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45785: <==negation-removal== 64072 (pos)
                    (not (Pa_not_checked_p4))

                    ; #52894: <==uncertain_firing== 69245 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #54984: <==negation-removal== 80583 (pos)
                    (not (Pd_not_checked_p4))

                    ; #61206: <==uncertain_firing== 14300 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #69190: <==negation-removal== 42050 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #75799: <==uncertain_firing== 42050 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #75945: <==negation-removal== 14300 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #79577: <==negation-removal== 90912 (pos)
                    (not (Pc_not_checked_p4))

                    ; #85960: <==uncertain_firing== 22248 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10904: <==commonly_known== 87421 (pos)
                    (Bd_checked_p5)

                    ; #11394: <==commonly_known== 30777 (neg)
                    (Pb_checked_p5)

                    ; #19341: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #36617: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #41971: <==commonly_known== 30777 (neg)
                    (Pd_checked_p5)

                    ; #47920: <==closure== 36617 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #50357: <==commonly_known== 30777 (neg)
                    (Pa_checked_p5)

                    ; #53079: <==commonly_known== 87421 (pos)
                    (Ba_checked_p5)

                    ; #59746: <==closure== 19341 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #64460: <==commonly_known== 30777 (neg)
                    (Pc_checked_p5)

                    ; #71103: <==commonly_known== 87421 (pos)
                    (Bb_checked_p5)

                    ; #75246: <==commonly_known== 87421 (pos)
                    (Bc_checked_p5)

                    ; #87421: origin
                    (checked_p5)

                    ; #11302: <==negation-removal== 11394 (pos)
                    (not (Bb_not_checked_p5))

                    ; #11906: <==negation-removal== 10904 (pos)
                    (not (Pd_not_checked_p5))

                    ; #26988: <==negation-removal== 47920 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #30777: <==negation-removal== 87421 (pos)
                    (not (not_checked_p5))

                    ; #32844: <==negation-removal== 36617 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #40426: <==negation-removal== 41971 (pos)
                    (not (Bd_not_checked_p5))

                    ; #44196: <==negation-removal== 59746 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #45913: <==uncertain_firing== 19341 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #58290: <==negation-removal== 64460 (pos)
                    (not (Bc_not_checked_p5))

                    ; #58428: <==uncertain_firing== 36617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #58567: <==uncertain_firing== 59746 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #63680: <==negation-removal== 75246 (pos)
                    (not (Pc_not_checked_p5))

                    ; #63973: <==uncertain_firing== 47920 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #66538: <==negation-removal== 53079 (pos)
                    (not (Pa_not_checked_p5))

                    ; #66691: <==negation-removal== 19341 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #79680: <==negation-removal== 50357 (pos)
                    (not (Ba_not_checked_p5))

                    ; #85744: <==negation-removal== 71103 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #19028: <==closure== 58609 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #38497: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #43918: <==commonly_known== 50958 (pos)
                    (Bd_checked_p6)

                    ; #45900: <==commonly_known== 45880 (neg)
                    (Pb_checked_p6)

                    ; #50958: origin
                    (checked_p6)

                    ; #57575: <==closure== 38497 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #58609: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #61228: <==commonly_known== 45880 (neg)
                    (Pa_checked_p6)

                    ; #72924: <==commonly_known== 50958 (pos)
                    (Bc_checked_p6)

                    ; #77070: <==commonly_known== 45880 (neg)
                    (Pd_checked_p6)

                    ; #80222: <==commonly_known== 50958 (pos)
                    (Ba_checked_p6)

                    ; #81071: <==commonly_known== 45880 (neg)
                    (Pc_checked_p6)

                    ; #86694: <==commonly_known== 50958 (pos)
                    (Bb_checked_p6)

                    ; #10735: <==uncertain_firing== 57575 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #13422: <==negation-removal== 57575 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #17529: <==negation-removal== 86694 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34676: <==negation-removal== 43918 (pos)
                    (not (Pd_not_checked_p6))

                    ; #36156: <==negation-removal== 45900 (pos)
                    (not (Bb_not_checked_p6))

                    ; #36297: <==negation-removal== 58609 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #43257: <==negation-removal== 77070 (pos)
                    (not (Bd_not_checked_p6))

                    ; #45880: <==negation-removal== 50958 (pos)
                    (not (not_checked_p6))

                    ; #46324: <==negation-removal== 19028 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #47452: <==negation-removal== 38497 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #51356: <==uncertain_firing== 38497 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #60794: <==negation-removal== 72924 (pos)
                    (not (Pc_not_checked_p6))

                    ; #64951: <==uncertain_firing== 58609 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #72418: <==negation-removal== 81071 (pos)
                    (not (Bc_not_checked_p6))

                    ; #85265: <==negation-removal== 61228 (pos)
                    (not (Ba_not_checked_p6))

                    ; #86875: <==uncertain_firing== 19028 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #88568: <==negation-removal== 80222 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12198: <==closure== 45116 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #19882: <==commonly_known== 82793 (pos)
                    (Bc_checked_p7)

                    ; #24271: <==closure== 26542 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #24831: <==commonly_known== 80236 (neg)
                    (Pb_checked_p7)

                    ; #26542: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #32999: <==commonly_known== 80236 (neg)
                    (Pd_checked_p7)

                    ; #45111: <==commonly_known== 82793 (pos)
                    (Bd_checked_p7)

                    ; #45116: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #49109: <==commonly_known== 82793 (pos)
                    (Bb_checked_p7)

                    ; #52432: <==commonly_known== 80236 (neg)
                    (Pa_checked_p7)

                    ; #64878: <==commonly_known== 82793 (pos)
                    (Ba_checked_p7)

                    ; #82793: origin
                    (checked_p7)

                    ; #84829: <==commonly_known== 80236 (neg)
                    (Pc_checked_p7)

                    ; #28683: <==negation-removal== 84829 (pos)
                    (not (Bc_not_checked_p7))

                    ; #34803: <==uncertain_firing== 12198 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #42322: <==uncertain_firing== 26542 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #42815: <==negation-removal== 52432 (pos)
                    (not (Ba_not_checked_p7))

                    ; #43015: <==negation-removal== 64878 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45541: <==uncertain_firing== 45116 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #46549: <==negation-removal== 45111 (pos)
                    (not (Pd_not_checked_p7))

                    ; #50809: <==negation-removal== 12198 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #58688: <==negation-removal== 26542 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #68121: <==negation-removal== 45116 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #69753: <==negation-removal== 32999 (pos)
                    (not (Bd_not_checked_p7))

                    ; #75546: <==negation-removal== 24271 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #75985: <==negation-removal== 19882 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80236: <==negation-removal== 82793 (pos)
                    (not (not_checked_p7))

                    ; #84494: <==negation-removal== 49109 (pos)
                    (not (Pb_not_checked_p7))

                    ; #87971: <==negation-removal== 24831 (pos)
                    (not (Bb_not_checked_p7))

                    ; #93304: <==uncertain_firing== 24271 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10971: <==commonly_known== 22886 (pos)
                    (Bc_checked_p8)

                    ; #14291: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #22886: origin
                    (checked_p8)

                    ; #24755: <==commonly_known== 22886 (pos)
                    (Bb_checked_p8)

                    ; #32778: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #37329: <==commonly_known== 30036 (neg)
                    (Pd_checked_p8)

                    ; #38942: <==commonly_known== 30036 (neg)
                    (Pb_checked_p8)

                    ; #50191: <==commonly_known== 22886 (pos)
                    (Bd_checked_p8)

                    ; #53349: <==closure== 14291 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #59393: <==closure== 32778 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #64380: <==commonly_known== 22886 (pos)
                    (Ba_checked_p8)

                    ; #77790: <==commonly_known== 30036 (neg)
                    (Pc_checked_p8)

                    ; #85603: <==commonly_known== 30036 (neg)
                    (Pa_checked_p8)

                    ; #12158: <==negation-removal== 50191 (pos)
                    (not (Pd_not_checked_p8))

                    ; #20311: <==negation-removal== 64380 (pos)
                    (not (Pa_not_checked_p8))

                    ; #26569: <==uncertain_firing== 32778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #30036: <==negation-removal== 22886 (pos)
                    (not (not_checked_p8))

                    ; #37968: <==negation-removal== 85603 (pos)
                    (not (Ba_not_checked_p8))

                    ; #48833: <==negation-removal== 77790 (pos)
                    (not (Bc_not_checked_p8))

                    ; #49584: <==negation-removal== 24755 (pos)
                    (not (Pb_not_checked_p8))

                    ; #51471: <==negation-removal== 37329 (pos)
                    (not (Bd_not_checked_p8))

                    ; #51967: <==negation-removal== 10971 (pos)
                    (not (Pc_not_checked_p8))

                    ; #61058: <==uncertain_firing== 14291 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #68054: <==negation-removal== 32778 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #69161: <==negation-removal== 59393 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #74440: <==negation-removal== 14291 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #80599: <==negation-removal== 53349 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #86184: <==negation-removal== 38942 (pos)
                    (not (Bb_not_checked_p8))

                    ; #88129: <==uncertain_firing== 53349 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #89780: <==uncertain_firing== 59393 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11653: <==closure== 62631 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #22148: <==commonly_known== 67724 (pos)
                    (Bc_checked_p9)

                    ; #23037: <==commonly_known== 29044 (neg)
                    (Pd_checked_p9)

                    ; #25761: <==commonly_known== 67724 (pos)
                    (Bb_checked_p9)

                    ; #32731: <==closure== 84558 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #34062: <==commonly_known== 29044 (neg)
                    (Pb_checked_p9)

                    ; #38323: <==commonly_known== 67724 (pos)
                    (Ba_checked_p9)

                    ; #41797: <==commonly_known== 29044 (neg)
                    (Pa_checked_p9)

                    ; #62631: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #67724: origin
                    (checked_p9)

                    ; #77230: <==commonly_known== 29044 (neg)
                    (Pc_checked_p9)

                    ; #83857: <==commonly_known== 67724 (pos)
                    (Bd_checked_p9)

                    ; #84558: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #13629: <==negation-removal== 38323 (pos)
                    (not (Pa_not_checked_p9))

                    ; #13758: <==negation-removal== 84558 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #24289: <==uncertain_firing== 11653 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #28357: <==negation-removal== 34062 (pos)
                    (not (Bb_not_checked_p9))

                    ; #29044: <==negation-removal== 67724 (pos)
                    (not (not_checked_p9))

                    ; #38207: <==negation-removal== 23037 (pos)
                    (not (Bd_not_checked_p9))

                    ; #41678: <==negation-removal== 77230 (pos)
                    (not (Bc_not_checked_p9))

                    ; #41816: <==uncertain_firing== 62631 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #43448: <==negation-removal== 41797 (pos)
                    (not (Ba_not_checked_p9))

                    ; #43804: <==negation-removal== 11653 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #56893: <==uncertain_firing== 32731 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #58243: <==negation-removal== 32731 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63898: <==uncertain_firing== 84558 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #72584: <==negation-removal== 83857 (pos)
                    (not (Pd_not_checked_p9))

                    ; #85614: <==negation-removal== 22148 (pos)
                    (not (Pc_not_checked_p9))

                    ; #87239: <==negation-removal== 62631 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #89468: <==negation-removal== 25761 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observe_d_p10_s
        :precondition (and (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13225: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #16188: <==commonly_known== 54763 (neg)
                    (Pd_checked_p10)

                    ; #29790: <==commonly_known== 52597 (pos)
                    (Bb_checked_p10)

                    ; #45404: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #46649: <==commonly_known== 52597 (pos)
                    (Bd_checked_p10)

                    ; #52597: origin
                    (checked_p10)

                    ; #56564: <==commonly_known== 52597 (pos)
                    (Bc_checked_p10)

                    ; #60856: <==commonly_known== 54763 (neg)
                    (Pc_checked_p10)

                    ; #69300: <==commonly_known== 54763 (neg)
                    (Pb_checked_p10)

                    ; #81976: <==commonly_known== 54763 (neg)
                    (Pa_checked_p10)

                    ; #86859: <==closure== 13225 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #91049: <==commonly_known== 52597 (pos)
                    (Ba_checked_p10)

                    ; #91473: <==closure== 45404 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #13567: <==uncertain_firing== 86859 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #30316: <==negation-removal== 16188 (pos)
                    (not (Bd_not_checked_p10))

                    ; #31541: <==negation-removal== 13225 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #32310: <==negation-removal== 91049 (pos)
                    (not (Pa_not_checked_p10))

                    ; #41109: <==negation-removal== 29790 (pos)
                    (not (Pb_not_checked_p10))

                    ; #47747: <==uncertain_firing== 91473 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #50473: <==negation-removal== 45404 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #53285: <==uncertain_firing== 13225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #54763: <==negation-removal== 52597 (pos)
                    (not (not_checked_p10))

                    ; #62768: <==negation-removal== 81976 (pos)
                    (not (Ba_not_checked_p10))

                    ; #67453: <==negation-removal== 86859 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #69791: <==negation-removal== 56564 (pos)
                    (not (Pc_not_checked_p10))

                    ; #75091: <==negation-removal== 91473 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #79436: <==negation-removal== 69300 (pos)
                    (not (Bb_not_checked_p10))

                    ; #80298: <==negation-removal== 60856 (pos)
                    (not (Bc_not_checked_p10))

                    ; #83140: <==uncertain_firing== 45404 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #92013: <==negation-removal== 46649 (pos)
                    (not (Pd_not_checked_p10))))

    (:action observe_d_p11_s
        :precondition (and (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10219: <==commonly_known== 95875 (neg)
                    (Pb_checked_p11)

                    ; #12675: <==commonly_known== 85650 (pos)
                    (Bb_checked_p11)

                    ; #22406: <==commonly_known== 85650 (pos)
                    (Bc_checked_p11)

                    ; #31980: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #34800: <==closure== 31980 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #37371: <==commonly_known== 85650 (pos)
                    (Bd_checked_p11)

                    ; #69306: <==commonly_known== 95875 (neg)
                    (Pd_checked_p11)

                    ; #72229: <==commonly_known== 95875 (neg)
                    (Pa_checked_p11)

                    ; #78478: <==commonly_known== 85650 (pos)
                    (Ba_checked_p11)

                    ; #85650: origin
                    (checked_p11)

                    ; #87919: <==closure== 91787 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #89104: <==commonly_known== 95875 (neg)
                    (Pc_checked_p11)

                    ; #91787: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #11078: <==negation-removal== 91787 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #15080: <==negation-removal== 12675 (pos)
                    (not (Pb_not_checked_p11))

                    ; #22333: <==uncertain_firing== 87919 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #28086: <==negation-removal== 37371 (pos)
                    (not (Pd_not_checked_p11))

                    ; #30084: <==negation-removal== 10219 (pos)
                    (not (Bb_not_checked_p11))

                    ; #34134: <==negation-removal== 89104 (pos)
                    (not (Bc_not_checked_p11))

                    ; #39399: <==uncertain_firing== 91787 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #43133: <==negation-removal== 34800 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #52609: <==negation-removal== 72229 (pos)
                    (not (Ba_not_checked_p11))

                    ; #66241: <==negation-removal== 69306 (pos)
                    (not (Bd_not_checked_p11))

                    ; #73087: <==uncertain_firing== 31980 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #74972: <==uncertain_firing== 34800 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #82058: <==negation-removal== 31980 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #85070: <==negation-removal== 87919 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #85262: <==negation-removal== 78478 (pos)
                    (not (Pa_not_checked_p11))

                    ; #90279: <==negation-removal== 22406 (pos)
                    (not (Pc_not_checked_p11))

                    ; #95875: <==negation-removal== 85650 (pos)
                    (not (not_checked_p11))))

    (:action observe_d_p12_s
        :precondition (and (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #16207: <==commonly_known== 69661 (neg)
                    (Pc_checked_p12)

                    ; #16938: <==commonly_known== 24532 (pos)
                    (Bb_checked_p12)

                    ; #19746: <==commonly_known== 69661 (neg)
                    (Pb_checked_p12)

                    ; #24532: origin
                    (checked_p12)

                    ; #28938: <==commonly_known== 69661 (neg)
                    (Pa_checked_p12)

                    ; #33841: <==commonly_known== 24532 (pos)
                    (Bc_checked_p12)

                    ; #63058: <==closure== 63917 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #63917: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #68958: <==closure== 93983 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #71609: <==commonly_known== 69661 (neg)
                    (Pd_checked_p12)

                    ; #72772: <==commonly_known== 24532 (pos)
                    (Ba_checked_p12)

                    ; #78387: <==commonly_known== 24532 (pos)
                    (Bd_checked_p12)

                    ; #93983: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #10953: <==uncertain_firing== 68958 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #15925: <==negation-removal== 28938 (pos)
                    (not (Ba_not_checked_p12))

                    ; #21461: <==negation-removal== 68958 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #56708: <==negation-removal== 33841 (pos)
                    (not (Pc_not_checked_p12))

                    ; #58970: <==uncertain_firing== 63917 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #66025: <==negation-removal== 93983 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #66725: <==negation-removal== 16938 (pos)
                    (not (Pb_not_checked_p12))

                    ; #66833: <==negation-removal== 72772 (pos)
                    (not (Pa_not_checked_p12))

                    ; #69398: <==negation-removal== 63917 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #69661: <==negation-removal== 24532 (pos)
                    (not (not_checked_p12))

                    ; #71360: <==uncertain_firing== 93983 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #72442: <==negation-removal== 63058 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #75169: <==negation-removal== 16207 (pos)
                    (not (Bc_not_checked_p12))

                    ; #77140: <==negation-removal== 19746 (pos)
                    (not (Bb_not_checked_p12))

                    ; #77493: <==negation-removal== 71609 (pos)
                    (not (Bd_not_checked_p12))

                    ; #81128: <==negation-removal== 78387 (pos)
                    (not (Pd_not_checked_p12))

                    ; #98920: <==uncertain_firing== 63058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))))

    (:action observe_d_p1_s
        :precondition (and (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #18136: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #44469: <==closure== 89971 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #47250: <==commonly_known== 80195 (pos)
                    (Bc_checked_p1)

                    ; #49342: <==commonly_known== 80195 (pos)
                    (Bd_checked_p1)

                    ; #50492: <==commonly_known== 89887 (neg)
                    (Pa_checked_p1)

                    ; #51559: <==closure== 18136 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #67695: <==commonly_known== 89887 (neg)
                    (Pc_checked_p1)

                    ; #80195: origin
                    (checked_p1)

                    ; #83767: <==commonly_known== 89887 (neg)
                    (Pb_checked_p1)

                    ; #87039: <==commonly_known== 89887 (neg)
                    (Pd_checked_p1)

                    ; #88143: <==commonly_known== 80195 (pos)
                    (Ba_checked_p1)

                    ; #89451: <==commonly_known== 80195 (pos)
                    (Bb_checked_p1)

                    ; #89971: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #16179: <==negation-removal== 87039 (pos)
                    (not (Bd_not_checked_p1))

                    ; #16891: <==negation-removal== 89451 (pos)
                    (not (Pb_not_checked_p1))

                    ; #20695: <==negation-removal== 51559 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #24541: <==negation-removal== 88143 (pos)
                    (not (Pa_not_checked_p1))

                    ; #35264: <==uncertain_firing== 44469 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #39194: <==negation-removal== 47250 (pos)
                    (not (Pc_not_checked_p1))

                    ; #40347: <==uncertain_firing== 18136 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #43667: <==negation-removal== 18136 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #44011: <==uncertain_firing== 89971 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #50752: <==negation-removal== 89971 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #54310: <==negation-removal== 44469 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #54325: <==negation-removal== 83767 (pos)
                    (not (Bb_not_checked_p1))

                    ; #59999: <==uncertain_firing== 51559 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #72031: <==negation-removal== 50492 (pos)
                    (not (Ba_not_checked_p1))

                    ; #73795: <==negation-removal== 67695 (pos)
                    (not (Bc_not_checked_p1))

                    ; #85315: <==negation-removal== 49342 (pos)
                    (not (Pd_not_checked_p1))

                    ; #89887: <==negation-removal== 80195 (pos)
                    (not (not_checked_p1))))

    (:action observe_d_p2_s
        :precondition (and (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #16260: origin
                    (checked_p2)

                    ; #27403: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #32600: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #39590: <==commonly_known== 16260 (pos)
                    (Bc_checked_p2)

                    ; #41623: <==commonly_known== 16260 (pos)
                    (Bb_checked_p2)

                    ; #42745: <==closure== 32600 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #42801: <==commonly_known== 83038 (neg)
                    (Pb_checked_p2)

                    ; #43270: <==closure== 27403 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #43723: <==commonly_known== 83038 (neg)
                    (Pc_checked_p2)

                    ; #53361: <==commonly_known== 16260 (pos)
                    (Bd_checked_p2)

                    ; #61956: <==commonly_known== 16260 (pos)
                    (Ba_checked_p2)

                    ; #79956: <==commonly_known== 83038 (neg)
                    (Pd_checked_p2)

                    ; #87062: <==commonly_known== 83038 (neg)
                    (Pa_checked_p2)

                    ; #11154: <==negation-removal== 61956 (pos)
                    (not (Pa_not_checked_p2))

                    ; #11534: <==uncertain_firing== 32600 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #12547: <==negation-removal== 41623 (pos)
                    (not (Pb_not_checked_p2))

                    ; #13622: <==negation-removal== 43270 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #15698: <==negation-removal== 87062 (pos)
                    (not (Ba_not_checked_p2))

                    ; #18989: <==uncertain_firing== 43270 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #21878: <==negation-removal== 39590 (pos)
                    (not (Pc_not_checked_p2))

                    ; #25116: <==negation-removal== 42801 (pos)
                    (not (Bb_not_checked_p2))

                    ; #42004: <==negation-removal== 27403 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #52482: <==negation-removal== 32600 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #59214: <==negation-removal== 53361 (pos)
                    (not (Pd_not_checked_p2))

                    ; #59821: <==negation-removal== 79956 (pos)
                    (not (Bd_not_checked_p2))

                    ; #61943: <==uncertain_firing== 42745 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #66693: <==negation-removal== 43723 (pos)
                    (not (Bc_not_checked_p2))

                    ; #68749: <==uncertain_firing== 27403 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #83038: <==negation-removal== 16260 (pos)
                    (not (not_checked_p2))

                    ; #83240: <==negation-removal== 42745 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))))

    (:action observe_d_p3_s
        :precondition (and (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #14675: <==commonly_known== 30143 (pos)
                    (Ba_checked_p3)

                    ; #21270: <==closure== 42664 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #26260: <==commonly_known== 72606 (neg)
                    (Pc_checked_p3)

                    ; #28521: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #30143: origin
                    (checked_p3)

                    ; #34103: <==closure== 28521 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #36314: <==commonly_known== 72606 (neg)
                    (Pd_checked_p3)

                    ; #42664: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #43996: <==commonly_known== 30143 (pos)
                    (Bd_checked_p3)

                    ; #52411: <==commonly_known== 72606 (neg)
                    (Pa_checked_p3)

                    ; #54950: <==commonly_known== 30143 (pos)
                    (Bb_checked_p3)

                    ; #57160: <==commonly_known== 30143 (pos)
                    (Bc_checked_p3)

                    ; #72044: <==commonly_known== 72606 (neg)
                    (Pb_checked_p3)

                    ; #10054: <==negation-removal== 21270 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #20899: <==negation-removal== 26260 (pos)
                    (not (Bc_not_checked_p3))

                    ; #23607: <==uncertain_firing== 34103 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #24084: <==negation-removal== 34103 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #24764: <==negation-removal== 43996 (pos)
                    (not (Pd_not_checked_p3))

                    ; #39045: <==uncertain_firing== 42664 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #44666: <==negation-removal== 57160 (pos)
                    (not (Pc_not_checked_p3))

                    ; #49268: <==uncertain_firing== 28521 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #52378: <==negation-removal== 42664 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #54348: <==negation-removal== 72044 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56900: <==negation-removal== 14675 (pos)
                    (not (Pa_not_checked_p3))

                    ; #67967: <==negation-removal== 52411 (pos)
                    (not (Ba_not_checked_p3))

                    ; #68892: <==negation-removal== 28521 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #71394: <==negation-removal== 36314 (pos)
                    (not (Bd_not_checked_p3))

                    ; #72606: <==negation-removal== 30143 (pos)
                    (not (not_checked_p3))

                    ; #79605: <==negation-removal== 54950 (pos)
                    (not (Pb_not_checked_p3))

                    ; #81502: <==uncertain_firing== 21270 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))))

    (:action observe_d_p4_s
        :precondition (and (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #10590: <==commonly_known== 24450 (neg)
                    (Pb_checked_p4)

                    ; #22416: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #23074: <==commonly_known== 24450 (neg)
                    (Pc_checked_p4)

                    ; #25293: <==commonly_known== 24450 (neg)
                    (Pd_checked_p4)

                    ; #33537: <==closure== 52338 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #44237: <==commonly_known== 24450 (neg)
                    (Pa_checked_p4)

                    ; #49727: <==closure== 22416 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #52338: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #58744: origin
                    (checked_p4)

                    ; #64072: <==commonly_known== 58744 (pos)
                    (Ba_checked_p4)

                    ; #80583: <==commonly_known== 58744 (pos)
                    (Bd_checked_p4)

                    ; #83990: <==commonly_known== 58744 (pos)
                    (Bb_checked_p4)

                    ; #90912: <==commonly_known== 58744 (pos)
                    (Bc_checked_p4)

                    ; #18974: <==negation-removal== 83990 (pos)
                    (not (Pb_not_checked_p4))

                    ; #24450: <==negation-removal== 58744 (pos)
                    (not (not_checked_p4))

                    ; #25689: <==negation-removal== 49727 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #26580: <==negation-removal== 25293 (pos)
                    (not (Bd_not_checked_p4))

                    ; #30526: <==negation-removal== 10590 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37580: <==negation-removal== 23074 (pos)
                    (not (Bc_not_checked_p4))

                    ; #42347: <==negation-removal== 22416 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #44064: <==negation-removal== 44237 (pos)
                    (not (Ba_not_checked_p4))

                    ; #44650: <==negation-removal== 33537 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #45785: <==negation-removal== 64072 (pos)
                    (not (Pa_not_checked_p4))

                    ; #51701: <==uncertain_firing== 52338 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #54984: <==negation-removal== 80583 (pos)
                    (not (Pd_not_checked_p4))

                    ; #59024: <==uncertain_firing== 33537 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #74074: <==negation-removal== 52338 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #79577: <==negation-removal== 90912 (pos)
                    (not (Pc_not_checked_p4))

                    ; #82385: <==uncertain_firing== 49727 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #85845: <==uncertain_firing== 22416 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action observe_d_p5_s
        :precondition (and (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #10904: <==commonly_known== 87421 (pos)
                    (Bd_checked_p5)

                    ; #11394: <==commonly_known== 30777 (neg)
                    (Pb_checked_p5)

                    ; #23090: <==closure== 41070 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #36165: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #41070: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #41971: <==commonly_known== 30777 (neg)
                    (Pd_checked_p5)

                    ; #49926: <==closure== 36165 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #50357: <==commonly_known== 30777 (neg)
                    (Pa_checked_p5)

                    ; #53079: <==commonly_known== 87421 (pos)
                    (Ba_checked_p5)

                    ; #64460: <==commonly_known== 30777 (neg)
                    (Pc_checked_p5)

                    ; #71103: <==commonly_known== 87421 (pos)
                    (Bb_checked_p5)

                    ; #75246: <==commonly_known== 87421 (pos)
                    (Bc_checked_p5)

                    ; #87421: origin
                    (checked_p5)

                    ; #11160: <==negation-removal== 23090 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #11302: <==negation-removal== 11394 (pos)
                    (not (Bb_not_checked_p5))

                    ; #11906: <==negation-removal== 10904 (pos)
                    (not (Pd_not_checked_p5))

                    ; #14459: <==uncertain_firing== 23090 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #19409: <==negation-removal== 36165 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #23612: <==negation-removal== 41070 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #30777: <==negation-removal== 87421 (pos)
                    (not (not_checked_p5))

                    ; #35360: <==uncertain_firing== 36165 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #40426: <==negation-removal== 41971 (pos)
                    (not (Bd_not_checked_p5))

                    ; #51573: <==uncertain_firing== 41070 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #58290: <==negation-removal== 64460 (pos)
                    (not (Bc_not_checked_p5))

                    ; #63680: <==negation-removal== 75246 (pos)
                    (not (Pc_not_checked_p5))

                    ; #66538: <==negation-removal== 53079 (pos)
                    (not (Pa_not_checked_p5))

                    ; #68860: <==negation-removal== 49926 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #76859: <==uncertain_firing== 49926 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #79680: <==negation-removal== 50357 (pos)
                    (not (Ba_not_checked_p5))

                    ; #85744: <==negation-removal== 71103 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observe_d_p6_s
        :precondition (and (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #43918: <==commonly_known== 50958 (pos)
                    (Bd_checked_p6)

                    ; #45900: <==commonly_known== 45880 (neg)
                    (Pb_checked_p6)

                    ; #50958: origin
                    (checked_p6)

                    ; #54324: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #56371: <==closure== 83817 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #61228: <==commonly_known== 45880 (neg)
                    (Pa_checked_p6)

                    ; #72924: <==commonly_known== 50958 (pos)
                    (Bc_checked_p6)

                    ; #77070: <==commonly_known== 45880 (neg)
                    (Pd_checked_p6)

                    ; #80222: <==commonly_known== 50958 (pos)
                    (Ba_checked_p6)

                    ; #81071: <==commonly_known== 45880 (neg)
                    (Pc_checked_p6)

                    ; #83817: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #86694: <==commonly_known== 50958 (pos)
                    (Bb_checked_p6)

                    ; #91515: <==closure== 54324 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #17529: <==negation-removal== 86694 (pos)
                    (not (Pb_not_checked_p6))

                    ; #29887: <==uncertain_firing== 83817 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #33071: <==negation-removal== 54324 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #34676: <==negation-removal== 43918 (pos)
                    (not (Pd_not_checked_p6))

                    ; #36156: <==negation-removal== 45900 (pos)
                    (not (Bb_not_checked_p6))

                    ; #42450: <==uncertain_firing== 91515 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #43257: <==negation-removal== 77070 (pos)
                    (not (Bd_not_checked_p6))

                    ; #45880: <==negation-removal== 50958 (pos)
                    (not (not_checked_p6))

                    ; #60794: <==negation-removal== 72924 (pos)
                    (not (Pc_not_checked_p6))

                    ; #65229: <==uncertain_firing== 56371 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #72418: <==negation-removal== 81071 (pos)
                    (not (Bc_not_checked_p6))

                    ; #73584: <==negation-removal== 56371 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #76147: <==negation-removal== 91515 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #82897: <==negation-removal== 83817 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #85265: <==negation-removal== 61228 (pos)
                    (not (Ba_not_checked_p6))

                    ; #88568: <==negation-removal== 80222 (pos)
                    (not (Pa_not_checked_p6))

                    ; #93401: <==uncertain_firing== 54324 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))))

    (:action observe_d_p7_s
        :precondition (and (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #10547: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #13892: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #19882: <==commonly_known== 82793 (pos)
                    (Bc_checked_p7)

                    ; #24831: <==commonly_known== 80236 (neg)
                    (Pb_checked_p7)

                    ; #28573: <==closure== 13892 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #32999: <==commonly_known== 80236 (neg)
                    (Pd_checked_p7)

                    ; #45111: <==commonly_known== 82793 (pos)
                    (Bd_checked_p7)

                    ; #49109: <==commonly_known== 82793 (pos)
                    (Bb_checked_p7)

                    ; #52432: <==commonly_known== 80236 (neg)
                    (Pa_checked_p7)

                    ; #64878: <==commonly_known== 82793 (pos)
                    (Ba_checked_p7)

                    ; #68744: <==closure== 10547 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #82793: origin
                    (checked_p7)

                    ; #84829: <==commonly_known== 80236 (neg)
                    (Pc_checked_p7)

                    ; #17422: <==uncertain_firing== 68744 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #18009: <==uncertain_firing== 13892 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #19331: <==uncertain_firing== 28573 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #28683: <==negation-removal== 84829 (pos)
                    (not (Bc_not_checked_p7))

                    ; #31904: <==negation-removal== 28573 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #32440: <==negation-removal== 10547 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #42815: <==negation-removal== 52432 (pos)
                    (not (Ba_not_checked_p7))

                    ; #43015: <==negation-removal== 64878 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46549: <==negation-removal== 45111 (pos)
                    (not (Pd_not_checked_p7))

                    ; #48408: <==uncertain_firing== 10547 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #69753: <==negation-removal== 32999 (pos)
                    (not (Bd_not_checked_p7))

                    ; #71758: <==negation-removal== 13892 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #75985: <==negation-removal== 19882 (pos)
                    (not (Pc_not_checked_p7))

                    ; #78279: <==negation-removal== 68744 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #80236: <==negation-removal== 82793 (pos)
                    (not (not_checked_p7))

                    ; #84494: <==negation-removal== 49109 (pos)
                    (not (Pb_not_checked_p7))

                    ; #87971: <==negation-removal== 24831 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observe_d_p8_s
        :precondition (and (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #10971: <==commonly_known== 22886 (pos)
                    (Bc_checked_p8)

                    ; #22886: origin
                    (checked_p8)

                    ; #24755: <==commonly_known== 22886 (pos)
                    (Bb_checked_p8)

                    ; #29599: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #30714: <==closure== 71592 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #37329: <==commonly_known== 30036 (neg)
                    (Pd_checked_p8)

                    ; #38942: <==commonly_known== 30036 (neg)
                    (Pb_checked_p8)

                    ; #50191: <==commonly_known== 22886 (pos)
                    (Bd_checked_p8)

                    ; #64380: <==commonly_known== 22886 (pos)
                    (Ba_checked_p8)

                    ; #71592: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #77790: <==commonly_known== 30036 (neg)
                    (Pc_checked_p8)

                    ; #85603: <==commonly_known== 30036 (neg)
                    (Pa_checked_p8)

                    ; #90520: <==closure== 29599 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #12158: <==negation-removal== 50191 (pos)
                    (not (Pd_not_checked_p8))

                    ; #20311: <==negation-removal== 64380 (pos)
                    (not (Pa_not_checked_p8))

                    ; #23630: <==uncertain_firing== 30714 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #30036: <==negation-removal== 22886 (pos)
                    (not (not_checked_p8))

                    ; #34484: <==negation-removal== 29599 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #37968: <==negation-removal== 85603 (pos)
                    (not (Ba_not_checked_p8))

                    ; #48833: <==negation-removal== 77790 (pos)
                    (not (Bc_not_checked_p8))

                    ; #49584: <==negation-removal== 24755 (pos)
                    (not (Pb_not_checked_p8))

                    ; #50986: <==negation-removal== 90520 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #51471: <==negation-removal== 37329 (pos)
                    (not (Bd_not_checked_p8))

                    ; #51967: <==negation-removal== 10971 (pos)
                    (not (Pc_not_checked_p8))

                    ; #52447: <==negation-removal== 30714 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #54430: <==uncertain_firing== 71592 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #66631: <==negation-removal== 71592 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #75106: <==uncertain_firing== 90520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #85395: <==uncertain_firing== 29599 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #86184: <==negation-removal== 38942 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observe_d_p9_s
        :precondition (and (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #22148: <==commonly_known== 67724 (pos)
                    (Bc_checked_p9)

                    ; #23037: <==commonly_known== 29044 (neg)
                    (Pd_checked_p9)

                    ; #25761: <==commonly_known== 67724 (pos)
                    (Bb_checked_p9)

                    ; #27222: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #29543: <==closure== 35253 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #34062: <==commonly_known== 29044 (neg)
                    (Pb_checked_p9)

                    ; #35253: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #38323: <==commonly_known== 67724 (pos)
                    (Ba_checked_p9)

                    ; #41797: <==commonly_known== 29044 (neg)
                    (Pa_checked_p9)

                    ; #66349: <==closure== 27222 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #67724: origin
                    (checked_p9)

                    ; #77230: <==commonly_known== 29044 (neg)
                    (Pc_checked_p9)

                    ; #83857: <==commonly_known== 67724 (pos)
                    (Bd_checked_p9)

                    ; #13629: <==negation-removal== 38323 (pos)
                    (not (Pa_not_checked_p9))

                    ; #28075: <==uncertain_firing== 66349 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #28357: <==negation-removal== 34062 (pos)
                    (not (Bb_not_checked_p9))

                    ; #29044: <==negation-removal== 67724 (pos)
                    (not (not_checked_p9))

                    ; #35957: <==uncertain_firing== 27222 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #38207: <==negation-removal== 23037 (pos)
                    (not (Bd_not_checked_p9))

                    ; #40830: <==uncertain_firing== 29543 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #41678: <==negation-removal== 77230 (pos)
                    (not (Bc_not_checked_p9))

                    ; #43448: <==negation-removal== 41797 (pos)
                    (not (Ba_not_checked_p9))

                    ; #66470: <==uncertain_firing== 35253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #72584: <==negation-removal== 83857 (pos)
                    (not (Pd_not_checked_p9))

                    ; #73147: <==negation-removal== 27222 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #81639: <==negation-removal== 66349 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #82238: <==negation-removal== 35253 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #85614: <==negation-removal== 22148 (pos)
                    (not (Pc_not_checked_p9))

                    ; #89432: <==negation-removal== 29543 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #89468: <==negation-removal== 25761 (pos)
                    (not (Pb_not_checked_p9))))

)