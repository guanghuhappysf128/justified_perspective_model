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
        (not_leader_a)
        (not_leader_b)
        (not_leader_c)
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
        (leader_a)
        (leader_b)
        (leader_c)
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
                    ; #28367: <==closure== 60027 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #60027: origin
                    (Ba_not_survivorat_s_p10)

                    ; #23000: <==negation-removal== 28367 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #25479: <==negation-removal== 60027 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (at_a_p10)
                           (leader_b)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #51531: origin
                    (Bb_not_survivorat_s_p10)

                    ; #63493: <==closure== 51531 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #63322: <==negation-removal== 63493 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #75795: <==negation-removal== 51531 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #27969: origin
                    (Bc_not_survivorat_s_p10)

                    ; #88277: <==closure== 27969 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #36633: <==negation-removal== 27969 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #53071: <==negation-removal== 88277 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #28367: <==closure== 60027 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #60027: origin
                    (Ba_not_survivorat_s_p10)

                    ; #23000: <==negation-removal== 28367 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #25479: <==negation-removal== 60027 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b))
        :effect (and
                    ; #51531: origin
                    (Bb_not_survivorat_s_p10)

                    ; #63493: <==closure== 51531 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #63322: <==negation-removal== 63493 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #75795: <==negation-removal== 51531 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_c))
        :effect (and
                    ; #27969: origin
                    (Bc_not_survivorat_s_p10)

                    ; #88277: <==closure== 27969 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #36633: <==negation-removal== 27969 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #53071: <==negation-removal== 88277 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (leader_a)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #28367: <==closure== 60027 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #60027: origin
                    (Ba_not_survivorat_s_p10)

                    ; #23000: <==negation-removal== 28367 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #25479: <==negation-removal== 60027 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #51531: origin
                    (Bb_not_survivorat_s_p10)

                    ; #63493: <==closure== 51531 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #63322: <==negation-removal== 63493 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #75795: <==negation-removal== 51531 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #27969: origin
                    (Bc_not_survivorat_s_p10)

                    ; #88277: <==closure== 27969 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #36633: <==negation-removal== 27969 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #53071: <==negation-removal== 88277 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #61467: <==closure== 83790 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #83790: origin
                    (Ba_not_survivorat_s_p11)

                    ; #57129: <==negation-removal== 83790 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #63341: <==negation-removal== 61467 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_b)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #23239: origin
                    (Bb_not_survivorat_s_p11)

                    ; #52393: <==closure== 23239 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #76615: <==negation-removal== 23239 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #85391: <==negation-removal== 52393 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_c)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #20563: <==closure== 73261 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #73261: origin
                    (Bc_not_survivorat_s_p11)

                    ; #28364: <==negation-removal== 73261 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #91404: <==negation-removal== 20563 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #61467: <==closure== 83790 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #83790: origin
                    (Ba_not_survivorat_s_p11)

                    ; #57129: <==negation-removal== 83790 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #63341: <==negation-removal== 61467 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_b)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #23239: origin
                    (Bb_not_survivorat_s_p11)

                    ; #52393: <==closure== 23239 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #76615: <==negation-removal== 23239 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #85391: <==negation-removal== 52393 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_c)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #20563: <==closure== 73261 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #73261: origin
                    (Bc_not_survivorat_s_p11)

                    ; #28364: <==negation-removal== 73261 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #91404: <==negation-removal== 20563 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_a)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #61467: <==closure== 83790 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #83790: origin
                    (Ba_not_survivorat_s_p11)

                    ; #57129: <==negation-removal== 83790 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #63341: <==negation-removal== 61467 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_b)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #23239: origin
                    (Bb_not_survivorat_s_p11)

                    ; #52393: <==closure== 23239 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #76615: <==negation-removal== 23239 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #85391: <==negation-removal== 52393 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_c)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #20563: <==closure== 73261 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #73261: origin
                    (Bc_not_survivorat_s_p11)

                    ; #28364: <==negation-removal== 73261 (pos)
                    (not (Pc_survivorat_s_p11))

                    ; #91404: <==negation-removal== 20563 (pos)
                    (not (Bc_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_a))
        :effect (and
                    ; #12687: <==closure== 71003 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #71003: origin
                    (Ba_not_survivorat_s_p12)

                    ; #15718: <==negation-removal== 71003 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #71489: <==negation-removal== 12687 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (leader_b)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #59102: origin
                    (Bb_not_survivorat_s_p12)

                    ; #65469: <==closure== 59102 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #37829: <==negation-removal== 59102 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #43611: <==negation-removal== 65469 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_c))
        :effect (and
                    ; #22738: origin
                    (Bc_not_survivorat_s_p12)

                    ; #68685: <==closure== 22738 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #35494: <==negation-removal== 68685 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #82101: <==negation-removal== 22738 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #12687: <==closure== 71003 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #71003: origin
                    (Ba_not_survivorat_s_p12)

                    ; #15718: <==negation-removal== 71003 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #71489: <==negation-removal== 12687 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #59102: origin
                    (Bb_not_survivorat_s_p12)

                    ; #65469: <==closure== 59102 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #37829: <==negation-removal== 59102 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #43611: <==negation-removal== 65469 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #22738: origin
                    (Bc_not_survivorat_s_p12)

                    ; #68685: <==closure== 22738 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #35494: <==negation-removal== 68685 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #82101: <==negation-removal== 22738 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #12687: <==closure== 71003 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #71003: origin
                    (Ba_not_survivorat_s_p12)

                    ; #15718: <==negation-removal== 71003 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #71489: <==negation-removal== 12687 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #59102: origin
                    (Bb_not_survivorat_s_p12)

                    ; #65469: <==closure== 59102 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #37829: <==negation-removal== 59102 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #43611: <==negation-removal== 65469 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #22738: origin
                    (Bc_not_survivorat_s_p12)

                    ; #68685: <==closure== 22738 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #35494: <==negation-removal== 68685 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #82101: <==negation-removal== 22738 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #57192: origin
                    (Ba_not_survivorat_s_p1)

                    ; #61830: <==closure== 57192 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #29498: <==negation-removal== 57192 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #46268: <==negation-removal== 61830 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_b)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #38079: origin
                    (Bb_not_survivorat_s_p1)

                    ; #71499: <==closure== 38079 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #24669: <==negation-removal== 38079 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #76105: <==negation-removal== 71499 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #15350: origin
                    (Bc_not_survivorat_s_p1)

                    ; #73443: <==closure== 15350 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #39860: <==negation-removal== 15350 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #80679: <==negation-removal== 73443 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #57192: origin
                    (Ba_not_survivorat_s_p1)

                    ; #61830: <==closure== 57192 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #29498: <==negation-removal== 57192 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #46268: <==negation-removal== 61830 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #38079: origin
                    (Bb_not_survivorat_s_p1)

                    ; #71499: <==closure== 38079 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #24669: <==negation-removal== 38079 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #76105: <==negation-removal== 71499 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #15350: origin
                    (Bc_not_survivorat_s_p1)

                    ; #73443: <==closure== 15350 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #39860: <==negation-removal== 15350 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #80679: <==negation-removal== 73443 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (leader_a)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #57192: origin
                    (Ba_not_survivorat_s_p1)

                    ; #61830: <==closure== 57192 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #29498: <==negation-removal== 57192 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #46268: <==negation-removal== 61830 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (leader_b)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #38079: origin
                    (Bb_not_survivorat_s_p1)

                    ; #71499: <==closure== 38079 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #24669: <==negation-removal== 38079 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #76105: <==negation-removal== 71499 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (leader_c)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #15350: origin
                    (Bc_not_survivorat_s_p1)

                    ; #73443: <==closure== 15350 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #39860: <==negation-removal== 15350 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #80679: <==negation-removal== 73443 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #37898: <==closure== 71118 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #71118: origin
                    (Ba_not_survivorat_s_p2)

                    ; #19195: <==negation-removal== 37898 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #28111: <==negation-removal== 71118 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #21122: origin
                    (Bb_not_survivorat_s_p2)

                    ; #75055: <==closure== 21122 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #22511: <==negation-removal== 21122 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #70593: <==negation-removal== 75055 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #23325: origin
                    (Bc_not_survivorat_s_p2)

                    ; #79994: <==closure== 23325 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #23203: <==negation-removal== 79994 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #75850: <==negation-removal== 23325 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_a)
                           (at_b_p2))
        :effect (and
                    ; #37898: <==closure== 71118 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #71118: origin
                    (Ba_not_survivorat_s_p2)

                    ; #19195: <==negation-removal== 37898 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #28111: <==negation-removal== 71118 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_b)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #21122: origin
                    (Bb_not_survivorat_s_p2)

                    ; #75055: <==closure== 21122 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #22511: <==negation-removal== 21122 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #70593: <==negation-removal== 75055 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_c)
                           (at_b_p2))
        :effect (and
                    ; #23325: origin
                    (Bc_not_survivorat_s_p2)

                    ; #79994: <==closure== 23325 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #23203: <==negation-removal== 79994 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #75850: <==negation-removal== 23325 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (leader_a)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #37898: <==closure== 71118 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #71118: origin
                    (Ba_not_survivorat_s_p2)

                    ; #19195: <==negation-removal== 37898 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #28111: <==negation-removal== 71118 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #21122: origin
                    (Bb_not_survivorat_s_p2)

                    ; #75055: <==closure== 21122 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #22511: <==negation-removal== 21122 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #70593: <==negation-removal== 75055 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #23325: origin
                    (Bc_not_survivorat_s_p2)

                    ; #79994: <==closure== 23325 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #23203: <==negation-removal== 79994 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #75850: <==negation-removal== 23325 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #28461: origin
                    (Ba_not_survivorat_s_p3)

                    ; #88981: <==closure== 28461 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #65293: <==negation-removal== 88981 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #81349: <==negation-removal== 28461 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #29885: <==closure== 31007 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #31007: origin
                    (Bb_not_survivorat_s_p3)

                    ; #71945: <==negation-removal== 29885 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #83986: <==negation-removal== 31007 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #58277: <==closure== 70687 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #70687: origin
                    (Bc_not_survivorat_s_p3)

                    ; #60255: <==negation-removal== 58277 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #95653: <==negation-removal== 70687 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (leader_a)
                           (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #28461: origin
                    (Ba_not_survivorat_s_p3)

                    ; #88981: <==closure== 28461 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #65293: <==negation-removal== 88981 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #81349: <==negation-removal== 28461 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #29885: <==closure== 31007 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #31007: origin
                    (Bb_not_survivorat_s_p3)

                    ; #71945: <==negation-removal== 29885 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #83986: <==negation-removal== 31007 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #58277: <==closure== 70687 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #70687: origin
                    (Bc_not_survivorat_s_p3)

                    ; #60255: <==negation-removal== 58277 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #95653: <==negation-removal== 70687 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #28461: origin
                    (Ba_not_survivorat_s_p3)

                    ; #88981: <==closure== 28461 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #65293: <==negation-removal== 88981 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #81349: <==negation-removal== 28461 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (leader_b)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #29885: <==closure== 31007 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #31007: origin
                    (Bb_not_survivorat_s_p3)

                    ; #71945: <==negation-removal== 29885 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #83986: <==negation-removal== 31007 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #58277: <==closure== 70687 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #70687: origin
                    (Bc_not_survivorat_s_p3)

                    ; #60255: <==negation-removal== 58277 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #95653: <==negation-removal== 70687 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_a)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #35297: origin
                    (Ba_not_survivorat_s_p4)

                    ; #66637: <==closure== 35297 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #26407: <==negation-removal== 66637 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #83830: <==negation-removal== 35297 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #24159: origin
                    (Bb_not_survivorat_s_p4)

                    ; #72169: <==closure== 24159 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #39630: <==negation-removal== 72169 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #83485: <==negation-removal== 24159 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #55771: origin
                    (Bc_not_survivorat_s_p4)

                    ; #64852: <==closure== 55771 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #14897: <==negation-removal== 64852 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #91526: <==negation-removal== 55771 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (leader_a)
                           (at_b_p4))
        :effect (and
                    ; #35297: origin
                    (Ba_not_survivorat_s_p4)

                    ; #66637: <==closure== 35297 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #26407: <==negation-removal== 66637 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #83830: <==negation-removal== 35297 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b))
        :effect (and
                    ; #24159: origin
                    (Bb_not_survivorat_s_p4)

                    ; #72169: <==closure== 24159 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #39630: <==negation-removal== 72169 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #83485: <==negation-removal== 24159 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4))
        :effect (and
                    ; #55771: origin
                    (Bc_not_survivorat_s_p4)

                    ; #64852: <==closure== 55771 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #14897: <==negation-removal== 64852 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #91526: <==negation-removal== 55771 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #35297: origin
                    (Ba_not_survivorat_s_p4)

                    ; #66637: <==closure== 35297 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #26407: <==negation-removal== 66637 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #83830: <==negation-removal== 35297 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #24159: origin
                    (Bb_not_survivorat_s_p4)

                    ; #72169: <==closure== 24159 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #39630: <==negation-removal== 72169 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #83485: <==negation-removal== 24159 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c))
        :effect (and
                    ; #55771: origin
                    (Bc_not_survivorat_s_p4)

                    ; #64852: <==closure== 55771 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #14897: <==negation-removal== 64852 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #91526: <==negation-removal== 55771 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (leader_a)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #11680: <==closure== 43623 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #43623: origin
                    (Ba_not_survivorat_s_p5)

                    ; #56251: <==negation-removal== 43623 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #79963: <==negation-removal== 11680 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (at_a_p5)
                           (leader_b)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #60254: <==closure== 61587 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #61587: origin
                    (Bb_not_survivorat_s_p5)

                    ; #51995: <==negation-removal== 60254 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #84133: <==negation-removal== 61587 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #19307: origin
                    (Bc_not_survivorat_s_p5)

                    ; #93735: <==closure== 19307 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #64755: <==negation-removal== 19307 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #77198: <==negation-removal== 93735 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #11680: <==closure== 43623 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #43623: origin
                    (Ba_not_survivorat_s_p5)

                    ; #56251: <==negation-removal== 43623 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #79963: <==negation-removal== 11680 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_b))
        :effect (and
                    ; #60254: <==closure== 61587 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #61587: origin
                    (Bb_not_survivorat_s_p5)

                    ; #51995: <==negation-removal== 60254 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #84133: <==negation-removal== 61587 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #19307: origin
                    (Bc_not_survivorat_s_p5)

                    ; #93735: <==closure== 19307 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #64755: <==negation-removal== 19307 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #77198: <==negation-removal== 93735 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_a)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #11680: <==closure== 43623 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #43623: origin
                    (Ba_not_survivorat_s_p5)

                    ; #56251: <==negation-removal== 43623 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #79963: <==negation-removal== 11680 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #60254: <==closure== 61587 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #61587: origin
                    (Bb_not_survivorat_s_p5)

                    ; #51995: <==negation-removal== 60254 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #84133: <==negation-removal== 61587 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #19307: origin
                    (Bc_not_survivorat_s_p5)

                    ; #93735: <==closure== 19307 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #64755: <==negation-removal== 19307 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #77198: <==negation-removal== 93735 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_a))
        :effect (and
                    ; #32831: origin
                    (Ba_not_survivorat_s_p6)

                    ; #68908: <==closure== 32831 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #16322: <==negation-removal== 32831 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #36640: <==negation-removal== 68908 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_b)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #59539: <==closure== 82788 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82788: origin
                    (Bb_not_survivorat_s_p6)

                    ; #67415: <==negation-removal== 82788 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #71862: <==negation-removal== 59539 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_c))
        :effect (and
                    ; #32177: <==closure== 80871 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #80871: origin
                    (Bc_not_survivorat_s_p6)

                    ; #64084: <==negation-removal== 32177 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #82610: <==negation-removal== 80871 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_a))
        :effect (and
                    ; #32831: origin
                    (Ba_not_survivorat_s_p6)

                    ; #68908: <==closure== 32831 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #16322: <==negation-removal== 32831 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #36640: <==negation-removal== 68908 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (leader_b)
                           (at_b_p6))
        :effect (and
                    ; #59539: <==closure== 82788 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82788: origin
                    (Bb_not_survivorat_s_p6)

                    ; #67415: <==negation-removal== 82788 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #71862: <==negation-removal== 59539 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_c))
        :effect (and
                    ; #32177: <==closure== 80871 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #80871: origin
                    (Bc_not_survivorat_s_p6)

                    ; #64084: <==negation-removal== 32177 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #82610: <==negation-removal== 80871 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #32831: origin
                    (Ba_not_survivorat_s_p6)

                    ; #68908: <==closure== 32831 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #16322: <==negation-removal== 32831 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #36640: <==negation-removal== 68908 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_b))
        :effect (and
                    ; #59539: <==closure== 82788 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82788: origin
                    (Bb_not_survivorat_s_p6)

                    ; #67415: <==negation-removal== 82788 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #71862: <==negation-removal== 59539 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_c))
        :effect (and
                    ; #32177: <==closure== 80871 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #80871: origin
                    (Bc_not_survivorat_s_p6)

                    ; #64084: <==negation-removal== 32177 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #82610: <==negation-removal== 80871 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (leader_a)
                           (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #40281: <==closure== 52849 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #52849: origin
                    (Ba_not_survivorat_s_p7)

                    ; #47201: <==negation-removal== 40281 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #85159: <==negation-removal== 52849 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (leader_b)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #65912: <==closure== 88838 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #88838: origin
                    (Bb_not_survivorat_s_p7)

                    ; #70122: <==negation-removal== 88838 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #71603: <==negation-removal== 65912 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #17150: origin
                    (Bc_not_survivorat_s_p7)

                    ; #37715: <==closure== 17150 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #16996: <==negation-removal== 37715 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #20257: <==negation-removal== 17150 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #40281: <==closure== 52849 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #52849: origin
                    (Ba_not_survivorat_s_p7)

                    ; #47201: <==negation-removal== 40281 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #85159: <==negation-removal== 52849 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #65912: <==closure== 88838 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #88838: origin
                    (Bb_not_survivorat_s_p7)

                    ; #70122: <==negation-removal== 88838 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #71603: <==negation-removal== 65912 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #17150: origin
                    (Bc_not_survivorat_s_p7)

                    ; #37715: <==closure== 17150 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #16996: <==negation-removal== 37715 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #20257: <==negation-removal== 17150 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #40281: <==closure== 52849 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #52849: origin
                    (Ba_not_survivorat_s_p7)

                    ; #47201: <==negation-removal== 40281 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #85159: <==negation-removal== 52849 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_b)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #65912: <==closure== 88838 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #88838: origin
                    (Bb_not_survivorat_s_p7)

                    ; #70122: <==negation-removal== 88838 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #71603: <==negation-removal== 65912 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7))
        :effect (and
                    ; #17150: origin
                    (Bc_not_survivorat_s_p7)

                    ; #37715: <==closure== 17150 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #16996: <==negation-removal== 37715 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #20257: <==negation-removal== 17150 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_a)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #34346: origin
                    (Ba_not_survivorat_s_p8)

                    ; #80466: <==closure== 34346 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #35050: <==negation-removal== 34346 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #59328: <==negation-removal== 80466 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (at_a_p8)
                           (leader_b)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #44543: origin
                    (Bb_not_survivorat_s_p8)

                    ; #79328: <==closure== 44543 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #31572: <==negation-removal== 44543 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #52277: <==negation-removal== 79328 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_c)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #57107: origin
                    (Bc_not_survivorat_s_p8)

                    ; #68874: <==closure== 57107 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #15031: <==negation-removal== 68874 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #50953: <==negation-removal== 57107 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_a)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #34346: origin
                    (Ba_not_survivorat_s_p8)

                    ; #80466: <==closure== 34346 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #35050: <==negation-removal== 34346 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #59328: <==negation-removal== 80466 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #44543: origin
                    (Bb_not_survivorat_s_p8)

                    ; #79328: <==closure== 44543 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #31572: <==negation-removal== 44543 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #52277: <==negation-removal== 79328 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_c)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #57107: origin
                    (Bc_not_survivorat_s_p8)

                    ; #68874: <==closure== 57107 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #15031: <==negation-removal== 68874 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #50953: <==negation-removal== 57107 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (leader_a)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #34346: origin
                    (Ba_not_survivorat_s_p8)

                    ; #80466: <==closure== 34346 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #35050: <==negation-removal== 34346 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #59328: <==negation-removal== 80466 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (leader_b)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #44543: origin
                    (Bb_not_survivorat_s_p8)

                    ; #79328: <==closure== 44543 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #31572: <==negation-removal== 44543 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #52277: <==negation-removal== 79328 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (leader_c)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #57107: origin
                    (Bc_not_survivorat_s_p8)

                    ; #68874: <==closure== 57107 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #15031: <==negation-removal== 68874 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #50953: <==negation-removal== 57107 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #27455: origin
                    (Ba_not_survivorat_s_p9)

                    ; #72710: <==closure== 27455 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #26460: <==negation-removal== 27455 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #56496: <==negation-removal== 72710 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #63525: origin
                    (Bb_not_survivorat_s_p9)

                    ; #77859: <==closure== 63525 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #71186: <==negation-removal== 77859 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #74175: <==negation-removal== 63525 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #37388: origin
                    (Bc_not_survivorat_s_p9)

                    ; #67111: <==closure== 37388 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #36364: <==negation-removal== 37388 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #59544: <==negation-removal== 67111 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (leader_a)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #27455: origin
                    (Ba_not_survivorat_s_p9)

                    ; #72710: <==closure== 27455 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #26460: <==negation-removal== 27455 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #56496: <==negation-removal== 72710 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #63525: origin
                    (Bb_not_survivorat_s_p9)

                    ; #77859: <==closure== 63525 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #71186: <==negation-removal== 77859 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #74175: <==negation-removal== 63525 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #37388: origin
                    (Bc_not_survivorat_s_p9)

                    ; #67111: <==closure== 37388 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #36364: <==negation-removal== 37388 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #59544: <==negation-removal== 67111 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #27455: origin
                    (Ba_not_survivorat_s_p9)

                    ; #72710: <==closure== 27455 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #26460: <==negation-removal== 27455 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #56496: <==negation-removal== 72710 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_b)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #63525: origin
                    (Bb_not_survivorat_s_p9)

                    ; #77859: <==closure== 63525 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #71186: <==negation-removal== 77859 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #74175: <==negation-removal== 63525 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_c))
        :effect (and
                    ; #37388: origin
                    (Bc_not_survivorat_s_p9)

                    ; #67111: <==closure== 37388 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #36364: <==negation-removal== 37388 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #59544: <==negation-removal== 67111 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (leader_a)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #23000: origin
                    (Ba_survivorat_s_p10)

                    ; #25479: <==closure== 23000 (pos)
                    (Pa_survivorat_s_p10)

                    ; #28367: <==negation-removal== 23000 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #60027: <==negation-removal== 25479 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (at_a_p10)
                           (leader_b)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #63322: origin
                    (Bb_survivorat_s_p10)

                    ; #75795: <==closure== 63322 (pos)
                    (Pb_survivorat_s_p10)

                    ; #51531: <==negation-removal== 75795 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #63493: <==negation-removal== 63322 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #36633: <==closure== 53071 (pos)
                    (Pc_survivorat_s_p10)

                    ; #53071: origin
                    (Bc_survivorat_s_p10)

                    ; #27969: <==negation-removal== 36633 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88277: <==negation-removal== 53071 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #23000: origin
                    (Ba_survivorat_s_p10)

                    ; #25479: <==closure== 23000 (pos)
                    (Pa_survivorat_s_p10)

                    ; #28367: <==negation-removal== 23000 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #60027: <==negation-removal== 25479 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b))
        :effect (and
                    ; #63322: origin
                    (Bb_survivorat_s_p10)

                    ; #75795: <==closure== 63322 (pos)
                    (Pb_survivorat_s_p10)

                    ; #51531: <==negation-removal== 75795 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #63493: <==negation-removal== 63322 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_c))
        :effect (and
                    ; #36633: <==closure== 53071 (pos)
                    (Pc_survivorat_s_p10)

                    ; #53071: origin
                    (Bc_survivorat_s_p10)

                    ; #27969: <==negation-removal== 36633 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88277: <==negation-removal== 53071 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (leader_a)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #23000: origin
                    (Ba_survivorat_s_p10)

                    ; #25479: <==closure== 23000 (pos)
                    (Pa_survivorat_s_p10)

                    ; #28367: <==negation-removal== 23000 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #60027: <==negation-removal== 25479 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #63322: origin
                    (Bb_survivorat_s_p10)

                    ; #75795: <==closure== 63322 (pos)
                    (Pb_survivorat_s_p10)

                    ; #51531: <==negation-removal== 75795 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #63493: <==negation-removal== 63322 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #36633: <==closure== 53071 (pos)
                    (Pc_survivorat_s_p10)

                    ; #53071: origin
                    (Bc_survivorat_s_p10)

                    ; #27969: <==negation-removal== 36633 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88277: <==negation-removal== 53071 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #57129: <==closure== 63341 (pos)
                    (Pa_survivorat_s_p11)

                    ; #63341: origin
                    (Ba_survivorat_s_p11)

                    ; #61467: <==negation-removal== 63341 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #83790: <==negation-removal== 57129 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_b)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #76615: <==closure== 85391 (pos)
                    (Pb_survivorat_s_p11)

                    ; #85391: origin
                    (Bb_survivorat_s_p11)

                    ; #23239: <==negation-removal== 76615 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #52393: <==negation-removal== 85391 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_c)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #28364: <==closure== 91404 (pos)
                    (Pc_survivorat_s_p11)

                    ; #91404: origin
                    (Bc_survivorat_s_p11)

                    ; #20563: <==negation-removal== 91404 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #73261: <==negation-removal== 28364 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #57129: <==closure== 63341 (pos)
                    (Pa_survivorat_s_p11)

                    ; #63341: origin
                    (Ba_survivorat_s_p11)

                    ; #61467: <==negation-removal== 63341 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #83790: <==negation-removal== 57129 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_b)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #76615: <==closure== 85391 (pos)
                    (Pb_survivorat_s_p11)

                    ; #85391: origin
                    (Bb_survivorat_s_p11)

                    ; #23239: <==negation-removal== 76615 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #52393: <==negation-removal== 85391 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_c)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #28364: <==closure== 91404 (pos)
                    (Pc_survivorat_s_p11)

                    ; #91404: origin
                    (Bc_survivorat_s_p11)

                    ; #20563: <==negation-removal== 91404 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #73261: <==negation-removal== 28364 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_a)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #57129: <==closure== 63341 (pos)
                    (Pa_survivorat_s_p11)

                    ; #63341: origin
                    (Ba_survivorat_s_p11)

                    ; #61467: <==negation-removal== 63341 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #83790: <==negation-removal== 57129 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_b)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #76615: <==closure== 85391 (pos)
                    (Pb_survivorat_s_p11)

                    ; #85391: origin
                    (Bb_survivorat_s_p11)

                    ; #23239: <==negation-removal== 76615 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #52393: <==negation-removal== 85391 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_c)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #28364: <==closure== 91404 (pos)
                    (Pc_survivorat_s_p11)

                    ; #91404: origin
                    (Bc_survivorat_s_p11)

                    ; #20563: <==negation-removal== 91404 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #73261: <==negation-removal== 28364 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_a))
        :effect (and
                    ; #15718: <==closure== 71489 (pos)
                    (Pa_survivorat_s_p12)

                    ; #71489: origin
                    (Ba_survivorat_s_p12)

                    ; #12687: <==negation-removal== 71489 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #71003: <==negation-removal== 15718 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (leader_b)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #37829: <==closure== 43611 (pos)
                    (Pb_survivorat_s_p12)

                    ; #43611: origin
                    (Bb_survivorat_s_p12)

                    ; #59102: <==negation-removal== 37829 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #65469: <==negation-removal== 43611 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_c))
        :effect (and
                    ; #35494: origin
                    (Bc_survivorat_s_p12)

                    ; #82101: <==closure== 35494 (pos)
                    (Pc_survivorat_s_p12)

                    ; #22738: <==negation-removal== 82101 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #68685: <==negation-removal== 35494 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #15718: <==closure== 71489 (pos)
                    (Pa_survivorat_s_p12)

                    ; #71489: origin
                    (Ba_survivorat_s_p12)

                    ; #12687: <==negation-removal== 71489 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #71003: <==negation-removal== 15718 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #37829: <==closure== 43611 (pos)
                    (Pb_survivorat_s_p12)

                    ; #43611: origin
                    (Bb_survivorat_s_p12)

                    ; #59102: <==negation-removal== 37829 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #65469: <==negation-removal== 43611 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #35494: origin
                    (Bc_survivorat_s_p12)

                    ; #82101: <==closure== 35494 (pos)
                    (Pc_survivorat_s_p12)

                    ; #22738: <==negation-removal== 82101 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #68685: <==negation-removal== 35494 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #15718: <==closure== 71489 (pos)
                    (Pa_survivorat_s_p12)

                    ; #71489: origin
                    (Ba_survivorat_s_p12)

                    ; #12687: <==negation-removal== 71489 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #71003: <==negation-removal== 15718 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #37829: <==closure== 43611 (pos)
                    (Pb_survivorat_s_p12)

                    ; #43611: origin
                    (Bb_survivorat_s_p12)

                    ; #59102: <==negation-removal== 37829 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #65469: <==negation-removal== 43611 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #35494: origin
                    (Bc_survivorat_s_p12)

                    ; #82101: <==closure== 35494 (pos)
                    (Pc_survivorat_s_p12)

                    ; #22738: <==negation-removal== 82101 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #68685: <==negation-removal== 35494 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #29498: <==closure== 46268 (pos)
                    (Pa_survivorat_s_p1)

                    ; #46268: origin
                    (Ba_survivorat_s_p1)

                    ; #57192: <==negation-removal== 29498 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #61830: <==negation-removal== 46268 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_b)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #24669: <==closure== 76105 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76105: origin
                    (Bb_survivorat_s_p1)

                    ; #38079: <==negation-removal== 24669 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #71499: <==negation-removal== 76105 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #39860: <==closure== 80679 (pos)
                    (Pc_survivorat_s_p1)

                    ; #80679: origin
                    (Bc_survivorat_s_p1)

                    ; #15350: <==negation-removal== 39860 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #73443: <==negation-removal== 80679 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #29498: <==closure== 46268 (pos)
                    (Pa_survivorat_s_p1)

                    ; #46268: origin
                    (Ba_survivorat_s_p1)

                    ; #57192: <==negation-removal== 29498 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #61830: <==negation-removal== 46268 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #24669: <==closure== 76105 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76105: origin
                    (Bb_survivorat_s_p1)

                    ; #38079: <==negation-removal== 24669 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #71499: <==negation-removal== 76105 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #39860: <==closure== 80679 (pos)
                    (Pc_survivorat_s_p1)

                    ; #80679: origin
                    (Bc_survivorat_s_p1)

                    ; #15350: <==negation-removal== 39860 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #73443: <==negation-removal== 80679 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (leader_a)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #29498: <==closure== 46268 (pos)
                    (Pa_survivorat_s_p1)

                    ; #46268: origin
                    (Ba_survivorat_s_p1)

                    ; #57192: <==negation-removal== 29498 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #61830: <==negation-removal== 46268 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (leader_b)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #24669: <==closure== 76105 (pos)
                    (Pb_survivorat_s_p1)

                    ; #76105: origin
                    (Bb_survivorat_s_p1)

                    ; #38079: <==negation-removal== 24669 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #71499: <==negation-removal== 76105 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (leader_c)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #39860: <==closure== 80679 (pos)
                    (Pc_survivorat_s_p1)

                    ; #80679: origin
                    (Bc_survivorat_s_p1)

                    ; #15350: <==negation-removal== 39860 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #73443: <==negation-removal== 80679 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #19195: origin
                    (Ba_survivorat_s_p2)

                    ; #28111: <==closure== 19195 (pos)
                    (Pa_survivorat_s_p2)

                    ; #37898: <==negation-removal== 19195 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #71118: <==negation-removal== 28111 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #22511: <==closure== 70593 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70593: origin
                    (Bb_survivorat_s_p2)

                    ; #21122: <==negation-removal== 22511 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75055: <==negation-removal== 70593 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #23203: origin
                    (Bc_survivorat_s_p2)

                    ; #75850: <==closure== 23203 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23325: <==negation-removal== 75850 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #79994: <==negation-removal== 23203 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_a)
                           (at_b_p2))
        :effect (and
                    ; #19195: origin
                    (Ba_survivorat_s_p2)

                    ; #28111: <==closure== 19195 (pos)
                    (Pa_survivorat_s_p2)

                    ; #37898: <==negation-removal== 19195 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #71118: <==negation-removal== 28111 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_b)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #22511: <==closure== 70593 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70593: origin
                    (Bb_survivorat_s_p2)

                    ; #21122: <==negation-removal== 22511 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75055: <==negation-removal== 70593 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_c)
                           (at_b_p2))
        :effect (and
                    ; #23203: origin
                    (Bc_survivorat_s_p2)

                    ; #75850: <==closure== 23203 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23325: <==negation-removal== 75850 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #79994: <==negation-removal== 23203 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (leader_a)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #19195: origin
                    (Ba_survivorat_s_p2)

                    ; #28111: <==closure== 19195 (pos)
                    (Pa_survivorat_s_p2)

                    ; #37898: <==negation-removal== 19195 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #71118: <==negation-removal== 28111 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #22511: <==closure== 70593 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70593: origin
                    (Bb_survivorat_s_p2)

                    ; #21122: <==negation-removal== 22511 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75055: <==negation-removal== 70593 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #23203: origin
                    (Bc_survivorat_s_p2)

                    ; #75850: <==closure== 23203 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23325: <==negation-removal== 75850 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #79994: <==negation-removal== 23203 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #65293: origin
                    (Ba_survivorat_s_p3)

                    ; #81349: <==closure== 65293 (pos)
                    (Pa_survivorat_s_p3)

                    ; #28461: <==negation-removal== 81349 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88981: <==negation-removal== 65293 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #71945: origin
                    (Bb_survivorat_s_p3)

                    ; #83986: <==closure== 71945 (pos)
                    (Pb_survivorat_s_p3)

                    ; #29885: <==negation-removal== 71945 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31007: <==negation-removal== 83986 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #60255: origin
                    (Bc_survivorat_s_p3)

                    ; #95653: <==closure== 60255 (pos)
                    (Pc_survivorat_s_p3)

                    ; #58277: <==negation-removal== 60255 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #70687: <==negation-removal== 95653 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (leader_a)
                           (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #65293: origin
                    (Ba_survivorat_s_p3)

                    ; #81349: <==closure== 65293 (pos)
                    (Pa_survivorat_s_p3)

                    ; #28461: <==negation-removal== 81349 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88981: <==negation-removal== 65293 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #71945: origin
                    (Bb_survivorat_s_p3)

                    ; #83986: <==closure== 71945 (pos)
                    (Pb_survivorat_s_p3)

                    ; #29885: <==negation-removal== 71945 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31007: <==negation-removal== 83986 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #60255: origin
                    (Bc_survivorat_s_p3)

                    ; #95653: <==closure== 60255 (pos)
                    (Pc_survivorat_s_p3)

                    ; #58277: <==negation-removal== 60255 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #70687: <==negation-removal== 95653 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #65293: origin
                    (Ba_survivorat_s_p3)

                    ; #81349: <==closure== 65293 (pos)
                    (Pa_survivorat_s_p3)

                    ; #28461: <==negation-removal== 81349 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88981: <==negation-removal== 65293 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (leader_b)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #71945: origin
                    (Bb_survivorat_s_p3)

                    ; #83986: <==closure== 71945 (pos)
                    (Pb_survivorat_s_p3)

                    ; #29885: <==negation-removal== 71945 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31007: <==negation-removal== 83986 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #60255: origin
                    (Bc_survivorat_s_p3)

                    ; #95653: <==closure== 60255 (pos)
                    (Pc_survivorat_s_p3)

                    ; #58277: <==negation-removal== 60255 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #70687: <==negation-removal== 95653 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_a)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #26407: origin
                    (Ba_survivorat_s_p4)

                    ; #83830: <==closure== 26407 (pos)
                    (Pa_survivorat_s_p4)

                    ; #35297: <==negation-removal== 83830 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #66637: <==negation-removal== 26407 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #39630: origin
                    (Bb_survivorat_s_p4)

                    ; #83485: <==closure== 39630 (pos)
                    (Pb_survivorat_s_p4)

                    ; #24159: <==negation-removal== 83485 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72169: <==negation-removal== 39630 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #14897: origin
                    (Bc_survivorat_s_p4)

                    ; #91526: <==closure== 14897 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55771: <==negation-removal== 91526 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #64852: <==negation-removal== 14897 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (leader_a)
                           (at_b_p4))
        :effect (and
                    ; #26407: origin
                    (Ba_survivorat_s_p4)

                    ; #83830: <==closure== 26407 (pos)
                    (Pa_survivorat_s_p4)

                    ; #35297: <==negation-removal== 83830 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #66637: <==negation-removal== 26407 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b))
        :effect (and
                    ; #39630: origin
                    (Bb_survivorat_s_p4)

                    ; #83485: <==closure== 39630 (pos)
                    (Pb_survivorat_s_p4)

                    ; #24159: <==negation-removal== 83485 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72169: <==negation-removal== 39630 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4))
        :effect (and
                    ; #14897: origin
                    (Bc_survivorat_s_p4)

                    ; #91526: <==closure== 14897 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55771: <==negation-removal== 91526 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #64852: <==negation-removal== 14897 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #26407: origin
                    (Ba_survivorat_s_p4)

                    ; #83830: <==closure== 26407 (pos)
                    (Pa_survivorat_s_p4)

                    ; #35297: <==negation-removal== 83830 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #66637: <==negation-removal== 26407 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #39630: origin
                    (Bb_survivorat_s_p4)

                    ; #83485: <==closure== 39630 (pos)
                    (Pb_survivorat_s_p4)

                    ; #24159: <==negation-removal== 83485 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72169: <==negation-removal== 39630 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c))
        :effect (and
                    ; #14897: origin
                    (Bc_survivorat_s_p4)

                    ; #91526: <==closure== 14897 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55771: <==negation-removal== 91526 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #64852: <==negation-removal== 14897 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (leader_a)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #56251: <==closure== 79963 (pos)
                    (Pa_survivorat_s_p5)

                    ; #79963: origin
                    (Ba_survivorat_s_p5)

                    ; #11680: <==negation-removal== 79963 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #43623: <==negation-removal== 56251 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (at_a_p5)
                           (leader_b)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #51995: origin
                    (Bb_survivorat_s_p5)

                    ; #84133: <==closure== 51995 (pos)
                    (Pb_survivorat_s_p5)

                    ; #60254: <==negation-removal== 51995 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #61587: <==negation-removal== 84133 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #64755: <==closure== 77198 (pos)
                    (Pc_survivorat_s_p5)

                    ; #77198: origin
                    (Bc_survivorat_s_p5)

                    ; #19307: <==negation-removal== 64755 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #93735: <==negation-removal== 77198 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #56251: <==closure== 79963 (pos)
                    (Pa_survivorat_s_p5)

                    ; #79963: origin
                    (Ba_survivorat_s_p5)

                    ; #11680: <==negation-removal== 79963 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #43623: <==negation-removal== 56251 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_b))
        :effect (and
                    ; #51995: origin
                    (Bb_survivorat_s_p5)

                    ; #84133: <==closure== 51995 (pos)
                    (Pb_survivorat_s_p5)

                    ; #60254: <==negation-removal== 51995 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #61587: <==negation-removal== 84133 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #64755: <==closure== 77198 (pos)
                    (Pc_survivorat_s_p5)

                    ; #77198: origin
                    (Bc_survivorat_s_p5)

                    ; #19307: <==negation-removal== 64755 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #93735: <==negation-removal== 77198 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_a)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #56251: <==closure== 79963 (pos)
                    (Pa_survivorat_s_p5)

                    ; #79963: origin
                    (Ba_survivorat_s_p5)

                    ; #11680: <==negation-removal== 79963 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #43623: <==negation-removal== 56251 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #51995: origin
                    (Bb_survivorat_s_p5)

                    ; #84133: <==closure== 51995 (pos)
                    (Pb_survivorat_s_p5)

                    ; #60254: <==negation-removal== 51995 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #61587: <==negation-removal== 84133 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #64755: <==closure== 77198 (pos)
                    (Pc_survivorat_s_p5)

                    ; #77198: origin
                    (Bc_survivorat_s_p5)

                    ; #19307: <==negation-removal== 64755 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #93735: <==negation-removal== 77198 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_a))
        :effect (and
                    ; #16322: <==closure== 36640 (pos)
                    (Pa_survivorat_s_p6)

                    ; #36640: origin
                    (Ba_survivorat_s_p6)

                    ; #32831: <==negation-removal== 16322 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #68908: <==negation-removal== 36640 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_b)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #67415: <==closure== 71862 (pos)
                    (Pb_survivorat_s_p6)

                    ; #71862: origin
                    (Bb_survivorat_s_p6)

                    ; #59539: <==negation-removal== 71862 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82788: <==negation-removal== 67415 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_c))
        :effect (and
                    ; #64084: origin
                    (Bc_survivorat_s_p6)

                    ; #82610: <==closure== 64084 (pos)
                    (Pc_survivorat_s_p6)

                    ; #32177: <==negation-removal== 64084 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #80871: <==negation-removal== 82610 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_a))
        :effect (and
                    ; #16322: <==closure== 36640 (pos)
                    (Pa_survivorat_s_p6)

                    ; #36640: origin
                    (Ba_survivorat_s_p6)

                    ; #32831: <==negation-removal== 16322 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #68908: <==negation-removal== 36640 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (leader_b)
                           (at_b_p6))
        :effect (and
                    ; #67415: <==closure== 71862 (pos)
                    (Pb_survivorat_s_p6)

                    ; #71862: origin
                    (Bb_survivorat_s_p6)

                    ; #59539: <==negation-removal== 71862 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82788: <==negation-removal== 67415 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_c))
        :effect (and
                    ; #64084: origin
                    (Bc_survivorat_s_p6)

                    ; #82610: <==closure== 64084 (pos)
                    (Pc_survivorat_s_p6)

                    ; #32177: <==negation-removal== 64084 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #80871: <==negation-removal== 82610 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #16322: <==closure== 36640 (pos)
                    (Pa_survivorat_s_p6)

                    ; #36640: origin
                    (Ba_survivorat_s_p6)

                    ; #32831: <==negation-removal== 16322 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #68908: <==negation-removal== 36640 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_b))
        :effect (and
                    ; #67415: <==closure== 71862 (pos)
                    (Pb_survivorat_s_p6)

                    ; #71862: origin
                    (Bb_survivorat_s_p6)

                    ; #59539: <==negation-removal== 71862 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82788: <==negation-removal== 67415 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_c))
        :effect (and
                    ; #64084: origin
                    (Bc_survivorat_s_p6)

                    ; #82610: <==closure== 64084 (pos)
                    (Pc_survivorat_s_p6)

                    ; #32177: <==negation-removal== 64084 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #80871: <==negation-removal== 82610 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (leader_a)
                           (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #47201: origin
                    (Ba_survivorat_s_p7)

                    ; #85159: <==closure== 47201 (pos)
                    (Pa_survivorat_s_p7)

                    ; #40281: <==negation-removal== 47201 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #52849: <==negation-removal== 85159 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (leader_b)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #70122: <==closure== 71603 (pos)
                    (Pb_survivorat_s_p7)

                    ; #71603: origin
                    (Bb_survivorat_s_p7)

                    ; #65912: <==negation-removal== 71603 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #88838: <==negation-removal== 70122 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #16996: origin
                    (Bc_survivorat_s_p7)

                    ; #20257: <==closure== 16996 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17150: <==negation-removal== 20257 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #37715: <==negation-removal== 16996 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #47201: origin
                    (Ba_survivorat_s_p7)

                    ; #85159: <==closure== 47201 (pos)
                    (Pa_survivorat_s_p7)

                    ; #40281: <==negation-removal== 47201 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #52849: <==negation-removal== 85159 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #70122: <==closure== 71603 (pos)
                    (Pb_survivorat_s_p7)

                    ; #71603: origin
                    (Bb_survivorat_s_p7)

                    ; #65912: <==negation-removal== 71603 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #88838: <==negation-removal== 70122 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #16996: origin
                    (Bc_survivorat_s_p7)

                    ; #20257: <==closure== 16996 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17150: <==negation-removal== 20257 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #37715: <==negation-removal== 16996 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #47201: origin
                    (Ba_survivorat_s_p7)

                    ; #85159: <==closure== 47201 (pos)
                    (Pa_survivorat_s_p7)

                    ; #40281: <==negation-removal== 47201 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #52849: <==negation-removal== 85159 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_b)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #70122: <==closure== 71603 (pos)
                    (Pb_survivorat_s_p7)

                    ; #71603: origin
                    (Bb_survivorat_s_p7)

                    ; #65912: <==negation-removal== 71603 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #88838: <==negation-removal== 70122 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7))
        :effect (and
                    ; #16996: origin
                    (Bc_survivorat_s_p7)

                    ; #20257: <==closure== 16996 (pos)
                    (Pc_survivorat_s_p7)

                    ; #17150: <==negation-removal== 20257 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #37715: <==negation-removal== 16996 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_a)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #35050: <==closure== 59328 (pos)
                    (Pa_survivorat_s_p8)

                    ; #59328: origin
                    (Ba_survivorat_s_p8)

                    ; #34346: <==negation-removal== 35050 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #80466: <==negation-removal== 59328 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (at_a_p8)
                           (leader_b)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #31572: <==closure== 52277 (pos)
                    (Pb_survivorat_s_p8)

                    ; #52277: origin
                    (Bb_survivorat_s_p8)

                    ; #44543: <==negation-removal== 31572 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #79328: <==negation-removal== 52277 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_c)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #15031: origin
                    (Bc_survivorat_s_p8)

                    ; #50953: <==closure== 15031 (pos)
                    (Pc_survivorat_s_p8)

                    ; #57107: <==negation-removal== 50953 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #68874: <==negation-removal== 15031 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_a)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #35050: <==closure== 59328 (pos)
                    (Pa_survivorat_s_p8)

                    ; #59328: origin
                    (Ba_survivorat_s_p8)

                    ; #34346: <==negation-removal== 35050 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #80466: <==negation-removal== 59328 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #31572: <==closure== 52277 (pos)
                    (Pb_survivorat_s_p8)

                    ; #52277: origin
                    (Bb_survivorat_s_p8)

                    ; #44543: <==negation-removal== 31572 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #79328: <==negation-removal== 52277 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_c)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #15031: origin
                    (Bc_survivorat_s_p8)

                    ; #50953: <==closure== 15031 (pos)
                    (Pc_survivorat_s_p8)

                    ; #57107: <==negation-removal== 50953 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #68874: <==negation-removal== 15031 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (leader_a)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #35050: <==closure== 59328 (pos)
                    (Pa_survivorat_s_p8)

                    ; #59328: origin
                    (Ba_survivorat_s_p8)

                    ; #34346: <==negation-removal== 35050 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #80466: <==negation-removal== 59328 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (leader_b)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #31572: <==closure== 52277 (pos)
                    (Pb_survivorat_s_p8)

                    ; #52277: origin
                    (Bb_survivorat_s_p8)

                    ; #44543: <==negation-removal== 31572 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #79328: <==negation-removal== 52277 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (leader_c)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #15031: origin
                    (Bc_survivorat_s_p8)

                    ; #50953: <==closure== 15031 (pos)
                    (Pc_survivorat_s_p8)

                    ; #57107: <==negation-removal== 50953 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #68874: <==negation-removal== 15031 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #26460: <==closure== 56496 (pos)
                    (Pa_survivorat_s_p9)

                    ; #56496: origin
                    (Ba_survivorat_s_p9)

                    ; #27455: <==negation-removal== 26460 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #72710: <==negation-removal== 56496 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #71186: origin
                    (Bb_survivorat_s_p9)

                    ; #74175: <==closure== 71186 (pos)
                    (Pb_survivorat_s_p9)

                    ; #63525: <==negation-removal== 74175 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #77859: <==negation-removal== 71186 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #36364: <==closure== 59544 (pos)
                    (Pc_survivorat_s_p9)

                    ; #59544: origin
                    (Bc_survivorat_s_p9)

                    ; #37388: <==negation-removal== 36364 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #67111: <==negation-removal== 59544 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (leader_a)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #26460: <==closure== 56496 (pos)
                    (Pa_survivorat_s_p9)

                    ; #56496: origin
                    (Ba_survivorat_s_p9)

                    ; #27455: <==negation-removal== 26460 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #72710: <==negation-removal== 56496 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #71186: origin
                    (Bb_survivorat_s_p9)

                    ; #74175: <==closure== 71186 (pos)
                    (Pb_survivorat_s_p9)

                    ; #63525: <==negation-removal== 74175 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #77859: <==negation-removal== 71186 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #36364: <==closure== 59544 (pos)
                    (Pc_survivorat_s_p9)

                    ; #59544: origin
                    (Bc_survivorat_s_p9)

                    ; #37388: <==negation-removal== 36364 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #67111: <==negation-removal== 59544 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #26460: <==closure== 56496 (pos)
                    (Pa_survivorat_s_p9)

                    ; #56496: origin
                    (Ba_survivorat_s_p9)

                    ; #27455: <==negation-removal== 26460 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #72710: <==negation-removal== 56496 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_b)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #71186: origin
                    (Bb_survivorat_s_p9)

                    ; #74175: <==closure== 71186 (pos)
                    (Pb_survivorat_s_p9)

                    ; #63525: <==negation-removal== 74175 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #77859: <==negation-removal== 71186 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_c))
        :effect (and
                    ; #36364: <==closure== 59544 (pos)
                    (Pc_survivorat_s_p9)

                    ; #59544: origin
                    (Bc_survivorat_s_p9)

                    ; #37388: <==negation-removal== 36364 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #67111: <==negation-removal== 59544 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1)
                           (not (leader_a)))
        :effect (and
                    ; #22587: origin
                    (not_at_a_p10)

                    ; #86629: origin
                    (at_a_p1)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #22587: origin
                    (not_at_a_p10)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22587: origin
                    (not_at_a_p10)

                    ; #51747: origin
                    (at_a_p11)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12)
                           (not (leader_a)))
        :effect (and
                    ; #22587: origin
                    (not_at_a_p10)

                    ; #89841: origin
                    (at_a_p12)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #22587: origin
                    (not_at_a_p10)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3)
                           (not (leader_a)))
        :effect (and
                    ; #22587: origin
                    (not_at_a_p10)

                    ; #52395: origin
                    (at_a_p3)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22587: origin
                    (not_at_a_p10)

                    ; #91121: origin
                    (at_a_p4)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5)
                           (not (leader_a)))
        :effect (and
                    ; #22587: origin
                    (not_at_a_p10)

                    ; #53609: origin
                    (at_a_p5)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #22587: origin
                    (not_at_a_p10)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #22587: origin
                    (not_at_a_p10)

                    ; #31177: origin
                    (at_a_p7)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #22587: origin
                    (not_at_a_p10)

                    ; #23640: origin
                    (at_a_p8)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #22587: origin
                    (not_at_a_p10)

                    ; #31004: origin
                    (at_a_p9)

                    ; #10260: <==negation-removal== 22587 (pos)
                    (not (at_a_p10))

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1)
                           (not (leader_a)))
        :effect (and
                    ; #82683: origin
                    (not_at_a_p11)

                    ; #86629: origin
                    (at_a_p1)

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #82683: origin
                    (not_at_a_p11)

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #51747: origin
                    (at_a_p11)

                    ; #82683: origin
                    (not_at_a_p11)

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #82683: origin
                    (not_at_a_p11)

                    ; #89841: origin
                    (at_a_p12)

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #82683: origin
                    (not_at_a_p11)

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #52395: origin
                    (at_a_p3)

                    ; #82683: origin
                    (not_at_a_p11)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #82683: origin
                    (not_at_a_p11)

                    ; #91121: origin
                    (at_a_p4)

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5)
                           (not (leader_a)))
        :effect (and
                    ; #53609: origin
                    (at_a_p5)

                    ; #82683: origin
                    (not_at_a_p11)

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #82683: origin
                    (not_at_a_p11)

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31177: origin
                    (at_a_p7)

                    ; #82683: origin
                    (not_at_a_p11)

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #82683: origin
                    (not_at_a_p11)

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31004: origin
                    (at_a_p9)

                    ; #82683: origin
                    (not_at_a_p11)

                    ; #51747: <==negation-removal== 82683 (pos)
                    (not (at_a_p11))

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #42187: origin
                    (not_at_a_p12)

                    ; #86629: origin
                    (at_a_p1)

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #42187: origin
                    (not_at_a_p12)

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #42187: origin
                    (not_at_a_p12)

                    ; #51747: origin
                    (at_a_p11)

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #42187: origin
                    (not_at_a_p12)

                    ; #89841: origin
                    (at_a_p12)

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #42187: origin
                    (not_at_a_p12)

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3)
                           (not (leader_a)))
        :effect (and
                    ; #42187: origin
                    (not_at_a_p12)

                    ; #52395: origin
                    (at_a_p3)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4)
                           (not (leader_a)))
        :effect (and
                    ; #42187: origin
                    (not_at_a_p12)

                    ; #91121: origin
                    (at_a_p4)

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5)
                           (not (leader_a)))
        :effect (and
                    ; #42187: origin
                    (not_at_a_p12)

                    ; #53609: origin
                    (at_a_p5)

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #42187: origin
                    (not_at_a_p12)

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31177: origin
                    (at_a_p7)

                    ; #42187: origin
                    (not_at_a_p12)

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #42187: origin
                    (not_at_a_p12)

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31004: origin
                    (at_a_p9)

                    ; #42187: origin
                    (not_at_a_p12)

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))

                    ; #89841: <==negation-removal== 42187 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #54642: origin
                    (not_at_a_p1)

                    ; #86629: origin
                    (at_a_p1)

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #54642: origin
                    (not_at_a_p1)

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #51747: origin
                    (at_a_p11)

                    ; #54642: origin
                    (not_at_a_p1)

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #54642: origin
                    (not_at_a_p1)

                    ; #89841: origin
                    (at_a_p12)

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #54642: origin
                    (not_at_a_p1)

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #52395: origin
                    (at_a_p3)

                    ; #54642: origin
                    (not_at_a_p1)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #54642: origin
                    (not_at_a_p1)

                    ; #91121: origin
                    (at_a_p4)

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #53609: origin
                    (at_a_p5)

                    ; #54642: origin
                    (not_at_a_p1)

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #54642: origin
                    (not_at_a_p1)

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31177: origin
                    (at_a_p7)

                    ; #54642: origin
                    (not_at_a_p1)

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #54642: origin
                    (not_at_a_p1)

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31004: origin
                    (at_a_p9)

                    ; #54642: origin
                    (not_at_a_p1)

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))

                    ; #86629: <==negation-removal== 54642 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30045: origin
                    (not_at_a_p2)

                    ; #86629: origin
                    (at_a_p1)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #30045: origin
                    (not_at_a_p2)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30045: origin
                    (not_at_a_p2)

                    ; #51747: origin
                    (at_a_p11)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30045: origin
                    (not_at_a_p2)

                    ; #89841: origin
                    (at_a_p12)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #30045: origin
                    (not_at_a_p2)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30045: origin
                    (not_at_a_p2)

                    ; #52395: origin
                    (at_a_p3)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30045: origin
                    (not_at_a_p2)

                    ; #91121: origin
                    (at_a_p4)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30045: origin
                    (not_at_a_p2)

                    ; #53609: origin
                    (at_a_p5)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #30045: origin
                    (not_at_a_p2)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30045: origin
                    (not_at_a_p2)

                    ; #31177: origin
                    (at_a_p7)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #30045: origin
                    (not_at_a_p2)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30045: origin
                    (not_at_a_p2)

                    ; #31004: origin
                    (at_a_p9)

                    ; #14055: <==negation-removal== 30045 (pos)
                    (not (at_a_p2))

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #86629: origin
                    (at_a_p1)

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #13976: origin
                    (not_at_a_p3)

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #51747: origin
                    (at_a_p11)

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #89841: origin
                    (at_a_p12)

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #14055: origin
                    (at_a_p2)

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #52395: origin
                    (at_a_p3)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #91121: origin
                    (at_a_p4)

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #53609: origin
                    (at_a_p5)

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #13976: origin
                    (not_at_a_p3)

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #31177: origin
                    (at_a_p7)

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #23640: origin
                    (at_a_p8)

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13976: origin
                    (not_at_a_p3)

                    ; #31004: origin
                    (at_a_p9)

                    ; #52395: <==negation-removal== 13976 (pos)
                    (not (at_a_p3))

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40405: origin
                    (not_at_a_p4)

                    ; #86629: origin
                    (at_a_p1)

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #40405: origin
                    (not_at_a_p4)

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11)
                           (not (leader_a)))
        :effect (and
                    ; #40405: origin
                    (not_at_a_p4)

                    ; #51747: origin
                    (at_a_p11)

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #40405: origin
                    (not_at_a_p4)

                    ; #89841: origin
                    (at_a_p12)

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #40405: origin
                    (not_at_a_p4)

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #40405: origin
                    (not_at_a_p4)

                    ; #52395: origin
                    (at_a_p3)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #40405: origin
                    (not_at_a_p4)

                    ; #91121: origin
                    (at_a_p4)

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #40405: origin
                    (not_at_a_p4)

                    ; #53609: origin
                    (at_a_p5)

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #40405: origin
                    (not_at_a_p4)

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31177: origin
                    (at_a_p7)

                    ; #40405: origin
                    (not_at_a_p4)

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #40405: origin
                    (not_at_a_p4)

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31004: origin
                    (at_a_p9)

                    ; #40405: origin
                    (not_at_a_p4)

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))

                    ; #91121: <==negation-removal== 40405 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #47591: origin
                    (not_at_a_p5)

                    ; #86629: origin
                    (at_a_p1)

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #47591: origin
                    (not_at_a_p5)

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11)
                           (not (leader_a)))
        :effect (and
                    ; #47591: origin
                    (not_at_a_p5)

                    ; #51747: origin
                    (at_a_p11)

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12)
                           (not (leader_a)))
        :effect (and
                    ; #47591: origin
                    (not_at_a_p5)

                    ; #89841: origin
                    (at_a_p12)

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #47591: origin
                    (not_at_a_p5)

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #47591: origin
                    (not_at_a_p5)

                    ; #52395: origin
                    (at_a_p3)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4)
                           (not (leader_a)))
        :effect (and
                    ; #47591: origin
                    (not_at_a_p5)

                    ; #91121: origin
                    (at_a_p4)

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #47591: origin
                    (not_at_a_p5)

                    ; #53609: origin
                    (at_a_p5)

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #47591: origin
                    (not_at_a_p5)

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31177: origin
                    (at_a_p7)

                    ; #47591: origin
                    (not_at_a_p5)

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #47591: origin
                    (not_at_a_p5)

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31004: origin
                    (at_a_p9)

                    ; #47591: origin
                    (not_at_a_p5)

                    ; #53609: <==negation-removal== 47591 (pos)
                    (not (at_a_p5))

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #75014: origin
                    (not_at_a_p6)

                    ; #86629: origin
                    (at_a_p1)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #75014: origin
                    (not_at_a_p6)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #51747: origin
                    (at_a_p11)

                    ; #75014: origin
                    (not_at_a_p6)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12)
                           (not (leader_a)))
        :effect (and
                    ; #75014: origin
                    (not_at_a_p6)

                    ; #89841: origin
                    (at_a_p12)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #75014: origin
                    (not_at_a_p6)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #52395: origin
                    (at_a_p3)

                    ; #75014: origin
                    (not_at_a_p6)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #75014: origin
                    (not_at_a_p6)

                    ; #91121: origin
                    (at_a_p4)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #53609: origin
                    (at_a_p5)

                    ; #75014: origin
                    (not_at_a_p6)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #75014: origin
                    (not_at_a_p6)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #31177: origin
                    (at_a_p7)

                    ; #75014: origin
                    (not_at_a_p6)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #75014: origin
                    (not_at_a_p6)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #31004: origin
                    (at_a_p9)

                    ; #75014: origin
                    (not_at_a_p6)

                    ; #13757: <==negation-removal== 75014 (pos)
                    (not (at_a_p6))

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #86629: origin
                    (at_a_p1)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #51747: origin
                    (at_a_p11)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12)
                           (not (leader_a)))
        :effect (and
                    ; #89841: origin
                    (at_a_p12)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #52395: origin
                    (at_a_p3)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #91121: origin
                    (at_a_p4)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #53609: origin
                    (at_a_p5)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31177: origin
                    (at_a_p7)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31004: origin
                    (at_a_p9)

                    ; #92167: origin
                    (not_at_a_p7)

                    ; #31177: <==negation-removal== 92167 (pos)
                    (not (at_a_p7))

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #72463: origin
                    (not_at_a_p8)

                    ; #86629: origin
                    (at_a_p1)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #72463: origin
                    (not_at_a_p8)

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11)
                           (not (leader_a)))
        :effect (and
                    ; #51747: origin
                    (at_a_p11)

                    ; #72463: origin
                    (not_at_a_p8)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #72463: origin
                    (not_at_a_p8)

                    ; #89841: origin
                    (at_a_p12)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #72463: origin
                    (not_at_a_p8)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #52395: origin
                    (at_a_p3)

                    ; #72463: origin
                    (not_at_a_p8)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #72463: origin
                    (not_at_a_p8)

                    ; #91121: origin
                    (at_a_p4)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #53609: origin
                    (at_a_p5)

                    ; #72463: origin
                    (not_at_a_p8)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #72463: origin
                    (not_at_a_p8)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31177: origin
                    (at_a_p7)

                    ; #72463: origin
                    (not_at_a_p8)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #72463: origin
                    (not_at_a_p8)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31004: origin
                    (at_a_p9)

                    ; #72463: origin
                    (not_at_a_p8)

                    ; #23640: <==negation-removal== 72463 (pos)
                    (not (at_a_p8))

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #75548: origin
                    (not_at_a_p9)

                    ; #86629: origin
                    (at_a_p1)

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))

                    ; #54642: <==negation-removal== 86629 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10)
                           (not (leader_a)))
        :effect (and
                    ; #10260: origin
                    (at_a_p10)

                    ; #75548: origin
                    (not_at_a_p9)

                    ; #22587: <==negation-removal== 10260 (pos)
                    (not (not_at_a_p10))

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11)
                           (not (leader_a)))
        :effect (and
                    ; #51747: origin
                    (at_a_p11)

                    ; #75548: origin
                    (not_at_a_p9)

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))

                    ; #82683: <==negation-removal== 51747 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12)
                           (not (leader_a)))
        :effect (and
                    ; #75548: origin
                    (not_at_a_p9)

                    ; #89841: origin
                    (at_a_p12)

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))

                    ; #42187: <==negation-removal== 89841 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14055: origin
                    (at_a_p2)

                    ; #75548: origin
                    (not_at_a_p9)

                    ; #30045: <==negation-removal== 14055 (pos)
                    (not (not_at_a_p2))

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #52395: origin
                    (at_a_p3)

                    ; #75548: origin
                    (not_at_a_p9)

                    ; #13976: <==negation-removal== 52395 (pos)
                    (not (not_at_a_p3))

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4)
                           (not (leader_a)))
        :effect (and
                    ; #75548: origin
                    (not_at_a_p9)

                    ; #91121: origin
                    (at_a_p4)

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))

                    ; #40405: <==negation-removal== 91121 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #53609: origin
                    (at_a_p5)

                    ; #75548: origin
                    (not_at_a_p9)

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))

                    ; #47591: <==negation-removal== 53609 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13757: origin
                    (at_a_p6)

                    ; #75548: origin
                    (not_at_a_p9)

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))

                    ; #75014: <==negation-removal== 13757 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #31177: origin
                    (at_a_p7)

                    ; #75548: origin
                    (not_at_a_p9)

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))

                    ; #92167: <==negation-removal== 31177 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23640: origin
                    (at_a_p8)

                    ; #75548: origin
                    (not_at_a_p9)

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))

                    ; #72463: <==negation-removal== 23640 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31004: origin
                    (at_a_p9)

                    ; #75548: origin
                    (not_at_a_p9)

                    ; #31004: <==negation-removal== 75548 (pos)
                    (not (at_a_p9))

                    ; #75548: <==negation-removal== 31004 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #33803: origin
                    (not_at_b_p10)

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #58675: origin
                    (at_b_p10)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #46305: origin
                    (at_b_p11)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #50621: origin
                    (at_b_p12)

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #71429: origin
                    (at_b_p2)

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #65324: origin
                    (at_b_p3)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #68092: origin
                    (at_b_p4)

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #57665: origin
                    (at_b_p6)

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #33803: origin
                    (not_at_b_p10)

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #72380: origin
                    (at_b_p8)

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #33803: origin
                    (not_at_b_p10)

                    ; #45365: origin
                    (at_b_p9)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #58675: <==negation-removal== 33803 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #20504: origin
                    (at_b_p1)

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #58675: origin
                    (at_b_p10)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #46305: origin
                    (at_b_p11)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #50621: origin
                    (at_b_p12)

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #71429: origin
                    (at_b_p2)

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #65324: origin
                    (at_b_p3)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #68092: origin
                    (at_b_p4)

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #57665: origin
                    (at_b_p6)

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #25411: origin
                    (at_b_p7)

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #72380: origin
                    (at_b_p8)

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9)
                           (not (leader_b)))
        :effect (and
                    ; #14933: origin
                    (not_at_b_p11)

                    ; #45365: origin
                    (at_b_p9)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #46305: <==negation-removal== 14933 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #60841: origin
                    (not_at_b_p12)

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #58675: origin
                    (at_b_p10)

                    ; #60841: origin
                    (not_at_b_p12)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #46305: origin
                    (at_b_p11)

                    ; #60841: origin
                    (not_at_b_p12)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #50621: origin
                    (at_b_p12)

                    ; #60841: origin
                    (not_at_b_p12)

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2)
                           (not (leader_b)))
        :effect (and
                    ; #60841: origin
                    (not_at_b_p12)

                    ; #71429: origin
                    (at_b_p2)

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3)
                           (not (leader_b)))
        :effect (and
                    ; #60841: origin
                    (not_at_b_p12)

                    ; #65324: origin
                    (at_b_p3)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #60841: origin
                    (not_at_b_p12)

                    ; #68092: origin
                    (at_b_p4)

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5)
                           (not (leader_b)))
        :effect (and
                    ; #60841: origin
                    (not_at_b_p12)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #57665: origin
                    (at_b_p6)

                    ; #60841: origin
                    (not_at_b_p12)

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #60841: origin
                    (not_at_b_p12)

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8)
                           (not (leader_b)))
        :effect (and
                    ; #60841: origin
                    (not_at_b_p12)

                    ; #72380: origin
                    (at_b_p8)

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9)
                           (not (leader_b)))
        :effect (and
                    ; #45365: origin
                    (at_b_p9)

                    ; #60841: origin
                    (not_at_b_p12)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #50621: <==negation-removal== 60841 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #51629: origin
                    (not_at_b_p1)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10)
                           (not (leader_b)))
        :effect (and
                    ; #51629: origin
                    (not_at_b_p1)

                    ; #58675: origin
                    (at_b_p10)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #46305: origin
                    (at_b_p11)

                    ; #51629: origin
                    (not_at_b_p1)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #50621: origin
                    (at_b_p12)

                    ; #51629: origin
                    (not_at_b_p1)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #51629: origin
                    (not_at_b_p1)

                    ; #71429: origin
                    (at_b_p2)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #51629: origin
                    (not_at_b_p1)

                    ; #65324: origin
                    (at_b_p3)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #51629: origin
                    (not_at_b_p1)

                    ; #68092: origin
                    (at_b_p4)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #51629: origin
                    (not_at_b_p1)

                    ; #80723: origin
                    (at_b_p5)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #51629: origin
                    (not_at_b_p1)

                    ; #57665: origin
                    (at_b_p6)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #51629: origin
                    (not_at_b_p1)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #51629: origin
                    (not_at_b_p1)

                    ; #72380: origin
                    (at_b_p8)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #45365: origin
                    (at_b_p9)

                    ; #51629: origin
                    (not_at_b_p1)

                    ; #20504: <==negation-removal== 51629 (pos)
                    (not (at_b_p1))

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #48112: origin
                    (not_at_b_p2)

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #48112: origin
                    (not_at_b_p2)

                    ; #58675: origin
                    (at_b_p10)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #46305: origin
                    (at_b_p11)

                    ; #48112: origin
                    (not_at_b_p2)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #48112: origin
                    (not_at_b_p2)

                    ; #50621: origin
                    (at_b_p12)

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #48112: origin
                    (not_at_b_p2)

                    ; #71429: origin
                    (at_b_p2)

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #48112: origin
                    (not_at_b_p2)

                    ; #65324: origin
                    (at_b_p3)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #48112: origin
                    (not_at_b_p2)

                    ; #68092: origin
                    (at_b_p4)

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #48112: origin
                    (not_at_b_p2)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #48112: origin
                    (not_at_b_p2)

                    ; #57665: origin
                    (at_b_p6)

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #48112: origin
                    (not_at_b_p2)

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #48112: origin
                    (not_at_b_p2)

                    ; #72380: origin
                    (at_b_p8)

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45365: origin
                    (at_b_p9)

                    ; #48112: origin
                    (not_at_b_p2)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #71429: <==negation-removal== 48112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #32641: origin
                    (not_at_b_p3)

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #58675: origin
                    (at_b_p10)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #46305: origin
                    (at_b_p11)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #50621: origin
                    (at_b_p12)

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #71429: origin
                    (at_b_p2)

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #65324: origin
                    (at_b_p3)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #68092: origin
                    (at_b_p4)

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #57665: origin
                    (at_b_p6)

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #32641: origin
                    (not_at_b_p3)

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #72380: origin
                    (at_b_p8)

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #32641: origin
                    (not_at_b_p3)

                    ; #45365: origin
                    (at_b_p9)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #65324: <==negation-removal== 32641 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #64428: origin
                    (not_at_b_p4)

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #58675: origin
                    (at_b_p10)

                    ; #64428: origin
                    (not_at_b_p4)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11)
                           (not (leader_b)))
        :effect (and
                    ; #46305: origin
                    (at_b_p11)

                    ; #64428: origin
                    (not_at_b_p4)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #50621: origin
                    (at_b_p12)

                    ; #64428: origin
                    (not_at_b_p4)

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #64428: origin
                    (not_at_b_p4)

                    ; #71429: origin
                    (at_b_p2)

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #64428: origin
                    (not_at_b_p4)

                    ; #65324: origin
                    (at_b_p3)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4)
                           (not (leader_b)))
        :effect (and
                    ; #64428: origin
                    (not_at_b_p4)

                    ; #68092: origin
                    (at_b_p4)

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #64428: origin
                    (not_at_b_p4)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #57665: origin
                    (at_b_p6)

                    ; #64428: origin
                    (not_at_b_p4)

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #64428: origin
                    (not_at_b_p4)

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #64428: origin
                    (not_at_b_p4)

                    ; #72380: origin
                    (at_b_p8)

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #45365: origin
                    (at_b_p9)

                    ; #64428: origin
                    (not_at_b_p4)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #68092: <==negation-removal== 64428 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #43836: origin
                    (not_at_b_p5)

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #58675: origin
                    (at_b_p10)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #46305: origin
                    (at_b_p11)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #50621: origin
                    (at_b_p12)

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #71429: origin
                    (at_b_p2)

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #65324: origin
                    (at_b_p3)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #68092: origin
                    (at_b_p4)

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #57665: origin
                    (at_b_p6)

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #43836: origin
                    (not_at_b_p5)

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #72380: origin
                    (at_b_p8)

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43836: origin
                    (not_at_b_p5)

                    ; #45365: origin
                    (at_b_p9)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #80723: <==negation-removal== 43836 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #60116: origin
                    (not_at_b_p6)

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #58675: origin
                    (at_b_p10)

                    ; #60116: origin
                    (not_at_b_p6)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46305: origin
                    (at_b_p11)

                    ; #60116: origin
                    (not_at_b_p6)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12)
                           (not (leader_b)))
        :effect (and
                    ; #50621: origin
                    (at_b_p12)

                    ; #60116: origin
                    (not_at_b_p6)

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #60116: origin
                    (not_at_b_p6)

                    ; #71429: origin
                    (at_b_p2)

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #60116: origin
                    (not_at_b_p6)

                    ; #65324: origin
                    (at_b_p3)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #60116: origin
                    (not_at_b_p6)

                    ; #68092: origin
                    (at_b_p4)

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #60116: origin
                    (not_at_b_p6)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #57665: origin
                    (at_b_p6)

                    ; #60116: origin
                    (not_at_b_p6)

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #60116: origin
                    (not_at_b_p6)

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #60116: origin
                    (not_at_b_p6)

                    ; #72380: origin
                    (at_b_p8)

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #45365: origin
                    (at_b_p9)

                    ; #60116: origin
                    (not_at_b_p6)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #57665: <==negation-removal== 60116 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #58675: origin
                    (at_b_p10)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #46305: origin
                    (at_b_p11)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50621: origin
                    (at_b_p12)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #71429: origin
                    (at_b_p2)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #65324: origin
                    (at_b_p3)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #68092: origin
                    (at_b_p4)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #74448: origin
                    (not_at_b_p7)

                    ; #80723: origin
                    (at_b_p5)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #57665: origin
                    (at_b_p6)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #72380: origin
                    (at_b_p8)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #45365: origin
                    (at_b_p9)

                    ; #74448: origin
                    (not_at_b_p7)

                    ; #25411: <==negation-removal== 74448 (pos)
                    (not (at_b_p7))

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10)
                           (not (leader_b)))
        :effect (and
                    ; #58675: origin
                    (at_b_p10)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11)
                           (not (leader_b)))
        :effect (and
                    ; #46305: origin
                    (at_b_p11)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12)
                           (not (leader_b)))
        :effect (and
                    ; #50621: origin
                    (at_b_p12)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2)
                           (not (leader_b)))
        :effect (and
                    ; #71429: origin
                    (at_b_p2)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #65324: origin
                    (at_b_p3)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #68092: origin
                    (at_b_p4)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #71642: origin
                    (not_at_b_p8)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #57665: origin
                    (at_b_p6)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #71642: origin
                    (not_at_b_p8)

                    ; #72380: origin
                    (at_b_p8)

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #45365: origin
                    (at_b_p9)

                    ; #71642: origin
                    (not_at_b_p8)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #72380: <==negation-removal== 71642 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #20504: origin
                    (at_b_p1)

                    ; #38101: origin
                    (not_at_b_p9)

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))

                    ; #51629: <==negation-removal== 20504 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #58675: origin
                    (at_b_p10)

                    ; #33803: <==negation-removal== 58675 (pos)
                    (not (not_at_b_p10))

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #46305: origin
                    (at_b_p11)

                    ; #14933: <==negation-removal== 46305 (pos)
                    (not (not_at_b_p11))

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #50621: origin
                    (at_b_p12)

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))

                    ; #60841: <==negation-removal== 50621 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #71429: origin
                    (at_b_p2)

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))

                    ; #48112: <==negation-removal== 71429 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #65324: origin
                    (at_b_p3)

                    ; #32641: <==negation-removal== 65324 (pos)
                    (not (not_at_b_p3))

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #68092: origin
                    (at_b_p4)

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))

                    ; #64428: <==negation-removal== 68092 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #80723: origin
                    (at_b_p5)

                    ; #43836: <==negation-removal== 80723 (pos)
                    (not (not_at_b_p5))

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #57665: origin
                    (at_b_p6)

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))

                    ; #60116: <==negation-removal== 57665 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25411: origin
                    (at_b_p7)

                    ; #38101: origin
                    (not_at_b_p9)

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))

                    ; #74448: <==negation-removal== 25411 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #72380: origin
                    (at_b_p8)

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))

                    ; #71642: <==negation-removal== 72380 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9)
                           (not (leader_b)))
        :effect (and
                    ; #38101: origin
                    (not_at_b_p9)

                    ; #45365: origin
                    (at_b_p9)

                    ; #38101: <==negation-removal== 45365 (pos)
                    (not (not_at_b_p9))

                    ; #45365: <==negation-removal== 38101 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1)
                           (not (leader_c)))
        :effect (and
                    ; #45640: origin
                    (at_c_p1)

                    ; #73479: origin
                    (not_at_c_p10)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #73479: origin
                    (not_at_c_p10)

                    ; #89770: origin
                    (at_c_p10)

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11)
                           (not (leader_c)))
        :effect (and
                    ; #73479: origin
                    (not_at_c_p10)

                    ; #76419: origin
                    (at_c_p11)

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12)
                           (not (leader_c)))
        :effect (and
                    ; #73479: origin
                    (not_at_c_p10)

                    ; #99256: origin
                    (at_c_p12)

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #73479: origin
                    (not_at_c_p10)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3)
                           (not (leader_c)))
        :effect (and
                    ; #73479: origin
                    (not_at_c_p10)

                    ; #82079: origin
                    (at_c_p3)

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23634: origin
                    (at_c_p4)

                    ; #73479: origin
                    (not_at_c_p10)

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #49269: origin
                    (at_c_p5)

                    ; #73479: origin
                    (not_at_c_p10)

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #56002: origin
                    (at_c_p6)

                    ; #73479: origin
                    (not_at_c_p10)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7)
                           (not (leader_c)))
        :effect (and
                    ; #65445: origin
                    (at_c_p7)

                    ; #73479: origin
                    (not_at_c_p10)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #63885: origin
                    (at_c_p8)

                    ; #73479: origin
                    (not_at_c_p10)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #73479: origin
                    (not_at_c_p10)

                    ; #80575: origin
                    (at_c_p9)

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))

                    ; #89770: <==negation-removal== 73479 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1)
                           (not (leader_c)))
        :effect (and
                    ; #45640: origin
                    (at_c_p1)

                    ; #73399: origin
                    (not_at_c_p11)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10)
                           (not (leader_c)))
        :effect (and
                    ; #73399: origin
                    (not_at_c_p11)

                    ; #89770: origin
                    (at_c_p10)

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11)
                           (not (leader_c)))
        :effect (and
                    ; #73399: origin
                    (not_at_c_p11)

                    ; #76419: origin
                    (at_c_p11)

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12)
                           (not (leader_c)))
        :effect (and
                    ; #73399: origin
                    (not_at_c_p11)

                    ; #99256: origin
                    (at_c_p12)

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2)
                           (not (leader_c)))
        :effect (and
                    ; #73399: origin
                    (not_at_c_p11)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3)
                           (not (leader_c)))
        :effect (and
                    ; #73399: origin
                    (not_at_c_p11)

                    ; #82079: origin
                    (at_c_p3)

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23634: origin
                    (at_c_p4)

                    ; #73399: origin
                    (not_at_c_p11)

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5)
                           (not (leader_c)))
        :effect (and
                    ; #49269: origin
                    (at_c_p5)

                    ; #73399: origin
                    (not_at_c_p11)

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6)
                           (not (leader_c)))
        :effect (and
                    ; #56002: origin
                    (at_c_p6)

                    ; #73399: origin
                    (not_at_c_p11)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7)
                           (not (leader_c)))
        :effect (and
                    ; #65445: origin
                    (at_c_p7)

                    ; #73399: origin
                    (not_at_c_p11)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8)
                           (not (leader_c)))
        :effect (and
                    ; #63885: origin
                    (at_c_p8)

                    ; #73399: origin
                    (not_at_c_p11)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9)
                           (not (leader_c)))
        :effect (and
                    ; #73399: origin
                    (not_at_c_p11)

                    ; #80575: origin
                    (at_c_p9)

                    ; #76419: <==negation-removal== 73399 (pos)
                    (not (at_c_p11))

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1)
                           (not (leader_c)))
        :effect (and
                    ; #45640: origin
                    (at_c_p1)

                    ; #56247: origin
                    (not_at_c_p12)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #56247: origin
                    (not_at_c_p12)

                    ; #89770: origin
                    (at_c_p10)

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #56247: origin
                    (not_at_c_p12)

                    ; #76419: origin
                    (at_c_p11)

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #56247: origin
                    (not_at_c_p12)

                    ; #99256: origin
                    (at_c_p12)

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2)
                           (not (leader_c)))
        :effect (and
                    ; #56247: origin
                    (not_at_c_p12)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3)
                           (not (leader_c)))
        :effect (and
                    ; #56247: origin
                    (not_at_c_p12)

                    ; #82079: origin
                    (at_c_p3)

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23634: origin
                    (at_c_p4)

                    ; #56247: origin
                    (not_at_c_p12)

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5)
                           (not (leader_c)))
        :effect (and
                    ; #49269: origin
                    (at_c_p5)

                    ; #56247: origin
                    (not_at_c_p12)

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6)
                           (not (leader_c)))
        :effect (and
                    ; #56002: origin
                    (at_c_p6)

                    ; #56247: origin
                    (not_at_c_p12)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #56247: origin
                    (not_at_c_p12)

                    ; #65445: origin
                    (at_c_p7)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8)
                           (not (leader_c)))
        :effect (and
                    ; #56247: origin
                    (not_at_c_p12)

                    ; #63885: origin
                    (at_c_p8)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9)
                           (not (leader_c)))
        :effect (and
                    ; #56247: origin
                    (not_at_c_p12)

                    ; #80575: origin
                    (at_c_p9)

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))

                    ; #99256: <==negation-removal== 56247 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #45640: origin
                    (at_c_p1)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #89770: origin
                    (at_c_p10)

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #76419: origin
                    (at_c_p11)

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #99256: origin
                    (at_c_p12)

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #82079: origin
                    (at_c_p3)

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #23634: origin
                    (at_c_p4)

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #49269: origin
                    (at_c_p5)

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #56002: origin
                    (at_c_p6)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #65445: origin
                    (at_c_p7)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #63885: origin
                    (at_c_p8)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #18668: origin
                    (not_at_c_p1)

                    ; #80575: origin
                    (at_c_p9)

                    ; #45640: <==negation-removal== 18668 (pos)
                    (not (at_c_p1))

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #45640: origin
                    (at_c_p1)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #89770: origin
                    (at_c_p10)

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #76419: origin
                    (at_c_p11)

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #99256: origin
                    (at_c_p12)

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #82079: origin
                    (at_c_p3)

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #23634: origin
                    (at_c_p4)

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #49269: origin
                    (at_c_p5)

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #56002: origin
                    (at_c_p6)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #65445: origin
                    (at_c_p7)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #63885: origin
                    (at_c_p8)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #14128: origin
                    (not_at_c_p2)

                    ; #80575: origin
                    (at_c_p9)

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))

                    ; #95489: <==negation-removal== 14128 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #45640: origin
                    (at_c_p1)

                    ; #76704: origin
                    (not_at_c_p3)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10)
                           (not (leader_c)))
        :effect (and
                    ; #76704: origin
                    (not_at_c_p3)

                    ; #89770: origin
                    (at_c_p10)

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11)
                           (not (leader_c)))
        :effect (and
                    ; #76419: origin
                    (at_c_p11)

                    ; #76704: origin
                    (not_at_c_p3)

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12)
                           (not (leader_c)))
        :effect (and
                    ; #76704: origin
                    (not_at_c_p3)

                    ; #99256: origin
                    (at_c_p12)

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #76704: origin
                    (not_at_c_p3)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #76704: origin
                    (not_at_c_p3)

                    ; #82079: origin
                    (at_c_p3)

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23634: origin
                    (at_c_p4)

                    ; #76704: origin
                    (not_at_c_p3)

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #49269: origin
                    (at_c_p5)

                    ; #76704: origin
                    (not_at_c_p3)

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #56002: origin
                    (at_c_p6)

                    ; #76704: origin
                    (not_at_c_p3)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #65445: origin
                    (at_c_p7)

                    ; #76704: origin
                    (not_at_c_p3)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #63885: origin
                    (at_c_p8)

                    ; #76704: origin
                    (not_at_c_p3)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #76704: origin
                    (not_at_c_p3)

                    ; #80575: origin
                    (at_c_p9)

                    ; #82079: <==negation-removal== 76704 (pos)
                    (not (at_c_p3))

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #45640: origin
                    (at_c_p1)

                    ; #86794: origin
                    (not_at_c_p4)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #86794: origin
                    (not_at_c_p4)

                    ; #89770: origin
                    (at_c_p10)

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11)
                           (not (leader_c)))
        :effect (and
                    ; #76419: origin
                    (at_c_p11)

                    ; #86794: origin
                    (not_at_c_p4)

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #86794: origin
                    (not_at_c_p4)

                    ; #99256: origin
                    (at_c_p12)

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #86794: origin
                    (not_at_c_p4)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #82079: origin
                    (at_c_p3)

                    ; #86794: origin
                    (not_at_c_p4)

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23634: origin
                    (at_c_p4)

                    ; #86794: origin
                    (not_at_c_p4)

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #49269: origin
                    (at_c_p5)

                    ; #86794: origin
                    (not_at_c_p4)

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6)
                           (not (leader_c)))
        :effect (and
                    ; #56002: origin
                    (at_c_p6)

                    ; #86794: origin
                    (not_at_c_p4)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #65445: origin
                    (at_c_p7)

                    ; #86794: origin
                    (not_at_c_p4)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #63885: origin
                    (at_c_p8)

                    ; #86794: origin
                    (not_at_c_p4)

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9)
                           (not (leader_c)))
        :effect (and
                    ; #80575: origin
                    (at_c_p9)

                    ; #86794: origin
                    (not_at_c_p4)

                    ; #23634: <==negation-removal== 86794 (pos)
                    (not (at_c_p4))

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #45640: origin
                    (at_c_p1)

                    ; #69304: origin
                    (not_at_c_p5)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #69304: origin
                    (not_at_c_p5)

                    ; #89770: origin
                    (at_c_p10)

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11)
                           (not (leader_c)))
        :effect (and
                    ; #69304: origin
                    (not_at_c_p5)

                    ; #76419: origin
                    (at_c_p11)

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #69304: origin
                    (not_at_c_p5)

                    ; #99256: origin
                    (at_c_p12)

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #69304: origin
                    (not_at_c_p5)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #69304: origin
                    (not_at_c_p5)

                    ; #82079: origin
                    (at_c_p3)

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23634: origin
                    (at_c_p4)

                    ; #69304: origin
                    (not_at_c_p5)

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #49269: origin
                    (at_c_p5)

                    ; #69304: origin
                    (not_at_c_p5)

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #56002: origin
                    (at_c_p6)

                    ; #69304: origin
                    (not_at_c_p5)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #65445: origin
                    (at_c_p7)

                    ; #69304: origin
                    (not_at_c_p5)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #63885: origin
                    (at_c_p8)

                    ; #69304: origin
                    (not_at_c_p5)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #69304: origin
                    (not_at_c_p5)

                    ; #80575: origin
                    (at_c_p9)

                    ; #49269: <==negation-removal== 69304 (pos)
                    (not (at_c_p5))

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #45640: origin
                    (at_c_p1)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #89770: origin
                    (at_c_p10)

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #76419: origin
                    (at_c_p11)

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #99256: origin
                    (at_c_p12)

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #82079: origin
                    (at_c_p3)

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #23634: origin
                    (at_c_p4)

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #49269: origin
                    (at_c_p5)

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #56002: origin
                    (at_c_p6)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #65445: origin
                    (at_c_p7)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #63885: origin
                    (at_c_p8)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10100: origin
                    (not_at_c_p6)

                    ; #80575: origin
                    (at_c_p9)

                    ; #56002: <==negation-removal== 10100 (pos)
                    (not (at_c_p6))

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #45640: origin
                    (at_c_p1)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #89770: origin
                    (at_c_p10)

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #76419: origin
                    (at_c_p11)

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #99256: origin
                    (at_c_p12)

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #82079: origin
                    (at_c_p3)

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #23634: origin
                    (at_c_p4)

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #49269: origin
                    (at_c_p5)

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #56002: origin
                    (at_c_p6)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #65445: origin
                    (at_c_p7)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #63885: origin
                    (at_c_p8)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14248: origin
                    (not_at_c_p7)

                    ; #80575: origin
                    (at_c_p9)

                    ; #65445: <==negation-removal== 14248 (pos)
                    (not (at_c_p7))

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #45640: origin
                    (at_c_p1)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #89770: origin
                    (at_c_p10)

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #76419: origin
                    (at_c_p11)

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #99256: origin
                    (at_c_p12)

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #82079: origin
                    (at_c_p3)

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23634: origin
                    (at_c_p4)

                    ; #26959: origin
                    (not_at_c_p8)

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #49269: origin
                    (at_c_p5)

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #56002: origin
                    (at_c_p6)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #65445: origin
                    (at_c_p7)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #63885: origin
                    (at_c_p8)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26959: origin
                    (not_at_c_p8)

                    ; #80575: origin
                    (at_c_p9)

                    ; #63885: <==negation-removal== 26959 (pos)
                    (not (at_c_p8))

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #45640: origin
                    (at_c_p1)

                    ; #85573: origin
                    (not_at_c_p9)

                    ; #18668: <==negation-removal== 45640 (pos)
                    (not (not_at_c_p1))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #85573: origin
                    (not_at_c_p9)

                    ; #89770: origin
                    (at_c_p10)

                    ; #73479: <==negation-removal== 89770 (pos)
                    (not (not_at_c_p10))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #76419: origin
                    (at_c_p11)

                    ; #85573: origin
                    (not_at_c_p9)

                    ; #73399: <==negation-removal== 76419 (pos)
                    (not (not_at_c_p11))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #85573: origin
                    (not_at_c_p9)

                    ; #99256: origin
                    (at_c_p12)

                    ; #56247: <==negation-removal== 99256 (pos)
                    (not (not_at_c_p12))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #85573: origin
                    (not_at_c_p9)

                    ; #95489: origin
                    (at_c_p2)

                    ; #14128: <==negation-removal== 95489 (pos)
                    (not (not_at_c_p2))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #82079: origin
                    (at_c_p3)

                    ; #85573: origin
                    (not_at_c_p9)

                    ; #76704: <==negation-removal== 82079 (pos)
                    (not (not_at_c_p3))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23634: origin
                    (at_c_p4)

                    ; #85573: origin
                    (not_at_c_p9)

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))

                    ; #86794: <==negation-removal== 23634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #49269: origin
                    (at_c_p5)

                    ; #85573: origin
                    (not_at_c_p9)

                    ; #69304: <==negation-removal== 49269 (pos)
                    (not (not_at_c_p5))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #56002: origin
                    (at_c_p6)

                    ; #85573: origin
                    (not_at_c_p9)

                    ; #10100: <==negation-removal== 56002 (pos)
                    (not (not_at_c_p6))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #65445: origin
                    (at_c_p7)

                    ; #85573: origin
                    (not_at_c_p9)

                    ; #14248: <==negation-removal== 65445 (pos)
                    (not (not_at_c_p7))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #63885: origin
                    (at_c_p8)

                    ; #85573: origin
                    (not_at_c_p9)

                    ; #26959: <==negation-removal== 63885 (pos)
                    (not (not_at_c_p8))

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #80575: origin
                    (at_c_p9)

                    ; #85573: origin
                    (not_at_c_p9)

                    ; #80575: <==negation-removal== 85573 (pos)
                    (not (at_c_p9))

                    ; #85573: <==negation-removal== 80575 (pos)
                    (not (not_at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #17524: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #21286: <==commonly_known== 56067 (pos)
                    (Bc_checked_p10)

                    ; #29715: <==closure== 87598 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #49922: <==commonly_known== 56067 (pos)
                    (Ba_checked_p10)

                    ; #56067: origin
                    (checked_p10)

                    ; #60339: <==commonly_known== 56067 (pos)
                    (Bb_checked_p10)

                    ; #76391: <==commonly_known== 72465 (neg)
                    (Pb_checked_p10)

                    ; #79971: <==closure== 17524 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #80714: <==commonly_known== 72465 (neg)
                    (Pa_checked_p10)

                    ; #87598: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #88648: <==commonly_known== 72465 (neg)
                    (Pc_checked_p10)

                    ; #19297: <==negation-removal== 17524 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #21300: <==negation-removal== 79971 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30023: <==uncertain_firing== 17524 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #31028: <==negation-removal== 76391 (pos)
                    (not (Bb_not_checked_p10))

                    ; #33723: <==negation-removal== 80714 (pos)
                    (not (Ba_not_checked_p10))

                    ; #52114: <==uncertain_firing== 87598 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #65447: <==negation-removal== 87598 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #67754: <==uncertain_firing== 79971 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #69251: <==negation-removal== 88648 (pos)
                    (not (Bc_not_checked_p10))

                    ; #69888: <==negation-removal== 29715 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #69947: <==uncertain_firing== 29715 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #70685: <==negation-removal== 21286 (pos)
                    (not (Pc_not_checked_p10))

                    ; #72465: <==negation-removal== 56067 (pos)
                    (not (not_checked_p10))

                    ; #77611: <==negation-removal== 49922 (pos)
                    (not (Pa_not_checked_p10))

                    ; #83027: <==negation-removal== 60339 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #28814: <==commonly_known== 13281 (neg)
                    (Pc_checked_p11)

                    ; #31309: <==commonly_known== 13281 (neg)
                    (Pa_checked_p11)

                    ; #33807: <==commonly_known== 56193 (pos)
                    (Bb_checked_p11)

                    ; #56193: origin
                    (checked_p11)

                    ; #61805: <==closure== 64545 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #64545: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #70603: <==commonly_known== 56193 (pos)
                    (Bc_checked_p11)

                    ; #76081: <==commonly_known== 56193 (pos)
                    (Ba_checked_p11)

                    ; #81351: <==closure== 98889 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #93701: <==commonly_known== 13281 (neg)
                    (Pb_checked_p11)

                    ; #98889: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #13281: <==negation-removal== 56193 (pos)
                    (not (not_checked_p11))

                    ; #13886: <==negation-removal== 28814 (pos)
                    (not (Bc_not_checked_p11))

                    ; #16215: <==negation-removal== 93701 (pos)
                    (not (Bb_not_checked_p11))

                    ; #16395: <==uncertain_firing== 61805 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #21260: <==uncertain_firing== 64545 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #34095: <==negation-removal== 70603 (pos)
                    (not (Pc_not_checked_p11))

                    ; #42027: <==negation-removal== 64545 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #42828: <==negation-removal== 81351 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #43072: <==uncertain_firing== 98889 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #43878: <==uncertain_firing== 81351 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #48673: <==negation-removal== 98889 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #59220: <==negation-removal== 76081 (pos)
                    (not (Pa_not_checked_p11))

                    ; #67522: <==negation-removal== 61805 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #78733: <==negation-removal== 31309 (pos)
                    (not (Ba_not_checked_p11))

                    ; #83446: <==negation-removal== 33807 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #11477: <==commonly_known== 61344 (neg)
                    (Pb_checked_p12)

                    ; #20778: <==commonly_known== 61344 (neg)
                    (Pa_checked_p12)

                    ; #28050: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #39529: <==closure== 74515 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #40655: origin
                    (checked_p12)

                    ; #49940: <==commonly_known== 40655 (pos)
                    (Ba_checked_p12)

                    ; #53305: <==commonly_known== 40655 (pos)
                    (Bb_checked_p12)

                    ; #56553: <==closure== 28050 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #68978: <==commonly_known== 40655 (pos)
                    (Bc_checked_p12)

                    ; #74515: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #78018: <==commonly_known== 61344 (neg)
                    (Pc_checked_p12)

                    ; #14329: <==negation-removal== 39529 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #15343: <==negation-removal== 78018 (pos)
                    (not (Bc_not_checked_p12))

                    ; #16310: <==negation-removal== 56553 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #22786: <==negation-removal== 28050 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #30609: <==negation-removal== 53305 (pos)
                    (not (Pb_not_checked_p12))

                    ; #43031: <==uncertain_firing== 39529 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #53511: <==uncertain_firing== 74515 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #57510: <==negation-removal== 11477 (pos)
                    (not (Bb_not_checked_p12))

                    ; #61344: <==negation-removal== 40655 (pos)
                    (not (not_checked_p12))

                    ; #61966: <==negation-removal== 68978 (pos)
                    (not (Pc_not_checked_p12))

                    ; #65873: <==negation-removal== 20778 (pos)
                    (not (Ba_not_checked_p12))

                    ; #77519: <==negation-removal== 49940 (pos)
                    (not (Pa_not_checked_p12))

                    ; #82013: <==uncertain_firing== 56553 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #86110: <==negation-removal== 74515 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #89792: <==uncertain_firing== 28050 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #16682: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #16695: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #24385: <==commonly_known== 74111 (pos)
                    (Ba_checked_p1)

                    ; #27104: <==closure== 16682 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #30127: <==closure== 16695 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #31704: <==commonly_known== 57647 (neg)
                    (Pa_checked_p1)

                    ; #62840: <==commonly_known== 57647 (neg)
                    (Pb_checked_p1)

                    ; #66766: <==commonly_known== 74111 (pos)
                    (Bb_checked_p1)

                    ; #74111: origin
                    (checked_p1)

                    ; #90226: <==commonly_known== 57647 (neg)
                    (Pc_checked_p1)

                    ; #97095: <==commonly_known== 74111 (pos)
                    (Bc_checked_p1)

                    ; #13133: <==negation-removal== 90226 (pos)
                    (not (Bc_not_checked_p1))

                    ; #15085: <==negation-removal== 27104 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #15406: <==negation-removal== 16695 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #20319: <==negation-removal== 31704 (pos)
                    (not (Ba_not_checked_p1))

                    ; #26720: <==uncertain_firing== 16695 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #28551: <==negation-removal== 24385 (pos)
                    (not (Pa_not_checked_p1))

                    ; #34218: <==negation-removal== 66766 (pos)
                    (not (Pb_not_checked_p1))

                    ; #36614: <==negation-removal== 97095 (pos)
                    (not (Pc_not_checked_p1))

                    ; #41370: <==negation-removal== 16682 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #41456: <==uncertain_firing== 27104 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #47014: <==uncertain_firing== 30127 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #57647: <==negation-removal== 74111 (pos)
                    (not (not_checked_p1))

                    ; #65975: <==uncertain_firing== 16682 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #72919: <==negation-removal== 30127 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #74057: <==negation-removal== 62840 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12486: <==commonly_known== 25537 (pos)
                    (Bc_checked_p2)

                    ; #19767: <==commonly_known== 71781 (neg)
                    (Pa_checked_p2)

                    ; #25537: origin
                    (checked_p2)

                    ; #38485: <==closure== 63086 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #42011: <==closure== 74290 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #63086: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #74290: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #77066: <==commonly_known== 71781 (neg)
                    (Pc_checked_p2)

                    ; #79653: <==commonly_known== 25537 (pos)
                    (Ba_checked_p2)

                    ; #89639: <==commonly_known== 71781 (neg)
                    (Pb_checked_p2)

                    ; #92109: <==commonly_known== 25537 (pos)
                    (Bb_checked_p2)

                    ; #12180: <==negation-removal== 38485 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #19175: <==negation-removal== 77066 (pos)
                    (not (Bc_not_checked_p2))

                    ; #21220: <==negation-removal== 79653 (pos)
                    (not (Pa_not_checked_p2))

                    ; #22470: <==negation-removal== 63086 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #36857: <==negation-removal== 19767 (pos)
                    (not (Ba_not_checked_p2))

                    ; #41446: <==uncertain_firing== 74290 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #45614: <==negation-removal== 89639 (pos)
                    (not (Bb_not_checked_p2))

                    ; #48820: <==negation-removal== 42011 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #69116: <==negation-removal== 74290 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #71781: <==negation-removal== 25537 (pos)
                    (not (not_checked_p2))

                    ; #77648: <==negation-removal== 12486 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79202: <==uncertain_firing== 63086 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #80986: <==uncertain_firing== 38485 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #85530: <==uncertain_firing== 42011 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #99697: <==negation-removal== 92109 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #38272: <==commonly_known== 89389 (pos)
                    (Bb_checked_p3)

                    ; #38992: <==closure== 64026 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #40582: <==commonly_known== 11392 (neg)
                    (Pc_checked_p3)

                    ; #45530: <==closure== 78855 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #46144: <==commonly_known== 11392 (neg)
                    (Pb_checked_p3)

                    ; #50343: <==commonly_known== 89389 (pos)
                    (Ba_checked_p3)

                    ; #52100: <==commonly_known== 89389 (pos)
                    (Bc_checked_p3)

                    ; #64026: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #78855: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #89389: origin
                    (checked_p3)

                    ; #92152: <==commonly_known== 11392 (neg)
                    (Pa_checked_p3)

                    ; #10802: <==uncertain_firing== 45530 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #11392: <==negation-removal== 89389 (pos)
                    (not (not_checked_p3))

                    ; #14042: <==negation-removal== 45530 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #21382: <==negation-removal== 46144 (pos)
                    (not (Bb_not_checked_p3))

                    ; #22387: <==negation-removal== 38992 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29272: <==negation-removal== 64026 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #30089: <==uncertain_firing== 78855 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37229: <==negation-removal== 40582 (pos)
                    (not (Bc_not_checked_p3))

                    ; #42150: <==negation-removal== 92152 (pos)
                    (not (Ba_not_checked_p3))

                    ; #47218: <==negation-removal== 52100 (pos)
                    (not (Pc_not_checked_p3))

                    ; #64275: <==negation-removal== 38272 (pos)
                    (not (Pb_not_checked_p3))

                    ; #64647: <==uncertain_firing== 64026 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #66616: <==negation-removal== 78855 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #71232: <==negation-removal== 50343 (pos)
                    (not (Pa_not_checked_p3))

                    ; #72024: <==uncertain_firing== 38992 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #11533: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #16847: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #18835: <==commonly_known== 32974 (pos)
                    (Bb_checked_p4)

                    ; #21297: <==commonly_known== 35899 (neg)
                    (Pb_checked_p4)

                    ; #22806: <==closure== 11533 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #32974: origin
                    (checked_p4)

                    ; #35987: <==commonly_known== 32974 (pos)
                    (Ba_checked_p4)

                    ; #45855: <==commonly_known== 32974 (pos)
                    (Bc_checked_p4)

                    ; #52101: <==commonly_known== 35899 (neg)
                    (Pc_checked_p4)

                    ; #55431: <==commonly_known== 35899 (neg)
                    (Pa_checked_p4)

                    ; #75050: <==closure== 16847 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #17425: <==negation-removal== 45855 (pos)
                    (not (Pc_not_checked_p4))

                    ; #18710: <==negation-removal== 52101 (pos)
                    (not (Bc_not_checked_p4))

                    ; #22241: <==negation-removal== 11533 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #35899: <==negation-removal== 32974 (pos)
                    (not (not_checked_p4))

                    ; #48488: <==uncertain_firing== 11533 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #49315: <==uncertain_firing== 16847 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #50660: <==negation-removal== 16847 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #50989: <==uncertain_firing== 22806 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #56908: <==negation-removal== 75050 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #57295: <==negation-removal== 18835 (pos)
                    (not (Pb_not_checked_p4))

                    ; #71843: <==negation-removal== 22806 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #81581: <==uncertain_firing== 75050 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #81657: <==negation-removal== 55431 (pos)
                    (not (Ba_not_checked_p4))

                    ; #87899: <==negation-removal== 21297 (pos)
                    (not (Bb_not_checked_p4))

                    ; #91373: <==negation-removal== 35987 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #19197: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #22656: <==commonly_known== 42525 (pos)
                    (Bc_checked_p5)

                    ; #42525: origin
                    (checked_p5)

                    ; #59109: <==commonly_known== 17650 (neg)
                    (Pb_checked_p5)

                    ; #62334: <==commonly_known== 17650 (neg)
                    (Pa_checked_p5)

                    ; #66708: <==closure== 19197 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #66853: <==commonly_known== 42525 (pos)
                    (Bb_checked_p5)

                    ; #68374: <==commonly_known== 17650 (neg)
                    (Pc_checked_p5)

                    ; #72249: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #80504: <==commonly_known== 42525 (pos)
                    (Ba_checked_p5)

                    ; #89563: <==closure== 72249 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #10035: <==negation-removal== 68374 (pos)
                    (not (Bc_not_checked_p5))

                    ; #17650: <==negation-removal== 42525 (pos)
                    (not (not_checked_p5))

                    ; #28012: <==negation-removal== 72249 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #35200: <==uncertain_firing== 72249 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #36673: <==uncertain_firing== 66708 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #37519: <==negation-removal== 80504 (pos)
                    (not (Pa_not_checked_p5))

                    ; #39217: <==negation-removal== 66853 (pos)
                    (not (Pb_not_checked_p5))

                    ; #42749: <==negation-removal== 89563 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #51579: <==uncertain_firing== 89563 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #66295: <==negation-removal== 66708 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67991: <==negation-removal== 59109 (pos)
                    (not (Bb_not_checked_p5))

                    ; #72258: <==uncertain_firing== 19197 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #84992: <==negation-removal== 22656 (pos)
                    (not (Pc_not_checked_p5))

                    ; #90238: <==negation-removal== 19197 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #92089: <==negation-removal== 62334 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11822: <==commonly_known== 26715 (pos)
                    (Ba_checked_p6)

                    ; #18446: <==commonly_known== 82145 (neg)
                    (Pc_checked_p6)

                    ; #26611: <==commonly_known== 82145 (neg)
                    (Pb_checked_p6)

                    ; #26715: origin
                    (checked_p6)

                    ; #30446: <==commonly_known== 26715 (pos)
                    (Bc_checked_p6)

                    ; #36606: <==closure== 86636 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #41376: <==commonly_known== 82145 (neg)
                    (Pa_checked_p6)

                    ; #50821: <==commonly_known== 26715 (pos)
                    (Bb_checked_p6)

                    ; #71708: <==closure== 91633 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #86636: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #91633: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #13044: <==negation-removal== 91633 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #14624: <==negation-removal== 36606 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #25154: <==negation-removal== 11822 (pos)
                    (not (Pa_not_checked_p6))

                    ; #25530: <==uncertain_firing== 36606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #31013: <==negation-removal== 18446 (pos)
                    (not (Bc_not_checked_p6))

                    ; #35357: <==negation-removal== 71708 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #36220: <==negation-removal== 26611 (pos)
                    (not (Bb_not_checked_p6))

                    ; #55317: <==negation-removal== 50821 (pos)
                    (not (Pb_not_checked_p6))

                    ; #59244: <==negation-removal== 30446 (pos)
                    (not (Pc_not_checked_p6))

                    ; #62560: <==negation-removal== 86636 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #71817: <==uncertain_firing== 86636 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #77120: <==uncertain_firing== 91633 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #77964: <==negation-removal== 41376 (pos)
                    (not (Ba_not_checked_p6))

                    ; #82145: <==negation-removal== 26715 (pos)
                    (not (not_checked_p6))

                    ; #91717: <==uncertain_firing== 71708 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #13377: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18173: <==closure== 98185 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #21026: <==commonly_known== 89748 (neg)
                    (Pc_checked_p7)

                    ; #31401: <==commonly_known== 65600 (pos)
                    (Bc_checked_p7)

                    ; #38704: <==commonly_known== 65600 (pos)
                    (Bb_checked_p7)

                    ; #42872: <==commonly_known== 89748 (neg)
                    (Pb_checked_p7)

                    ; #50835: <==commonly_known== 89748 (neg)
                    (Pa_checked_p7)

                    ; #65600: origin
                    (checked_p7)

                    ; #71707: <==commonly_known== 65600 (pos)
                    (Ba_checked_p7)

                    ; #77041: <==closure== 13377 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #98185: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #16511: <==negation-removal== 18173 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #30406: <==negation-removal== 31401 (pos)
                    (not (Pc_not_checked_p7))

                    ; #36353: <==negation-removal== 50835 (pos)
                    (not (Ba_not_checked_p7))

                    ; #40418: <==uncertain_firing== 98185 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #44722: <==uncertain_firing== 13377 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #45324: <==negation-removal== 21026 (pos)
                    (not (Bc_not_checked_p7))

                    ; #55459: <==negation-removal== 42872 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57015: <==negation-removal== 13377 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #62809: <==negation-removal== 71707 (pos)
                    (not (Pa_not_checked_p7))

                    ; #63042: <==negation-removal== 77041 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #79933: <==uncertain_firing== 77041 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #84921: <==uncertain_firing== 18173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #85763: <==negation-removal== 98185 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #89748: <==negation-removal== 65600 (pos)
                    (not (not_checked_p7))

                    ; #90573: <==negation-removal== 38704 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #15804: <==closure== 27003 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #27003: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #30530: <==closure== 59275 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #35980: <==commonly_known== 49547 (pos)
                    (Bb_checked_p8)

                    ; #44157: <==commonly_known== 39543 (neg)
                    (Pc_checked_p8)

                    ; #49547: origin
                    (checked_p8)

                    ; #53338: <==commonly_known== 39543 (neg)
                    (Pa_checked_p8)

                    ; #55012: <==commonly_known== 49547 (pos)
                    (Bc_checked_p8)

                    ; #59275: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #68268: <==commonly_known== 49547 (pos)
                    (Ba_checked_p8)

                    ; #88881: <==commonly_known== 39543 (neg)
                    (Pb_checked_p8)

                    ; #11192: <==negation-removal== 30530 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #22733: <==uncertain_firing== 30530 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #23051: <==negation-removal== 88881 (pos)
                    (not (Bb_not_checked_p8))

                    ; #28387: <==negation-removal== 15804 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #31225: <==negation-removal== 53338 (pos)
                    (not (Ba_not_checked_p8))

                    ; #36061: <==negation-removal== 27003 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #36110: <==negation-removal== 59275 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #39543: <==negation-removal== 49547 (pos)
                    (not (not_checked_p8))

                    ; #39827: <==negation-removal== 35980 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41393: <==uncertain_firing== 15804 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #52749: <==negation-removal== 44157 (pos)
                    (not (Bc_not_checked_p8))

                    ; #65425: <==negation-removal== 55012 (pos)
                    (not (Pc_not_checked_p8))

                    ; #66520: <==uncertain_firing== 59275 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #73994: <==uncertain_firing== 27003 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #80226: <==negation-removal== 68268 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #20317: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #25005: <==commonly_known== 84362 (pos)
                    (Bc_checked_p9)

                    ; #27728: <==closure== 32118 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #32118: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #38042: <==commonly_known== 11568 (neg)
                    (Pa_checked_p9)

                    ; #43964: <==closure== 20317 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #56264: <==commonly_known== 11568 (neg)
                    (Pc_checked_p9)

                    ; #58654: <==commonly_known== 11568 (neg)
                    (Pb_checked_p9)

                    ; #74259: <==commonly_known== 84362 (pos)
                    (Ba_checked_p9)

                    ; #84362: origin
                    (checked_p9)

                    ; #89763: <==commonly_known== 84362 (pos)
                    (Bb_checked_p9)

                    ; #11568: <==negation-removal== 84362 (pos)
                    (not (not_checked_p9))

                    ; #14509: <==negation-removal== 43964 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #15947: <==uncertain_firing== 43964 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #16062: <==negation-removal== 89763 (pos)
                    (not (Pb_not_checked_p9))

                    ; #26075: <==negation-removal== 56264 (pos)
                    (not (Bc_not_checked_p9))

                    ; #27431: <==negation-removal== 27728 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #30007: <==negation-removal== 25005 (pos)
                    (not (Pc_not_checked_p9))

                    ; #36149: <==negation-removal== 74259 (pos)
                    (not (Pa_not_checked_p9))

                    ; #37858: <==negation-removal== 20317 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #40127: <==uncertain_firing== 32118 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #47691: <==negation-removal== 32118 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #70448: <==negation-removal== 58654 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73893: <==uncertain_firing== 20317 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #78719: <==negation-removal== 38042 (pos)
                    (not (Ba_not_checked_p9))

                    ; #89659: <==uncertain_firing== 27728 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #21286: <==commonly_known== 56067 (pos)
                    (Bc_checked_p10)

                    ; #39624: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #42688: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #45379: <==closure== 42688 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #49922: <==commonly_known== 56067 (pos)
                    (Ba_checked_p10)

                    ; #50594: <==closure== 39624 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #56067: origin
                    (checked_p10)

                    ; #60339: <==commonly_known== 56067 (pos)
                    (Bb_checked_p10)

                    ; #76391: <==commonly_known== 72465 (neg)
                    (Pb_checked_p10)

                    ; #80714: <==commonly_known== 72465 (neg)
                    (Pa_checked_p10)

                    ; #88648: <==commonly_known== 72465 (neg)
                    (Pc_checked_p10)

                    ; #14866: <==negation-removal== 39624 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #15236: <==uncertain_firing== 50594 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #17243: <==uncertain_firing== 39624 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #19259: <==uncertain_firing== 42688 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #31028: <==negation-removal== 76391 (pos)
                    (not (Bb_not_checked_p10))

                    ; #33723: <==negation-removal== 80714 (pos)
                    (not (Ba_not_checked_p10))

                    ; #43883: <==negation-removal== 45379 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #66744: <==negation-removal== 42688 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #68148: <==negation-removal== 50594 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #69251: <==negation-removal== 88648 (pos)
                    (not (Bc_not_checked_p10))

                    ; #70685: <==negation-removal== 21286 (pos)
                    (not (Pc_not_checked_p10))

                    ; #72465: <==negation-removal== 56067 (pos)
                    (not (not_checked_p10))

                    ; #77611: <==negation-removal== 49922 (pos)
                    (not (Pa_not_checked_p10))

                    ; #83027: <==negation-removal== 60339 (pos)
                    (not (Pb_not_checked_p10))

                    ; #89004: <==uncertain_firing== 45379 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #10394: <==closure== 45400 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #11260: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #28814: <==commonly_known== 13281 (neg)
                    (Pc_checked_p11)

                    ; #31309: <==commonly_known== 13281 (neg)
                    (Pa_checked_p11)

                    ; #33807: <==commonly_known== 56193 (pos)
                    (Bb_checked_p11)

                    ; #45400: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #56193: origin
                    (checked_p11)

                    ; #70603: <==commonly_known== 56193 (pos)
                    (Bc_checked_p11)

                    ; #76081: <==commonly_known== 56193 (pos)
                    (Ba_checked_p11)

                    ; #76958: <==closure== 11260 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #93701: <==commonly_known== 13281 (neg)
                    (Pb_checked_p11)

                    ; #10753: <==negation-removal== 76958 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #13281: <==negation-removal== 56193 (pos)
                    (not (not_checked_p11))

                    ; #13886: <==negation-removal== 28814 (pos)
                    (not (Bc_not_checked_p11))

                    ; #16215: <==negation-removal== 93701 (pos)
                    (not (Bb_not_checked_p11))

                    ; #17491: <==uncertain_firing== 10394 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #34095: <==negation-removal== 70603 (pos)
                    (not (Pc_not_checked_p11))

                    ; #41575: <==uncertain_firing== 11260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #52564: <==uncertain_firing== 76958 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #59220: <==negation-removal== 76081 (pos)
                    (not (Pa_not_checked_p11))

                    ; #67051: <==negation-removal== 11260 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #69279: <==negation-removal== 45400 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #70731: <==negation-removal== 10394 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #78733: <==negation-removal== 31309 (pos)
                    (not (Ba_not_checked_p11))

                    ; #83446: <==negation-removal== 33807 (pos)
                    (not (Pb_not_checked_p11))

                    ; #91866: <==uncertain_firing== 45400 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #11477: <==commonly_known== 61344 (neg)
                    (Pb_checked_p12)

                    ; #20778: <==commonly_known== 61344 (neg)
                    (Pa_checked_p12)

                    ; #40655: origin
                    (checked_p12)

                    ; #42677: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #49940: <==commonly_known== 40655 (pos)
                    (Ba_checked_p12)

                    ; #52838: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #53305: <==commonly_known== 40655 (pos)
                    (Bb_checked_p12)

                    ; #68978: <==commonly_known== 40655 (pos)
                    (Bc_checked_p12)

                    ; #77255: <==closure== 42677 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #78018: <==commonly_known== 61344 (neg)
                    (Pc_checked_p12)

                    ; #91492: <==closure== 52838 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #15343: <==negation-removal== 78018 (pos)
                    (not (Bc_not_checked_p12))

                    ; #26143: <==negation-removal== 52838 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #26167: <==negation-removal== 42677 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #29295: <==uncertain_firing== 42677 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #30609: <==negation-removal== 53305 (pos)
                    (not (Pb_not_checked_p12))

                    ; #53209: <==negation-removal== 77255 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #53800: <==uncertain_firing== 52838 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #57510: <==negation-removal== 11477 (pos)
                    (not (Bb_not_checked_p12))

                    ; #61344: <==negation-removal== 40655 (pos)
                    (not (not_checked_p12))

                    ; #61966: <==negation-removal== 68978 (pos)
                    (not (Pc_not_checked_p12))

                    ; #65873: <==negation-removal== 20778 (pos)
                    (not (Ba_not_checked_p12))

                    ; #68530: <==negation-removal== 91492 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #75674: <==uncertain_firing== 77255 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #77519: <==negation-removal== 49940 (pos)
                    (not (Pa_not_checked_p12))

                    ; #84815: <==uncertain_firing== 91492 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24385: <==commonly_known== 74111 (pos)
                    (Ba_checked_p1)

                    ; #28613: <==closure== 86885 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #31704: <==commonly_known== 57647 (neg)
                    (Pa_checked_p1)

                    ; #46482: <==closure== 55808 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #55808: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #62840: <==commonly_known== 57647 (neg)
                    (Pb_checked_p1)

                    ; #66766: <==commonly_known== 74111 (pos)
                    (Bb_checked_p1)

                    ; #74111: origin
                    (checked_p1)

                    ; #86885: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #90226: <==commonly_known== 57647 (neg)
                    (Pc_checked_p1)

                    ; #97095: <==commonly_known== 74111 (pos)
                    (Bc_checked_p1)

                    ; #13133: <==negation-removal== 90226 (pos)
                    (not (Bc_not_checked_p1))

                    ; #20319: <==negation-removal== 31704 (pos)
                    (not (Ba_not_checked_p1))

                    ; #28551: <==negation-removal== 24385 (pos)
                    (not (Pa_not_checked_p1))

                    ; #34218: <==negation-removal== 66766 (pos)
                    (not (Pb_not_checked_p1))

                    ; #36614: <==negation-removal== 97095 (pos)
                    (not (Pc_not_checked_p1))

                    ; #51169: <==negation-removal== 46482 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #55027: <==negation-removal== 55808 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #56102: <==negation-removal== 86885 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #57647: <==negation-removal== 74111 (pos)
                    (not (not_checked_p1))

                    ; #57789: <==uncertain_firing== 86885 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #62205: <==negation-removal== 28613 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #66003: <==uncertain_firing== 55808 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #74057: <==negation-removal== 62840 (pos)
                    (not (Bb_not_checked_p1))

                    ; #90871: <==uncertain_firing== 46482 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #92519: <==uncertain_firing== 28613 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #12486: <==commonly_known== 25537 (pos)
                    (Bc_checked_p2)

                    ; #13977: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #19767: <==commonly_known== 71781 (neg)
                    (Pa_checked_p2)

                    ; #25537: origin
                    (checked_p2)

                    ; #39895: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #45619: <==closure== 13977 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #47791: <==closure== 39895 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #77066: <==commonly_known== 71781 (neg)
                    (Pc_checked_p2)

                    ; #79653: <==commonly_known== 25537 (pos)
                    (Ba_checked_p2)

                    ; #89639: <==commonly_known== 71781 (neg)
                    (Pb_checked_p2)

                    ; #92109: <==commonly_known== 25537 (pos)
                    (Bb_checked_p2)

                    ; #10154: <==uncertain_firing== 45619 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #13680: <==negation-removal== 13977 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #19175: <==negation-removal== 77066 (pos)
                    (not (Bc_not_checked_p2))

                    ; #21220: <==negation-removal== 79653 (pos)
                    (not (Pa_not_checked_p2))

                    ; #36857: <==negation-removal== 19767 (pos)
                    (not (Ba_not_checked_p2))

                    ; #38975: <==negation-removal== 45619 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #45614: <==negation-removal== 89639 (pos)
                    (not (Bb_not_checked_p2))

                    ; #60391: <==uncertain_firing== 13977 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #63852: <==uncertain_firing== 39895 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #71781: <==negation-removal== 25537 (pos)
                    (not (not_checked_p2))

                    ; #73609: <==negation-removal== 47791 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #77648: <==negation-removal== 12486 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79374: <==negation-removal== 39895 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #80874: <==uncertain_firing== 47791 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #99697: <==negation-removal== 92109 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19968: <==closure== 81336 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #26496: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #38272: <==commonly_known== 89389 (pos)
                    (Bb_checked_p3)

                    ; #40582: <==commonly_known== 11392 (neg)
                    (Pc_checked_p3)

                    ; #46144: <==commonly_known== 11392 (neg)
                    (Pb_checked_p3)

                    ; #50343: <==commonly_known== 89389 (pos)
                    (Ba_checked_p3)

                    ; #52100: <==commonly_known== 89389 (pos)
                    (Bc_checked_p3)

                    ; #76065: <==closure== 26496 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #81336: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #89389: origin
                    (checked_p3)

                    ; #92152: <==commonly_known== 11392 (neg)
                    (Pa_checked_p3)

                    ; #11392: <==negation-removal== 89389 (pos)
                    (not (not_checked_p3))

                    ; #14990: <==uncertain_firing== 76065 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #21382: <==negation-removal== 46144 (pos)
                    (not (Bb_not_checked_p3))

                    ; #29774: <==uncertain_firing== 26496 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #37229: <==negation-removal== 40582 (pos)
                    (not (Bc_not_checked_p3))

                    ; #42150: <==negation-removal== 92152 (pos)
                    (not (Ba_not_checked_p3))

                    ; #47218: <==negation-removal== 52100 (pos)
                    (not (Pc_not_checked_p3))

                    ; #57419: <==negation-removal== 19968 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #57586: <==negation-removal== 81336 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #64201: <==uncertain_firing== 81336 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #64275: <==negation-removal== 38272 (pos)
                    (not (Pb_not_checked_p3))

                    ; #71232: <==negation-removal== 50343 (pos)
                    (not (Pa_not_checked_p3))

                    ; #82995: <==negation-removal== 26496 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #84199: <==negation-removal== 76065 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89927: <==uncertain_firing== 19968 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #18835: <==commonly_known== 32974 (pos)
                    (Bb_checked_p4)

                    ; #21297: <==commonly_known== 35899 (neg)
                    (Pb_checked_p4)

                    ; #32974: origin
                    (checked_p4)

                    ; #35987: <==commonly_known== 32974 (pos)
                    (Ba_checked_p4)

                    ; #45855: <==commonly_known== 32974 (pos)
                    (Bc_checked_p4)

                    ; #52101: <==commonly_known== 35899 (neg)
                    (Pc_checked_p4)

                    ; #54502: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #55431: <==commonly_known== 35899 (neg)
                    (Pa_checked_p4)

                    ; #61824: <==closure== 54502 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #85051: <==closure== 88746 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #88746: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #17425: <==negation-removal== 45855 (pos)
                    (not (Pc_not_checked_p4))

                    ; #18710: <==negation-removal== 52101 (pos)
                    (not (Bc_not_checked_p4))

                    ; #26540: <==negation-removal== 88746 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #35899: <==negation-removal== 32974 (pos)
                    (not (not_checked_p4))

                    ; #45056: <==uncertain_firing== 54502 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #57295: <==negation-removal== 18835 (pos)
                    (not (Pb_not_checked_p4))

                    ; #60934: <==uncertain_firing== 61824 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #65314: <==uncertain_firing== 88746 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #69950: <==negation-removal== 61824 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #77253: <==uncertain_firing== 85051 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #81657: <==negation-removal== 55431 (pos)
                    (not (Ba_not_checked_p4))

                    ; #85938: <==negation-removal== 54502 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #87899: <==negation-removal== 21297 (pos)
                    (not (Bb_not_checked_p4))

                    ; #90592: <==negation-removal== 85051 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91373: <==negation-removal== 35987 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #15234: <==closure== 23297 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #22656: <==commonly_known== 42525 (pos)
                    (Bc_checked_p5)

                    ; #23297: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #39310: <==closure== 57738 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #42525: origin
                    (checked_p5)

                    ; #57738: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #59109: <==commonly_known== 17650 (neg)
                    (Pb_checked_p5)

                    ; #62334: <==commonly_known== 17650 (neg)
                    (Pa_checked_p5)

                    ; #66853: <==commonly_known== 42525 (pos)
                    (Bb_checked_p5)

                    ; #68374: <==commonly_known== 17650 (neg)
                    (Pc_checked_p5)

                    ; #80504: <==commonly_known== 42525 (pos)
                    (Ba_checked_p5)

                    ; #10035: <==negation-removal== 68374 (pos)
                    (not (Bc_not_checked_p5))

                    ; #17650: <==negation-removal== 42525 (pos)
                    (not (not_checked_p5))

                    ; #23910: <==negation-removal== 39310 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #37519: <==negation-removal== 80504 (pos)
                    (not (Pa_not_checked_p5))

                    ; #39217: <==negation-removal== 66853 (pos)
                    (not (Pb_not_checked_p5))

                    ; #44473: <==uncertain_firing== 23297 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #48545: <==uncertain_firing== 57738 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #65500: <==negation-removal== 23297 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #67991: <==negation-removal== 59109 (pos)
                    (not (Bb_not_checked_p5))

                    ; #68129: <==uncertain_firing== 15234 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #80718: <==negation-removal== 15234 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #83514: <==negation-removal== 57738 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #84992: <==negation-removal== 22656 (pos)
                    (not (Pc_not_checked_p5))

                    ; #90572: <==uncertain_firing== 39310 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #92089: <==negation-removal== 62334 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #11822: <==commonly_known== 26715 (pos)
                    (Ba_checked_p6)

                    ; #18446: <==commonly_known== 82145 (neg)
                    (Pc_checked_p6)

                    ; #26611: <==commonly_known== 82145 (neg)
                    (Pb_checked_p6)

                    ; #26715: origin
                    (checked_p6)

                    ; #30446: <==commonly_known== 26715 (pos)
                    (Bc_checked_p6)

                    ; #31330: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #41376: <==commonly_known== 82145 (neg)
                    (Pa_checked_p6)

                    ; #50821: <==commonly_known== 26715 (pos)
                    (Bb_checked_p6)

                    ; #77998: <==closure== 81017 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #78720: <==closure== 31330 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #81017: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #10921: <==negation-removal== 78720 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #13270: <==negation-removal== 77998 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #22680: <==uncertain_firing== 31330 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25154: <==negation-removal== 11822 (pos)
                    (not (Pa_not_checked_p6))

                    ; #25682: <==uncertain_firing== 81017 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #31013: <==negation-removal== 18446 (pos)
                    (not (Bc_not_checked_p6))

                    ; #36220: <==negation-removal== 26611 (pos)
                    (not (Bb_not_checked_p6))

                    ; #49158: <==negation-removal== 31330 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #55317: <==negation-removal== 50821 (pos)
                    (not (Pb_not_checked_p6))

                    ; #55829: <==uncertain_firing== 77998 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #59244: <==negation-removal== 30446 (pos)
                    (not (Pc_not_checked_p6))

                    ; #77964: <==negation-removal== 41376 (pos)
                    (not (Ba_not_checked_p6))

                    ; #81409: <==negation-removal== 81017 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #82145: <==negation-removal== 26715 (pos)
                    (not (not_checked_p6))

                    ; #97025: <==uncertain_firing== 78720 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21026: <==commonly_known== 89748 (neg)
                    (Pc_checked_p7)

                    ; #24452: <==closure== 92064 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #31401: <==commonly_known== 65600 (pos)
                    (Bc_checked_p7)

                    ; #38704: <==commonly_known== 65600 (pos)
                    (Bb_checked_p7)

                    ; #42872: <==commonly_known== 89748 (neg)
                    (Pb_checked_p7)

                    ; #50835: <==commonly_known== 89748 (neg)
                    (Pa_checked_p7)

                    ; #62856: <==closure== 85029 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #65600: origin
                    (checked_p7)

                    ; #71707: <==commonly_known== 65600 (pos)
                    (Ba_checked_p7)

                    ; #85029: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #92064: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #30406: <==negation-removal== 31401 (pos)
                    (not (Pc_not_checked_p7))

                    ; #33927: <==negation-removal== 85029 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #36353: <==negation-removal== 50835 (pos)
                    (not (Ba_not_checked_p7))

                    ; #42340: <==uncertain_firing== 62856 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #45324: <==negation-removal== 21026 (pos)
                    (not (Bc_not_checked_p7))

                    ; #55459: <==negation-removal== 42872 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57783: <==negation-removal== 62856 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #62809: <==negation-removal== 71707 (pos)
                    (not (Pa_not_checked_p7))

                    ; #68482: <==negation-removal== 24452 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #68544: <==negation-removal== 92064 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #70945: <==uncertain_firing== 92064 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #77332: <==uncertain_firing== 24452 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #89748: <==negation-removal== 65600 (pos)
                    (not (not_checked_p7))

                    ; #90573: <==negation-removal== 38704 (pos)
                    (not (Pb_not_checked_p7))

                    ; #90583: <==uncertain_firing== 85029 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #35980: <==commonly_known== 49547 (pos)
                    (Bb_checked_p8)

                    ; #36490: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #40251: <==closure== 47485 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #44157: <==commonly_known== 39543 (neg)
                    (Pc_checked_p8)

                    ; #47485: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #49547: origin
                    (checked_p8)

                    ; #52681: <==closure== 36490 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #53338: <==commonly_known== 39543 (neg)
                    (Pa_checked_p8)

                    ; #55012: <==commonly_known== 49547 (pos)
                    (Bc_checked_p8)

                    ; #68268: <==commonly_known== 49547 (pos)
                    (Ba_checked_p8)

                    ; #88881: <==commonly_known== 39543 (neg)
                    (Pb_checked_p8)

                    ; #23051: <==negation-removal== 88881 (pos)
                    (not (Bb_not_checked_p8))

                    ; #31225: <==negation-removal== 53338 (pos)
                    (not (Ba_not_checked_p8))

                    ; #34222: <==uncertain_firing== 40251 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #39543: <==negation-removal== 49547 (pos)
                    (not (not_checked_p8))

                    ; #39827: <==negation-removal== 35980 (pos)
                    (not (Pb_not_checked_p8))

                    ; #42098: <==negation-removal== 52681 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #45126: <==negation-removal== 40251 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #52365: <==negation-removal== 36490 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #52749: <==negation-removal== 44157 (pos)
                    (not (Bc_not_checked_p8))

                    ; #59676: <==negation-removal== 47485 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #60020: <==uncertain_firing== 36490 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #65425: <==negation-removal== 55012 (pos)
                    (not (Pc_not_checked_p8))

                    ; #68348: <==uncertain_firing== 47485 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #80226: <==negation-removal== 68268 (pos)
                    (not (Pa_not_checked_p8))

                    ; #85390: <==uncertain_firing== 52681 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #11279: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #25005: <==commonly_known== 84362 (pos)
                    (Bc_checked_p9)

                    ; #38042: <==commonly_known== 11568 (neg)
                    (Pa_checked_p9)

                    ; #47664: <==closure== 11279 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #55938: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #56264: <==commonly_known== 11568 (neg)
                    (Pc_checked_p9)

                    ; #58654: <==commonly_known== 11568 (neg)
                    (Pb_checked_p9)

                    ; #74259: <==commonly_known== 84362 (pos)
                    (Ba_checked_p9)

                    ; #75418: <==closure== 55938 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #84362: origin
                    (checked_p9)

                    ; #89763: <==commonly_known== 84362 (pos)
                    (Bb_checked_p9)

                    ; #11568: <==negation-removal== 84362 (pos)
                    (not (not_checked_p9))

                    ; #14180: <==uncertain_firing== 47664 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #16062: <==negation-removal== 89763 (pos)
                    (not (Pb_not_checked_p9))

                    ; #19519: <==negation-removal== 75418 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #26075: <==negation-removal== 56264 (pos)
                    (not (Bc_not_checked_p9))

                    ; #30007: <==negation-removal== 25005 (pos)
                    (not (Pc_not_checked_p9))

                    ; #33018: <==uncertain_firing== 11279 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #36149: <==negation-removal== 74259 (pos)
                    (not (Pa_not_checked_p9))

                    ; #56780: <==uncertain_firing== 55938 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #66420: <==negation-removal== 55938 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #70448: <==negation-removal== 58654 (pos)
                    (not (Bb_not_checked_p9))

                    ; #77527: <==negation-removal== 47664 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #78719: <==negation-removal== 38042 (pos)
                    (not (Ba_not_checked_p9))

                    ; #85603: <==uncertain_firing== 75418 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #95273: <==negation-removal== 11279 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #21286: <==commonly_known== 56067 (pos)
                    (Bc_checked_p10)

                    ; #30637: <==closure== 34549 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #34549: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #49922: <==commonly_known== 56067 (pos)
                    (Ba_checked_p10)

                    ; #56067: origin
                    (checked_p10)

                    ; #60339: <==commonly_known== 56067 (pos)
                    (Bb_checked_p10)

                    ; #70229: <==closure== 82958 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #76391: <==commonly_known== 72465 (neg)
                    (Pb_checked_p10)

                    ; #80714: <==commonly_known== 72465 (neg)
                    (Pa_checked_p10)

                    ; #82958: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #88648: <==commonly_known== 72465 (neg)
                    (Pc_checked_p10)

                    ; #31028: <==negation-removal== 76391 (pos)
                    (not (Bb_not_checked_p10))

                    ; #32057: <==uncertain_firing== 70229 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #33723: <==negation-removal== 80714 (pos)
                    (not (Ba_not_checked_p10))

                    ; #48262: <==negation-removal== 30637 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #58275: <==uncertain_firing== 82958 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #69251: <==negation-removal== 88648 (pos)
                    (not (Bc_not_checked_p10))

                    ; #70238: <==negation-removal== 34549 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #70685: <==negation-removal== 21286 (pos)
                    (not (Pc_not_checked_p10))

                    ; #72465: <==negation-removal== 56067 (pos)
                    (not (not_checked_p10))

                    ; #77611: <==negation-removal== 49922 (pos)
                    (not (Pa_not_checked_p10))

                    ; #82618: <==negation-removal== 82958 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #83027: <==negation-removal== 60339 (pos)
                    (not (Pb_not_checked_p10))

                    ; #84472: <==uncertain_firing== 34549 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #86668: <==uncertain_firing== 30637 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #88272: <==negation-removal== 70229 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #22562: <==closure== 45677 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #26587: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #28814: <==commonly_known== 13281 (neg)
                    (Pc_checked_p11)

                    ; #31309: <==commonly_known== 13281 (neg)
                    (Pa_checked_p11)

                    ; #33807: <==commonly_known== 56193 (pos)
                    (Bb_checked_p11)

                    ; #45677: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #56193: origin
                    (checked_p11)

                    ; #70603: <==commonly_known== 56193 (pos)
                    (Bc_checked_p11)

                    ; #76081: <==commonly_known== 56193 (pos)
                    (Ba_checked_p11)

                    ; #91014: <==closure== 26587 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #93701: <==commonly_known== 13281 (neg)
                    (Pb_checked_p11)

                    ; #13281: <==negation-removal== 56193 (pos)
                    (not (not_checked_p11))

                    ; #13886: <==negation-removal== 28814 (pos)
                    (not (Bc_not_checked_p11))

                    ; #13965: <==negation-removal== 26587 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #15390: <==uncertain_firing== 91014 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #16215: <==negation-removal== 93701 (pos)
                    (not (Bb_not_checked_p11))

                    ; #18953: <==uncertain_firing== 45677 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #34095: <==negation-removal== 70603 (pos)
                    (not (Pc_not_checked_p11))

                    ; #59220: <==negation-removal== 76081 (pos)
                    (not (Pa_not_checked_p11))

                    ; #62075: <==uncertain_firing== 26587 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #63768: <==negation-removal== 91014 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #64035: <==negation-removal== 45677 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #68974: <==uncertain_firing== 22562 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #78733: <==negation-removal== 31309 (pos)
                    (not (Ba_not_checked_p11))

                    ; #83446: <==negation-removal== 33807 (pos)
                    (not (Pb_not_checked_p11))

                    ; #87058: <==negation-removal== 22562 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11477: <==commonly_known== 61344 (neg)
                    (Pb_checked_p12)

                    ; #16888: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #20778: <==commonly_known== 61344 (neg)
                    (Pa_checked_p12)

                    ; #29277: <==closure== 63623 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #40655: origin
                    (checked_p12)

                    ; #42536: <==closure== 16888 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #49940: <==commonly_known== 40655 (pos)
                    (Ba_checked_p12)

                    ; #53305: <==commonly_known== 40655 (pos)
                    (Bb_checked_p12)

                    ; #63623: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #68978: <==commonly_known== 40655 (pos)
                    (Bc_checked_p12)

                    ; #78018: <==commonly_known== 61344 (neg)
                    (Pc_checked_p12)

                    ; #15343: <==negation-removal== 78018 (pos)
                    (not (Bc_not_checked_p12))

                    ; #23519: <==uncertain_firing== 16888 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #30609: <==negation-removal== 53305 (pos)
                    (not (Pb_not_checked_p12))

                    ; #36391: <==negation-removal== 42536 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #39169: <==uncertain_firing== 63623 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #39939: <==uncertain_firing== 29277 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #43960: <==negation-removal== 29277 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #57510: <==negation-removal== 11477 (pos)
                    (not (Bb_not_checked_p12))

                    ; #61344: <==negation-removal== 40655 (pos)
                    (not (not_checked_p12))

                    ; #61966: <==negation-removal== 68978 (pos)
                    (not (Pc_not_checked_p12))

                    ; #65060: <==uncertain_firing== 42536 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #65873: <==negation-removal== 20778 (pos)
                    (not (Ba_not_checked_p12))

                    ; #67129: <==negation-removal== 63623 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #77519: <==negation-removal== 49940 (pos)
                    (not (Pa_not_checked_p12))

                    ; #82149: <==negation-removal== 16888 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10359: <==closure== 92137 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #15164: <==closure== 58714 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #24385: <==commonly_known== 74111 (pos)
                    (Ba_checked_p1)

                    ; #31704: <==commonly_known== 57647 (neg)
                    (Pa_checked_p1)

                    ; #58714: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #62840: <==commonly_known== 57647 (neg)
                    (Pb_checked_p1)

                    ; #66766: <==commonly_known== 74111 (pos)
                    (Bb_checked_p1)

                    ; #74111: origin
                    (checked_p1)

                    ; #90226: <==commonly_known== 57647 (neg)
                    (Pc_checked_p1)

                    ; #92137: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #97095: <==commonly_known== 74111 (pos)
                    (Bc_checked_p1)

                    ; #13133: <==negation-removal== 90226 (pos)
                    (not (Bc_not_checked_p1))

                    ; #17895: <==uncertain_firing== 92137 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #20319: <==negation-removal== 31704 (pos)
                    (not (Ba_not_checked_p1))

                    ; #24320: <==negation-removal== 92137 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #28551: <==negation-removal== 24385 (pos)
                    (not (Pa_not_checked_p1))

                    ; #34218: <==negation-removal== 66766 (pos)
                    (not (Pb_not_checked_p1))

                    ; #36614: <==negation-removal== 97095 (pos)
                    (not (Pc_not_checked_p1))

                    ; #40537: <==uncertain_firing== 15164 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #53413: <==negation-removal== 10359 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #56814: <==negation-removal== 58714 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #57647: <==negation-removal== 74111 (pos)
                    (not (not_checked_p1))

                    ; #62671: <==uncertain_firing== 10359 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #74057: <==negation-removal== 62840 (pos)
                    (not (Bb_not_checked_p1))

                    ; #82153: <==negation-removal== 15164 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #91191: <==uncertain_firing== 58714 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #12486: <==commonly_known== 25537 (pos)
                    (Bc_checked_p2)

                    ; #19767: <==commonly_known== 71781 (neg)
                    (Pa_checked_p2)

                    ; #25537: origin
                    (checked_p2)

                    ; #30181: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #38380: <==closure== 30181 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #44840: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #77066: <==commonly_known== 71781 (neg)
                    (Pc_checked_p2)

                    ; #79653: <==commonly_known== 25537 (pos)
                    (Ba_checked_p2)

                    ; #89639: <==commonly_known== 71781 (neg)
                    (Pb_checked_p2)

                    ; #92065: <==closure== 44840 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #92109: <==commonly_known== 25537 (pos)
                    (Bb_checked_p2)

                    ; #19175: <==negation-removal== 77066 (pos)
                    (not (Bc_not_checked_p2))

                    ; #21220: <==negation-removal== 79653 (pos)
                    (not (Pa_not_checked_p2))

                    ; #24583: <==negation-removal== 38380 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #29377: <==uncertain_firing== 44840 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #34671: <==uncertain_firing== 92065 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #36857: <==negation-removal== 19767 (pos)
                    (not (Ba_not_checked_p2))

                    ; #45614: <==negation-removal== 89639 (pos)
                    (not (Bb_not_checked_p2))

                    ; #47331: <==negation-removal== 30181 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #61632: <==uncertain_firing== 38380 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #71781: <==negation-removal== 25537 (pos)
                    (not (not_checked_p2))

                    ; #77648: <==negation-removal== 12486 (pos)
                    (not (Pc_not_checked_p2))

                    ; #81851: <==uncertain_firing== 30181 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #86520: <==negation-removal== 44840 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89814: <==negation-removal== 92065 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #99697: <==negation-removal== 92109 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #20233: <==closure== 53670 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #38272: <==commonly_known== 89389 (pos)
                    (Bb_checked_p3)

                    ; #40236: <==closure== 43889 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #40582: <==commonly_known== 11392 (neg)
                    (Pc_checked_p3)

                    ; #43889: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #46144: <==commonly_known== 11392 (neg)
                    (Pb_checked_p3)

                    ; #50343: <==commonly_known== 89389 (pos)
                    (Ba_checked_p3)

                    ; #52100: <==commonly_known== 89389 (pos)
                    (Bc_checked_p3)

                    ; #53670: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #89389: origin
                    (checked_p3)

                    ; #92152: <==commonly_known== 11392 (neg)
                    (Pa_checked_p3)

                    ; #11392: <==negation-removal== 89389 (pos)
                    (not (not_checked_p3))

                    ; #21382: <==negation-removal== 46144 (pos)
                    (not (Bb_not_checked_p3))

                    ; #31580: <==uncertain_firing== 40236 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #33039: <==negation-removal== 43889 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #37229: <==negation-removal== 40582 (pos)
                    (not (Bc_not_checked_p3))

                    ; #42150: <==negation-removal== 92152 (pos)
                    (not (Ba_not_checked_p3))

                    ; #42937: <==uncertain_firing== 20233 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #47218: <==negation-removal== 52100 (pos)
                    (not (Pc_not_checked_p3))

                    ; #47615: <==negation-removal== 40236 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #64116: <==uncertain_firing== 53670 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #64275: <==negation-removal== 38272 (pos)
                    (not (Pb_not_checked_p3))

                    ; #65906: <==uncertain_firing== 43889 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #71232: <==negation-removal== 50343 (pos)
                    (not (Pa_not_checked_p3))

                    ; #80186: <==negation-removal== 20233 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #91705: <==negation-removal== 53670 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #16112: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #18835: <==commonly_known== 32974 (pos)
                    (Bb_checked_p4)

                    ; #19613: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #21297: <==commonly_known== 35899 (neg)
                    (Pb_checked_p4)

                    ; #31386: <==closure== 16112 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #32974: origin
                    (checked_p4)

                    ; #35987: <==commonly_known== 32974 (pos)
                    (Ba_checked_p4)

                    ; #45855: <==commonly_known== 32974 (pos)
                    (Bc_checked_p4)

                    ; #52101: <==commonly_known== 35899 (neg)
                    (Pc_checked_p4)

                    ; #55431: <==commonly_known== 35899 (neg)
                    (Pa_checked_p4)

                    ; #60107: <==closure== 19613 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #17425: <==negation-removal== 45855 (pos)
                    (not (Pc_not_checked_p4))

                    ; #18710: <==negation-removal== 52101 (pos)
                    (not (Bc_not_checked_p4))

                    ; #25028: <==uncertain_firing== 31386 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #28565: <==negation-removal== 60107 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #31596: <==uncertain_firing== 16112 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #31635: <==uncertain_firing== 60107 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #31801: <==negation-removal== 31386 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #35899: <==negation-removal== 32974 (pos)
                    (not (not_checked_p4))

                    ; #46119: <==negation-removal== 19613 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57295: <==negation-removal== 18835 (pos)
                    (not (Pb_not_checked_p4))

                    ; #64227: <==negation-removal== 16112 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #69251: <==uncertain_firing== 19613 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #81657: <==negation-removal== 55431 (pos)
                    (not (Ba_not_checked_p4))

                    ; #87899: <==negation-removal== 21297 (pos)
                    (not (Bb_not_checked_p4))

                    ; #91373: <==negation-removal== 35987 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22656: <==commonly_known== 42525 (pos)
                    (Bc_checked_p5)

                    ; #42525: origin
                    (checked_p5)

                    ; #42601: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #59109: <==commonly_known== 17650 (neg)
                    (Pb_checked_p5)

                    ; #59463: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #62334: <==commonly_known== 17650 (neg)
                    (Pa_checked_p5)

                    ; #66853: <==commonly_known== 42525 (pos)
                    (Bb_checked_p5)

                    ; #68374: <==commonly_known== 17650 (neg)
                    (Pc_checked_p5)

                    ; #80504: <==commonly_known== 42525 (pos)
                    (Ba_checked_p5)

                    ; #80604: <==closure== 59463 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #83482: <==closure== 42601 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #10035: <==negation-removal== 68374 (pos)
                    (not (Bc_not_checked_p5))

                    ; #14149: <==uncertain_firing== 83482 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #17650: <==negation-removal== 42525 (pos)
                    (not (not_checked_p5))

                    ; #29528: <==uncertain_firing== 80604 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #37287: <==negation-removal== 80604 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #37519: <==negation-removal== 80504 (pos)
                    (not (Pa_not_checked_p5))

                    ; #37910: <==negation-removal== 42601 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #38433: <==uncertain_firing== 42601 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #39217: <==negation-removal== 66853 (pos)
                    (not (Pb_not_checked_p5))

                    ; #40583: <==negation-removal== 83482 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #58684: <==uncertain_firing== 59463 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #67991: <==negation-removal== 59109 (pos)
                    (not (Bb_not_checked_p5))

                    ; #84992: <==negation-removal== 22656 (pos)
                    (not (Pc_not_checked_p5))

                    ; #91376: <==negation-removal== 59463 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #92089: <==negation-removal== 62334 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11822: <==commonly_known== 26715 (pos)
                    (Ba_checked_p6)

                    ; #18446: <==commonly_known== 82145 (neg)
                    (Pc_checked_p6)

                    ; #18507: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #26611: <==commonly_known== 82145 (neg)
                    (Pb_checked_p6)

                    ; #26715: origin
                    (checked_p6)

                    ; #30446: <==commonly_known== 26715 (pos)
                    (Bc_checked_p6)

                    ; #41376: <==commonly_known== 82145 (neg)
                    (Pa_checked_p6)

                    ; #49890: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #50821: <==commonly_known== 26715 (pos)
                    (Bb_checked_p6)

                    ; #79958: <==closure== 18507 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #80240: <==closure== 49890 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #15674: <==uncertain_firing== 49890 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #25154: <==negation-removal== 11822 (pos)
                    (not (Pa_not_checked_p6))

                    ; #31013: <==negation-removal== 18446 (pos)
                    (not (Bc_not_checked_p6))

                    ; #36220: <==negation-removal== 26611 (pos)
                    (not (Bb_not_checked_p6))

                    ; #42750: <==negation-removal== 79958 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #52628: <==negation-removal== 49890 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #55317: <==negation-removal== 50821 (pos)
                    (not (Pb_not_checked_p6))

                    ; #59244: <==negation-removal== 30446 (pos)
                    (not (Pc_not_checked_p6))

                    ; #61430: <==negation-removal== 80240 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #77964: <==negation-removal== 41376 (pos)
                    (not (Ba_not_checked_p6))

                    ; #78375: <==uncertain_firing== 80240 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #80683: <==uncertain_firing== 79958 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #82145: <==negation-removal== 26715 (pos)
                    (not (not_checked_p6))

                    ; #86395: <==uncertain_firing== 18507 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #89964: <==negation-removal== 18507 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #21026: <==commonly_known== 89748 (neg)
                    (Pc_checked_p7)

                    ; #27482: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #31401: <==commonly_known== 65600 (pos)
                    (Bc_checked_p7)

                    ; #38704: <==commonly_known== 65600 (pos)
                    (Bb_checked_p7)

                    ; #42872: <==commonly_known== 89748 (neg)
                    (Pb_checked_p7)

                    ; #49987: <==closure== 69364 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #50835: <==commonly_known== 89748 (neg)
                    (Pa_checked_p7)

                    ; #65600: origin
                    (checked_p7)

                    ; #69364: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #71707: <==commonly_known== 65600 (pos)
                    (Ba_checked_p7)

                    ; #76323: <==closure== 27482 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #10714: <==negation-removal== 69364 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #11574: <==uncertain_firing== 27482 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #30406: <==negation-removal== 31401 (pos)
                    (not (Pc_not_checked_p7))

                    ; #36353: <==negation-removal== 50835 (pos)
                    (not (Ba_not_checked_p7))

                    ; #40653: <==negation-removal== 27482 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #45324: <==negation-removal== 21026 (pos)
                    (not (Bc_not_checked_p7))

                    ; #47165: <==negation-removal== 49987 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #55459: <==negation-removal== 42872 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57080: <==uncertain_firing== 76323 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #62099: <==uncertain_firing== 69364 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #62809: <==negation-removal== 71707 (pos)
                    (not (Pa_not_checked_p7))

                    ; #64236: <==uncertain_firing== 49987 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #89748: <==negation-removal== 65600 (pos)
                    (not (not_checked_p7))

                    ; #90573: <==negation-removal== 38704 (pos)
                    (not (Pb_not_checked_p7))

                    ; #91014: <==negation-removal== 76323 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #35403: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #35980: <==commonly_known== 49547 (pos)
                    (Bb_checked_p8)

                    ; #44157: <==commonly_known== 39543 (neg)
                    (Pc_checked_p8)

                    ; #49547: origin
                    (checked_p8)

                    ; #50482: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #53338: <==commonly_known== 39543 (neg)
                    (Pa_checked_p8)

                    ; #55012: <==commonly_known== 49547 (pos)
                    (Bc_checked_p8)

                    ; #55769: <==closure== 50482 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #68268: <==commonly_known== 49547 (pos)
                    (Ba_checked_p8)

                    ; #83722: <==closure== 35403 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #88881: <==commonly_known== 39543 (neg)
                    (Pb_checked_p8)

                    ; #10412: <==uncertain_firing== 50482 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #23051: <==negation-removal== 88881 (pos)
                    (not (Bb_not_checked_p8))

                    ; #31225: <==negation-removal== 53338 (pos)
                    (not (Ba_not_checked_p8))

                    ; #34479: <==negation-removal== 83722 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #39543: <==negation-removal== 49547 (pos)
                    (not (not_checked_p8))

                    ; #39827: <==negation-removal== 35980 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41791: <==uncertain_firing== 83722 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #43501: <==uncertain_firing== 55769 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #43755: <==uncertain_firing== 35403 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #52749: <==negation-removal== 44157 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54032: <==negation-removal== 35403 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #65425: <==negation-removal== 55012 (pos)
                    (not (Pc_not_checked_p8))

                    ; #66054: <==negation-removal== 50482 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #80226: <==negation-removal== 68268 (pos)
                    (not (Pa_not_checked_p8))

                    ; #87165: <==negation-removal== 55769 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13291: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #25005: <==commonly_known== 84362 (pos)
                    (Bc_checked_p9)

                    ; #32384: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #38042: <==commonly_known== 11568 (neg)
                    (Pa_checked_p9)

                    ; #56264: <==commonly_known== 11568 (neg)
                    (Pc_checked_p9)

                    ; #57311: <==closure== 13291 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #58654: <==commonly_known== 11568 (neg)
                    (Pb_checked_p9)

                    ; #60323: <==closure== 32384 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #74259: <==commonly_known== 84362 (pos)
                    (Ba_checked_p9)

                    ; #84362: origin
                    (checked_p9)

                    ; #89763: <==commonly_known== 84362 (pos)
                    (Bb_checked_p9)

                    ; #11568: <==negation-removal== 84362 (pos)
                    (not (not_checked_p9))

                    ; #16062: <==negation-removal== 89763 (pos)
                    (not (Pb_not_checked_p9))

                    ; #16718: <==uncertain_firing== 32384 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #21652: <==negation-removal== 13291 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #24067: <==negation-removal== 57311 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #26075: <==negation-removal== 56264 (pos)
                    (not (Bc_not_checked_p9))

                    ; #26519: <==uncertain_firing== 60323 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #30007: <==negation-removal== 25005 (pos)
                    (not (Pc_not_checked_p9))

                    ; #31847: <==negation-removal== 60323 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #36149: <==negation-removal== 74259 (pos)
                    (not (Pa_not_checked_p9))

                    ; #44542: <==negation-removal== 32384 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #53173: <==uncertain_firing== 13291 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #70448: <==negation-removal== 58654 (pos)
                    (not (Bb_not_checked_p9))

                    ; #78719: <==negation-removal== 38042 (pos)
                    (not (Ba_not_checked_p9))

                    ; #86171: <==uncertain_firing== 57311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))))

)