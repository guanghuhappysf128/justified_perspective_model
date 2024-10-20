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

    (:action comm_p10_a_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #64522: origin
                    (Ba_survivorat_s_p10)

                    ; #90194: <==closure== 64522 (pos)
                    (Pa_survivorat_s_p10)

                    ; #11355: <==negation-removal== 64522 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #74655: <==negation-removal== 90194 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_b)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #43016: <==closure== 63600 (pos)
                    (Pb_survivorat_s_p10)

                    ; #63600: origin
                    (Bb_survivorat_s_p10)

                    ; #31300: <==negation-removal== 63600 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #86528: <==negation-removal== 43016 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #50114: <==closure== 50768 (pos)
                    (Pc_survivorat_s_p10)

                    ; #50768: origin
                    (Bc_survivorat_s_p10)

                    ; #74192: <==negation-removal== 50768 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #74374: <==negation-removal== 50114 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #64522: origin
                    (Ba_survivorat_s_p10)

                    ; #90194: <==closure== 64522 (pos)
                    (Pa_survivorat_s_p10)

                    ; #11355: <==negation-removal== 64522 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #74655: <==negation-removal== 90194 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #43016: <==closure== 63600 (pos)
                    (Pb_survivorat_s_p10)

                    ; #63600: origin
                    (Bb_survivorat_s_p10)

                    ; #31300: <==negation-removal== 63600 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #86528: <==negation-removal== 43016 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #50114: <==closure== 50768 (pos)
                    (Pc_survivorat_s_p10)

                    ; #50768: origin
                    (Bc_survivorat_s_p10)

                    ; #74192: <==negation-removal== 50768 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #74374: <==negation-removal== 50114 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #64522: origin
                    (Ba_survivorat_s_p10)

                    ; #90194: <==closure== 64522 (pos)
                    (Pa_survivorat_s_p10)

                    ; #11355: <==negation-removal== 64522 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #74655: <==negation-removal== 90194 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_b)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #43016: <==closure== 63600 (pos)
                    (Pb_survivorat_s_p10)

                    ; #63600: origin
                    (Bb_survivorat_s_p10)

                    ; #31300: <==negation-removal== 63600 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #86528: <==negation-removal== 43016 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_c)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #50114: <==closure== 50768 (pos)
                    (Pc_survivorat_s_p10)

                    ; #50768: origin
                    (Bc_survivorat_s_p10)

                    ; #74192: <==negation-removal== 50768 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #74374: <==negation-removal== 50114 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (leader_a)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #51621: <==closure== 56210 (pos)
                    (Pa_survivorat_s_p11)

                    ; #56210: origin
                    (Ba_survivorat_s_p11)

                    ; #33528: <==negation-removal== 56210 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #60573: <==negation-removal== 51621 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (leader_b)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #68530: origin
                    (Bb_survivorat_s_p11)

                    ; #91929: <==closure== 68530 (pos)
                    (Pb_survivorat_s_p11)

                    ; #50722: <==negation-removal== 91929 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #90558: <==negation-removal== 68530 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (leader_c)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #66235: origin
                    (Bc_survivorat_s_p11)

                    ; #73794: <==closure== 66235 (pos)
                    (Pc_survivorat_s_p11)

                    ; #36362: <==negation-removal== 73794 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #46051: <==negation-removal== 66235 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #51621: <==closure== 56210 (pos)
                    (Pa_survivorat_s_p11)

                    ; #56210: origin
                    (Ba_survivorat_s_p11)

                    ; #33528: <==negation-removal== 56210 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #60573: <==negation-removal== 51621 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (at_b_p11)
                           (leader_b)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #68530: origin
                    (Bb_survivorat_s_p11)

                    ; #91929: <==closure== 68530 (pos)
                    (Pb_survivorat_s_p11)

                    ; #50722: <==negation-removal== 91929 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #90558: <==negation-removal== 68530 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (leader_c)
                           (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #66235: origin
                    (Bc_survivorat_s_p11)

                    ; #73794: <==closure== 66235 (pos)
                    (Pc_survivorat_s_p11)

                    ; #36362: <==negation-removal== 73794 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #46051: <==negation-removal== 66235 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #51621: <==closure== 56210 (pos)
                    (Pa_survivorat_s_p11)

                    ; #56210: origin
                    (Ba_survivorat_s_p11)

                    ; #33528: <==negation-removal== 56210 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #60573: <==negation-removal== 51621 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #68530: origin
                    (Bb_survivorat_s_p11)

                    ; #91929: <==closure== 68530 (pos)
                    (Pb_survivorat_s_p11)

                    ; #50722: <==negation-removal== 91929 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #90558: <==negation-removal== 68530 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #66235: origin
                    (Bc_survivorat_s_p11)

                    ; #73794: <==closure== 66235 (pos)
                    (Pc_survivorat_s_p11)

                    ; #36362: <==negation-removal== 73794 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #46051: <==negation-removal== 66235 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (leader_a)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #32861: <==closure== 84742 (pos)
                    (Pa_survivorat_s_p12)

                    ; #84742: origin
                    (Ba_survivorat_s_p12)

                    ; #55538: <==negation-removal== 32861 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #65170: <==negation-removal== 84742 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_b)
                           (at_a_p12))
        :effect (and
                    ; #49041: origin
                    (Bb_survivorat_s_p12)

                    ; #73857: <==closure== 49041 (pos)
                    (Pb_survivorat_s_p12)

                    ; #37574: <==negation-removal== 49041 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #38910: <==negation-removal== 73857 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (leader_c)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #77339: <==closure== 89526 (pos)
                    (Pc_survivorat_s_p12)

                    ; #89526: origin
                    (Bc_survivorat_s_p12)

                    ; #10974: <==negation-removal== 77339 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #27100: <==negation-removal== 89526 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_a)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #32861: <==closure== 84742 (pos)
                    (Pa_survivorat_s_p12)

                    ; #84742: origin
                    (Ba_survivorat_s_p12)

                    ; #55538: <==negation-removal== 32861 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #65170: <==negation-removal== 84742 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b)
                           (at_b_p12))
        :effect (and
                    ; #49041: origin
                    (Bb_survivorat_s_p12)

                    ; #73857: <==closure== 49041 (pos)
                    (Pb_survivorat_s_p12)

                    ; #37574: <==negation-removal== 49041 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #38910: <==negation-removal== 73857 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c)
                           (at_b_p12))
        :effect (and
                    ; #77339: <==closure== 89526 (pos)
                    (Pc_survivorat_s_p12)

                    ; #89526: origin
                    (Bc_survivorat_s_p12)

                    ; #10974: <==negation-removal== 77339 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #27100: <==negation-removal== 89526 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #32861: <==closure== 84742 (pos)
                    (Pa_survivorat_s_p12)

                    ; #84742: origin
                    (Ba_survivorat_s_p12)

                    ; #55538: <==negation-removal== 32861 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #65170: <==negation-removal== 84742 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (leader_b)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #49041: origin
                    (Bb_survivorat_s_p12)

                    ; #73857: <==closure== 49041 (pos)
                    (Pb_survivorat_s_p12)

                    ; #37574: <==negation-removal== 49041 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #38910: <==negation-removal== 73857 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (leader_c)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #77339: <==closure== 89526 (pos)
                    (Pc_survivorat_s_p12)

                    ; #89526: origin
                    (Bc_survivorat_s_p12)

                    ; #10974: <==negation-removal== 77339 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #27100: <==negation-removal== 89526 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #15154: <==closure== 45942 (pos)
                    (Pa_survivorat_s_p1)

                    ; #45942: origin
                    (Ba_survivorat_s_p1)

                    ; #64337: <==negation-removal== 15154 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #65475: <==negation-removal== 45942 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_b)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #11152: origin
                    (Bb_survivorat_s_p1)

                    ; #72220: <==closure== 11152 (pos)
                    (Pb_survivorat_s_p1)

                    ; #19050: <==negation-removal== 72220 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #65561: <==negation-removal== 11152 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_c)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #49189: <==closure== 88694 (pos)
                    (Pc_survivorat_s_p1)

                    ; #88694: origin
                    (Bc_survivorat_s_p1)

                    ; #40878: <==negation-removal== 88694 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #50392: <==negation-removal== 49189 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (leader_a)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #15154: <==closure== 45942 (pos)
                    (Pa_survivorat_s_p1)

                    ; #45942: origin
                    (Ba_survivorat_s_p1)

                    ; #64337: <==negation-removal== 15154 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #65475: <==negation-removal== 45942 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (leader_b)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #11152: origin
                    (Bb_survivorat_s_p1)

                    ; #72220: <==closure== 11152 (pos)
                    (Pb_survivorat_s_p1)

                    ; #19050: <==negation-removal== 72220 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #65561: <==negation-removal== 11152 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (leader_c)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #49189: <==closure== 88694 (pos)
                    (Pc_survivorat_s_p1)

                    ; #88694: origin
                    (Bc_survivorat_s_p1)

                    ; #40878: <==negation-removal== 88694 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #50392: <==negation-removal== 49189 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #15154: <==closure== 45942 (pos)
                    (Pa_survivorat_s_p1)

                    ; #45942: origin
                    (Ba_survivorat_s_p1)

                    ; #64337: <==negation-removal== 15154 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #65475: <==negation-removal== 45942 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #11152: origin
                    (Bb_survivorat_s_p1)

                    ; #72220: <==closure== 11152 (pos)
                    (Pb_survivorat_s_p1)

                    ; #19050: <==negation-removal== 72220 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #65561: <==negation-removal== 11152 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #49189: <==closure== 88694 (pos)
                    (Pc_survivorat_s_p1)

                    ; #88694: origin
                    (Bc_survivorat_s_p1)

                    ; #40878: <==negation-removal== 88694 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #50392: <==negation-removal== 49189 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #27548: <==closure== 35731 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35731: origin
                    (Ba_survivorat_s_p2)

                    ; #29982: <==negation-removal== 27548 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #36912: <==negation-removal== 35731 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_b)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #36688: origin
                    (Bb_survivorat_s_p2)

                    ; #37710: <==closure== 36688 (pos)
                    (Pb_survivorat_s_p2)

                    ; #33703: <==negation-removal== 36688 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #50281: <==negation-removal== 37710 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #28593: <==closure== 83421 (pos)
                    (Pc_survivorat_s_p2)

                    ; #83421: origin
                    (Bc_survivorat_s_p2)

                    ; #31238: <==negation-removal== 28593 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #87192: <==negation-removal== 83421 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (at_b_p2)
                           (leader_a)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #27548: <==closure== 35731 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35731: origin
                    (Ba_survivorat_s_p2)

                    ; #29982: <==negation-removal== 27548 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #36912: <==negation-removal== 35731 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (at_b_p2)
                           (leader_b)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #36688: origin
                    (Bb_survivorat_s_p2)

                    ; #37710: <==closure== 36688 (pos)
                    (Pb_survivorat_s_p2)

                    ; #33703: <==negation-removal== 36688 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #50281: <==negation-removal== 37710 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (at_b_p2)
                           (leader_c)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #28593: <==closure== 83421 (pos)
                    (Pc_survivorat_s_p2)

                    ; #83421: origin
                    (Bc_survivorat_s_p2)

                    ; #31238: <==negation-removal== 28593 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #87192: <==negation-removal== 83421 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (leader_a)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #27548: <==closure== 35731 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35731: origin
                    (Ba_survivorat_s_p2)

                    ; #29982: <==negation-removal== 27548 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #36912: <==negation-removal== 35731 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #36688: origin
                    (Bb_survivorat_s_p2)

                    ; #37710: <==closure== 36688 (pos)
                    (Pb_survivorat_s_p2)

                    ; #33703: <==negation-removal== 36688 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #50281: <==negation-removal== 37710 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (leader_c)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #28593: <==closure== 83421 (pos)
                    (Pc_survivorat_s_p2)

                    ; #83421: origin
                    (Bc_survivorat_s_p2)

                    ; #31238: <==negation-removal== 28593 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #87192: <==negation-removal== 83421 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (at_a_p3)
                           (leader_a)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #20581: origin
                    (Ba_survivorat_s_p3)

                    ; #75749: <==closure== 20581 (pos)
                    (Pa_survivorat_s_p3)

                    ; #81156: <==negation-removal== 20581 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #90596: <==negation-removal== 75749 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (at_a_p3)
                           (leader_b)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #49513: <==closure== 91841 (pos)
                    (Pb_survivorat_s_p3)

                    ; #91841: origin
                    (Bb_survivorat_s_p3)

                    ; #35852: <==negation-removal== 49513 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #42056: <==negation-removal== 91841 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (leader_c)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #49372: origin
                    (Bc_survivorat_s_p3)

                    ; #52369: <==closure== 49372 (pos)
                    (Pc_survivorat_s_p3)

                    ; #30849: <==negation-removal== 52369 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #36544: <==negation-removal== 49372 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #20581: origin
                    (Ba_survivorat_s_p3)

                    ; #75749: <==closure== 20581 (pos)
                    (Pa_survivorat_s_p3)

                    ; #81156: <==negation-removal== 20581 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #90596: <==negation-removal== 75749 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (leader_b)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #49513: <==closure== 91841 (pos)
                    (Pb_survivorat_s_p3)

                    ; #91841: origin
                    (Bb_survivorat_s_p3)

                    ; #35852: <==negation-removal== 49513 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #42056: <==negation-removal== 91841 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (leader_c)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #49372: origin
                    (Bc_survivorat_s_p3)

                    ; #52369: <==closure== 49372 (pos)
                    (Pc_survivorat_s_p3)

                    ; #30849: <==negation-removal== 52369 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #36544: <==negation-removal== 49372 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #20581: origin
                    (Ba_survivorat_s_p3)

                    ; #75749: <==closure== 20581 (pos)
                    (Pa_survivorat_s_p3)

                    ; #81156: <==negation-removal== 20581 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #90596: <==negation-removal== 75749 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #49513: <==closure== 91841 (pos)
                    (Pb_survivorat_s_p3)

                    ; #91841: origin
                    (Bb_survivorat_s_p3)

                    ; #35852: <==negation-removal== 49513 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #42056: <==negation-removal== 91841 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #49372: origin
                    (Bc_survivorat_s_p3)

                    ; #52369: <==closure== 49372 (pos)
                    (Pc_survivorat_s_p3)

                    ; #30849: <==negation-removal== 52369 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #36544: <==negation-removal== 49372 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_a))
        :effect (and
                    ; #23605: <==closure== 87860 (pos)
                    (Pa_survivorat_s_p4)

                    ; #87860: origin
                    (Ba_survivorat_s_p4)

                    ; #20461: <==negation-removal== 23605 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #63957: <==negation-removal== 87860 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_b)
                           (at_a_p4))
        :effect (and
                    ; #79326: <==closure== 83244 (pos)
                    (Pb_survivorat_s_p4)

                    ; #83244: origin
                    (Bb_survivorat_s_p4)

                    ; #21136: <==negation-removal== 79326 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #62840: <==negation-removal== 83244 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c))
        :effect (and
                    ; #27806: origin
                    (Bc_survivorat_s_p4)

                    ; #71015: <==closure== 27806 (pos)
                    (Pc_survivorat_s_p4)

                    ; #39536: <==negation-removal== 71015 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #67097: <==negation-removal== 27806 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #23605: <==closure== 87860 (pos)
                    (Pa_survivorat_s_p4)

                    ; #87860: origin
                    (Ba_survivorat_s_p4)

                    ; #20461: <==negation-removal== 23605 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #63957: <==negation-removal== 87860 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #79326: <==closure== 83244 (pos)
                    (Pb_survivorat_s_p4)

                    ; #83244: origin
                    (Bb_survivorat_s_p4)

                    ; #21136: <==negation-removal== 79326 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #62840: <==negation-removal== 83244 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_c)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #27806: origin
                    (Bc_survivorat_s_p4)

                    ; #71015: <==closure== 27806 (pos)
                    (Pc_survivorat_s_p4)

                    ; #39536: <==negation-removal== 71015 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #67097: <==negation-removal== 27806 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (leader_a)
                           (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #23605: <==closure== 87860 (pos)
                    (Pa_survivorat_s_p4)

                    ; #87860: origin
                    (Ba_survivorat_s_p4)

                    ; #20461: <==negation-removal== 23605 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #63957: <==negation-removal== 87860 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (at_c_p4)
                           (leader_b)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #79326: <==closure== 83244 (pos)
                    (Pb_survivorat_s_p4)

                    ; #83244: origin
                    (Bb_survivorat_s_p4)

                    ; #21136: <==negation-removal== 79326 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #62840: <==negation-removal== 83244 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (at_c_p4)
                           (leader_c)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #27806: origin
                    (Bc_survivorat_s_p4)

                    ; #71015: <==closure== 27806 (pos)
                    (Pc_survivorat_s_p4)

                    ; #39536: <==negation-removal== 71015 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #67097: <==negation-removal== 27806 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #21501: <==closure== 82141 (pos)
                    (Pa_survivorat_s_p5)

                    ; #82141: origin
                    (Ba_survivorat_s_p5)

                    ; #77577: <==negation-removal== 82141 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #86525: <==negation-removal== 21501 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5))
        :effect (and
                    ; #48899: origin
                    (Bb_survivorat_s_p5)

                    ; #84299: <==closure== 48899 (pos)
                    (Pb_survivorat_s_p5)

                    ; #57664: <==negation-removal== 48899 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #59730: <==negation-removal== 84299 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #66177: origin
                    (Bc_survivorat_s_p5)

                    ; #71304: <==closure== 66177 (pos)
                    (Pc_survivorat_s_p5)

                    ; #52735: <==negation-removal== 66177 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #71771: <==negation-removal== 71304 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #21501: <==closure== 82141 (pos)
                    (Pa_survivorat_s_p5)

                    ; #82141: origin
                    (Ba_survivorat_s_p5)

                    ; #77577: <==negation-removal== 82141 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #86525: <==negation-removal== 21501 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #48899: origin
                    (Bb_survivorat_s_p5)

                    ; #84299: <==closure== 48899 (pos)
                    (Pb_survivorat_s_p5)

                    ; #57664: <==negation-removal== 48899 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #59730: <==negation-removal== 84299 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #66177: origin
                    (Bc_survivorat_s_p5)

                    ; #71304: <==closure== 66177 (pos)
                    (Pc_survivorat_s_p5)

                    ; #52735: <==negation-removal== 66177 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #71771: <==negation-removal== 71304 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_a)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #21501: <==closure== 82141 (pos)
                    (Pa_survivorat_s_p5)

                    ; #82141: origin
                    (Ba_survivorat_s_p5)

                    ; #77577: <==negation-removal== 82141 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #86525: <==negation-removal== 21501 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #48899: origin
                    (Bb_survivorat_s_p5)

                    ; #84299: <==closure== 48899 (pos)
                    (Pb_survivorat_s_p5)

                    ; #57664: <==negation-removal== 48899 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #59730: <==negation-removal== 84299 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_c)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #66177: origin
                    (Bc_survivorat_s_p5)

                    ; #71304: <==closure== 66177 (pos)
                    (Pc_survivorat_s_p5)

                    ; #52735: <==negation-removal== 66177 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #71771: <==negation-removal== 71304 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #11213: origin
                    (Ba_survivorat_s_p6)

                    ; #18120: <==closure== 11213 (pos)
                    (Pa_survivorat_s_p6)

                    ; #28518: <==negation-removal== 11213 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #87768: <==negation-removal== 18120 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #25273: <==closure== 61582 (pos)
                    (Pb_survivorat_s_p6)

                    ; #61582: origin
                    (Bb_survivorat_s_p6)

                    ; #35209: <==negation-removal== 25273 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #63327: <==negation-removal== 61582 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #15224: <==closure== 65642 (pos)
                    (Pc_survivorat_s_p6)

                    ; #65642: origin
                    (Bc_survivorat_s_p6)

                    ; #28543: <==negation-removal== 65642 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #76203: <==negation-removal== 15224 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #11213: origin
                    (Ba_survivorat_s_p6)

                    ; #18120: <==closure== 11213 (pos)
                    (Pa_survivorat_s_p6)

                    ; #28518: <==negation-removal== 11213 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #87768: <==negation-removal== 18120 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_b)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #25273: <==closure== 61582 (pos)
                    (Pb_survivorat_s_p6)

                    ; #61582: origin
                    (Bb_survivorat_s_p6)

                    ; #35209: <==negation-removal== 25273 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #63327: <==negation-removal== 61582 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_c)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #15224: <==closure== 65642 (pos)
                    (Pc_survivorat_s_p6)

                    ; #65642: origin
                    (Bc_survivorat_s_p6)

                    ; #28543: <==negation-removal== 65642 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #76203: <==negation-removal== 15224 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_a))
        :effect (and
                    ; #11213: origin
                    (Ba_survivorat_s_p6)

                    ; #18120: <==closure== 11213 (pos)
                    (Pa_survivorat_s_p6)

                    ; #28518: <==negation-removal== 11213 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #87768: <==negation-removal== 18120 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_b)
                           (at_c_p6))
        :effect (and
                    ; #25273: <==closure== 61582 (pos)
                    (Pb_survivorat_s_p6)

                    ; #61582: origin
                    (Bb_survivorat_s_p6)

                    ; #35209: <==negation-removal== 25273 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #63327: <==negation-removal== 61582 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_c)
                           (at_c_p6))
        :effect (and
                    ; #15224: <==closure== 65642 (pos)
                    (Pc_survivorat_s_p6)

                    ; #65642: origin
                    (Bc_survivorat_s_p6)

                    ; #28543: <==negation-removal== 65642 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #76203: <==negation-removal== 15224 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a))
        :effect (and
                    ; #23596: <==closure== 27288 (pos)
                    (Pa_survivorat_s_p7)

                    ; #27288: origin
                    (Ba_survivorat_s_p7)

                    ; #27728: <==negation-removal== 23596 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #80770: <==negation-removal== 27288 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (leader_b)
                           (at_a_p7))
        :effect (and
                    ; #28840: <==closure== 50895 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50895: origin
                    (Bb_survivorat_s_p7)

                    ; #15623: <==negation-removal== 28840 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #38149: <==negation-removal== 50895 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c))
        :effect (and
                    ; #57635: origin
                    (Bc_survivorat_s_p7)

                    ; #79505: <==closure== 57635 (pos)
                    (Pc_survivorat_s_p7)

                    ; #21259: <==negation-removal== 79505 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #89049: <==negation-removal== 57635 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #23596: <==closure== 27288 (pos)
                    (Pa_survivorat_s_p7)

                    ; #27288: origin
                    (Ba_survivorat_s_p7)

                    ; #27728: <==negation-removal== 23596 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #80770: <==negation-removal== 27288 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b)
                           (at_b_p7))
        :effect (and
                    ; #28840: <==closure== 50895 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50895: origin
                    (Bb_survivorat_s_p7)

                    ; #15623: <==negation-removal== 28840 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #38149: <==negation-removal== 50895 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (leader_c)
                           (at_b_p7))
        :effect (and
                    ; #57635: origin
                    (Bc_survivorat_s_p7)

                    ; #79505: <==closure== 57635 (pos)
                    (Pc_survivorat_s_p7)

                    ; #21259: <==negation-removal== 79505 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #89049: <==negation-removal== 57635 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #23596: <==closure== 27288 (pos)
                    (Pa_survivorat_s_p7)

                    ; #27288: origin
                    (Ba_survivorat_s_p7)

                    ; #27728: <==negation-removal== 23596 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #80770: <==negation-removal== 27288 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_b)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #28840: <==closure== 50895 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50895: origin
                    (Bb_survivorat_s_p7)

                    ; #15623: <==negation-removal== 28840 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #38149: <==negation-removal== 50895 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_c)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #57635: origin
                    (Bc_survivorat_s_p7)

                    ; #79505: <==closure== 57635 (pos)
                    (Pc_survivorat_s_p7)

                    ; #21259: <==negation-removal== 79505 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #89049: <==negation-removal== 57635 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #17126: origin
                    (Ba_survivorat_s_p8)

                    ; #73309: <==closure== 17126 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50876: <==negation-removal== 73309 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #86769: <==negation-removal== 17126 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (at_a_p8)
                           (leader_b)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #15019: <==closure== 58954 (pos)
                    (Pb_survivorat_s_p8)

                    ; #58954: origin
                    (Bb_survivorat_s_p8)

                    ; #27135: <==negation-removal== 15019 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #56645: <==negation-removal== 58954 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (leader_c)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #70250: <==closure== 93939 (pos)
                    (Pc_survivorat_s_p8)

                    ; #93939: origin
                    (Bc_survivorat_s_p8)

                    ; #81753: <==negation-removal== 70250 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #91443: <==negation-removal== 93939 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #17126: origin
                    (Ba_survivorat_s_p8)

                    ; #73309: <==closure== 17126 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50876: <==negation-removal== 73309 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #86769: <==negation-removal== 17126 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #15019: <==closure== 58954 (pos)
                    (Pb_survivorat_s_p8)

                    ; #58954: origin
                    (Bb_survivorat_s_p8)

                    ; #27135: <==negation-removal== 15019 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #56645: <==negation-removal== 58954 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_c)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #70250: <==closure== 93939 (pos)
                    (Pc_survivorat_s_p8)

                    ; #93939: origin
                    (Bc_survivorat_s_p8)

                    ; #81753: <==negation-removal== 70250 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #91443: <==negation-removal== 93939 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (leader_a)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #17126: origin
                    (Ba_survivorat_s_p8)

                    ; #73309: <==closure== 17126 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50876: <==negation-removal== 73309 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #86769: <==negation-removal== 17126 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (leader_b)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #15019: <==closure== 58954 (pos)
                    (Pb_survivorat_s_p8)

                    ; #58954: origin
                    (Bb_survivorat_s_p8)

                    ; #27135: <==negation-removal== 15019 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #56645: <==negation-removal== 58954 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (leader_c)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #70250: <==closure== 93939 (pos)
                    (Pc_survivorat_s_p8)

                    ; #93939: origin
                    (Bc_survivorat_s_p8)

                    ; #81753: <==negation-removal== 70250 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #91443: <==negation-removal== 93939 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #46603: origin
                    (Ba_survivorat_s_p9)

                    ; #73193: <==closure== 46603 (pos)
                    (Pa_survivorat_s_p9)

                    ; #20228: <==negation-removal== 46603 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #47793: <==negation-removal== 73193 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #27438: origin
                    (Bb_survivorat_s_p9)

                    ; #29090: <==closure== 27438 (pos)
                    (Pb_survivorat_s_p9)

                    ; #38210: <==negation-removal== 29090 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #84218: <==negation-removal== 27438 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #42722: <==closure== 86110 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86110: origin
                    (Bc_survivorat_s_p9)

                    ; #13929: <==negation-removal== 42722 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #65177: <==negation-removal== 86110 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (leader_a)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #46603: origin
                    (Ba_survivorat_s_p9)

                    ; #73193: <==closure== 46603 (pos)
                    (Pa_survivorat_s_p9)

                    ; #20228: <==negation-removal== 46603 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #47793: <==negation-removal== 73193 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (leader_b)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #27438: origin
                    (Bb_survivorat_s_p9)

                    ; #29090: <==closure== 27438 (pos)
                    (Pb_survivorat_s_p9)

                    ; #38210: <==negation-removal== 29090 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #84218: <==negation-removal== 27438 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (leader_c)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #42722: <==closure== 86110 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86110: origin
                    (Bc_survivorat_s_p9)

                    ; #13929: <==negation-removal== 42722 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #65177: <==negation-removal== 86110 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_a))
        :effect (and
                    ; #46603: origin
                    (Ba_survivorat_s_p9)

                    ; #73193: <==closure== 46603 (pos)
                    (Pa_survivorat_s_p9)

                    ; #20228: <==negation-removal== 46603 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #47793: <==negation-removal== 73193 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_b))
        :effect (and
                    ; #27438: origin
                    (Bb_survivorat_s_p9)

                    ; #29090: <==closure== 27438 (pos)
                    (Pb_survivorat_s_p9)

                    ; #38210: <==negation-removal== 29090 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #84218: <==negation-removal== 27438 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_c))
        :effect (and
                    ; #42722: <==closure== 86110 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86110: origin
                    (Bc_survivorat_s_p9)

                    ; #13929: <==negation-removal== 42722 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #65177: <==negation-removal== 86110 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1)
                           (not (leader_a)))
        :effect (and
                    ; #37950: origin
                    (not_at_a_p10)

                    ; #71054: origin
                    (at_a_p1)

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10)
                           (not (leader_a)))
        :effect (and
                    ; #37950: origin
                    (not_at_a_p10)

                    ; #85968: origin
                    (at_a_p10)

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #37950: origin
                    (not_at_a_p10)

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #37950: origin
                    (not_at_a_p10)

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #37950: origin
                    (not_at_a_p10)

                    ; #88263: origin
                    (at_a_p2)

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30716: origin
                    (at_a_p3)

                    ; #37950: origin
                    (not_at_a_p10)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #37950: origin
                    (not_at_a_p10)

                    ; #69384: origin
                    (at_a_p4)

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5)
                           (not (leader_a)))
        :effect (and
                    ; #37950: origin
                    (not_at_a_p10)

                    ; #72027: origin
                    (at_a_p5)

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37950: origin
                    (not_at_a_p10)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #37950: origin
                    (not_at_a_p10)

                    ; #44093: origin
                    (at_a_p7)

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31037: origin
                    (at_a_p8)

                    ; #37950: origin
                    (not_at_a_p10)

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9)
                           (not (leader_a)))
        :effect (and
                    ; #37950: origin
                    (not_at_a_p10)

                    ; #51456: origin
                    (at_a_p9)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #85968: <==negation-removal== 37950 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #43807: origin
                    (not_at_a_p11)

                    ; #71054: origin
                    (at_a_p1)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10)
                           (not (leader_a)))
        :effect (and
                    ; #43807: origin
                    (not_at_a_p11)

                    ; #85968: origin
                    (at_a_p10)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #43807: origin
                    (not_at_a_p11)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #43807: origin
                    (not_at_a_p11)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2)
                           (not (leader_a)))
        :effect (and
                    ; #43807: origin
                    (not_at_a_p11)

                    ; #88263: origin
                    (at_a_p2)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30716: origin
                    (at_a_p3)

                    ; #43807: origin
                    (not_at_a_p11)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4)
                           (not (leader_a)))
        :effect (and
                    ; #43807: origin
                    (not_at_a_p11)

                    ; #69384: origin
                    (at_a_p4)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5)
                           (not (leader_a)))
        :effect (and
                    ; #43807: origin
                    (not_at_a_p11)

                    ; #72027: origin
                    (at_a_p5)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6)
                           (not (leader_a)))
        :effect (and
                    ; #43807: origin
                    (not_at_a_p11)

                    ; #88404: origin
                    (at_a_p6)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #43807: origin
                    (not_at_a_p11)

                    ; #44093: origin
                    (at_a_p7)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8)
                           (not (leader_a)))
        :effect (and
                    ; #31037: origin
                    (at_a_p8)

                    ; #43807: origin
                    (not_at_a_p11)

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9)
                           (not (leader_a)))
        :effect (and
                    ; #43807: origin
                    (not_at_a_p11)

                    ; #51456: origin
                    (at_a_p9)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #18192: <==negation-removal== 43807 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #55181: origin
                    (not_at_a_p12)

                    ; #71054: origin
                    (at_a_p1)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #55181: origin
                    (not_at_a_p12)

                    ; #85968: origin
                    (at_a_p10)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #55181: origin
                    (not_at_a_p12)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #55181: origin
                    (not_at_a_p12)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #55181: origin
                    (not_at_a_p12)

                    ; #88263: origin
                    (at_a_p2)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #30716: origin
                    (at_a_p3)

                    ; #55181: origin
                    (not_at_a_p12)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #55181: origin
                    (not_at_a_p12)

                    ; #69384: origin
                    (at_a_p4)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5)
                           (not (leader_a)))
        :effect (and
                    ; #55181: origin
                    (not_at_a_p12)

                    ; #72027: origin
                    (at_a_p5)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #55181: origin
                    (not_at_a_p12)

                    ; #88404: origin
                    (at_a_p6)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7)
                           (not (leader_a)))
        :effect (and
                    ; #44093: origin
                    (at_a_p7)

                    ; #55181: origin
                    (not_at_a_p12)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8)
                           (not (leader_a)))
        :effect (and
                    ; #31037: origin
                    (at_a_p8)

                    ; #55181: origin
                    (not_at_a_p12)

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51456: origin
                    (at_a_p9)

                    ; #55181: origin
                    (not_at_a_p12)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #27500: <==negation-removal== 55181 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #48528: origin
                    (not_at_a_p1)

                    ; #71054: origin
                    (at_a_p1)

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #48528: origin
                    (not_at_a_p1)

                    ; #85968: origin
                    (at_a_p10)

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #48528: origin
                    (not_at_a_p1)

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #48528: origin
                    (not_at_a_p1)

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #48528: origin
                    (not_at_a_p1)

                    ; #88263: origin
                    (at_a_p2)

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #30716: origin
                    (at_a_p3)

                    ; #48528: origin
                    (not_at_a_p1)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #48528: origin
                    (not_at_a_p1)

                    ; #69384: origin
                    (at_a_p4)

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48528: origin
                    (not_at_a_p1)

                    ; #72027: origin
                    (at_a_p5)

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48528: origin
                    (not_at_a_p1)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #44093: origin
                    (at_a_p7)

                    ; #48528: origin
                    (not_at_a_p1)

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #31037: origin
                    (at_a_p8)

                    ; #48528: origin
                    (not_at_a_p1)

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #48528: origin
                    (not_at_a_p1)

                    ; #51456: origin
                    (at_a_p9)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #71054: <==negation-removal== 48528 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p2)

                    ; #71054: origin
                    (at_a_p1)

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p2)

                    ; #85968: origin
                    (at_a_p10)

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #68685: origin
                    (not_at_a_p2)

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #68685: origin
                    (not_at_a_p2)

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p2)

                    ; #88263: origin
                    (at_a_p2)

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30716: origin
                    (at_a_p3)

                    ; #68685: origin
                    (not_at_a_p2)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p2)

                    ; #69384: origin
                    (at_a_p4)

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p2)

                    ; #72027: origin
                    (at_a_p5)

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p2)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #44093: origin
                    (at_a_p7)

                    ; #68685: origin
                    (not_at_a_p2)

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #31037: origin
                    (at_a_p8)

                    ; #68685: origin
                    (not_at_a_p2)

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #51456: origin
                    (at_a_p9)

                    ; #68685: origin
                    (not_at_a_p2)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #88263: <==negation-removal== 68685 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #71054: origin
                    (at_a_p1)

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #85968: origin
                    (at_a_p10)

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #21383: origin
                    (not_at_a_p3)

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #27500: origin
                    (at_a_p12)

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #88263: origin
                    (at_a_p2)

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #30716: origin
                    (at_a_p3)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #69384: origin
                    (at_a_p4)

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #72027: origin
                    (at_a_p5)

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #44093: origin
                    (at_a_p7)

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #31037: origin
                    (at_a_p8)

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #21383: origin
                    (not_at_a_p3)

                    ; #51456: origin
                    (at_a_p9)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #30716: <==negation-removal== 21383 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #69154: origin
                    (not_at_a_p4)

                    ; #71054: origin
                    (at_a_p1)

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #69154: origin
                    (not_at_a_p4)

                    ; #85968: origin
                    (at_a_p10)

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #69154: origin
                    (not_at_a_p4)

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #69154: origin
                    (not_at_a_p4)

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #69154: origin
                    (not_at_a_p4)

                    ; #88263: origin
                    (at_a_p2)

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30716: origin
                    (at_a_p3)

                    ; #69154: origin
                    (not_at_a_p4)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #69154: origin
                    (not_at_a_p4)

                    ; #69384: origin
                    (at_a_p4)

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #69154: origin
                    (not_at_a_p4)

                    ; #72027: origin
                    (at_a_p5)

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #69154: origin
                    (not_at_a_p4)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #44093: origin
                    (at_a_p7)

                    ; #69154: origin
                    (not_at_a_p4)

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #31037: origin
                    (at_a_p8)

                    ; #69154: origin
                    (not_at_a_p4)

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51456: origin
                    (at_a_p9)

                    ; #69154: origin
                    (not_at_a_p4)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #69384: <==negation-removal== 69154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54862: origin
                    (not_at_a_p5)

                    ; #71054: origin
                    (at_a_p1)

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54862: origin
                    (not_at_a_p5)

                    ; #85968: origin
                    (at_a_p10)

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #54862: origin
                    (not_at_a_p5)

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #54862: origin
                    (not_at_a_p5)

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54862: origin
                    (not_at_a_p5)

                    ; #88263: origin
                    (at_a_p2)

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #30716: origin
                    (at_a_p3)

                    ; #54862: origin
                    (not_at_a_p5)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4)
                           (not (leader_a)))
        :effect (and
                    ; #54862: origin
                    (not_at_a_p5)

                    ; #69384: origin
                    (at_a_p4)

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54862: origin
                    (not_at_a_p5)

                    ; #72027: origin
                    (at_a_p5)

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54862: origin
                    (not_at_a_p5)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #44093: origin
                    (at_a_p7)

                    ; #54862: origin
                    (not_at_a_p5)

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #31037: origin
                    (at_a_p8)

                    ; #54862: origin
                    (not_at_a_p5)

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #51456: origin
                    (at_a_p9)

                    ; #54862: origin
                    (not_at_a_p5)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #72027: <==negation-removal== 54862 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #71054: origin
                    (at_a_p1)

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #85968: origin
                    (at_a_p10)

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #28759: origin
                    (not_at_a_p6)

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #28759: origin
                    (not_at_a_p6)

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #88263: origin
                    (at_a_p2)

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #30716: origin
                    (at_a_p3)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #69384: origin
                    (at_a_p4)

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #72027: origin
                    (at_a_p5)

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #44093: origin
                    (at_a_p7)

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #31037: origin
                    (at_a_p8)

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #28759: origin
                    (not_at_a_p6)

                    ; #51456: origin
                    (at_a_p9)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #88404: <==negation-removal== 28759 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #71054: origin
                    (at_a_p1)

                    ; #71579: origin
                    (not_at_a_p7)

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #71579: origin
                    (not_at_a_p7)

                    ; #85968: origin
                    (at_a_p10)

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #71579: origin
                    (not_at_a_p7)

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #71579: origin
                    (not_at_a_p7)

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #71579: origin
                    (not_at_a_p7)

                    ; #88263: origin
                    (at_a_p2)

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30716: origin
                    (at_a_p3)

                    ; #71579: origin
                    (not_at_a_p7)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #69384: origin
                    (at_a_p4)

                    ; #71579: origin
                    (not_at_a_p7)

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #71579: origin
                    (not_at_a_p7)

                    ; #72027: origin
                    (at_a_p5)

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #71579: origin
                    (not_at_a_p7)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #44093: origin
                    (at_a_p7)

                    ; #71579: origin
                    (not_at_a_p7)

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #31037: origin
                    (at_a_p8)

                    ; #71579: origin
                    (not_at_a_p7)

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51456: origin
                    (at_a_p9)

                    ; #71579: origin
                    (not_at_a_p7)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #44093: <==negation-removal== 71579 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #70850: origin
                    (not_at_a_p8)

                    ; #71054: origin
                    (at_a_p1)

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #70850: origin
                    (not_at_a_p8)

                    ; #85968: origin
                    (at_a_p10)

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18192: origin
                    (at_a_p11)

                    ; #70850: origin
                    (not_at_a_p8)

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27500: origin
                    (at_a_p12)

                    ; #70850: origin
                    (not_at_a_p8)

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #70850: origin
                    (not_at_a_p8)

                    ; #88263: origin
                    (at_a_p2)

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30716: origin
                    (at_a_p3)

                    ; #70850: origin
                    (not_at_a_p8)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #69384: origin
                    (at_a_p4)

                    ; #70850: origin
                    (not_at_a_p8)

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #70850: origin
                    (not_at_a_p8)

                    ; #72027: origin
                    (at_a_p5)

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #70850: origin
                    (not_at_a_p8)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #44093: origin
                    (at_a_p7)

                    ; #70850: origin
                    (not_at_a_p8)

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #31037: origin
                    (at_a_p8)

                    ; #70850: origin
                    (not_at_a_p8)

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51456: origin
                    (at_a_p9)

                    ; #70850: origin
                    (not_at_a_p8)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #31037: <==negation-removal== 70850 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #71054: origin
                    (at_a_p1)

                    ; #48528: <==negation-removal== 71054 (pos)
                    (not (not_at_a_p1))

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #85968: origin
                    (at_a_p10)

                    ; #37950: <==negation-removal== 85968 (pos)
                    (not (not_at_a_p10))

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #18192: origin
                    (at_a_p11)

                    ; #43807: <==negation-removal== 18192 (pos)
                    (not (not_at_a_p11))

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #27500: origin
                    (at_a_p12)

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))

                    ; #55181: <==negation-removal== 27500 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #88263: origin
                    (at_a_p2)

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))

                    ; #68685: <==negation-removal== 88263 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #30716: origin
                    (at_a_p3)

                    ; #21383: <==negation-removal== 30716 (pos)
                    (not (not_at_a_p3))

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #69384: origin
                    (at_a_p4)

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))

                    ; #69154: <==negation-removal== 69384 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #72027: origin
                    (at_a_p5)

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))

                    ; #54862: <==negation-removal== 72027 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #88404: origin
                    (at_a_p6)

                    ; #28759: <==negation-removal== 88404 (pos)
                    (not (not_at_a_p6))

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #44093: origin
                    (at_a_p7)

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))

                    ; #71579: <==negation-removal== 44093 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #31037: origin
                    (at_a_p8)

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))

                    ; #70850: <==negation-removal== 31037 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16252: origin
                    (not_at_a_p9)

                    ; #51456: origin
                    (at_a_p9)

                    ; #16252: <==negation-removal== 51456 (pos)
                    (not (not_at_a_p9))

                    ; #51456: <==negation-removal== 16252 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #36562: origin
                    (not_at_b_p10)

                    ; #37465: origin
                    (at_b_p1)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #36562: origin
                    (not_at_b_p10)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #36562: origin
                    (not_at_b_p10)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #36562: origin
                    (not_at_b_p10)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #36562: origin
                    (not_at_b_p10)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3)
                           (not (leader_b)))
        :effect (and
                    ; #36562: origin
                    (not_at_b_p10)

                    ; #51226: origin
                    (at_b_p3)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #36562: origin
                    (not_at_b_p10)

                    ; #40808: origin
                    (at_b_p4)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5)
                           (not (leader_b)))
        :effect (and
                    ; #36562: origin
                    (not_at_b_p10)

                    ; #93627: origin
                    (at_b_p5)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #36562: origin
                    (not_at_b_p10)

                    ; #79703: origin
                    (at_b_p6)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #36562: origin
                    (not_at_b_p10)

                    ; #44022: origin
                    (at_b_p7)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #35700: origin
                    (at_b_p8)

                    ; #36562: origin
                    (not_at_b_p10)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36562: origin
                    (not_at_b_p10)

                    ; #48207: origin
                    (at_b_p9)

                    ; #29667: <==negation-removal== 36562 (pos)
                    (not (at_b_p10))

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #37465: origin
                    (at_b_p1)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #29667: origin
                    (at_b_p10)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #25867: origin
                    (not_at_b_p11)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #25867: origin
                    (not_at_b_p11)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #28224: origin
                    (at_b_p2)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #51226: origin
                    (at_b_p3)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #40808: origin
                    (at_b_p4)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #93627: origin
                    (at_b_p5)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #79703: origin
                    (at_b_p6)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #44022: origin
                    (at_b_p7)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #35700: origin
                    (at_b_p8)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9)
                           (not (leader_b)))
        :effect (and
                    ; #25867: origin
                    (not_at_b_p11)

                    ; #48207: origin
                    (at_b_p9)

                    ; #15841: <==negation-removal== 25867 (pos)
                    (not (at_b_p11))

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #37465: origin
                    (at_b_p1)

                    ; #39673: origin
                    (not_at_b_p12)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #39673: origin
                    (not_at_b_p12)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #39673: origin
                    (not_at_b_p12)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #39673: origin
                    (not_at_b_p12)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #39673: origin
                    (not_at_b_p12)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #39673: origin
                    (not_at_b_p12)

                    ; #51226: origin
                    (at_b_p3)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #39673: origin
                    (not_at_b_p12)

                    ; #40808: origin
                    (at_b_p4)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5)
                           (not (leader_b)))
        :effect (and
                    ; #39673: origin
                    (not_at_b_p12)

                    ; #93627: origin
                    (at_b_p5)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #39673: origin
                    (not_at_b_p12)

                    ; #79703: origin
                    (at_b_p6)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7)
                           (not (leader_b)))
        :effect (and
                    ; #39673: origin
                    (not_at_b_p12)

                    ; #44022: origin
                    (at_b_p7)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #35700: origin
                    (at_b_p8)

                    ; #39673: origin
                    (not_at_b_p12)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #39673: origin
                    (not_at_b_p12)

                    ; #48207: origin
                    (at_b_p9)

                    ; #15043: <==negation-removal== 39673 (pos)
                    (not (at_b_p12))

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #37465: origin
                    (at_b_p1)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #51226: origin
                    (at_b_p3)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #40808: origin
                    (at_b_p4)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #78032: origin
                    (not_at_b_p1)

                    ; #93627: origin
                    (at_b_p5)

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #78032: origin
                    (not_at_b_p1)

                    ; #79703: origin
                    (at_b_p6)

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #44022: origin
                    (at_b_p7)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #35700: origin
                    (at_b_p8)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48207: origin
                    (at_b_p9)

                    ; #78032: origin
                    (not_at_b_p1)

                    ; #37465: <==negation-removal== 78032 (pos)
                    (not (at_b_p1))

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #37465: origin
                    (at_b_p1)

                    ; #43146: origin
                    (not_at_b_p2)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #43146: origin
                    (not_at_b_p2)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #43146: origin
                    (not_at_b_p2)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #43146: origin
                    (not_at_b_p2)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #43146: origin
                    (not_at_b_p2)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43146: origin
                    (not_at_b_p2)

                    ; #51226: origin
                    (at_b_p3)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #40808: origin
                    (at_b_p4)

                    ; #43146: origin
                    (not_at_b_p2)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43146: origin
                    (not_at_b_p2)

                    ; #93627: origin
                    (at_b_p5)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6)
                           (not (leader_b)))
        :effect (and
                    ; #43146: origin
                    (not_at_b_p2)

                    ; #79703: origin
                    (at_b_p6)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #43146: origin
                    (not_at_b_p2)

                    ; #44022: origin
                    (at_b_p7)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #35700: origin
                    (at_b_p8)

                    ; #43146: origin
                    (not_at_b_p2)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #43146: origin
                    (not_at_b_p2)

                    ; #48207: origin
                    (at_b_p9)

                    ; #28224: <==negation-removal== 43146 (pos)
                    (not (at_b_p2))

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #34654: origin
                    (not_at_b_p3)

                    ; #37465: origin
                    (at_b_p1)

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #34654: origin
                    (not_at_b_p3)

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #34654: origin
                    (not_at_b_p3)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #34654: origin
                    (not_at_b_p3)

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #34654: origin
                    (not_at_b_p3)

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #34654: origin
                    (not_at_b_p3)

                    ; #51226: origin
                    (at_b_p3)

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #34654: origin
                    (not_at_b_p3)

                    ; #40808: origin
                    (at_b_p4)

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #34654: origin
                    (not_at_b_p3)

                    ; #93627: origin
                    (at_b_p5)

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #34654: origin
                    (not_at_b_p3)

                    ; #79703: origin
                    (at_b_p6)

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34654: origin
                    (not_at_b_p3)

                    ; #44022: origin
                    (at_b_p7)

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #34654: origin
                    (not_at_b_p3)

                    ; #35700: origin
                    (at_b_p8)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #34654: origin
                    (not_at_b_p3)

                    ; #48207: origin
                    (at_b_p9)

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))

                    ; #51226: <==negation-removal== 34654 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #37465: origin
                    (at_b_p1)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #51226: origin
                    (at_b_p3)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4)
                           (not (leader_b)))
        :effect (and
                    ; #40808: origin
                    (at_b_p4)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #51323: origin
                    (not_at_b_p4)

                    ; #93627: origin
                    (at_b_p5)

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #51323: origin
                    (not_at_b_p4)

                    ; #79703: origin
                    (at_b_p6)

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7)
                           (not (leader_b)))
        :effect (and
                    ; #44022: origin
                    (at_b_p7)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8)
                           (not (leader_b)))
        :effect (and
                    ; #35700: origin
                    (at_b_p8)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48207: origin
                    (at_b_p9)

                    ; #51323: origin
                    (not_at_b_p4)

                    ; #40808: <==negation-removal== 51323 (pos)
                    (not (at_b_p4))

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #37465: origin
                    (at_b_p1)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #51226: origin
                    (at_b_p3)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #40808: origin
                    (at_b_p4)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #61656: origin
                    (not_at_b_p5)

                    ; #93627: origin
                    (at_b_p5)

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #61656: origin
                    (not_at_b_p5)

                    ; #79703: origin
                    (at_b_p6)

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #44022: origin
                    (at_b_p7)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35700: origin
                    (at_b_p8)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #48207: origin
                    (at_b_p9)

                    ; #61656: origin
                    (not_at_b_p5)

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))

                    ; #93627: <==negation-removal== 61656 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #37465: origin
                    (at_b_p1)

                    ; #47287: origin
                    (not_at_b_p6)

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #47287: origin
                    (not_at_b_p6)

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #47287: origin
                    (not_at_b_p6)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #47287: origin
                    (not_at_b_p6)

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #47287: origin
                    (not_at_b_p6)

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #47287: origin
                    (not_at_b_p6)

                    ; #51226: origin
                    (at_b_p3)

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #40808: origin
                    (at_b_p4)

                    ; #47287: origin
                    (not_at_b_p6)

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #47287: origin
                    (not_at_b_p6)

                    ; #93627: origin
                    (at_b_p5)

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #47287: origin
                    (not_at_b_p6)

                    ; #79703: origin
                    (at_b_p6)

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44022: origin
                    (at_b_p7)

                    ; #47287: origin
                    (not_at_b_p6)

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35700: origin
                    (at_b_p8)

                    ; #47287: origin
                    (not_at_b_p6)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #47287: origin
                    (not_at_b_p6)

                    ; #48207: origin
                    (at_b_p9)

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))

                    ; #79703: <==negation-removal== 47287 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34613: origin
                    (not_at_b_p7)

                    ; #37465: origin
                    (at_b_p1)

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #34613: origin
                    (not_at_b_p7)

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #34613: origin
                    (not_at_b_p7)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #34613: origin
                    (not_at_b_p7)

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #34613: origin
                    (not_at_b_p7)

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34613: origin
                    (not_at_b_p7)

                    ; #51226: origin
                    (at_b_p3)

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #34613: origin
                    (not_at_b_p7)

                    ; #40808: origin
                    (at_b_p4)

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34613: origin
                    (not_at_b_p7)

                    ; #93627: origin
                    (at_b_p5)

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34613: origin
                    (not_at_b_p7)

                    ; #79703: origin
                    (at_b_p6)

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34613: origin
                    (not_at_b_p7)

                    ; #44022: origin
                    (at_b_p7)

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34613: origin
                    (not_at_b_p7)

                    ; #35700: origin
                    (at_b_p8)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34613: origin
                    (not_at_b_p7)

                    ; #48207: origin
                    (at_b_p9)

                    ; #44022: <==negation-removal== 34613 (pos)
                    (not (at_b_p7))

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #37465: origin
                    (at_b_p1)

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #29667: origin
                    (at_b_p10)

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #20467: origin
                    (not_at_b_p8)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #20467: origin
                    (not_at_b_p8)

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #28224: origin
                    (at_b_p2)

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #51226: origin
                    (at_b_p3)

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #40808: origin
                    (at_b_p4)

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #93627: origin
                    (at_b_p5)

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #79703: origin
                    (at_b_p6)

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #44022: origin
                    (at_b_p7)

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #35700: origin
                    (at_b_p8)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20467: origin
                    (not_at_b_p8)

                    ; #48207: origin
                    (at_b_p9)

                    ; #35700: <==negation-removal== 20467 (pos)
                    (not (at_b_p8))

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37465: origin
                    (at_b_p1)

                    ; #50389: origin
                    (not_at_b_p9)

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))

                    ; #78032: <==negation-removal== 37465 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #29667: origin
                    (at_b_p10)

                    ; #50389: origin
                    (not_at_b_p9)

                    ; #36562: <==negation-removal== 29667 (pos)
                    (not (not_at_b_p10))

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15841: origin
                    (at_b_p11)

                    ; #50389: origin
                    (not_at_b_p9)

                    ; #25867: <==negation-removal== 15841 (pos)
                    (not (not_at_b_p11))

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #15043: origin
                    (at_b_p12)

                    ; #50389: origin
                    (not_at_b_p9)

                    ; #39673: <==negation-removal== 15043 (pos)
                    (not (not_at_b_p12))

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #28224: origin
                    (at_b_p2)

                    ; #50389: origin
                    (not_at_b_p9)

                    ; #43146: <==negation-removal== 28224 (pos)
                    (not (not_at_b_p2))

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #50389: origin
                    (not_at_b_p9)

                    ; #51226: origin
                    (at_b_p3)

                    ; #34654: <==negation-removal== 51226 (pos)
                    (not (not_at_b_p3))

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #40808: origin
                    (at_b_p4)

                    ; #50389: origin
                    (not_at_b_p9)

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))

                    ; #51323: <==negation-removal== 40808 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #50389: origin
                    (not_at_b_p9)

                    ; #93627: origin
                    (at_b_p5)

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))

                    ; #61656: <==negation-removal== 93627 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50389: origin
                    (not_at_b_p9)

                    ; #79703: origin
                    (at_b_p6)

                    ; #47287: <==negation-removal== 79703 (pos)
                    (not (not_at_b_p6))

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #44022: origin
                    (at_b_p7)

                    ; #50389: origin
                    (not_at_b_p9)

                    ; #34613: <==negation-removal== 44022 (pos)
                    (not (not_at_b_p7))

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #35700: origin
                    (at_b_p8)

                    ; #50389: origin
                    (not_at_b_p9)

                    ; #20467: <==negation-removal== 35700 (pos)
                    (not (not_at_b_p8))

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48207: origin
                    (at_b_p9)

                    ; #50389: origin
                    (not_at_b_p9)

                    ; #48207: <==negation-removal== 50389 (pos)
                    (not (at_b_p9))

                    ; #50389: <==negation-removal== 48207 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #26999: origin
                    (at_c_p1)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #20318: origin
                    (at_c_p10)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #59118: origin
                    (at_c_p11)

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #34104: origin
                    (at_c_p12)

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #12340: origin
                    (not_at_c_p10)

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #81162: origin
                    (at_c_p3)

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #42282: origin
                    (at_c_p4)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #50318: origin
                    (at_c_p5)

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #25306: origin
                    (at_c_p7)

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #29675: origin
                    (at_c_p8)

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12340: origin
                    (not_at_c_p10)

                    ; #65155: origin
                    (at_c_p9)

                    ; #20318: <==negation-removal== 12340 (pos)
                    (not (at_c_p10))

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26999: origin
                    (at_c_p1)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #20318: origin
                    (at_c_p10)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11)
                           (not (leader_c)))
        :effect (and
                    ; #59118: origin
                    (at_c_p11)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34104: origin
                    (at_c_p12)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #81162: origin
                    (at_c_p3)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #42282: origin
                    (at_c_p4)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50318: origin
                    (at_c_p5)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #87050: origin
                    (not_at_c_p11)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25306: origin
                    (at_c_p7)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29675: origin
                    (at_c_p8)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9)
                           (not (leader_c)))
        :effect (and
                    ; #65155: origin
                    (at_c_p9)

                    ; #87050: origin
                    (not_at_c_p11)

                    ; #59118: <==negation-removal== 87050 (pos)
                    (not (at_c_p11))

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1)
                           (not (leader_c)))
        :effect (and
                    ; #26999: origin
                    (at_c_p1)

                    ; #53143: origin
                    (not_at_c_p12)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #20318: origin
                    (at_c_p10)

                    ; #53143: origin
                    (not_at_c_p12)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11)
                           (not (leader_c)))
        :effect (and
                    ; #53143: origin
                    (not_at_c_p12)

                    ; #59118: origin
                    (at_c_p11)

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34104: origin
                    (at_c_p12)

                    ; #53143: origin
                    (not_at_c_p12)

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #53143: origin
                    (not_at_c_p12)

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #53143: origin
                    (not_at_c_p12)

                    ; #81162: origin
                    (at_c_p3)

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #42282: origin
                    (at_c_p4)

                    ; #53143: origin
                    (not_at_c_p12)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50318: origin
                    (at_c_p5)

                    ; #53143: origin
                    (not_at_c_p12)

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #53143: origin
                    (not_at_c_p12)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25306: origin
                    (at_c_p7)

                    ; #53143: origin
                    (not_at_c_p12)

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29675: origin
                    (at_c_p8)

                    ; #53143: origin
                    (not_at_c_p12)

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9)
                           (not (leader_c)))
        :effect (and
                    ; #53143: origin
                    (not_at_c_p12)

                    ; #65155: origin
                    (at_c_p9)

                    ; #34104: <==negation-removal== 53143 (pos)
                    (not (at_c_p12))

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #26999: origin
                    (at_c_p1)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #20318: origin
                    (at_c_p10)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #59118: origin
                    (at_c_p11)

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #34104: origin
                    (at_c_p12)

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #19233: origin
                    (not_at_c_p1)

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #81162: origin
                    (at_c_p3)

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #42282: origin
                    (at_c_p4)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #50318: origin
                    (at_c_p5)

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #25306: origin
                    (at_c_p7)

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #29675: origin
                    (at_c_p8)

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #19233: origin
                    (not_at_c_p1)

                    ; #65155: origin
                    (at_c_p9)

                    ; #26999: <==negation-removal== 19233 (pos)
                    (not (at_c_p1))

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #26999: origin
                    (at_c_p1)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10)
                           (not (leader_c)))
        :effect (and
                    ; #20318: origin
                    (at_c_p10)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11)
                           (not (leader_c)))
        :effect (and
                    ; #59118: origin
                    (at_c_p11)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34104: origin
                    (at_c_p12)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #75159: origin
                    (not_at_c_p2)

                    ; #81162: origin
                    (at_c_p3)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #42282: origin
                    (at_c_p4)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #50318: origin
                    (at_c_p5)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #75159: origin
                    (not_at_c_p2)

                    ; #92085: origin
                    (at_c_p6)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25306: origin
                    (at_c_p7)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #29675: origin
                    (at_c_p8)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #65155: origin
                    (at_c_p9)

                    ; #75159: origin
                    (not_at_c_p2)

                    ; #10274: <==negation-removal== 75159 (pos)
                    (not (at_c_p2))

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #26999: origin
                    (at_c_p1)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10)
                           (not (leader_c)))
        :effect (and
                    ; #20318: origin
                    (at_c_p10)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11)
                           (not (leader_c)))
        :effect (and
                    ; #59118: origin
                    (at_c_p11)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34104: origin
                    (at_c_p12)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #73672: origin
                    (not_at_c_p3)

                    ; #81162: origin
                    (at_c_p3)

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #42282: origin
                    (at_c_p4)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50318: origin
                    (at_c_p5)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #73672: origin
                    (not_at_c_p3)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25306: origin
                    (at_c_p7)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #29675: origin
                    (at_c_p8)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #65155: origin
                    (at_c_p9)

                    ; #73672: origin
                    (not_at_c_p3)

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))

                    ; #81162: <==negation-removal== 73672 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #26999: origin
                    (at_c_p1)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #20318: origin
                    (at_c_p10)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #59118: origin
                    (at_c_p11)

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #34104: origin
                    (at_c_p12)

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #12148: origin
                    (not_at_c_p4)

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #81162: origin
                    (at_c_p3)

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #42282: origin
                    (at_c_p4)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #50318: origin
                    (at_c_p5)

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #25306: origin
                    (at_c_p7)

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #29675: origin
                    (at_c_p8)

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12148: origin
                    (not_at_c_p4)

                    ; #65155: origin
                    (at_c_p9)

                    ; #42282: <==negation-removal== 12148 (pos)
                    (not (at_c_p4))

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #26999: origin
                    (at_c_p1)

                    ; #43007: origin
                    (not_at_c_p5)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #20318: origin
                    (at_c_p10)

                    ; #43007: origin
                    (not_at_c_p5)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11)
                           (not (leader_c)))
        :effect (and
                    ; #43007: origin
                    (not_at_c_p5)

                    ; #59118: origin
                    (at_c_p11)

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #34104: origin
                    (at_c_p12)

                    ; #43007: origin
                    (not_at_c_p5)

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #43007: origin
                    (not_at_c_p5)

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #43007: origin
                    (not_at_c_p5)

                    ; #81162: origin
                    (at_c_p3)

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #42282: origin
                    (at_c_p4)

                    ; #43007: origin
                    (not_at_c_p5)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #43007: origin
                    (not_at_c_p5)

                    ; #50318: origin
                    (at_c_p5)

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #43007: origin
                    (not_at_c_p5)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #25306: origin
                    (at_c_p7)

                    ; #43007: origin
                    (not_at_c_p5)

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29675: origin
                    (at_c_p8)

                    ; #43007: origin
                    (not_at_c_p5)

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #43007: origin
                    (not_at_c_p5)

                    ; #65155: origin
                    (at_c_p9)

                    ; #50318: <==negation-removal== 43007 (pos)
                    (not (at_c_p5))

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #26999: origin
                    (at_c_p1)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #20318: origin
                    (at_c_p10)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #59118: origin
                    (at_c_p11)

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #34104: origin
                    (at_c_p12)

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #16511: origin
                    (not_at_c_p6)

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #81162: origin
                    (at_c_p3)

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #42282: origin
                    (at_c_p4)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #50318: origin
                    (at_c_p5)

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #25306: origin
                    (at_c_p7)

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #29675: origin
                    (at_c_p8)

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16511: origin
                    (not_at_c_p6)

                    ; #65155: origin
                    (at_c_p9)

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))

                    ; #92085: <==negation-removal== 16511 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #26999: origin
                    (at_c_p1)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #20318: origin
                    (at_c_p10)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #59118: origin
                    (at_c_p11)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #34104: origin
                    (at_c_p12)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #66691: origin
                    (not_at_c_p7)

                    ; #81162: origin
                    (at_c_p3)

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #42282: origin
                    (at_c_p4)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50318: origin
                    (at_c_p5)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #66691: origin
                    (not_at_c_p7)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25306: origin
                    (at_c_p7)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #29675: origin
                    (at_c_p8)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #65155: origin
                    (at_c_p9)

                    ; #66691: origin
                    (not_at_c_p7)

                    ; #25306: <==negation-removal== 66691 (pos)
                    (not (at_c_p7))

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26999: origin
                    (at_c_p1)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10)
                           (not (leader_c)))
        :effect (and
                    ; #20318: origin
                    (at_c_p10)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #59118: origin
                    (at_c_p11)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34104: origin
                    (at_c_p12)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #66574: origin
                    (not_at_c_p8)

                    ; #81162: origin
                    (at_c_p3)

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #42282: origin
                    (at_c_p4)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50318: origin
                    (at_c_p5)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #66574: origin
                    (not_at_c_p8)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25306: origin
                    (at_c_p7)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #29675: origin
                    (at_c_p8)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #65155: origin
                    (at_c_p9)

                    ; #66574: origin
                    (not_at_c_p8)

                    ; #29675: <==negation-removal== 66574 (pos)
                    (not (at_c_p8))

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26999: origin
                    (at_c_p1)

                    ; #61266: origin
                    (not_at_c_p9)

                    ; #19233: <==negation-removal== 26999 (pos)
                    (not (not_at_c_p1))

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20318: origin
                    (at_c_p10)

                    ; #61266: origin
                    (not_at_c_p9)

                    ; #12340: <==negation-removal== 20318 (pos)
                    (not (not_at_c_p10))

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #59118: origin
                    (at_c_p11)

                    ; #61266: origin
                    (not_at_c_p9)

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))

                    ; #87050: <==negation-removal== 59118 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #34104: origin
                    (at_c_p12)

                    ; #61266: origin
                    (not_at_c_p9)

                    ; #53143: <==negation-removal== 34104 (pos)
                    (not (not_at_c_p12))

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10274: origin
                    (at_c_p2)

                    ; #61266: origin
                    (not_at_c_p9)

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))

                    ; #75159: <==negation-removal== 10274 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #61266: origin
                    (not_at_c_p9)

                    ; #81162: origin
                    (at_c_p3)

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))

                    ; #73672: <==negation-removal== 81162 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #42282: origin
                    (at_c_p4)

                    ; #61266: origin
                    (not_at_c_p9)

                    ; #12148: <==negation-removal== 42282 (pos)
                    (not (not_at_c_p4))

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50318: origin
                    (at_c_p5)

                    ; #61266: origin
                    (not_at_c_p9)

                    ; #43007: <==negation-removal== 50318 (pos)
                    (not (not_at_c_p5))

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #61266: origin
                    (not_at_c_p9)

                    ; #92085: origin
                    (at_c_p6)

                    ; #16511: <==negation-removal== 92085 (pos)
                    (not (not_at_c_p6))

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #25306: origin
                    (at_c_p7)

                    ; #61266: origin
                    (not_at_c_p9)

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))

                    ; #66691: <==negation-removal== 25306 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #29675: origin
                    (at_c_p8)

                    ; #61266: origin
                    (not_at_c_p9)

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))

                    ; #66574: <==negation-removal== 29675 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #61266: origin
                    (not_at_c_p9)

                    ; #65155: origin
                    (at_c_p9)

                    ; #61266: <==negation-removal== 65155 (pos)
                    (not (not_at_c_p9))

                    ; #65155: <==negation-removal== 61266 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16998: <==commonly_known== 61661 (neg)
                    (Pa_checked_p10)

                    ; #23958: origin
                    (checked_p10)

                    ; #24866: <==commonly_known== 61661 (neg)
                    (Pb_checked_p10)

                    ; #36059: <==commonly_known== 61661 (neg)
                    (Pc_checked_p10)

                    ; #43198: <==commonly_known== 23958 (pos)
                    (Ba_checked_p10)

                    ; #44116: <==closure== 86306 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #76228: <==commonly_known== 23958 (pos)
                    (Bc_checked_p10)

                    ; #76666: <==commonly_known== 23958 (pos)
                    (Bb_checked_p10)

                    ; #77586: <==closure== 91443 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #86306: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #91443: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #22600: <==negation-removal== 77586 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #34132: <==negation-removal== 76228 (pos)
                    (not (Pc_not_checked_p10))

                    ; #45529: <==negation-removal== 44116 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #47581: <==negation-removal== 36059 (pos)
                    (not (Bc_not_checked_p10))

                    ; #48042: <==uncertain_firing== 44116 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #48677: <==uncertain_firing== 91443 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #59586: <==negation-removal== 91443 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #61322: <==negation-removal== 24866 (pos)
                    (not (Bb_not_checked_p10))

                    ; #61658: <==negation-removal== 43198 (pos)
                    (not (Pa_not_checked_p10))

                    ; #61661: <==negation-removal== 23958 (pos)
                    (not (not_checked_p10))

                    ; #73978: <==negation-removal== 76666 (pos)
                    (not (Pb_not_checked_p10))

                    ; #80911: <==uncertain_firing== 77586 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #83080: <==negation-removal== 86306 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #85715: <==negation-removal== 16998 (pos)
                    (not (Ba_not_checked_p10))

                    ; #87758: <==uncertain_firing== 86306 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #10336: origin
                    (checked_p11)

                    ; #14118: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #22080: <==commonly_known== 10336 (pos)
                    (Ba_checked_p11)

                    ; #29832: <==commonly_known== 10336 (pos)
                    (Bc_checked_p11)

                    ; #43988: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #51371: <==commonly_known== 89866 (neg)
                    (Pa_checked_p11)

                    ; #56487: <==commonly_known== 89866 (neg)
                    (Pb_checked_p11)

                    ; #65568: <==commonly_known== 10336 (pos)
                    (Bb_checked_p11)

                    ; #87618: <==closure== 14118 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #89077: <==commonly_known== 89866 (neg)
                    (Pc_checked_p11)

                    ; #99914: <==closure== 43988 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #17971: <==negation-removal== 65568 (pos)
                    (not (Pb_not_checked_p11))

                    ; #19886: <==negation-removal== 87618 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #20017: <==negation-removal== 22080 (pos)
                    (not (Pa_not_checked_p11))

                    ; #21165: <==negation-removal== 14118 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #23983: <==negation-removal== 89077 (pos)
                    (not (Bc_not_checked_p11))

                    ; #33533: <==uncertain_firing== 14118 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #34613: <==negation-removal== 51371 (pos)
                    (not (Ba_not_checked_p11))

                    ; #36470: <==negation-removal== 43988 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #37536: <==negation-removal== 56487 (pos)
                    (not (Bb_not_checked_p11))

                    ; #60585: <==negation-removal== 99914 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #69706: <==uncertain_firing== 99914 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #71284: <==negation-removal== 29832 (pos)
                    (not (Pc_not_checked_p11))

                    ; #76139: <==uncertain_firing== 87618 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #89866: <==negation-removal== 10336 (pos)
                    (not (not_checked_p11))

                    ; #92875: <==uncertain_firing== 43988 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #20440: <==closure== 39865 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #26379: <==commonly_known== 11422 (neg)
                    (Pc_checked_p12)

                    ; #29213: <==commonly_known== 85202 (pos)
                    (Ba_checked_p12)

                    ; #38595: <==commonly_known== 85202 (pos)
                    (Bb_checked_p12)

                    ; #39865: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #49710: <==commonly_known== 11422 (neg)
                    (Pa_checked_p12)

                    ; #50311: <==closure== 91076 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #63059: <==commonly_known== 85202 (pos)
                    (Bc_checked_p12)

                    ; #79407: <==commonly_known== 11422 (neg)
                    (Pb_checked_p12)

                    ; #85202: origin
                    (checked_p12)

                    ; #91076: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #11422: <==negation-removal== 85202 (pos)
                    (not (not_checked_p12))

                    ; #15876: <==negation-removal== 50311 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #16680: <==negation-removal== 79407 (pos)
                    (not (Bb_not_checked_p12))

                    ; #46430: <==negation-removal== 26379 (pos)
                    (not (Bc_not_checked_p12))

                    ; #56820: <==negation-removal== 29213 (pos)
                    (not (Pa_not_checked_p12))

                    ; #65335: <==negation-removal== 39865 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #67712: <==negation-removal== 38595 (pos)
                    (not (Pb_not_checked_p12))

                    ; #68608: <==uncertain_firing== 39865 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #68990: <==negation-removal== 20440 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #69815: <==uncertain_firing== 91076 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #74426: <==negation-removal== 91076 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #77560: <==uncertain_firing== 20440 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #81673: <==negation-removal== 63059 (pos)
                    (not (Pc_not_checked_p12))

                    ; #86422: <==uncertain_firing== 50311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #93504: <==negation-removal== 49710 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11333: <==closure== 21896 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #21896: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #35183: <==commonly_known== 89618 (neg)
                    (Pb_checked_p1)

                    ; #38797: <==commonly_known== 83509 (pos)
                    (Bc_checked_p1)

                    ; #43261: <==commonly_known== 83509 (pos)
                    (Bb_checked_p1)

                    ; #55398: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #59610: <==commonly_known== 89618 (neg)
                    (Pc_checked_p1)

                    ; #61683: <==closure== 55398 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #62424: <==commonly_known== 83509 (pos)
                    (Ba_checked_p1)

                    ; #71044: <==commonly_known== 89618 (neg)
                    (Pa_checked_p1)

                    ; #83509: origin
                    (checked_p1)

                    ; #19278: <==negation-removal== 11333 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #30660: <==negation-removal== 71044 (pos)
                    (not (Ba_not_checked_p1))

                    ; #45313: <==negation-removal== 62424 (pos)
                    (not (Pa_not_checked_p1))

                    ; #55417: <==negation-removal== 55398 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #57290: <==negation-removal== 21896 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #59299: <==uncertain_firing== 55398 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #68030: <==negation-removal== 35183 (pos)
                    (not (Bb_not_checked_p1))

                    ; #73877: <==uncertain_firing== 21896 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #74531: <==uncertain_firing== 61683 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #75373: <==uncertain_firing== 11333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #77366: <==negation-removal== 59610 (pos)
                    (not (Bc_not_checked_p1))

                    ; #82571: <==negation-removal== 38797 (pos)
                    (not (Pc_not_checked_p1))

                    ; #82798: <==negation-removal== 43261 (pos)
                    (not (Pb_not_checked_p1))

                    ; #89618: <==negation-removal== 83509 (pos)
                    (not (not_checked_p1))

                    ; #89909: <==negation-removal== 61683 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12761: <==closure== 32741 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #14633: <==commonly_known== 67234 (pos)
                    (Bb_checked_p2)

                    ; #22744: <==commonly_known== 90358 (neg)
                    (Pc_checked_p2)

                    ; #31737: <==commonly_known== 90358 (neg)
                    (Pb_checked_p2)

                    ; #32741: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #34143: <==commonly_known== 67234 (pos)
                    (Ba_checked_p2)

                    ; #65169: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #66806: <==commonly_known== 67234 (pos)
                    (Bc_checked_p2)

                    ; #67234: origin
                    (checked_p2)

                    ; #82101: <==commonly_known== 90358 (neg)
                    (Pa_checked_p2)

                    ; #82430: <==closure== 65169 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #20183: <==uncertain_firing== 82430 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #33385: <==negation-removal== 65169 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #36287: <==negation-removal== 31737 (pos)
                    (not (Bb_not_checked_p2))

                    ; #36300: <==negation-removal== 66806 (pos)
                    (not (Pc_not_checked_p2))

                    ; #38989: <==uncertain_firing== 32741 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46531: <==negation-removal== 22744 (pos)
                    (not (Bc_not_checked_p2))

                    ; #49120: <==negation-removal== 82101 (pos)
                    (not (Ba_not_checked_p2))

                    ; #49520: <==uncertain_firing== 12761 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #60953: <==negation-removal== 34143 (pos)
                    (not (Pa_not_checked_p2))

                    ; #63117: <==negation-removal== 32741 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #74999: <==uncertain_firing== 65169 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #78159: <==negation-removal== 14633 (pos)
                    (not (Pb_not_checked_p2))

                    ; #79925: <==negation-removal== 82430 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #90358: <==negation-removal== 67234 (pos)
                    (not (not_checked_p2))

                    ; #94250: <==negation-removal== 12761 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13835: <==closure== 29836 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #27507: <==commonly_known== 91230 (pos)
                    (Bc_checked_p3)

                    ; #29836: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #34585: <==commonly_known== 89414 (neg)
                    (Pb_checked_p3)

                    ; #36421: <==commonly_known== 91230 (pos)
                    (Ba_checked_p3)

                    ; #46748: <==closure== 93517 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #57071: <==commonly_known== 91230 (pos)
                    (Bb_checked_p3)

                    ; #79167: <==commonly_known== 89414 (neg)
                    (Pa_checked_p3)

                    ; #90912: <==commonly_known== 89414 (neg)
                    (Pc_checked_p3)

                    ; #91230: origin
                    (checked_p3)

                    ; #93517: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #12459: <==uncertain_firing== 29836 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #14109: <==uncertain_firing== 13835 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #17025: <==negation-removal== 57071 (pos)
                    (not (Pb_not_checked_p3))

                    ; #20781: <==negation-removal== 27507 (pos)
                    (not (Pc_not_checked_p3))

                    ; #22599: <==negation-removal== 46748 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #25859: <==negation-removal== 90912 (pos)
                    (not (Bc_not_checked_p3))

                    ; #27293: <==uncertain_firing== 46748 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #33935: <==uncertain_firing== 93517 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #44042: <==negation-removal== 93517 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #48018: <==negation-removal== 36421 (pos)
                    (not (Pa_not_checked_p3))

                    ; #60910: <==negation-removal== 13835 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #63268: <==negation-removal== 79167 (pos)
                    (not (Ba_not_checked_p3))

                    ; #63770: <==negation-removal== 29836 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #86325: <==negation-removal== 34585 (pos)
                    (not (Bb_not_checked_p3))

                    ; #89414: <==negation-removal== 91230 (pos)
                    (not (not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #13840: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #14592: origin
                    (checked_p4)

                    ; #14970: <==closure== 13840 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #36627: <==commonly_known== 14592 (pos)
                    (Ba_checked_p4)

                    ; #42356: <==commonly_known== 19228 (neg)
                    (Pb_checked_p4)

                    ; #58924: <==commonly_known== 19228 (neg)
                    (Pa_checked_p4)

                    ; #61271: <==commonly_known== 14592 (pos)
                    (Bc_checked_p4)

                    ; #69702: <==commonly_known== 19228 (neg)
                    (Pc_checked_p4)

                    ; #72636: <==commonly_known== 14592 (pos)
                    (Bb_checked_p4)

                    ; #87948: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #88606: <==closure== 87948 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #19228: <==negation-removal== 14592 (pos)
                    (not (not_checked_p4))

                    ; #41401: <==uncertain_firing== 87948 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #42205: <==negation-removal== 14970 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #49540: <==negation-removal== 36627 (pos)
                    (not (Pa_not_checked_p4))

                    ; #50579: <==negation-removal== 13840 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #55559: <==negation-removal== 58924 (pos)
                    (not (Ba_not_checked_p4))

                    ; #55671: <==negation-removal== 72636 (pos)
                    (not (Pb_not_checked_p4))

                    ; #57724: <==negation-removal== 88606 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #72218: <==negation-removal== 69702 (pos)
                    (not (Bc_not_checked_p4))

                    ; #72606: <==uncertain_firing== 13840 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #78983: <==uncertain_firing== 88606 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #81266: <==negation-removal== 61271 (pos)
                    (not (Pc_not_checked_p4))

                    ; #85187: <==uncertain_firing== 14970 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #90951: <==negation-removal== 42356 (pos)
                    (not (Bb_not_checked_p4))

                    ; #98048: <==negation-removal== 87948 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #13630: <==commonly_known== 83728 (pos)
                    (Bb_checked_p5)

                    ; #19662: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #25326: <==commonly_known== 83728 (pos)
                    (Bc_checked_p5)

                    ; #26575: <==commonly_known== 74519 (neg)
                    (Pb_checked_p5)

                    ; #52514: <==closure== 82508 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #68263: <==commonly_known== 74519 (neg)
                    (Pc_checked_p5)

                    ; #79094: <==commonly_known== 74519 (neg)
                    (Pa_checked_p5)

                    ; #82508: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #83728: origin
                    (checked_p5)

                    ; #84608: <==closure== 19662 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #97450: <==commonly_known== 83728 (pos)
                    (Ba_checked_p5)

                    ; #17366: <==uncertain_firing== 82508 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #22225: <==negation-removal== 84608 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #36171: <==negation-removal== 68263 (pos)
                    (not (Bc_not_checked_p5))

                    ; #44494: <==uncertain_firing== 19662 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #45642: <==negation-removal== 26575 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48394: <==negation-removal== 52514 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #56196: <==negation-removal== 25326 (pos)
                    (not (Pc_not_checked_p5))

                    ; #74519: <==negation-removal== 83728 (pos)
                    (not (not_checked_p5))

                    ; #74761: <==negation-removal== 19662 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #82899: <==uncertain_firing== 52514 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #83606: <==negation-removal== 82508 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #85093: <==negation-removal== 79094 (pos)
                    (not (Ba_not_checked_p5))

                    ; #90280: <==uncertain_firing== 84608 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #93729: <==negation-removal== 97450 (pos)
                    (not (Pa_not_checked_p5))

                    ; #95230: <==negation-removal== 13630 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11342: <==commonly_known== 34128 (neg)
                    (Pb_checked_p6)

                    ; #18670: <==commonly_known== 27863 (pos)
                    (Bc_checked_p6)

                    ; #27863: origin
                    (checked_p6)

                    ; #55288: <==commonly_known== 34128 (neg)
                    (Pa_checked_p6)

                    ; #57429: <==closure== 74464 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #58695: <==commonly_known== 34128 (neg)
                    (Pc_checked_p6)

                    ; #64311: <==commonly_known== 27863 (pos)
                    (Ba_checked_p6)

                    ; #69983: <==closure== 75907 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #73743: <==commonly_known== 27863 (pos)
                    (Bb_checked_p6)

                    ; #74464: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #75907: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #12047: <==negation-removal== 73743 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34128: <==negation-removal== 27863 (pos)
                    (not (not_checked_p6))

                    ; #48501: <==negation-removal== 57429 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #50820: <==uncertain_firing== 75907 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #54357: <==negation-removal== 74464 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #57473: <==uncertain_firing== 74464 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #58852: <==negation-removal== 75907 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68538: <==negation-removal== 69983 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #69521: <==negation-removal== 11342 (pos)
                    (not (Bb_not_checked_p6))

                    ; #73160: <==negation-removal== 18670 (pos)
                    (not (Pc_not_checked_p6))

                    ; #73729: <==negation-removal== 58695 (pos)
                    (not (Bc_not_checked_p6))

                    ; #79442: <==negation-removal== 55288 (pos)
                    (not (Ba_not_checked_p6))

                    ; #86083: <==uncertain_firing== 57429 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #90124: <==negation-removal== 64311 (pos)
                    (not (Pa_not_checked_p6))

                    ; #92138: <==uncertain_firing== 69983 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #18253: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #32251: <==commonly_known== 37000 (neg)
                    (Pc_checked_p7)

                    ; #45287: <==commonly_known== 56538 (pos)
                    (Ba_checked_p7)

                    ; #54196: <==commonly_known== 56538 (pos)
                    (Bb_checked_p7)

                    ; #56538: origin
                    (checked_p7)

                    ; #63299: <==commonly_known== 37000 (neg)
                    (Pb_checked_p7)

                    ; #67479: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #68402: <==commonly_known== 37000 (neg)
                    (Pa_checked_p7)

                    ; #86048: <==commonly_known== 56538 (pos)
                    (Bc_checked_p7)

                    ; #86261: <==closure== 18253 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #89334: <==closure== 67479 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #16873: <==uncertain_firing== 67479 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #24242: <==negation-removal== 32251 (pos)
                    (not (Bc_not_checked_p7))

                    ; #25573: <==negation-removal== 89334 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #26171: <==uncertain_firing== 86261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #33768: <==negation-removal== 54196 (pos)
                    (not (Pb_not_checked_p7))

                    ; #34664: <==uncertain_firing== 89334 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #37000: <==negation-removal== 56538 (pos)
                    (not (not_checked_p7))

                    ; #40173: <==negation-removal== 63299 (pos)
                    (not (Bb_not_checked_p7))

                    ; #42361: <==negation-removal== 67479 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #43693: <==negation-removal== 86048 (pos)
                    (not (Pc_not_checked_p7))

                    ; #61394: <==negation-removal== 86261 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #61552: <==negation-removal== 45287 (pos)
                    (not (Pa_not_checked_p7))

                    ; #65032: <==uncertain_firing== 18253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #67997: <==negation-removal== 68402 (pos)
                    (not (Ba_not_checked_p7))

                    ; #69835: <==negation-removal== 18253 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11895: <==commonly_known== 35658 (pos)
                    (Bb_checked_p8)

                    ; #12081: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #16820: <==commonly_known== 35658 (pos)
                    (Bc_checked_p8)

                    ; #32960: <==commonly_known== 50200 (neg)
                    (Pb_checked_p8)

                    ; #34934: <==closure== 12081 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #35658: origin
                    (checked_p8)

                    ; #36004: <==commonly_known== 35658 (pos)
                    (Ba_checked_p8)

                    ; #55632: <==closure== 77886 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #77886: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #82803: <==commonly_known== 50200 (neg)
                    (Pa_checked_p8)

                    ; #87597: <==commonly_known== 50200 (neg)
                    (Pc_checked_p8)

                    ; #11410: <==uncertain_firing== 12081 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #26027: <==negation-removal== 34934 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #26340: <==uncertain_firing== 77886 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #27342: <==negation-removal== 12081 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #29933: <==negation-removal== 77886 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #30987: <==uncertain_firing== 55632 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #34818: <==negation-removal== 16820 (pos)
                    (not (Pc_not_checked_p8))

                    ; #40408: <==uncertain_firing== 34934 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #50200: <==negation-removal== 35658 (pos)
                    (not (not_checked_p8))

                    ; #54331: <==negation-removal== 82803 (pos)
                    (not (Ba_not_checked_p8))

                    ; #76600: <==negation-removal== 32960 (pos)
                    (not (Bb_not_checked_p8))

                    ; #77593: <==negation-removal== 36004 (pos)
                    (not (Pa_not_checked_p8))

                    ; #78986: <==negation-removal== 87597 (pos)
                    (not (Bc_not_checked_p8))

                    ; #85188: <==negation-removal== 55632 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #87393: <==negation-removal== 11895 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #17662: <==commonly_known== 79032 (pos)
                    (Ba_checked_p9)

                    ; #25004: <==commonly_known== 76613 (neg)
                    (Pb_checked_p9)

                    ; #30338: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #31476: <==closure== 30338 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #32964: <==commonly_known== 79032 (pos)
                    (Bb_checked_p9)

                    ; #47835: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #52837: <==commonly_known== 79032 (pos)
                    (Bc_checked_p9)

                    ; #65588: <==commonly_known== 76613 (neg)
                    (Pa_checked_p9)

                    ; #67510: <==closure== 47835 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #71248: <==commonly_known== 76613 (neg)
                    (Pc_checked_p9)

                    ; #79032: origin
                    (checked_p9)

                    ; #19398: <==negation-removal== 71248 (pos)
                    (not (Bc_not_checked_p9))

                    ; #27395: <==uncertain_firing== 47835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #34254: <==uncertain_firing== 30338 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #42499: <==negation-removal== 32964 (pos)
                    (not (Pb_not_checked_p9))

                    ; #53123: <==negation-removal== 47835 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #54887: <==negation-removal== 30338 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #56133: <==negation-removal== 67510 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56175: <==negation-removal== 17662 (pos)
                    (not (Pa_not_checked_p9))

                    ; #59990: <==negation-removal== 25004 (pos)
                    (not (Bb_not_checked_p9))

                    ; #67453: <==negation-removal== 31476 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #68082: <==negation-removal== 52837 (pos)
                    (not (Pc_not_checked_p9))

                    ; #74792: <==negation-removal== 65588 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76613: <==negation-removal== 79032 (pos)
                    (not (not_checked_p9))

                    ; #79312: <==uncertain_firing== 31476 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #99773: <==uncertain_firing== 67510 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #13005: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #16998: <==commonly_known== 61661 (neg)
                    (Pa_checked_p10)

                    ; #23958: origin
                    (checked_p10)

                    ; #24866: <==commonly_known== 61661 (neg)
                    (Pb_checked_p10)

                    ; #36059: <==commonly_known== 61661 (neg)
                    (Pc_checked_p10)

                    ; #43198: <==commonly_known== 23958 (pos)
                    (Ba_checked_p10)

                    ; #43218: <==closure== 13005 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #44134: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #52502: <==closure== 44134 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #76228: <==commonly_known== 23958 (pos)
                    (Bc_checked_p10)

                    ; #76666: <==commonly_known== 23958 (pos)
                    (Bb_checked_p10)

                    ; #20520: <==uncertain_firing== 43218 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #22058: <==uncertain_firing== 52502 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #25229: <==uncertain_firing== 44134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #32991: <==negation-removal== 44134 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #34132: <==negation-removal== 76228 (pos)
                    (not (Pc_not_checked_p10))

                    ; #36182: <==negation-removal== 52502 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #37519: <==uncertain_firing== 13005 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #47581: <==negation-removal== 36059 (pos)
                    (not (Bc_not_checked_p10))

                    ; #61322: <==negation-removal== 24866 (pos)
                    (not (Bb_not_checked_p10))

                    ; #61658: <==negation-removal== 43198 (pos)
                    (not (Pa_not_checked_p10))

                    ; #61661: <==negation-removal== 23958 (pos)
                    (not (not_checked_p10))

                    ; #72322: <==negation-removal== 43218 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #72670: <==negation-removal== 13005 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #73978: <==negation-removal== 76666 (pos)
                    (not (Pb_not_checked_p10))

                    ; #85715: <==negation-removal== 16998 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #10336: origin
                    (checked_p11)

                    ; #12265: <==closure== 36427 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #22080: <==commonly_known== 10336 (pos)
                    (Ba_checked_p11)

                    ; #29832: <==commonly_known== 10336 (pos)
                    (Bc_checked_p11)

                    ; #36427: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #51114: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #51371: <==commonly_known== 89866 (neg)
                    (Pa_checked_p11)

                    ; #56487: <==commonly_known== 89866 (neg)
                    (Pb_checked_p11)

                    ; #64040: <==closure== 51114 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #65568: <==commonly_known== 10336 (pos)
                    (Bb_checked_p11)

                    ; #89077: <==commonly_known== 89866 (neg)
                    (Pc_checked_p11)

                    ; #15481: <==negation-removal== 12265 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #17971: <==negation-removal== 65568 (pos)
                    (not (Pb_not_checked_p11))

                    ; #20017: <==negation-removal== 22080 (pos)
                    (not (Pa_not_checked_p11))

                    ; #23983: <==negation-removal== 89077 (pos)
                    (not (Bc_not_checked_p11))

                    ; #25164: <==negation-removal== 51114 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #33013: <==negation-removal== 36427 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #34613: <==negation-removal== 51371 (pos)
                    (not (Ba_not_checked_p11))

                    ; #37536: <==negation-removal== 56487 (pos)
                    (not (Bb_not_checked_p11))

                    ; #38485: <==uncertain_firing== 12265 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #60225: <==negation-removal== 64040 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #71284: <==negation-removal== 29832 (pos)
                    (not (Pc_not_checked_p11))

                    ; #81919: <==uncertain_firing== 51114 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #88883: <==uncertain_firing== 64040 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #89866: <==negation-removal== 10336 (pos)
                    (not (not_checked_p11))

                    ; #90855: <==uncertain_firing== 36427 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #26379: <==commonly_known== 11422 (neg)
                    (Pc_checked_p12)

                    ; #29213: <==commonly_known== 85202 (pos)
                    (Ba_checked_p12)

                    ; #32825: <==closure== 60910 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #38595: <==commonly_known== 85202 (pos)
                    (Bb_checked_p12)

                    ; #49710: <==commonly_known== 11422 (neg)
                    (Pa_checked_p12)

                    ; #60910: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #63059: <==commonly_known== 85202 (pos)
                    (Bc_checked_p12)

                    ; #66457: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #79407: <==commonly_known== 11422 (neg)
                    (Pb_checked_p12)

                    ; #85202: origin
                    (checked_p12)

                    ; #92081: <==closure== 66457 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #11422: <==negation-removal== 85202 (pos)
                    (not (not_checked_p12))

                    ; #16680: <==negation-removal== 79407 (pos)
                    (not (Bb_not_checked_p12))

                    ; #17697: <==uncertain_firing== 32825 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #19839: <==negation-removal== 92081 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #28801: <==negation-removal== 60910 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #35835: <==uncertain_firing== 66457 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #44343: <==negation-removal== 32825 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #46430: <==negation-removal== 26379 (pos)
                    (not (Bc_not_checked_p12))

                    ; #55029: <==uncertain_firing== 92081 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #56820: <==negation-removal== 29213 (pos)
                    (not (Pa_not_checked_p12))

                    ; #67712: <==negation-removal== 38595 (pos)
                    (not (Pb_not_checked_p12))

                    ; #77674: <==negation-removal== 66457 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #81673: <==negation-removal== 63059 (pos)
                    (not (Pc_not_checked_p12))

                    ; #88207: <==uncertain_firing== 60910 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #93504: <==negation-removal== 49710 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #21063: <==closure== 77244 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #35183: <==commonly_known== 89618 (neg)
                    (Pb_checked_p1)

                    ; #38797: <==commonly_known== 83509 (pos)
                    (Bc_checked_p1)

                    ; #43261: <==commonly_known== 83509 (pos)
                    (Bb_checked_p1)

                    ; #50553: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #59610: <==commonly_known== 89618 (neg)
                    (Pc_checked_p1)

                    ; #62424: <==commonly_known== 83509 (pos)
                    (Ba_checked_p1)

                    ; #67369: <==closure== 50553 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #71044: <==commonly_known== 89618 (neg)
                    (Pa_checked_p1)

                    ; #77244: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #83509: origin
                    (checked_p1)

                    ; #28876: <==negation-removal== 77244 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #30660: <==negation-removal== 71044 (pos)
                    (not (Ba_not_checked_p1))

                    ; #37452: <==uncertain_firing== 21063 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #38318: <==uncertain_firing== 67369 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #38395: <==negation-removal== 21063 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #39002: <==negation-removal== 50553 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #45313: <==negation-removal== 62424 (pos)
                    (not (Pa_not_checked_p1))

                    ; #53248: <==negation-removal== 67369 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #68030: <==negation-removal== 35183 (pos)
                    (not (Bb_not_checked_p1))

                    ; #74074: <==uncertain_firing== 50553 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #77366: <==negation-removal== 59610 (pos)
                    (not (Bc_not_checked_p1))

                    ; #82571: <==negation-removal== 38797 (pos)
                    (not (Pc_not_checked_p1))

                    ; #82798: <==negation-removal== 43261 (pos)
                    (not (Pb_not_checked_p1))

                    ; #89618: <==negation-removal== 83509 (pos)
                    (not (not_checked_p1))

                    ; #91570: <==uncertain_firing== 77244 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #14633: <==commonly_known== 67234 (pos)
                    (Bb_checked_p2)

                    ; #15049: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #22744: <==commonly_known== 90358 (neg)
                    (Pc_checked_p2)

                    ; #31737: <==commonly_known== 90358 (neg)
                    (Pb_checked_p2)

                    ; #34143: <==commonly_known== 67234 (pos)
                    (Ba_checked_p2)

                    ; #36326: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #63068: <==closure== 36326 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #66806: <==commonly_known== 67234 (pos)
                    (Bc_checked_p2)

                    ; #67234: origin
                    (checked_p2)

                    ; #82101: <==commonly_known== 90358 (neg)
                    (Pa_checked_p2)

                    ; #92036: <==closure== 15049 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #16851: <==negation-removal== 92036 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #32196: <==uncertain_firing== 15049 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #32398: <==uncertain_firing== 36326 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #35679: <==negation-removal== 36326 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #36287: <==negation-removal== 31737 (pos)
                    (not (Bb_not_checked_p2))

                    ; #36300: <==negation-removal== 66806 (pos)
                    (not (Pc_not_checked_p2))

                    ; #42540: <==negation-removal== 63068 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #44339: <==uncertain_firing== 92036 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #46531: <==negation-removal== 22744 (pos)
                    (not (Bc_not_checked_p2))

                    ; #49120: <==negation-removal== 82101 (pos)
                    (not (Ba_not_checked_p2))

                    ; #50968: <==negation-removal== 15049 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #53310: <==uncertain_firing== 63068 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #60953: <==negation-removal== 34143 (pos)
                    (not (Pa_not_checked_p2))

                    ; #78159: <==negation-removal== 14633 (pos)
                    (not (Pb_not_checked_p2))

                    ; #90358: <==negation-removal== 67234 (pos)
                    (not (not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #27507: <==commonly_known== 91230 (pos)
                    (Bc_checked_p3)

                    ; #34585: <==commonly_known== 89414 (neg)
                    (Pb_checked_p3)

                    ; #36421: <==commonly_known== 91230 (pos)
                    (Ba_checked_p3)

                    ; #46230: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #57071: <==commonly_known== 91230 (pos)
                    (Bb_checked_p3)

                    ; #61531: <==closure== 46230 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #71560: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #77906: <==closure== 71560 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #79167: <==commonly_known== 89414 (neg)
                    (Pa_checked_p3)

                    ; #90912: <==commonly_known== 89414 (neg)
                    (Pc_checked_p3)

                    ; #91230: origin
                    (checked_p3)

                    ; #17025: <==negation-removal== 57071 (pos)
                    (not (Pb_not_checked_p3))

                    ; #18413: <==uncertain_firing== 71560 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #20781: <==negation-removal== 27507 (pos)
                    (not (Pc_not_checked_p3))

                    ; #25859: <==negation-removal== 90912 (pos)
                    (not (Bc_not_checked_p3))

                    ; #40549: <==negation-removal== 46230 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #48018: <==negation-removal== 36421 (pos)
                    (not (Pa_not_checked_p3))

                    ; #60378: <==uncertain_firing== 46230 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #63240: <==negation-removal== 61531 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #63268: <==negation-removal== 79167 (pos)
                    (not (Ba_not_checked_p3))

                    ; #67099: <==uncertain_firing== 61531 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #79395: <==negation-removal== 71560 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #83258: <==uncertain_firing== 77906 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #85078: <==negation-removal== 77906 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #86325: <==negation-removal== 34585 (pos)
                    (not (Bb_not_checked_p3))

                    ; #89414: <==negation-removal== 91230 (pos)
                    (not (not_checked_p3))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14592: origin
                    (checked_p4)

                    ; #36627: <==commonly_known== 14592 (pos)
                    (Ba_checked_p4)

                    ; #39288: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #42356: <==commonly_known== 19228 (neg)
                    (Pb_checked_p4)

                    ; #58924: <==commonly_known== 19228 (neg)
                    (Pa_checked_p4)

                    ; #61271: <==commonly_known== 14592 (pos)
                    (Bc_checked_p4)

                    ; #61557: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #62846: <==closure== 61557 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #69702: <==commonly_known== 19228 (neg)
                    (Pc_checked_p4)

                    ; #72636: <==commonly_known== 14592 (pos)
                    (Bb_checked_p4)

                    ; #83848: <==closure== 39288 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #19228: <==negation-removal== 14592 (pos)
                    (not (not_checked_p4))

                    ; #34975: <==uncertain_firing== 39288 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #43497: <==negation-removal== 62846 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #46410: <==negation-removal== 39288 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #49473: <==uncertain_firing== 61557 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #49540: <==negation-removal== 36627 (pos)
                    (not (Pa_not_checked_p4))

                    ; #54749: <==uncertain_firing== 62846 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #55559: <==negation-removal== 58924 (pos)
                    (not (Ba_not_checked_p4))

                    ; #55671: <==negation-removal== 72636 (pos)
                    (not (Pb_not_checked_p4))

                    ; #56819: <==uncertain_firing== 83848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #69452: <==negation-removal== 83848 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #72218: <==negation-removal== 69702 (pos)
                    (not (Bc_not_checked_p4))

                    ; #77196: <==negation-removal== 61557 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #81266: <==negation-removal== 61271 (pos)
                    (not (Pc_not_checked_p4))

                    ; #90951: <==negation-removal== 42356 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #13630: <==commonly_known== 83728 (pos)
                    (Bb_checked_p5)

                    ; #20394: <==closure== 52926 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #25326: <==commonly_known== 83728 (pos)
                    (Bc_checked_p5)

                    ; #26575: <==commonly_known== 74519 (neg)
                    (Pb_checked_p5)

                    ; #32416: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #49367: <==closure== 32416 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #52926: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #68263: <==commonly_known== 74519 (neg)
                    (Pc_checked_p5)

                    ; #79094: <==commonly_known== 74519 (neg)
                    (Pa_checked_p5)

                    ; #83728: origin
                    (checked_p5)

                    ; #97450: <==commonly_known== 83728 (pos)
                    (Ba_checked_p5)

                    ; #20941: <==uncertain_firing== 32416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #36171: <==negation-removal== 68263 (pos)
                    (not (Bc_not_checked_p5))

                    ; #36586: <==uncertain_firing== 49367 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #40506: <==negation-removal== 20394 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #45642: <==negation-removal== 26575 (pos)
                    (not (Bb_not_checked_p5))

                    ; #53907: <==negation-removal== 52926 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #56196: <==negation-removal== 25326 (pos)
                    (not (Pc_not_checked_p5))

                    ; #72092: <==negation-removal== 49367 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #74519: <==negation-removal== 83728 (pos)
                    (not (not_checked_p5))

                    ; #74710: <==negation-removal== 32416 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #81723: <==uncertain_firing== 52926 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #82291: <==uncertain_firing== 20394 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #85093: <==negation-removal== 79094 (pos)
                    (not (Ba_not_checked_p5))

                    ; #93729: <==negation-removal== 97450 (pos)
                    (not (Pa_not_checked_p5))

                    ; #95230: <==negation-removal== 13630 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #11342: <==commonly_known== 34128 (neg)
                    (Pb_checked_p6)

                    ; #18670: <==commonly_known== 27863 (pos)
                    (Bc_checked_p6)

                    ; #27863: origin
                    (checked_p6)

                    ; #31228: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #37898: <==closure== 31228 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #51531: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #55288: <==commonly_known== 34128 (neg)
                    (Pa_checked_p6)

                    ; #58695: <==commonly_known== 34128 (neg)
                    (Pc_checked_p6)

                    ; #64311: <==commonly_known== 27863 (pos)
                    (Ba_checked_p6)

                    ; #73743: <==commonly_known== 27863 (pos)
                    (Bb_checked_p6)

                    ; #91992: <==closure== 51531 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #11397: <==negation-removal== 37898 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #11986: <==uncertain_firing== 31228 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #12047: <==negation-removal== 73743 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31267: <==uncertain_firing== 51531 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #34128: <==negation-removal== 27863 (pos)
                    (not (not_checked_p6))

                    ; #40637: <==uncertain_firing== 37898 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #62273: <==negation-removal== 31228 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #65391: <==negation-removal== 51531 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #69521: <==negation-removal== 11342 (pos)
                    (not (Bb_not_checked_p6))

                    ; #70208: <==uncertain_firing== 91992 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #73160: <==negation-removal== 18670 (pos)
                    (not (Pc_not_checked_p6))

                    ; #73729: <==negation-removal== 58695 (pos)
                    (not (Bc_not_checked_p6))

                    ; #75773: <==negation-removal== 91992 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #79442: <==negation-removal== 55288 (pos)
                    (not (Ba_not_checked_p6))

                    ; #90124: <==negation-removal== 64311 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #32251: <==commonly_known== 37000 (neg)
                    (Pc_checked_p7)

                    ; #42400: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #45287: <==commonly_known== 56538 (pos)
                    (Ba_checked_p7)

                    ; #48151: <==closure== 42400 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #54196: <==commonly_known== 56538 (pos)
                    (Bb_checked_p7)

                    ; #56538: origin
                    (checked_p7)

                    ; #63299: <==commonly_known== 37000 (neg)
                    (Pb_checked_p7)

                    ; #68112: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #68402: <==commonly_known== 37000 (neg)
                    (Pa_checked_p7)

                    ; #72520: <==closure== 68112 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #86048: <==commonly_known== 56538 (pos)
                    (Bc_checked_p7)

                    ; #10480: <==uncertain_firing== 72520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #11872: <==uncertain_firing== 68112 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #18925: <==uncertain_firing== 48151 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #24242: <==negation-removal== 32251 (pos)
                    (not (Bc_not_checked_p7))

                    ; #32160: <==negation-removal== 48151 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #33768: <==negation-removal== 54196 (pos)
                    (not (Pb_not_checked_p7))

                    ; #37000: <==negation-removal== 56538 (pos)
                    (not (not_checked_p7))

                    ; #38804: <==negation-removal== 72520 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #40173: <==negation-removal== 63299 (pos)
                    (not (Bb_not_checked_p7))

                    ; #43693: <==negation-removal== 86048 (pos)
                    (not (Pc_not_checked_p7))

                    ; #61552: <==negation-removal== 45287 (pos)
                    (not (Pa_not_checked_p7))

                    ; #67997: <==negation-removal== 68402 (pos)
                    (not (Ba_not_checked_p7))

                    ; #69640: <==negation-removal== 42400 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #86184: <==uncertain_firing== 42400 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #87812: <==negation-removal== 68112 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #11806: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #11895: <==commonly_known== 35658 (pos)
                    (Bb_checked_p8)

                    ; #16820: <==commonly_known== 35658 (pos)
                    (Bc_checked_p8)

                    ; #32960: <==commonly_known== 50200 (neg)
                    (Pb_checked_p8)

                    ; #33580: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #35658: origin
                    (checked_p8)

                    ; #36004: <==commonly_known== 35658 (pos)
                    (Ba_checked_p8)

                    ; #58485: <==closure== 11806 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #80736: <==closure== 33580 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #82803: <==commonly_known== 50200 (neg)
                    (Pa_checked_p8)

                    ; #87597: <==commonly_known== 50200 (neg)
                    (Pc_checked_p8)

                    ; #12942: <==uncertain_firing== 80736 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #16178: <==uncertain_firing== 58485 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #17779: <==uncertain_firing== 33580 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #34818: <==negation-removal== 16820 (pos)
                    (not (Pc_not_checked_p8))

                    ; #41822: <==uncertain_firing== 11806 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #44921: <==negation-removal== 58485 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #48403: <==negation-removal== 80736 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #50200: <==negation-removal== 35658 (pos)
                    (not (not_checked_p8))

                    ; #54331: <==negation-removal== 82803 (pos)
                    (not (Ba_not_checked_p8))

                    ; #57704: <==negation-removal== 33580 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #76600: <==negation-removal== 32960 (pos)
                    (not (Bb_not_checked_p8))

                    ; #77593: <==negation-removal== 36004 (pos)
                    (not (Pa_not_checked_p8))

                    ; #78986: <==negation-removal== 87597 (pos)
                    (not (Bc_not_checked_p8))

                    ; #87393: <==negation-removal== 11895 (pos)
                    (not (Pb_not_checked_p8))

                    ; #87765: <==negation-removal== 11806 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #10303: <==closure== 69988 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #17662: <==commonly_known== 79032 (pos)
                    (Ba_checked_p9)

                    ; #25004: <==commonly_known== 76613 (neg)
                    (Pb_checked_p9)

                    ; #32964: <==commonly_known== 79032 (pos)
                    (Bb_checked_p9)

                    ; #52837: <==commonly_known== 79032 (pos)
                    (Bc_checked_p9)

                    ; #60531: <==closure== 83250 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #65588: <==commonly_known== 76613 (neg)
                    (Pa_checked_p9)

                    ; #69988: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #71248: <==commonly_known== 76613 (neg)
                    (Pc_checked_p9)

                    ; #79032: origin
                    (checked_p9)

                    ; #83250: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #19398: <==negation-removal== 71248 (pos)
                    (not (Bc_not_checked_p9))

                    ; #24324: <==negation-removal== 60531 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #35640: <==negation-removal== 69988 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #42499: <==negation-removal== 32964 (pos)
                    (not (Pb_not_checked_p9))

                    ; #53609: <==uncertain_firing== 10303 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #55707: <==uncertain_firing== 60531 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #56175: <==negation-removal== 17662 (pos)
                    (not (Pa_not_checked_p9))

                    ; #59990: <==negation-removal== 25004 (pos)
                    (not (Bb_not_checked_p9))

                    ; #66648: <==uncertain_firing== 83250 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #67342: <==negation-removal== 10303 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #68082: <==negation-removal== 52837 (pos)
                    (not (Pc_not_checked_p9))

                    ; #74792: <==negation-removal== 65588 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76613: <==negation-removal== 79032 (pos)
                    (not (not_checked_p9))

                    ; #82116: <==negation-removal== 83250 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #87773: <==uncertain_firing== 69988 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16998: <==commonly_known== 61661 (neg)
                    (Pa_checked_p10)

                    ; #23958: origin
                    (checked_p10)

                    ; #24442: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #24866: <==commonly_known== 61661 (neg)
                    (Pb_checked_p10)

                    ; #36059: <==commonly_known== 61661 (neg)
                    (Pc_checked_p10)

                    ; #39293: <==closure== 88042 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #43198: <==commonly_known== 23958 (pos)
                    (Ba_checked_p10)

                    ; #76228: <==commonly_known== 23958 (pos)
                    (Bc_checked_p10)

                    ; #76666: <==commonly_known== 23958 (pos)
                    (Bb_checked_p10)

                    ; #85594: <==closure== 24442 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #88042: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #23908: <==uncertain_firing== 24442 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #34132: <==negation-removal== 76228 (pos)
                    (not (Pc_not_checked_p10))

                    ; #41788: <==negation-removal== 39293 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #42572: <==negation-removal== 85594 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #47581: <==negation-removal== 36059 (pos)
                    (not (Bc_not_checked_p10))

                    ; #58257: <==uncertain_firing== 88042 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #61322: <==negation-removal== 24866 (pos)
                    (not (Bb_not_checked_p10))

                    ; #61341: <==negation-removal== 24442 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #61658: <==negation-removal== 43198 (pos)
                    (not (Pa_not_checked_p10))

                    ; #61661: <==negation-removal== 23958 (pos)
                    (not (not_checked_p10))

                    ; #64951: <==negation-removal== 88042 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #73978: <==negation-removal== 76666 (pos)
                    (not (Pb_not_checked_p10))

                    ; #83352: <==uncertain_firing== 85594 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #85715: <==negation-removal== 16998 (pos)
                    (not (Ba_not_checked_p10))

                    ; #88938: <==uncertain_firing== 39293 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10336: origin
                    (checked_p11)

                    ; #22080: <==commonly_known== 10336 (pos)
                    (Ba_checked_p11)

                    ; #29832: <==commonly_known== 10336 (pos)
                    (Bc_checked_p11)

                    ; #37562: <==closure== 88130 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #51371: <==commonly_known== 89866 (neg)
                    (Pa_checked_p11)

                    ; #56487: <==commonly_known== 89866 (neg)
                    (Pb_checked_p11)

                    ; #60558: <==closure== 67586 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #65568: <==commonly_known== 10336 (pos)
                    (Bb_checked_p11)

                    ; #67586: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #88130: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #89077: <==commonly_known== 89866 (neg)
                    (Pc_checked_p11)

                    ; #17378: <==uncertain_firing== 60558 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #17971: <==negation-removal== 65568 (pos)
                    (not (Pb_not_checked_p11))

                    ; #20017: <==negation-removal== 22080 (pos)
                    (not (Pa_not_checked_p11))

                    ; #23983: <==negation-removal== 89077 (pos)
                    (not (Bc_not_checked_p11))

                    ; #31144: <==negation-removal== 60558 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #34613: <==negation-removal== 51371 (pos)
                    (not (Ba_not_checked_p11))

                    ; #37536: <==negation-removal== 56487 (pos)
                    (not (Bb_not_checked_p11))

                    ; #38099: <==negation-removal== 67586 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #54205: <==negation-removal== 88130 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #61442: <==uncertain_firing== 88130 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #68978: <==uncertain_firing== 67586 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #71284: <==negation-removal== 29832 (pos)
                    (not (Pc_not_checked_p11))

                    ; #75948: <==negation-removal== 37562 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #88356: <==uncertain_firing== 37562 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #89866: <==negation-removal== 10336 (pos)
                    (not (not_checked_p11))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #26379: <==commonly_known== 11422 (neg)
                    (Pc_checked_p12)

                    ; #29213: <==commonly_known== 85202 (pos)
                    (Ba_checked_p12)

                    ; #37932: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #38595: <==commonly_known== 85202 (pos)
                    (Bb_checked_p12)

                    ; #49710: <==commonly_known== 11422 (neg)
                    (Pa_checked_p12)

                    ; #54519: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #63059: <==commonly_known== 85202 (pos)
                    (Bc_checked_p12)

                    ; #79407: <==commonly_known== 11422 (neg)
                    (Pb_checked_p12)

                    ; #82792: <==closure== 54519 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #85202: origin
                    (checked_p12)

                    ; #95192: <==closure== 37932 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #11422: <==negation-removal== 85202 (pos)
                    (not (not_checked_p12))

                    ; #16680: <==negation-removal== 79407 (pos)
                    (not (Bb_not_checked_p12))

                    ; #18099: <==negation-removal== 82792 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #26349: <==negation-removal== 95192 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #46430: <==negation-removal== 26379 (pos)
                    (not (Bc_not_checked_p12))

                    ; #56820: <==negation-removal== 29213 (pos)
                    (not (Pa_not_checked_p12))

                    ; #67121: <==uncertain_firing== 82792 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #67540: <==negation-removal== 54519 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #67712: <==negation-removal== 38595 (pos)
                    (not (Pb_not_checked_p12))

                    ; #74244: <==uncertain_firing== 54519 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #77578: <==uncertain_firing== 37932 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #81673: <==negation-removal== 63059 (pos)
                    (not (Pc_not_checked_p12))

                    ; #89528: <==uncertain_firing== 95192 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #91377: <==negation-removal== 37932 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #93504: <==negation-removal== 49710 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22404: <==closure== 79876 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #27232: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #35183: <==commonly_known== 89618 (neg)
                    (Pb_checked_p1)

                    ; #38797: <==commonly_known== 83509 (pos)
                    (Bc_checked_p1)

                    ; #43261: <==commonly_known== 83509 (pos)
                    (Bb_checked_p1)

                    ; #59610: <==commonly_known== 89618 (neg)
                    (Pc_checked_p1)

                    ; #62424: <==commonly_known== 83509 (pos)
                    (Ba_checked_p1)

                    ; #66666: <==closure== 27232 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #71044: <==commonly_known== 89618 (neg)
                    (Pa_checked_p1)

                    ; #79876: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #83509: origin
                    (checked_p1)

                    ; #28654: <==negation-removal== 22404 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #30660: <==negation-removal== 71044 (pos)
                    (not (Ba_not_checked_p1))

                    ; #37950: <==negation-removal== 79876 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #44216: <==negation-removal== 27232 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #45313: <==negation-removal== 62424 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68030: <==negation-removal== 35183 (pos)
                    (not (Bb_not_checked_p1))

                    ; #69717: <==uncertain_firing== 22404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #72766: <==negation-removal== 66666 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #77366: <==negation-removal== 59610 (pos)
                    (not (Bc_not_checked_p1))

                    ; #79895: <==uncertain_firing== 66666 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #82158: <==uncertain_firing== 79876 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #82571: <==negation-removal== 38797 (pos)
                    (not (Pc_not_checked_p1))

                    ; #82798: <==negation-removal== 43261 (pos)
                    (not (Pb_not_checked_p1))

                    ; #87669: <==uncertain_firing== 27232 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #89618: <==negation-removal== 83509 (pos)
                    (not (not_checked_p1))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #14633: <==commonly_known== 67234 (pos)
                    (Bb_checked_p2)

                    ; #22744: <==commonly_known== 90358 (neg)
                    (Pc_checked_p2)

                    ; #31737: <==commonly_known== 90358 (neg)
                    (Pb_checked_p2)

                    ; #34143: <==commonly_known== 67234 (pos)
                    (Ba_checked_p2)

                    ; #58950: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #66806: <==commonly_known== 67234 (pos)
                    (Bc_checked_p2)

                    ; #67234: origin
                    (checked_p2)

                    ; #68782: <==closure== 85202 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #70281: <==closure== 58950 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #82101: <==commonly_known== 90358 (neg)
                    (Pa_checked_p2)

                    ; #85202: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #20362: <==negation-removal== 70281 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #26912: <==uncertain_firing== 68782 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #28244: <==uncertain_firing== 85202 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #36287: <==negation-removal== 31737 (pos)
                    (not (Bb_not_checked_p2))

                    ; #36300: <==negation-removal== 66806 (pos)
                    (not (Pc_not_checked_p2))

                    ; #37299: <==negation-removal== 68782 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #46531: <==negation-removal== 22744 (pos)
                    (not (Bc_not_checked_p2))

                    ; #49120: <==negation-removal== 82101 (pos)
                    (not (Ba_not_checked_p2))

                    ; #56221: <==negation-removal== 58950 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #60953: <==negation-removal== 34143 (pos)
                    (not (Pa_not_checked_p2))

                    ; #64007: <==uncertain_firing== 58950 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #67252: <==negation-removal== 85202 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #78159: <==negation-removal== 14633 (pos)
                    (not (Pb_not_checked_p2))

                    ; #90358: <==negation-removal== 67234 (pos)
                    (not (not_checked_p2))

                    ; #93835: <==uncertain_firing== 70281 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10297: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #13497: <==closure== 10297 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #27146: <==closure== 38057 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #27507: <==commonly_known== 91230 (pos)
                    (Bc_checked_p3)

                    ; #34585: <==commonly_known== 89414 (neg)
                    (Pb_checked_p3)

                    ; #36421: <==commonly_known== 91230 (pos)
                    (Ba_checked_p3)

                    ; #38057: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #57071: <==commonly_known== 91230 (pos)
                    (Bb_checked_p3)

                    ; #79167: <==commonly_known== 89414 (neg)
                    (Pa_checked_p3)

                    ; #90912: <==commonly_known== 89414 (neg)
                    (Pc_checked_p3)

                    ; #91230: origin
                    (checked_p3)

                    ; #10752: <==uncertain_firing== 10297 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #17025: <==negation-removal== 57071 (pos)
                    (not (Pb_not_checked_p3))

                    ; #20781: <==negation-removal== 27507 (pos)
                    (not (Pc_not_checked_p3))

                    ; #24559: <==negation-removal== 10297 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #25859: <==negation-removal== 90912 (pos)
                    (not (Bc_not_checked_p3))

                    ; #32432: <==uncertain_firing== 13497 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #38355: <==negation-removal== 38057 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #41089: <==negation-removal== 13497 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #48018: <==negation-removal== 36421 (pos)
                    (not (Pa_not_checked_p3))

                    ; #52126: <==uncertain_firing== 27146 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #63268: <==negation-removal== 79167 (pos)
                    (not (Ba_not_checked_p3))

                    ; #70368: <==negation-removal== 27146 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #75715: <==uncertain_firing== 38057 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #86325: <==negation-removal== 34585 (pos)
                    (not (Bb_not_checked_p3))

                    ; #89414: <==negation-removal== 91230 (pos)
                    (not (not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #14592: origin
                    (checked_p4)

                    ; #14937: <==closure== 37078 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #36627: <==commonly_known== 14592 (pos)
                    (Ba_checked_p4)

                    ; #37078: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #42356: <==commonly_known== 19228 (neg)
                    (Pb_checked_p4)

                    ; #56407: <==closure== 63356 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #58924: <==commonly_known== 19228 (neg)
                    (Pa_checked_p4)

                    ; #61271: <==commonly_known== 14592 (pos)
                    (Bc_checked_p4)

                    ; #63356: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #69702: <==commonly_known== 19228 (neg)
                    (Pc_checked_p4)

                    ; #72636: <==commonly_known== 14592 (pos)
                    (Bb_checked_p4)

                    ; #19228: <==negation-removal== 14592 (pos)
                    (not (not_checked_p4))

                    ; #28786: <==negation-removal== 14937 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #31868: <==negation-removal== 37078 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #49540: <==negation-removal== 36627 (pos)
                    (not (Pa_not_checked_p4))

                    ; #55559: <==negation-removal== 58924 (pos)
                    (not (Ba_not_checked_p4))

                    ; #55671: <==negation-removal== 72636 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61538: <==uncertain_firing== 56407 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #68316: <==negation-removal== 63356 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #72218: <==negation-removal== 69702 (pos)
                    (not (Bc_not_checked_p4))

                    ; #74017: <==uncertain_firing== 37078 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #79048: <==uncertain_firing== 63356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #80560: <==uncertain_firing== 14937 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #81266: <==negation-removal== 61271 (pos)
                    (not (Pc_not_checked_p4))

                    ; #84258: <==negation-removal== 56407 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #90951: <==negation-removal== 42356 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #13630: <==commonly_known== 83728 (pos)
                    (Bb_checked_p5)

                    ; #23088: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #25326: <==commonly_known== 83728 (pos)
                    (Bc_checked_p5)

                    ; #26575: <==commonly_known== 74519 (neg)
                    (Pb_checked_p5)

                    ; #46537: <==closure== 23088 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #47538: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #62370: <==closure== 47538 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #68263: <==commonly_known== 74519 (neg)
                    (Pc_checked_p5)

                    ; #79094: <==commonly_known== 74519 (neg)
                    (Pa_checked_p5)

                    ; #83728: origin
                    (checked_p5)

                    ; #97450: <==commonly_known== 83728 (pos)
                    (Ba_checked_p5)

                    ; #11386: <==negation-removal== 47538 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #11668: <==uncertain_firing== 23088 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #25325: <==uncertain_firing== 62370 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #36171: <==negation-removal== 68263 (pos)
                    (not (Bc_not_checked_p5))

                    ; #42351: <==uncertain_firing== 46537 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #45642: <==negation-removal== 26575 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48818: <==uncertain_firing== 47538 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #56196: <==negation-removal== 25326 (pos)
                    (not (Pc_not_checked_p5))

                    ; #68812: <==negation-removal== 46537 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #68837: <==negation-removal== 23088 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #74519: <==negation-removal== 83728 (pos)
                    (not (not_checked_p5))

                    ; #85093: <==negation-removal== 79094 (pos)
                    (not (Ba_not_checked_p5))

                    ; #86954: <==negation-removal== 62370 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #93729: <==negation-removal== 97450 (pos)
                    (not (Pa_not_checked_p5))

                    ; #95230: <==negation-removal== 13630 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11342: <==commonly_known== 34128 (neg)
                    (Pb_checked_p6)

                    ; #18670: <==commonly_known== 27863 (pos)
                    (Bc_checked_p6)

                    ; #27863: origin
                    (checked_p6)

                    ; #42662: <==closure== 70872 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #55288: <==commonly_known== 34128 (neg)
                    (Pa_checked_p6)

                    ; #58695: <==commonly_known== 34128 (neg)
                    (Pc_checked_p6)

                    ; #64311: <==commonly_known== 27863 (pos)
                    (Ba_checked_p6)

                    ; #70872: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #73743: <==commonly_known== 27863 (pos)
                    (Bb_checked_p6)

                    ; #74957: <==closure== 77732 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #77732: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #12047: <==negation-removal== 73743 (pos)
                    (not (Pb_not_checked_p6))

                    ; #14172: <==negation-removal== 70872 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #30101: <==negation-removal== 74957 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #32676: <==uncertain_firing== 70872 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #34128: <==negation-removal== 27863 (pos)
                    (not (not_checked_p6))

                    ; #46416: <==negation-removal== 77732 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #60382: <==uncertain_firing== 42662 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #67978: <==uncertain_firing== 77732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #69521: <==negation-removal== 11342 (pos)
                    (not (Bb_not_checked_p6))

                    ; #73160: <==negation-removal== 18670 (pos)
                    (not (Pc_not_checked_p6))

                    ; #73729: <==negation-removal== 58695 (pos)
                    (not (Bc_not_checked_p6))

                    ; #79442: <==negation-removal== 55288 (pos)
                    (not (Ba_not_checked_p6))

                    ; #83563: <==negation-removal== 42662 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #90124: <==negation-removal== 64311 (pos)
                    (not (Pa_not_checked_p6))

                    ; #90357: <==uncertain_firing== 74957 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #29590: <==closure== 52656 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #32251: <==commonly_known== 37000 (neg)
                    (Pc_checked_p7)

                    ; #34582: <==closure== 75876 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #45287: <==commonly_known== 56538 (pos)
                    (Ba_checked_p7)

                    ; #52656: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #54196: <==commonly_known== 56538 (pos)
                    (Bb_checked_p7)

                    ; #56538: origin
                    (checked_p7)

                    ; #63299: <==commonly_known== 37000 (neg)
                    (Pb_checked_p7)

                    ; #68402: <==commonly_known== 37000 (neg)
                    (Pa_checked_p7)

                    ; #75876: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #86048: <==commonly_known== 56538 (pos)
                    (Bc_checked_p7)

                    ; #21030: <==uncertain_firing== 52656 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #24242: <==negation-removal== 32251 (pos)
                    (not (Bc_not_checked_p7))

                    ; #33768: <==negation-removal== 54196 (pos)
                    (not (Pb_not_checked_p7))

                    ; #36338: <==uncertain_firing== 29590 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #36888: <==negation-removal== 75876 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #37000: <==negation-removal== 56538 (pos)
                    (not (not_checked_p7))

                    ; #37423: <==negation-removal== 34582 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #38219: <==uncertain_firing== 75876 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #40173: <==negation-removal== 63299 (pos)
                    (not (Bb_not_checked_p7))

                    ; #43693: <==negation-removal== 86048 (pos)
                    (not (Pc_not_checked_p7))

                    ; #46188: <==negation-removal== 52656 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #61552: <==negation-removal== 45287 (pos)
                    (not (Pa_not_checked_p7))

                    ; #67997: <==negation-removal== 68402 (pos)
                    (not (Ba_not_checked_p7))

                    ; #73912: <==uncertain_firing== 34582 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #91907: <==negation-removal== 29590 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10403: <==closure== 58944 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #11415: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #11895: <==commonly_known== 35658 (pos)
                    (Bb_checked_p8)

                    ; #16820: <==commonly_known== 35658 (pos)
                    (Bc_checked_p8)

                    ; #32960: <==commonly_known== 50200 (neg)
                    (Pb_checked_p8)

                    ; #35658: origin
                    (checked_p8)

                    ; #36004: <==commonly_known== 35658 (pos)
                    (Ba_checked_p8)

                    ; #58944: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #82803: <==commonly_known== 50200 (neg)
                    (Pa_checked_p8)

                    ; #84857: <==closure== 11415 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #87597: <==commonly_known== 50200 (neg)
                    (Pc_checked_p8)

                    ; #13230: <==negation-removal== 58944 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #33665: <==uncertain_firing== 58944 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #34818: <==negation-removal== 16820 (pos)
                    (not (Pc_not_checked_p8))

                    ; #44743: <==uncertain_firing== 10403 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #50200: <==negation-removal== 35658 (pos)
                    (not (not_checked_p8))

                    ; #53799: <==negation-removal== 84857 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #54105: <==uncertain_firing== 84857 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #54331: <==negation-removal== 82803 (pos)
                    (not (Ba_not_checked_p8))

                    ; #67116: <==negation-removal== 10403 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #68646: <==uncertain_firing== 11415 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #76600: <==negation-removal== 32960 (pos)
                    (not (Bb_not_checked_p8))

                    ; #77593: <==negation-removal== 36004 (pos)
                    (not (Pa_not_checked_p8))

                    ; #78986: <==negation-removal== 87597 (pos)
                    (not (Bc_not_checked_p8))

                    ; #85936: <==negation-removal== 11415 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #87393: <==negation-removal== 11895 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #17662: <==commonly_known== 79032 (pos)
                    (Ba_checked_p9)

                    ; #25004: <==commonly_known== 76613 (neg)
                    (Pb_checked_p9)

                    ; #30426: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #32964: <==commonly_known== 79032 (pos)
                    (Bb_checked_p9)

                    ; #39778: <==closure== 58116 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #52837: <==commonly_known== 79032 (pos)
                    (Bc_checked_p9)

                    ; #58116: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #65588: <==commonly_known== 76613 (neg)
                    (Pa_checked_p9)

                    ; #71248: <==commonly_known== 76613 (neg)
                    (Pc_checked_p9)

                    ; #79032: origin
                    (checked_p9)

                    ; #95986: <==closure== 30426 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #19398: <==negation-removal== 71248 (pos)
                    (not (Bc_not_checked_p9))

                    ; #23238: <==negation-removal== 39778 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #42499: <==negation-removal== 32964 (pos)
                    (not (Pb_not_checked_p9))

                    ; #42896: <==negation-removal== 30426 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #47138: <==uncertain_firing== 30426 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50375: <==uncertain_firing== 58116 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #56175: <==negation-removal== 17662 (pos)
                    (not (Pa_not_checked_p9))

                    ; #59990: <==negation-removal== 25004 (pos)
                    (not (Bb_not_checked_p9))

                    ; #67253: <==negation-removal== 58116 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #68082: <==negation-removal== 52837 (pos)
                    (not (Pc_not_checked_p9))

                    ; #72955: <==negation-removal== 95986 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #74792: <==negation-removal== 65588 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76613: <==negation-removal== 79032 (pos)
                    (not (not_checked_p9))

                    ; #85478: <==uncertain_firing== 95986 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #86324: <==uncertain_firing== 39778 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))))

)