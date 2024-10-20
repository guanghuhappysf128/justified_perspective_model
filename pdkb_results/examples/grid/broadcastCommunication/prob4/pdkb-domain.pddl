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
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (leader_a))
        :effect (and
                    ; #41200: origin
                    (Ba_survivorat_s_p10)

                    ; #67013: <==closure== 41200 (pos)
                    (Pa_survivorat_s_p10)

                    ; #63101: <==negation-removal== 41200 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #77510: <==negation-removal== 67013 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (leader_b))
        :effect (and
                    ; #39942: <==closure== 49266 (pos)
                    (Pb_survivorat_s_p10)

                    ; #49266: origin
                    (Bb_survivorat_s_p10)

                    ; #25741: <==negation-removal== 49266 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #58839: <==negation-removal== 39942 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (leader_c))
        :effect (and
                    ; #22504: origin
                    (Bc_survivorat_s_p10)

                    ; #40110: <==closure== 22504 (pos)
                    (Pc_survivorat_s_p10)

                    ; #38928: <==negation-removal== 22504 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #47897: <==negation-removal== 40110 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_a)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #41200: origin
                    (Ba_survivorat_s_p10)

                    ; #67013: <==closure== 41200 (pos)
                    (Pa_survivorat_s_p10)

                    ; #63101: <==negation-removal== 41200 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #77510: <==negation-removal== 67013 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #39942: <==closure== 49266 (pos)
                    (Pb_survivorat_s_p10)

                    ; #49266: origin
                    (Bb_survivorat_s_p10)

                    ; #25741: <==negation-removal== 49266 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #58839: <==negation-removal== 39942 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #22504: origin
                    (Bc_survivorat_s_p10)

                    ; #40110: <==closure== 22504 (pos)
                    (Pc_survivorat_s_p10)

                    ; #38928: <==negation-removal== 22504 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #47897: <==negation-removal== 40110 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #41200: origin
                    (Ba_survivorat_s_p10)

                    ; #67013: <==closure== 41200 (pos)
                    (Pa_survivorat_s_p10)

                    ; #63101: <==negation-removal== 41200 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #77510: <==negation-removal== 67013 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #39942: <==closure== 49266 (pos)
                    (Pb_survivorat_s_p10)

                    ; #49266: origin
                    (Bb_survivorat_s_p10)

                    ; #25741: <==negation-removal== 49266 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #58839: <==negation-removal== 39942 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (leader_c)
                           (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #22504: origin
                    (Bc_survivorat_s_p10)

                    ; #40110: <==closure== 22504 (pos)
                    (Pc_survivorat_s_p10)

                    ; #38928: <==negation-removal== 22504 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #47897: <==negation-removal== 40110 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (leader_a))
        :effect (and
                    ; #34625: <==closure== 41887 (pos)
                    (Pa_survivorat_s_p11)

                    ; #41887: origin
                    (Ba_survivorat_s_p11)

                    ; #22947: <==negation-removal== 34625 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #54494: <==negation-removal== 41887 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (Ba_survivorat_s_p11)
                           (leader_b)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #81295: origin
                    (Bb_survivorat_s_p11)

                    ; #93728: <==closure== 81295 (pos)
                    (Pb_survivorat_s_p11)

                    ; #65642: <==negation-removal== 93728 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #78850: <==negation-removal== 81295 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #54055: <==closure== 83620 (pos)
                    (Pc_survivorat_s_p11)

                    ; #83620: origin
                    (Bc_survivorat_s_p11)

                    ; #39891: <==negation-removal== 54055 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #63861: <==negation-removal== 83620 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_a))
        :effect (and
                    ; #34625: <==closure== 41887 (pos)
                    (Pa_survivorat_s_p11)

                    ; #41887: origin
                    (Ba_survivorat_s_p11)

                    ; #22947: <==negation-removal== 34625 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #54494: <==negation-removal== 41887 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_b))
        :effect (and
                    ; #81295: origin
                    (Bb_survivorat_s_p11)

                    ; #93728: <==closure== 81295 (pos)
                    (Pb_survivorat_s_p11)

                    ; #65642: <==negation-removal== 93728 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #78850: <==negation-removal== 81295 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_c))
        :effect (and
                    ; #54055: <==closure== 83620 (pos)
                    (Pc_survivorat_s_p11)

                    ; #83620: origin
                    (Bc_survivorat_s_p11)

                    ; #39891: <==negation-removal== 54055 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #63861: <==negation-removal== 83620 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #34625: <==closure== 41887 (pos)
                    (Pa_survivorat_s_p11)

                    ; #41887: origin
                    (Ba_survivorat_s_p11)

                    ; #22947: <==negation-removal== 34625 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #54494: <==negation-removal== 41887 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11))
        :effect (and
                    ; #81295: origin
                    (Bb_survivorat_s_p11)

                    ; #93728: <==closure== 81295 (pos)
                    (Pb_survivorat_s_p11)

                    ; #65642: <==negation-removal== 93728 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #78850: <==negation-removal== 81295 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #54055: <==closure== 83620 (pos)
                    (Pc_survivorat_s_p11)

                    ; #83620: origin
                    (Bc_survivorat_s_p11)

                    ; #39891: <==negation-removal== 54055 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #63861: <==negation-removal== 83620 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #13990: origin
                    (Ba_survivorat_s_p12)

                    ; #28748: <==closure== 13990 (pos)
                    (Pa_survivorat_s_p12)

                    ; #51223: <==negation-removal== 13990 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #87037: <==negation-removal== 28748 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #14782: <==closure== 41775 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41775: origin
                    (Bb_survivorat_s_p12)

                    ; #33791: <==negation-removal== 41775 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #73960: <==negation-removal== 14782 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #75417: <==closure== 90948 (pos)
                    (Pc_survivorat_s_p12)

                    ; #90948: origin
                    (Bc_survivorat_s_p12)

                    ; #79882: <==negation-removal== 90948 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #97952: <==negation-removal== 75417 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #13990: origin
                    (Ba_survivorat_s_p12)

                    ; #28748: <==closure== 13990 (pos)
                    (Pa_survivorat_s_p12)

                    ; #51223: <==negation-removal== 13990 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #87037: <==negation-removal== 28748 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_b)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #14782: <==closure== 41775 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41775: origin
                    (Bb_survivorat_s_p12)

                    ; #33791: <==negation-removal== 41775 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #73960: <==negation-removal== 14782 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p12)
                           (at_b_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #75417: <==closure== 90948 (pos)
                    (Pc_survivorat_s_p12)

                    ; #90948: origin
                    (Bc_survivorat_s_p12)

                    ; #79882: <==negation-removal== 90948 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #97952: <==negation-removal== 75417 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (at_c_p12)
                           (leader_a)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #13990: origin
                    (Ba_survivorat_s_p12)

                    ; #28748: <==closure== 13990 (pos)
                    (Pa_survivorat_s_p12)

                    ; #51223: <==negation-removal== 13990 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #87037: <==negation-removal== 28748 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (at_c_p12)
                           (leader_b)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #14782: <==closure== 41775 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41775: origin
                    (Bb_survivorat_s_p12)

                    ; #33791: <==negation-removal== 41775 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #73960: <==negation-removal== 14782 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (leader_c)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #75417: <==closure== 90948 (pos)
                    (Pc_survivorat_s_p12)

                    ; #90948: origin
                    (Bc_survivorat_s_p12)

                    ; #79882: <==negation-removal== 90948 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #97952: <==negation-removal== 75417 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_a))
        :effect (and
                    ; #20940: origin
                    (Ba_survivorat_s_p1)

                    ; #47065: <==closure== 20940 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22677: <==negation-removal== 47065 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78373: <==negation-removal== 20940 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_b))
        :effect (and
                    ; #36079: <==closure== 48279 (pos)
                    (Pb_survivorat_s_p1)

                    ; #48279: origin
                    (Bb_survivorat_s_p1)

                    ; #39993: <==negation-removal== 48279 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81642: <==negation-removal== 36079 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_c))
        :effect (and
                    ; #17359: origin
                    (Bc_survivorat_s_p1)

                    ; #52483: <==closure== 17359 (pos)
                    (Pc_survivorat_s_p1)

                    ; #24264: <==negation-removal== 17359 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #44804: <==negation-removal== 52483 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_a)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #20940: origin
                    (Ba_survivorat_s_p1)

                    ; #47065: <==closure== 20940 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22677: <==negation-removal== 47065 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78373: <==negation-removal== 20940 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #36079: <==closure== 48279 (pos)
                    (Pb_survivorat_s_p1)

                    ; #48279: origin
                    (Bb_survivorat_s_p1)

                    ; #39993: <==negation-removal== 48279 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81642: <==negation-removal== 36079 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #17359: origin
                    (Bc_survivorat_s_p1)

                    ; #52483: <==closure== 17359 (pos)
                    (Pc_survivorat_s_p1)

                    ; #24264: <==negation-removal== 17359 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #44804: <==negation-removal== 52483 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #20940: origin
                    (Ba_survivorat_s_p1)

                    ; #47065: <==closure== 20940 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22677: <==negation-removal== 47065 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78373: <==negation-removal== 20940 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (leader_b)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #36079: <==closure== 48279 (pos)
                    (Pb_survivorat_s_p1)

                    ; #48279: origin
                    (Bb_survivorat_s_p1)

                    ; #39993: <==negation-removal== 48279 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81642: <==negation-removal== 36079 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (leader_c)
                           (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #17359: origin
                    (Bc_survivorat_s_p1)

                    ; #52483: <==closure== 17359 (pos)
                    (Pc_survivorat_s_p1)

                    ; #24264: <==negation-removal== 17359 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #44804: <==negation-removal== 52483 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #15909: <==closure== 43762 (pos)
                    (Pa_survivorat_s_p2)

                    ; #43762: origin
                    (Ba_survivorat_s_p2)

                    ; #77378: <==negation-removal== 15909 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #87257: <==negation-removal== 43762 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #39155: <==closure== 49181 (pos)
                    (Pb_survivorat_s_p2)

                    ; #49181: origin
                    (Bb_survivorat_s_p2)

                    ; #38283: <==negation-removal== 49181 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #88604: <==negation-removal== 39155 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #19062: <==closure== 25143 (pos)
                    (Pc_survivorat_s_p2)

                    ; #25143: origin
                    (Bc_survivorat_s_p2)

                    ; #48628: <==negation-removal== 19062 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #62765: <==negation-removal== 25143 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (leader_a)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #15909: <==closure== 43762 (pos)
                    (Pa_survivorat_s_p2)

                    ; #43762: origin
                    (Ba_survivorat_s_p2)

                    ; #77378: <==negation-removal== 15909 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #87257: <==negation-removal== 43762 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (leader_b)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #39155: <==closure== 49181 (pos)
                    (Pb_survivorat_s_p2)

                    ; #49181: origin
                    (Bb_survivorat_s_p2)

                    ; #38283: <==negation-removal== 49181 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #88604: <==negation-removal== 39155 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (leader_c)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #19062: <==closure== 25143 (pos)
                    (Pc_survivorat_s_p2)

                    ; #25143: origin
                    (Bc_survivorat_s_p2)

                    ; #48628: <==negation-removal== 19062 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #62765: <==negation-removal== 25143 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #15909: <==closure== 43762 (pos)
                    (Pa_survivorat_s_p2)

                    ; #43762: origin
                    (Ba_survivorat_s_p2)

                    ; #77378: <==negation-removal== 15909 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #87257: <==negation-removal== 43762 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #39155: <==closure== 49181 (pos)
                    (Pb_survivorat_s_p2)

                    ; #49181: origin
                    (Bb_survivorat_s_p2)

                    ; #38283: <==negation-removal== 49181 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #88604: <==negation-removal== 39155 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #19062: <==closure== 25143 (pos)
                    (Pc_survivorat_s_p2)

                    ; #25143: origin
                    (Bc_survivorat_s_p2)

                    ; #48628: <==negation-removal== 19062 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #62765: <==negation-removal== 25143 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #13206: origin
                    (Ba_survivorat_s_p3)

                    ; #47624: <==closure== 13206 (pos)
                    (Pa_survivorat_s_p3)

                    ; #50189: <==negation-removal== 47624 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #73429: <==negation-removal== 13206 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #12894: <==closure== 81445 (pos)
                    (Pb_survivorat_s_p3)

                    ; #81445: origin
                    (Bb_survivorat_s_p3)

                    ; #71432: <==negation-removal== 81445 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #75540: <==negation-removal== 12894 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #67814: <==closure== 88965 (pos)
                    (Pc_survivorat_s_p3)

                    ; #88965: origin
                    (Bc_survivorat_s_p3)

                    ; #68994: <==negation-removal== 88965 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #89958: <==negation-removal== 67814 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (leader_a)
                           (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #13206: origin
                    (Ba_survivorat_s_p3)

                    ; #47624: <==closure== 13206 (pos)
                    (Pa_survivorat_s_p3)

                    ; #50189: <==negation-removal== 47624 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #73429: <==negation-removal== 13206 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (leader_b)
                           (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #12894: <==closure== 81445 (pos)
                    (Pb_survivorat_s_p3)

                    ; #81445: origin
                    (Bb_survivorat_s_p3)

                    ; #71432: <==negation-removal== 81445 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #75540: <==negation-removal== 12894 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (leader_c)
                           (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #67814: <==closure== 88965 (pos)
                    (Pc_survivorat_s_p3)

                    ; #88965: origin
                    (Bc_survivorat_s_p3)

                    ; #68994: <==negation-removal== 88965 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #89958: <==negation-removal== 67814 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #13206: origin
                    (Ba_survivorat_s_p3)

                    ; #47624: <==closure== 13206 (pos)
                    (Pa_survivorat_s_p3)

                    ; #50189: <==negation-removal== 47624 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #73429: <==negation-removal== 13206 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #12894: <==closure== 81445 (pos)
                    (Pb_survivorat_s_p3)

                    ; #81445: origin
                    (Bb_survivorat_s_p3)

                    ; #71432: <==negation-removal== 81445 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #75540: <==negation-removal== 12894 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #67814: <==closure== 88965 (pos)
                    (Pc_survivorat_s_p3)

                    ; #88965: origin
                    (Bc_survivorat_s_p3)

                    ; #68994: <==negation-removal== 88965 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #89958: <==negation-removal== 67814 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #63040: <==closure== 73025 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73025: origin
                    (Ba_survivorat_s_p4)

                    ; #21797: <==negation-removal== 63040 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #29073: <==negation-removal== 73025 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_b)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #79678: origin
                    (Bb_survivorat_s_p4)

                    ; #90151: <==closure== 79678 (pos)
                    (Pb_survivorat_s_p4)

                    ; #31340: <==negation-removal== 90151 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #77794: <==negation-removal== 79678 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #18754: <==closure== 60483 (pos)
                    (Pc_survivorat_s_p4)

                    ; #60483: origin
                    (Bc_survivorat_s_p4)

                    ; #21378: <==negation-removal== 18754 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #33822: <==negation-removal== 60483 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (at_b_p4)
                           (leader_a)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #63040: <==closure== 73025 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73025: origin
                    (Ba_survivorat_s_p4)

                    ; #21797: <==negation-removal== 63040 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #29073: <==negation-removal== 73025 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (at_b_p4)
                           (leader_b)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #79678: origin
                    (Bb_survivorat_s_p4)

                    ; #90151: <==closure== 79678 (pos)
                    (Pb_survivorat_s_p4)

                    ; #31340: <==negation-removal== 90151 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #77794: <==negation-removal== 79678 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (leader_c)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #18754: <==closure== 60483 (pos)
                    (Pc_survivorat_s_p4)

                    ; #60483: origin
                    (Bc_survivorat_s_p4)

                    ; #21378: <==negation-removal== 18754 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #33822: <==negation-removal== 60483 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_a)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #63040: <==closure== 73025 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73025: origin
                    (Ba_survivorat_s_p4)

                    ; #21797: <==negation-removal== 63040 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #29073: <==negation-removal== 73025 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #79678: origin
                    (Bb_survivorat_s_p4)

                    ; #90151: <==closure== 79678 (pos)
                    (Pb_survivorat_s_p4)

                    ; #31340: <==negation-removal== 90151 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #77794: <==negation-removal== 79678 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #18754: <==closure== 60483 (pos)
                    (Pc_survivorat_s_p4)

                    ; #60483: origin
                    (Bc_survivorat_s_p4)

                    ; #21378: <==negation-removal== 18754 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #33822: <==negation-removal== 60483 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (at_a_p5)
                           (leader_a)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #16970: origin
                    (Ba_survivorat_s_p5)

                    ; #22337: <==closure== 16970 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16270: <==negation-removal== 16970 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #25728: <==negation-removal== 22337 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (at_a_p5)
                           (leader_b)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #25754: origin
                    (Bb_survivorat_s_p5)

                    ; #77634: <==closure== 25754 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11679: <==negation-removal== 77634 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #63624: <==negation-removal== 25754 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (leader_c)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #46495: origin
                    (Bc_survivorat_s_p5)

                    ; #70344: <==closure== 46495 (pos)
                    (Pc_survivorat_s_p5)

                    ; #10371: <==negation-removal== 46495 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #36558: <==negation-removal== 70344 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #16970: origin
                    (Ba_survivorat_s_p5)

                    ; #22337: <==closure== 16970 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16270: <==negation-removal== 16970 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #25728: <==negation-removal== 22337 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_b)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #25754: origin
                    (Bb_survivorat_s_p5)

                    ; #77634: <==closure== 25754 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11679: <==negation-removal== 77634 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #63624: <==negation-removal== 25754 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #46495: origin
                    (Bc_survivorat_s_p5)

                    ; #70344: <==closure== 46495 (pos)
                    (Pc_survivorat_s_p5)

                    ; #10371: <==negation-removal== 46495 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #36558: <==negation-removal== 70344 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #16970: origin
                    (Ba_survivorat_s_p5)

                    ; #22337: <==closure== 16970 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16270: <==negation-removal== 16970 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #25728: <==negation-removal== 22337 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #25754: origin
                    (Bb_survivorat_s_p5)

                    ; #77634: <==closure== 25754 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11679: <==negation-removal== 77634 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #63624: <==negation-removal== 25754 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #46495: origin
                    (Bc_survivorat_s_p5)

                    ; #70344: <==closure== 46495 (pos)
                    (Pc_survivorat_s_p5)

                    ; #10371: <==negation-removal== 46495 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #36558: <==negation-removal== 70344 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #19308: origin
                    (Ba_survivorat_s_p6)

                    ; #85220: <==closure== 19308 (pos)
                    (Pa_survivorat_s_p6)

                    ; #18213: <==negation-removal== 85220 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #64410: <==negation-removal== 19308 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #75525: <==closure== 90923 (pos)
                    (Pb_survivorat_s_p6)

                    ; #90923: origin
                    (Bb_survivorat_s_p6)

                    ; #32426: <==negation-removal== 75525 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #57737: <==negation-removal== 90923 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #17743: origin
                    (Bc_survivorat_s_p6)

                    ; #65771: <==closure== 17743 (pos)
                    (Pc_survivorat_s_p6)

                    ; #52540: <==negation-removal== 17743 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #91947: <==negation-removal== 65771 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6))
        :effect (and
                    ; #19308: origin
                    (Ba_survivorat_s_p6)

                    ; #85220: <==closure== 19308 (pos)
                    (Pa_survivorat_s_p6)

                    ; #18213: <==negation-removal== 85220 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #64410: <==negation-removal== 19308 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (leader_b)
                           (at_b_p6))
        :effect (and
                    ; #75525: <==closure== 90923 (pos)
                    (Pb_survivorat_s_p6)

                    ; #90923: origin
                    (Bb_survivorat_s_p6)

                    ; #32426: <==negation-removal== 75525 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #57737: <==negation-removal== 90923 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #17743: origin
                    (Bc_survivorat_s_p6)

                    ; #65771: <==closure== 17743 (pos)
                    (Pc_survivorat_s_p6)

                    ; #52540: <==negation-removal== 17743 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #91947: <==negation-removal== 65771 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #19308: origin
                    (Ba_survivorat_s_p6)

                    ; #85220: <==closure== 19308 (pos)
                    (Pa_survivorat_s_p6)

                    ; #18213: <==negation-removal== 85220 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #64410: <==negation-removal== 19308 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #75525: <==closure== 90923 (pos)
                    (Pb_survivorat_s_p6)

                    ; #90923: origin
                    (Bb_survivorat_s_p6)

                    ; #32426: <==negation-removal== 75525 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #57737: <==negation-removal== 90923 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #17743: origin
                    (Bc_survivorat_s_p6)

                    ; #65771: <==closure== 17743 (pos)
                    (Pc_survivorat_s_p6)

                    ; #52540: <==negation-removal== 17743 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #91947: <==negation-removal== 65771 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #71958: <==closure== 78225 (pos)
                    (Pa_survivorat_s_p7)

                    ; #78225: origin
                    (Ba_survivorat_s_p7)

                    ; #81523: <==negation-removal== 71958 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #87228: <==negation-removal== 78225 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_b)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #73298: origin
                    (Bb_survivorat_s_p7)

                    ; #91495: <==closure== 73298 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50622: <==negation-removal== 73298 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67451: <==negation-removal== 91495 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #29829: origin
                    (Bc_survivorat_s_p7)

                    ; #59598: <==closure== 29829 (pos)
                    (Pc_survivorat_s_p7)

                    ; #55180: <==negation-removal== 29829 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #68986: <==negation-removal== 59598 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #71958: <==closure== 78225 (pos)
                    (Pa_survivorat_s_p7)

                    ; #78225: origin
                    (Ba_survivorat_s_p7)

                    ; #81523: <==negation-removal== 71958 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #87228: <==negation-removal== 78225 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #73298: origin
                    (Bb_survivorat_s_p7)

                    ; #91495: <==closure== 73298 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50622: <==negation-removal== 73298 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67451: <==negation-removal== 91495 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #29829: origin
                    (Bc_survivorat_s_p7)

                    ; #59598: <==closure== 29829 (pos)
                    (Pc_survivorat_s_p7)

                    ; #55180: <==negation-removal== 29829 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #68986: <==negation-removal== 59598 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #71958: <==closure== 78225 (pos)
                    (Pa_survivorat_s_p7)

                    ; #78225: origin
                    (Ba_survivorat_s_p7)

                    ; #81523: <==negation-removal== 71958 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #87228: <==negation-removal== 78225 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #73298: origin
                    (Bb_survivorat_s_p7)

                    ; #91495: <==closure== 73298 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50622: <==negation-removal== 73298 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67451: <==negation-removal== 91495 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #29829: origin
                    (Bc_survivorat_s_p7)

                    ; #59598: <==closure== 29829 (pos)
                    (Pc_survivorat_s_p7)

                    ; #55180: <==negation-removal== 29829 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #68986: <==negation-removal== 59598 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #43507: origin
                    (Ba_survivorat_s_p8)

                    ; #69127: <==closure== 43507 (pos)
                    (Pa_survivorat_s_p8)

                    ; #37563: <==negation-removal== 43507 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #59381: <==negation-removal== 69127 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #54448: <==closure== 86331 (pos)
                    (Pb_survivorat_s_p8)

                    ; #86331: origin
                    (Bb_survivorat_s_p8)

                    ; #11459: <==negation-removal== 54448 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #24706: <==negation-removal== 86331 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #17607: <==closure== 61722 (pos)
                    (Pc_survivorat_s_p8)

                    ; #61722: origin
                    (Bc_survivorat_s_p8)

                    ; #31482: <==negation-removal== 17607 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #58357: <==negation-removal== 61722 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (leader_a)
                           (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #43507: origin
                    (Ba_survivorat_s_p8)

                    ; #69127: <==closure== 43507 (pos)
                    (Pa_survivorat_s_p8)

                    ; #37563: <==negation-removal== 43507 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #59381: <==negation-removal== 69127 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (leader_b)
                           (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #54448: <==closure== 86331 (pos)
                    (Pb_survivorat_s_p8)

                    ; #86331: origin
                    (Bb_survivorat_s_p8)

                    ; #11459: <==negation-removal== 54448 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #24706: <==negation-removal== 86331 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (leader_c)
                           (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #17607: <==closure== 61722 (pos)
                    (Pc_survivorat_s_p8)

                    ; #61722: origin
                    (Bc_survivorat_s_p8)

                    ; #31482: <==negation-removal== 17607 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #58357: <==negation-removal== 61722 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #43507: origin
                    (Ba_survivorat_s_p8)

                    ; #69127: <==closure== 43507 (pos)
                    (Pa_survivorat_s_p8)

                    ; #37563: <==negation-removal== 43507 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #59381: <==negation-removal== 69127 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #54448: <==closure== 86331 (pos)
                    (Pb_survivorat_s_p8)

                    ; #86331: origin
                    (Bb_survivorat_s_p8)

                    ; #11459: <==negation-removal== 54448 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #24706: <==negation-removal== 86331 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #17607: <==closure== 61722 (pos)
                    (Pc_survivorat_s_p8)

                    ; #61722: origin
                    (Bc_survivorat_s_p8)

                    ; #31482: <==negation-removal== 17607 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #58357: <==negation-removal== 61722 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #15695: origin
                    (Ba_survivorat_s_p9)

                    ; #50551: <==closure== 15695 (pos)
                    (Pa_survivorat_s_p9)

                    ; #20580: <==negation-removal== 15695 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #53935: <==negation-removal== 50551 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #53384: <==closure== 64923 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64923: origin
                    (Bb_survivorat_s_p9)

                    ; #57820: <==negation-removal== 64923 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77354: <==negation-removal== 53384 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (leader_c)
                           (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #14068: <==closure== 84649 (pos)
                    (Pc_survivorat_s_p9)

                    ; #84649: origin
                    (Bc_survivorat_s_p9)

                    ; #28387: <==negation-removal== 14068 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56786: <==negation-removal== 84649 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_a)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #15695: origin
                    (Ba_survivorat_s_p9)

                    ; #50551: <==closure== 15695 (pos)
                    (Pa_survivorat_s_p9)

                    ; #20580: <==negation-removal== 15695 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #53935: <==negation-removal== 50551 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_b)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #53384: <==closure== 64923 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64923: origin
                    (Bb_survivorat_s_p9)

                    ; #57820: <==negation-removal== 64923 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77354: <==negation-removal== 53384 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #14068: <==closure== 84649 (pos)
                    (Pc_survivorat_s_p9)

                    ; #84649: origin
                    (Bc_survivorat_s_p9)

                    ; #28387: <==negation-removal== 14068 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56786: <==negation-removal== 84649 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #15695: origin
                    (Ba_survivorat_s_p9)

                    ; #50551: <==closure== 15695 (pos)
                    (Pa_survivorat_s_p9)

                    ; #20580: <==negation-removal== 15695 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #53935: <==negation-removal== 50551 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_b)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #53384: <==closure== 64923 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64923: origin
                    (Bb_survivorat_s_p9)

                    ; #57820: <==negation-removal== 64923 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77354: <==negation-removal== 53384 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #14068: <==closure== 84649 (pos)
                    (Pc_survivorat_s_p9)

                    ; #84649: origin
                    (Bc_survivorat_s_p9)

                    ; #28387: <==negation-removal== 14068 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56786: <==negation-removal== 84649 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1)
                           (not (leader_a)))
        :effect (and
                    ; #67516: origin
                    (not_at_a_p10)

                    ; #79978: origin
                    (at_a_p1)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #67516: origin
                    (not_at_a_p10)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39486: origin
                    (at_a_p11)

                    ; #67516: origin
                    (not_at_a_p10)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #67516: origin
                    (not_at_a_p10)

                    ; #86460: origin
                    (at_a_p12)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #67516: origin
                    (not_at_a_p10)

                    ; #76399: origin
                    (at_a_p2)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #67516: origin
                    (not_at_a_p10)

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #48249: origin
                    (at_a_p4)

                    ; #67516: origin
                    (not_at_a_p10)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #67516: origin
                    (not_at_a_p10)

                    ; #74436: origin
                    (at_a_p5)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #67516: origin
                    (not_at_a_p10)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #46126: origin
                    (at_a_p7)

                    ; #67516: origin
                    (not_at_a_p10)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8)
                           (not (leader_a)))
        :effect (and
                    ; #67516: origin
                    (not_at_a_p10)

                    ; #89596: origin
                    (at_a_p8)

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #67516: origin
                    (not_at_a_p10)

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))

                    ; #31231: <==negation-removal== 67516 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #58478: origin
                    (not_at_a_p11)

                    ; #79978: origin
                    (at_a_p1)

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #58478: origin
                    (not_at_a_p11)

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39486: origin
                    (at_a_p11)

                    ; #58478: origin
                    (not_at_a_p11)

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #58478: origin
                    (not_at_a_p11)

                    ; #86460: origin
                    (at_a_p12)

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2)
                           (not (leader_a)))
        :effect (and
                    ; #58478: origin
                    (not_at_a_p11)

                    ; #76399: origin
                    (at_a_p2)

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #58478: origin
                    (not_at_a_p11)

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #48249: origin
                    (at_a_p4)

                    ; #58478: origin
                    (not_at_a_p11)

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #58478: origin
                    (not_at_a_p11)

                    ; #74436: origin
                    (at_a_p5)

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #58478: origin
                    (not_at_a_p11)

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #46126: origin
                    (at_a_p7)

                    ; #58478: origin
                    (not_at_a_p11)

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #58478: origin
                    (not_at_a_p11)

                    ; #89596: origin
                    (at_a_p8)

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #58478: origin
                    (not_at_a_p11)

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))

                    ; #39486: <==negation-removal== 58478 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #74320: origin
                    (not_at_a_p12)

                    ; #79978: origin
                    (at_a_p1)

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #74320: origin
                    (not_at_a_p12)

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #39486: origin
                    (at_a_p11)

                    ; #74320: origin
                    (not_at_a_p12)

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #74320: origin
                    (not_at_a_p12)

                    ; #86460: origin
                    (at_a_p12)

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #74320: origin
                    (not_at_a_p12)

                    ; #76399: origin
                    (at_a_p2)

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #74320: origin
                    (not_at_a_p12)

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #48249: origin
                    (at_a_p4)

                    ; #74320: origin
                    (not_at_a_p12)

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #74320: origin
                    (not_at_a_p12)

                    ; #74436: origin
                    (at_a_p5)

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #74320: origin
                    (not_at_a_p12)

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #46126: origin
                    (at_a_p7)

                    ; #74320: origin
                    (not_at_a_p12)

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #74320: origin
                    (not_at_a_p12)

                    ; #89596: origin
                    (at_a_p8)

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #74320: origin
                    (not_at_a_p12)

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))

                    ; #86460: <==negation-removal== 74320 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #55346: origin
                    (not_at_a_p1)

                    ; #79978: origin
                    (at_a_p1)

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #55346: origin
                    (not_at_a_p1)

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #39486: origin
                    (at_a_p11)

                    ; #55346: origin
                    (not_at_a_p1)

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #55346: origin
                    (not_at_a_p1)

                    ; #86460: origin
                    (at_a_p12)

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #55346: origin
                    (not_at_a_p1)

                    ; #76399: origin
                    (at_a_p2)

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #55346: origin
                    (not_at_a_p1)

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #48249: origin
                    (at_a_p4)

                    ; #55346: origin
                    (not_at_a_p1)

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #55346: origin
                    (not_at_a_p1)

                    ; #74436: origin
                    (at_a_p5)

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #55346: origin
                    (not_at_a_p1)

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46126: origin
                    (at_a_p7)

                    ; #55346: origin
                    (not_at_a_p1)

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #55346: origin
                    (not_at_a_p1)

                    ; #89596: origin
                    (at_a_p8)

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #55346: origin
                    (not_at_a_p1)

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))

                    ; #79978: <==negation-removal== 55346 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #79978: origin
                    (at_a_p1)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #39486: origin
                    (at_a_p11)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12)
                           (not (leader_a)))
        :effect (and
                    ; #85942: origin
                    (not_at_a_p2)

                    ; #86460: origin
                    (at_a_p12)

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #76399: origin
                    (at_a_p2)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #48249: origin
                    (at_a_p4)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #74436: origin
                    (at_a_p5)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #46126: origin
                    (at_a_p7)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #85942: origin
                    (not_at_a_p2)

                    ; #89596: origin
                    (at_a_p8)

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #85942: origin
                    (not_at_a_p2)

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))

                    ; #76399: <==negation-removal== 85942 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27567: origin
                    (not_at_a_p3)

                    ; #79978: origin
                    (at_a_p1)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27567: origin
                    (not_at_a_p3)

                    ; #31231: origin
                    (at_a_p10)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27567: origin
                    (not_at_a_p3)

                    ; #39486: origin
                    (at_a_p11)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27567: origin
                    (not_at_a_p3)

                    ; #86460: origin
                    (at_a_p12)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27567: origin
                    (not_at_a_p3)

                    ; #76399: origin
                    (at_a_p2)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #27567: origin
                    (not_at_a_p3)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27567: origin
                    (not_at_a_p3)

                    ; #48249: origin
                    (at_a_p4)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27567: origin
                    (not_at_a_p3)

                    ; #74436: origin
                    (at_a_p5)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #27567: origin
                    (not_at_a_p3)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27567: origin
                    (not_at_a_p3)

                    ; #46126: origin
                    (at_a_p7)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27567: origin
                    (not_at_a_p3)

                    ; #89596: origin
                    (at_a_p8)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #27567: origin
                    (not_at_a_p3)

                    ; #23742: <==negation-removal== 27567 (pos)
                    (not (at_a_p3))

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #34230: origin
                    (not_at_a_p4)

                    ; #79978: origin
                    (at_a_p1)

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #34230: origin
                    (not_at_a_p4)

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #34230: origin
                    (not_at_a_p4)

                    ; #39486: origin
                    (at_a_p11)

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #34230: origin
                    (not_at_a_p4)

                    ; #86460: origin
                    (at_a_p12)

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #34230: origin
                    (not_at_a_p4)

                    ; #76399: origin
                    (at_a_p2)

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #34230: origin
                    (not_at_a_p4)

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #34230: origin
                    (not_at_a_p4)

                    ; #48249: origin
                    (at_a_p4)

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #34230: origin
                    (not_at_a_p4)

                    ; #74436: origin
                    (at_a_p5)

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #34230: origin
                    (not_at_a_p4)

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #34230: origin
                    (not_at_a_p4)

                    ; #46126: origin
                    (at_a_p7)

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #34230: origin
                    (not_at_a_p4)

                    ; #89596: origin
                    (at_a_p8)

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #34230: origin
                    (not_at_a_p4)

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))

                    ; #48249: <==negation-removal== 34230 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #79978: origin
                    (at_a_p1)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39486: origin
                    (at_a_p11)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12)
                           (not (leader_a)))
        :effect (and
                    ; #86460: origin
                    (at_a_p12)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #76399: origin
                    (at_a_p2)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48249: origin
                    (at_a_p4)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #74436: origin
                    (at_a_p5)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #46126: origin
                    (at_a_p7)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #89596: origin
                    (at_a_p8)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #90245: origin
                    (not_at_a_p5)

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))

                    ; #74436: <==negation-removal== 90245 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41863: origin
                    (not_at_a_p6)

                    ; #79978: origin
                    (at_a_p1)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #41863: origin
                    (not_at_a_p6)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39486: origin
                    (at_a_p11)

                    ; #41863: origin
                    (not_at_a_p6)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41863: origin
                    (not_at_a_p6)

                    ; #86460: origin
                    (at_a_p12)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2)
                           (not (leader_a)))
        :effect (and
                    ; #41863: origin
                    (not_at_a_p6)

                    ; #76399: origin
                    (at_a_p2)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #41863: origin
                    (not_at_a_p6)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4)
                           (not (leader_a)))
        :effect (and
                    ; #41863: origin
                    (not_at_a_p6)

                    ; #48249: origin
                    (at_a_p4)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41863: origin
                    (not_at_a_p6)

                    ; #74436: origin
                    (at_a_p5)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #41863: origin
                    (not_at_a_p6)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #41863: origin
                    (not_at_a_p6)

                    ; #46126: origin
                    (at_a_p7)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41863: origin
                    (not_at_a_p6)

                    ; #89596: origin
                    (at_a_p8)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #41863: origin
                    (not_at_a_p6)

                    ; #18402: <==negation-removal== 41863 (pos)
                    (not (at_a_p6))

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #55353: origin
                    (not_at_a_p7)

                    ; #79978: origin
                    (at_a_p1)

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #55353: origin
                    (not_at_a_p7)

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #39486: origin
                    (at_a_p11)

                    ; #55353: origin
                    (not_at_a_p7)

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12)
                           (not (leader_a)))
        :effect (and
                    ; #55353: origin
                    (not_at_a_p7)

                    ; #86460: origin
                    (at_a_p12)

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #55353: origin
                    (not_at_a_p7)

                    ; #76399: origin
                    (at_a_p2)

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #55353: origin
                    (not_at_a_p7)

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #48249: origin
                    (at_a_p4)

                    ; #55353: origin
                    (not_at_a_p7)

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #55353: origin
                    (not_at_a_p7)

                    ; #74436: origin
                    (at_a_p5)

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #55353: origin
                    (not_at_a_p7)

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #46126: origin
                    (at_a_p7)

                    ; #55353: origin
                    (not_at_a_p7)

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #55353: origin
                    (not_at_a_p7)

                    ; #89596: origin
                    (at_a_p8)

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #55353: origin
                    (not_at_a_p7)

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))

                    ; #46126: <==negation-removal== 55353 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #59388: origin
                    (not_at_a_p8)

                    ; #79978: origin
                    (at_a_p1)

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #31231: origin
                    (at_a_p10)

                    ; #59388: origin
                    (not_at_a_p8)

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39486: origin
                    (at_a_p11)

                    ; #59388: origin
                    (not_at_a_p8)

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #59388: origin
                    (not_at_a_p8)

                    ; #86460: origin
                    (at_a_p12)

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #59388: origin
                    (not_at_a_p8)

                    ; #76399: origin
                    (at_a_p2)

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #59388: origin
                    (not_at_a_p8)

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #48249: origin
                    (at_a_p4)

                    ; #59388: origin
                    (not_at_a_p8)

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #59388: origin
                    (not_at_a_p8)

                    ; #74436: origin
                    (at_a_p5)

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #59388: origin
                    (not_at_a_p8)

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #46126: origin
                    (at_a_p7)

                    ; #59388: origin
                    (not_at_a_p8)

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #59388: origin
                    (not_at_a_p8)

                    ; #89596: origin
                    (at_a_p8)

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #59388: origin
                    (not_at_a_p8)

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))

                    ; #89596: <==negation-removal== 59388 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #24438: origin
                    (not_at_a_p9)

                    ; #79978: origin
                    (at_a_p1)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #55346: <==negation-removal== 79978 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10)
                           (not (leader_a)))
        :effect (and
                    ; #24438: origin
                    (not_at_a_p9)

                    ; #31231: origin
                    (at_a_p10)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #67516: <==negation-removal== 31231 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11)
                           (not (leader_a)))
        :effect (and
                    ; #24438: origin
                    (not_at_a_p9)

                    ; #39486: origin
                    (at_a_p11)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #58478: <==negation-removal== 39486 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12)
                           (not (leader_a)))
        :effect (and
                    ; #24438: origin
                    (not_at_a_p9)

                    ; #86460: origin
                    (at_a_p12)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #74320: <==negation-removal== 86460 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24438: origin
                    (not_at_a_p9)

                    ; #76399: origin
                    (at_a_p2)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #85942: <==negation-removal== 76399 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #23742: origin
                    (at_a_p3)

                    ; #24438: origin
                    (not_at_a_p9)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #27567: <==negation-removal== 23742 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4)
                           (not (leader_a)))
        :effect (and
                    ; #24438: origin
                    (not_at_a_p9)

                    ; #48249: origin
                    (at_a_p4)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #34230: <==negation-removal== 48249 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #24438: origin
                    (not_at_a_p9)

                    ; #74436: origin
                    (at_a_p5)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #90245: <==negation-removal== 74436 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #18402: origin
                    (at_a_p6)

                    ; #24438: origin
                    (not_at_a_p9)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #41863: <==negation-removal== 18402 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #24438: origin
                    (not_at_a_p9)

                    ; #46126: origin
                    (at_a_p7)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #55353: <==negation-removal== 46126 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8)
                           (not (leader_a)))
        :effect (and
                    ; #24438: origin
                    (not_at_a_p9)

                    ; #89596: origin
                    (at_a_p8)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #59388: <==negation-removal== 89596 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16586: origin
                    (at_a_p9)

                    ; #24438: origin
                    (not_at_a_p9)

                    ; #16586: <==negation-removal== 24438 (pos)
                    (not (at_a_p9))

                    ; #24438: <==negation-removal== 16586 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #71481: origin
                    (at_b_p1)

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #56427: origin
                    (at_b_p10)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #36296: origin
                    (at_b_p11)

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #56575: origin
                    (at_b_p12)

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #86160: origin
                    (at_b_p2)

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #68034: origin
                    (at_b_p3)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #59036: origin
                    (at_b_p4)

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #78274: origin
                    (at_b_p5)

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #37466: origin
                    (at_b_p6)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #19015: origin
                    (at_b_p7)

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #24875: origin
                    (at_b_p8)

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18874: origin
                    (not_at_b_p10)

                    ; #67201: origin
                    (at_b_p9)

                    ; #56427: <==negation-removal== 18874 (pos)
                    (not (at_b_p10))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1)
                           (not (leader_b)))
        :effect (and
                    ; #38139: origin
                    (not_at_b_p11)

                    ; #71481: origin
                    (at_b_p1)

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10)
                           (not (leader_b)))
        :effect (and
                    ; #38139: origin
                    (not_at_b_p11)

                    ; #56427: origin
                    (at_b_p10)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #36296: origin
                    (at_b_p11)

                    ; #38139: origin
                    (not_at_b_p11)

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38139: origin
                    (not_at_b_p11)

                    ; #56575: origin
                    (at_b_p12)

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38139: origin
                    (not_at_b_p11)

                    ; #86160: origin
                    (at_b_p2)

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #38139: origin
                    (not_at_b_p11)

                    ; #68034: origin
                    (at_b_p3)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4)
                           (not (leader_b)))
        :effect (and
                    ; #38139: origin
                    (not_at_b_p11)

                    ; #59036: origin
                    (at_b_p4)

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #38139: origin
                    (not_at_b_p11)

                    ; #78274: origin
                    (at_b_p5)

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #37466: origin
                    (at_b_p6)

                    ; #38139: origin
                    (not_at_b_p11)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #38139: origin
                    (not_at_b_p11)

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #24875: origin
                    (at_b_p8)

                    ; #38139: origin
                    (not_at_b_p11)

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #38139: origin
                    (not_at_b_p11)

                    ; #67201: origin
                    (at_b_p9)

                    ; #36296: <==negation-removal== 38139 (pos)
                    (not (at_b_p11))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #45843: origin
                    (not_at_b_p12)

                    ; #71481: origin
                    (at_b_p1)

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #45843: origin
                    (not_at_b_p12)

                    ; #56427: origin
                    (at_b_p10)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #36296: origin
                    (at_b_p11)

                    ; #45843: origin
                    (not_at_b_p12)

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #45843: origin
                    (not_at_b_p12)

                    ; #56575: origin
                    (at_b_p12)

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45843: origin
                    (not_at_b_p12)

                    ; #86160: origin
                    (at_b_p2)

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #45843: origin
                    (not_at_b_p12)

                    ; #68034: origin
                    (at_b_p3)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #45843: origin
                    (not_at_b_p12)

                    ; #59036: origin
                    (at_b_p4)

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #45843: origin
                    (not_at_b_p12)

                    ; #78274: origin
                    (at_b_p5)

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #37466: origin
                    (at_b_p6)

                    ; #45843: origin
                    (not_at_b_p12)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #45843: origin
                    (not_at_b_p12)

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #24875: origin
                    (at_b_p8)

                    ; #45843: origin
                    (not_at_b_p12)

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #45843: origin
                    (not_at_b_p12)

                    ; #67201: origin
                    (at_b_p9)

                    ; #56575: <==negation-removal== 45843 (pos)
                    (not (at_b_p12))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #71481: origin
                    (at_b_p1)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #56427: origin
                    (at_b_p10)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #36296: origin
                    (at_b_p11)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #56575: origin
                    (at_b_p12)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #83853: origin
                    (not_at_b_p1)

                    ; #86160: origin
                    (at_b_p2)

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #68034: origin
                    (at_b_p3)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #59036: origin
                    (at_b_p4)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #78274: origin
                    (at_b_p5)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #37466: origin
                    (at_b_p6)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24875: origin
                    (at_b_p8)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #67201: origin
                    (at_b_p9)

                    ; #83853: origin
                    (not_at_b_p1)

                    ; #71481: <==negation-removal== 83853 (pos)
                    (not (at_b_p1))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45987: origin
                    (not_at_b_p2)

                    ; #71481: origin
                    (at_b_p1)

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10)
                           (not (leader_b)))
        :effect (and
                    ; #45987: origin
                    (not_at_b_p2)

                    ; #56427: origin
                    (at_b_p10)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #36296: origin
                    (at_b_p11)

                    ; #45987: origin
                    (not_at_b_p2)

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45987: origin
                    (not_at_b_p2)

                    ; #56575: origin
                    (at_b_p12)

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45987: origin
                    (not_at_b_p2)

                    ; #86160: origin
                    (at_b_p2)

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45987: origin
                    (not_at_b_p2)

                    ; #68034: origin
                    (at_b_p3)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45987: origin
                    (not_at_b_p2)

                    ; #59036: origin
                    (at_b_p4)

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45987: origin
                    (not_at_b_p2)

                    ; #78274: origin
                    (at_b_p5)

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #37466: origin
                    (at_b_p6)

                    ; #45987: origin
                    (not_at_b_p2)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #45987: origin
                    (not_at_b_p2)

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #24875: origin
                    (at_b_p8)

                    ; #45987: origin
                    (not_at_b_p2)

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45987: origin
                    (not_at_b_p2)

                    ; #67201: origin
                    (at_b_p9)

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))

                    ; #86160: <==negation-removal== 45987 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #71481: origin
                    (at_b_p1)

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #56427: origin
                    (at_b_p10)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #36296: origin
                    (at_b_p11)

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #56575: origin
                    (at_b_p12)

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #86160: origin
                    (at_b_p2)

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #68034: origin
                    (at_b_p3)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #59036: origin
                    (at_b_p4)

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #78274: origin
                    (at_b_p5)

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #37466: origin
                    (at_b_p6)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #24213: origin
                    (not_at_b_p3)

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #24875: origin
                    (at_b_p8)

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #24213: origin
                    (not_at_b_p3)

                    ; #67201: origin
                    (at_b_p9)

                    ; #68034: <==negation-removal== 24213 (pos)
                    (not (at_b_p3))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #71481: origin
                    (at_b_p1)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #56427: origin
                    (at_b_p10)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #36296: origin
                    (at_b_p11)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #56575: origin
                    (at_b_p12)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #81785: origin
                    (not_at_b_p4)

                    ; #86160: origin
                    (at_b_p2)

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #68034: origin
                    (at_b_p3)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4)
                           (not (leader_b)))
        :effect (and
                    ; #59036: origin
                    (at_b_p4)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #78274: origin
                    (at_b_p5)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #37466: origin
                    (at_b_p6)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8)
                           (not (leader_b)))
        :effect (and
                    ; #24875: origin
                    (at_b_p8)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #67201: origin
                    (at_b_p9)

                    ; #81785: origin
                    (not_at_b_p4)

                    ; #59036: <==negation-removal== 81785 (pos)
                    (not (at_b_p4))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #69789: origin
                    (not_at_b_p5)

                    ; #71481: origin
                    (at_b_p1)

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #56427: origin
                    (at_b_p10)

                    ; #69789: origin
                    (not_at_b_p5)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11)
                           (not (leader_b)))
        :effect (and
                    ; #36296: origin
                    (at_b_p11)

                    ; #69789: origin
                    (not_at_b_p5)

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12)
                           (not (leader_b)))
        :effect (and
                    ; #56575: origin
                    (at_b_p12)

                    ; #69789: origin
                    (not_at_b_p5)

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #69789: origin
                    (not_at_b_p5)

                    ; #86160: origin
                    (at_b_p2)

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #68034: origin
                    (at_b_p3)

                    ; #69789: origin
                    (not_at_b_p5)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #59036: origin
                    (at_b_p4)

                    ; #69789: origin
                    (not_at_b_p5)

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #69789: origin
                    (not_at_b_p5)

                    ; #78274: origin
                    (at_b_p5)

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #37466: origin
                    (at_b_p6)

                    ; #69789: origin
                    (not_at_b_p5)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #69789: origin
                    (not_at_b_p5)

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #24875: origin
                    (at_b_p8)

                    ; #69789: origin
                    (not_at_b_p5)

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #67201: origin
                    (at_b_p9)

                    ; #69789: origin
                    (not_at_b_p5)

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))

                    ; #78274: <==negation-removal== 69789 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #71481: origin
                    (at_b_p1)

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #56427: origin
                    (at_b_p10)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #36296: origin
                    (at_b_p11)

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #56575: origin
                    (at_b_p12)

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #86160: origin
                    (at_b_p2)

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #68034: origin
                    (at_b_p3)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #59036: origin
                    (at_b_p4)

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #78274: origin
                    (at_b_p5)

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #37466: origin
                    (at_b_p6)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #19015: origin
                    (at_b_p7)

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #24875: origin
                    (at_b_p8)

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18416: origin
                    (not_at_b_p6)

                    ; #67201: origin
                    (at_b_p9)

                    ; #37466: <==negation-removal== 18416 (pos)
                    (not (at_b_p6))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #71481: origin
                    (at_b_p1)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #56427: origin
                    (at_b_p10)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #36296: origin
                    (at_b_p11)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #56575: origin
                    (at_b_p12)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #86160: origin
                    (at_b_p2)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #68034: origin
                    (at_b_p3)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #59036: origin
                    (at_b_p4)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #78274: origin
                    (at_b_p5)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #37466: origin
                    (at_b_p6)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #24875: origin
                    (at_b_p8)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9)
                           (not (leader_b)))
        :effect (and
                    ; #67201: origin
                    (at_b_p9)

                    ; #91314: origin
                    (not_at_b_p7)

                    ; #19015: <==negation-removal== 91314 (pos)
                    (not (at_b_p7))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #71481: origin
                    (at_b_p1)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #56427: origin
                    (at_b_p10)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #36296: origin
                    (at_b_p11)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #56575: origin
                    (at_b_p12)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2)
                           (not (leader_b)))
        :effect (and
                    ; #75194: origin
                    (not_at_b_p8)

                    ; #86160: origin
                    (at_b_p2)

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #68034: origin
                    (at_b_p3)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #59036: origin
                    (at_b_p4)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #75194: origin
                    (not_at_b_p8)

                    ; #78274: origin
                    (at_b_p5)

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #37466: origin
                    (at_b_p6)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #24875: origin
                    (at_b_p8)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #67201: origin
                    (at_b_p9)

                    ; #75194: origin
                    (not_at_b_p8)

                    ; #24875: <==negation-removal== 75194 (pos)
                    (not (at_b_p8))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #71481: origin
                    (at_b_p1)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))

                    ; #83853: <==negation-removal== 71481 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #56427: origin
                    (at_b_p10)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #18874: <==negation-removal== 56427 (pos)
                    (not (not_at_b_p10))

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36296: origin
                    (at_b_p11)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #38139: <==negation-removal== 36296 (pos)
                    (not (not_at_b_p11))

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #56575: origin
                    (at_b_p12)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #45843: <==negation-removal== 56575 (pos)
                    (not (not_at_b_p12))

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #76124: origin
                    (not_at_b_p9)

                    ; #86160: origin
                    (at_b_p2)

                    ; #45987: <==negation-removal== 86160 (pos)
                    (not (not_at_b_p2))

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #68034: origin
                    (at_b_p3)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #24213: <==negation-removal== 68034 (pos)
                    (not (not_at_b_p3))

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #59036: origin
                    (at_b_p4)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))

                    ; #81785: <==negation-removal== 59036 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #76124: origin
                    (not_at_b_p9)

                    ; #78274: origin
                    (at_b_p5)

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))

                    ; #69789: <==negation-removal== 78274 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37466: origin
                    (at_b_p6)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #18416: <==negation-removal== 37466 (pos)
                    (not (not_at_b_p6))

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #19015: origin
                    (at_b_p7)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))

                    ; #91314: <==negation-removal== 19015 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #24875: origin
                    (at_b_p8)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))

                    ; #75194: <==negation-removal== 24875 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #67201: origin
                    (at_b_p9)

                    ; #76124: origin
                    (not_at_b_p9)

                    ; #67201: <==negation-removal== 76124 (pos)
                    (not (at_b_p9))

                    ; #76124: <==negation-removal== 67201 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22475: origin
                    (at_c_p1)

                    ; #50933: origin
                    (not_at_c_p10)

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50933: origin
                    (not_at_c_p10)

                    ; #58422: origin
                    (at_c_p10)

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11)
                           (not (leader_c)))
        :effect (and
                    ; #50933: origin
                    (not_at_c_p10)

                    ; #51168: origin
                    (at_c_p11)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #17109: origin
                    (at_c_p12)

                    ; #50933: origin
                    (not_at_c_p10)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #50933: origin
                    (not_at_c_p10)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50933: origin
                    (not_at_c_p10)

                    ; #57142: origin
                    (at_c_p3)

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #50933: origin
                    (not_at_c_p10)

                    ; #74433: origin
                    (at_c_p4)

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50933: origin
                    (not_at_c_p10)

                    ; #75229: origin
                    (at_c_p5)

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50933: origin
                    (not_at_c_p10)

                    ; #77141: origin
                    (at_c_p6)

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50933: origin
                    (not_at_c_p10)

                    ; #56352: origin
                    (at_c_p7)

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41163: origin
                    (at_c_p8)

                    ; #50933: origin
                    (not_at_c_p10)

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #26386: origin
                    (at_c_p9)

                    ; #50933: origin
                    (not_at_c_p10)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #58422: <==negation-removal== 50933 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #22475: origin
                    (at_c_p1)

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #58422: origin
                    (at_c_p10)

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #51168: origin
                    (at_c_p11)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #17109: origin
                    (at_c_p12)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #57142: origin
                    (at_c_p3)

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #74433: origin
                    (at_c_p4)

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #75229: origin
                    (at_c_p5)

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #77141: origin
                    (at_c_p6)

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #56352: origin
                    (at_c_p7)

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #41163: origin
                    (at_c_p8)

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15485: origin
                    (not_at_c_p11)

                    ; #26386: origin
                    (at_c_p9)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #51168: <==negation-removal== 15485 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #22475: origin
                    (at_c_p1)

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #58422: origin
                    (at_c_p10)

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #51168: origin
                    (at_c_p11)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17109: origin
                    (at_c_p12)

                    ; #21353: origin
                    (not_at_c_p12)

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #57142: origin
                    (at_c_p3)

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #74433: origin
                    (at_c_p4)

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #75229: origin
                    (at_c_p5)

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #77141: origin
                    (at_c_p6)

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #56352: origin
                    (at_c_p7)

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #41163: origin
                    (at_c_p8)

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21353: origin
                    (not_at_c_p12)

                    ; #26386: origin
                    (at_c_p9)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #17109: <==negation-removal== 21353 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22475: origin
                    (at_c_p1)

                    ; #30442: origin
                    (not_at_c_p1)

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30442: origin
                    (not_at_c_p1)

                    ; #58422: origin
                    (at_c_p10)

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30442: origin
                    (not_at_c_p1)

                    ; #51168: origin
                    (at_c_p11)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17109: origin
                    (at_c_p12)

                    ; #30442: origin
                    (not_at_c_p1)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30442: origin
                    (not_at_c_p1)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30442: origin
                    (not_at_c_p1)

                    ; #57142: origin
                    (at_c_p3)

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30442: origin
                    (not_at_c_p1)

                    ; #74433: origin
                    (at_c_p4)

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30442: origin
                    (not_at_c_p1)

                    ; #75229: origin
                    (at_c_p5)

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30442: origin
                    (not_at_c_p1)

                    ; #77141: origin
                    (at_c_p6)

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30442: origin
                    (not_at_c_p1)

                    ; #56352: origin
                    (at_c_p7)

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30442: origin
                    (not_at_c_p1)

                    ; #41163: origin
                    (at_c_p8)

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #26386: origin
                    (at_c_p9)

                    ; #30442: origin
                    (not_at_c_p1)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #22475: <==negation-removal== 30442 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #22475: origin
                    (at_c_p1)

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #58422: origin
                    (at_c_p10)

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #51168: origin
                    (at_c_p11)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #17109: origin
                    (at_c_p12)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #57142: origin
                    (at_c_p3)

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #74433: origin
                    (at_c_p4)

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #75229: origin
                    (at_c_p5)

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #77141: origin
                    (at_c_p6)

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #56352: origin
                    (at_c_p7)

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #41163: origin
                    (at_c_p8)

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #17030: origin
                    (not_at_c_p2)

                    ; #26386: origin
                    (at_c_p9)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #75637: <==negation-removal== 17030 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22475: origin
                    (at_c_p1)

                    ; #47846: origin
                    (not_at_c_p3)

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #47846: origin
                    (not_at_c_p3)

                    ; #58422: origin
                    (at_c_p10)

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11)
                           (not (leader_c)))
        :effect (and
                    ; #47846: origin
                    (not_at_c_p3)

                    ; #51168: origin
                    (at_c_p11)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17109: origin
                    (at_c_p12)

                    ; #47846: origin
                    (not_at_c_p3)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #47846: origin
                    (not_at_c_p3)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #47846: origin
                    (not_at_c_p3)

                    ; #57142: origin
                    (at_c_p3)

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #47846: origin
                    (not_at_c_p3)

                    ; #74433: origin
                    (at_c_p4)

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #47846: origin
                    (not_at_c_p3)

                    ; #75229: origin
                    (at_c_p5)

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #47846: origin
                    (not_at_c_p3)

                    ; #77141: origin
                    (at_c_p6)

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #47846: origin
                    (not_at_c_p3)

                    ; #56352: origin
                    (at_c_p7)

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41163: origin
                    (at_c_p8)

                    ; #47846: origin
                    (not_at_c_p3)

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26386: origin
                    (at_c_p9)

                    ; #47846: origin
                    (not_at_c_p3)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #57142: <==negation-removal== 47846 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22475: origin
                    (at_c_p1)

                    ; #71076: origin
                    (not_at_c_p4)

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #58422: origin
                    (at_c_p10)

                    ; #71076: origin
                    (not_at_c_p4)

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #51168: origin
                    (at_c_p11)

                    ; #71076: origin
                    (not_at_c_p4)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17109: origin
                    (at_c_p12)

                    ; #71076: origin
                    (not_at_c_p4)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #71076: origin
                    (not_at_c_p4)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57142: origin
                    (at_c_p3)

                    ; #71076: origin
                    (not_at_c_p4)

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4)
                           (not (leader_c)))
        :effect (and
                    ; #71076: origin
                    (not_at_c_p4)

                    ; #74433: origin
                    (at_c_p4)

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #71076: origin
                    (not_at_c_p4)

                    ; #75229: origin
                    (at_c_p5)

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #71076: origin
                    (not_at_c_p4)

                    ; #77141: origin
                    (at_c_p6)

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #56352: origin
                    (at_c_p7)

                    ; #71076: origin
                    (not_at_c_p4)

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #41163: origin
                    (at_c_p8)

                    ; #71076: origin
                    (not_at_c_p4)

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26386: origin
                    (at_c_p9)

                    ; #71076: origin
                    (not_at_c_p4)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #74433: <==negation-removal== 71076 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22475: origin
                    (at_c_p1)

                    ; #43093: origin
                    (not_at_c_p5)

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #43093: origin
                    (not_at_c_p5)

                    ; #58422: origin
                    (at_c_p10)

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11)
                           (not (leader_c)))
        :effect (and
                    ; #43093: origin
                    (not_at_c_p5)

                    ; #51168: origin
                    (at_c_p11)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17109: origin
                    (at_c_p12)

                    ; #43093: origin
                    (not_at_c_p5)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #43093: origin
                    (not_at_c_p5)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #43093: origin
                    (not_at_c_p5)

                    ; #57142: origin
                    (at_c_p3)

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #43093: origin
                    (not_at_c_p5)

                    ; #74433: origin
                    (at_c_p4)

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #43093: origin
                    (not_at_c_p5)

                    ; #75229: origin
                    (at_c_p5)

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #43093: origin
                    (not_at_c_p5)

                    ; #77141: origin
                    (at_c_p6)

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #43093: origin
                    (not_at_c_p5)

                    ; #56352: origin
                    (at_c_p7)

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41163: origin
                    (at_c_p8)

                    ; #43093: origin
                    (not_at_c_p5)

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26386: origin
                    (at_c_p9)

                    ; #43093: origin
                    (not_at_c_p5)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #75229: <==negation-removal== 43093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #22475: origin
                    (at_c_p1)

                    ; #63576: origin
                    (not_at_c_p6)

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10)
                           (not (leader_c)))
        :effect (and
                    ; #58422: origin
                    (at_c_p10)

                    ; #63576: origin
                    (not_at_c_p6)

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #51168: origin
                    (at_c_p11)

                    ; #63576: origin
                    (not_at_c_p6)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #17109: origin
                    (at_c_p12)

                    ; #63576: origin
                    (not_at_c_p6)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #63576: origin
                    (not_at_c_p6)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #57142: origin
                    (at_c_p3)

                    ; #63576: origin
                    (not_at_c_p6)

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #63576: origin
                    (not_at_c_p6)

                    ; #74433: origin
                    (at_c_p4)

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #63576: origin
                    (not_at_c_p6)

                    ; #75229: origin
                    (at_c_p5)

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #63576: origin
                    (not_at_c_p6)

                    ; #77141: origin
                    (at_c_p6)

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #56352: origin
                    (at_c_p7)

                    ; #63576: origin
                    (not_at_c_p6)

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #41163: origin
                    (at_c_p8)

                    ; #63576: origin
                    (not_at_c_p6)

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26386: origin
                    (at_c_p9)

                    ; #63576: origin
                    (not_at_c_p6)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #77141: <==negation-removal== 63576 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #22475: origin
                    (at_c_p1)

                    ; #46676: origin
                    (not_at_c_p7)

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10)
                           (not (leader_c)))
        :effect (and
                    ; #46676: origin
                    (not_at_c_p7)

                    ; #58422: origin
                    (at_c_p10)

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #46676: origin
                    (not_at_c_p7)

                    ; #51168: origin
                    (at_c_p11)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17109: origin
                    (at_c_p12)

                    ; #46676: origin
                    (not_at_c_p7)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #46676: origin
                    (not_at_c_p7)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #46676: origin
                    (not_at_c_p7)

                    ; #57142: origin
                    (at_c_p3)

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4)
                           (not (leader_c)))
        :effect (and
                    ; #46676: origin
                    (not_at_c_p7)

                    ; #74433: origin
                    (at_c_p4)

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #46676: origin
                    (not_at_c_p7)

                    ; #75229: origin
                    (at_c_p5)

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #46676: origin
                    (not_at_c_p7)

                    ; #77141: origin
                    (at_c_p6)

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #46676: origin
                    (not_at_c_p7)

                    ; #56352: origin
                    (at_c_p7)

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #41163: origin
                    (at_c_p8)

                    ; #46676: origin
                    (not_at_c_p7)

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26386: origin
                    (at_c_p9)

                    ; #46676: origin
                    (not_at_c_p7)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #56352: <==negation-removal== 46676 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22475: origin
                    (at_c_p1)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #58422: origin
                    (at_c_p10)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #51168: origin
                    (at_c_p11)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17109: origin
                    (at_c_p12)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #75637: origin
                    (at_c_p2)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #57142: origin
                    (at_c_p3)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #74433: origin
                    (at_c_p4)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #75229: origin
                    (at_c_p5)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #77141: origin
                    (at_c_p6)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #56352: origin
                    (at_c_p7)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41163: origin
                    (at_c_p8)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26386: origin
                    (at_c_p9)

                    ; #77874: origin
                    (not_at_c_p8)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #41163: <==negation-removal== 77874 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #22475: origin
                    (at_c_p1)

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))

                    ; #30442: <==negation-removal== 22475 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #58422: origin
                    (at_c_p10)

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))

                    ; #50933: <==negation-removal== 58422 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #51168: origin
                    (at_c_p11)

                    ; #15485: <==negation-removal== 51168 (pos)
                    (not (not_at_c_p11))

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #17109: origin
                    (at_c_p12)

                    ; #21353: <==negation-removal== 17109 (pos)
                    (not (not_at_c_p12))

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #75637: origin
                    (at_c_p2)

                    ; #17030: <==negation-removal== 75637 (pos)
                    (not (not_at_c_p2))

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #57142: origin
                    (at_c_p3)

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))

                    ; #47846: <==negation-removal== 57142 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #74433: origin
                    (at_c_p4)

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))

                    ; #71076: <==negation-removal== 74433 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #75229: origin
                    (at_c_p5)

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))

                    ; #43093: <==negation-removal== 75229 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #77141: origin
                    (at_c_p6)

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))

                    ; #63576: <==negation-removal== 77141 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #56352: origin
                    (at_c_p7)

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))

                    ; #46676: <==negation-removal== 56352 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #41163: origin
                    (at_c_p8)

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))

                    ; #77874: <==negation-removal== 41163 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15327: origin
                    (not_at_c_p9)

                    ; #26386: origin
                    (at_c_p9)

                    ; #15327: <==negation-removal== 26386 (pos)
                    (not (not_at_c_p9))

                    ; #26386: <==negation-removal== 15327 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13030: <==commonly_known== 82146 (pos)
                    (Bb_checked_p10)

                    ; #15444: <==closure== 41482 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #17780: <==commonly_known== 80495 (neg)
                    (Pa_checked_p10)

                    ; #33658: <==closure== 60514 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #41482: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #60291: <==commonly_known== 80495 (neg)
                    (Pc_checked_p10)

                    ; #60514: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #65472: <==commonly_known== 80495 (neg)
                    (Pb_checked_p10)

                    ; #69379: <==commonly_known== 82146 (pos)
                    (Bc_checked_p10)

                    ; #82146: origin
                    (checked_p10)

                    ; #87022: <==commonly_known== 82146 (pos)
                    (Ba_checked_p10)

                    ; #11505: <==negation-removal== 41482 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #18322: <==uncertain_firing== 33658 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #26945: <==negation-removal== 65472 (pos)
                    (not (Bb_not_checked_p10))

                    ; #27703: <==uncertain_firing== 41482 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #43500: <==negation-removal== 60514 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #48291: <==negation-removal== 15444 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #49001: <==negation-removal== 69379 (pos)
                    (not (Pc_not_checked_p10))

                    ; #50864: <==negation-removal== 33658 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #56380: <==negation-removal== 60291 (pos)
                    (not (Bc_not_checked_p10))

                    ; #64026: <==negation-removal== 87022 (pos)
                    (not (Pa_not_checked_p10))

                    ; #67583: <==uncertain_firing== 15444 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #80495: <==negation-removal== 82146 (pos)
                    (not (not_checked_p10))

                    ; #82881: <==negation-removal== 17780 (pos)
                    (not (Ba_not_checked_p10))

                    ; #90108: <==negation-removal== 13030 (pos)
                    (not (Pb_not_checked_p10))

                    ; #91664: <==uncertain_firing== 60514 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #21099: <==closure== 85353 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #35029: <==commonly_known== 63147 (pos)
                    (Bc_checked_p11)

                    ; #36430: <==commonly_known== 27399 (neg)
                    (Pc_checked_p11)

                    ; #44170: <==commonly_known== 63147 (pos)
                    (Bb_checked_p11)

                    ; #47067: <==commonly_known== 63147 (pos)
                    (Ba_checked_p11)

                    ; #50941: <==commonly_known== 27399 (neg)
                    (Pa_checked_p11)

                    ; #63147: origin
                    (checked_p11)

                    ; #70253: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #81585: <==commonly_known== 27399 (neg)
                    (Pb_checked_p11)

                    ; #85353: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #87376: <==closure== 70253 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #25953: <==negation-removal== 81585 (pos)
                    (not (Bb_not_checked_p11))

                    ; #27399: <==negation-removal== 63147 (pos)
                    (not (not_checked_p11))

                    ; #27552: <==uncertain_firing== 21099 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #45313: <==negation-removal== 36430 (pos)
                    (not (Bc_not_checked_p11))

                    ; #59789: <==uncertain_firing== 70253 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #62212: <==negation-removal== 87376 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #65651: <==negation-removal== 85353 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #66846: <==negation-removal== 35029 (pos)
                    (not (Pc_not_checked_p11))

                    ; #67037: <==negation-removal== 70253 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #69876: <==uncertain_firing== 85353 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #70333: <==negation-removal== 44170 (pos)
                    (not (Pb_not_checked_p11))

                    ; #77380: <==negation-removal== 21099 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #87045: <==negation-removal== 47067 (pos)
                    (not (Pa_not_checked_p11))

                    ; #87125: <==negation-removal== 50941 (pos)
                    (not (Ba_not_checked_p11))

                    ; #92065: <==uncertain_firing== 87376 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13370: <==commonly_known== 78090 (pos)
                    (Ba_checked_p12)

                    ; #26236: <==closure== 37668 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #27555: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #34445: <==closure== 27555 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #37668: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #41892: <==commonly_known== 78090 (pos)
                    (Bb_checked_p12)

                    ; #44347: <==commonly_known== 58037 (neg)
                    (Pa_checked_p12)

                    ; #49867: <==commonly_known== 78090 (pos)
                    (Bc_checked_p12)

                    ; #70885: <==commonly_known== 58037 (neg)
                    (Pb_checked_p12)

                    ; #71062: <==commonly_known== 58037 (neg)
                    (Pc_checked_p12)

                    ; #78090: origin
                    (checked_p12)

                    ; #13421: <==negation-removal== 34445 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #14766: <==uncertain_firing== 27555 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #18812: <==uncertain_firing== 37668 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #28355: <==negation-removal== 70885 (pos)
                    (not (Bb_not_checked_p12))

                    ; #29073: <==negation-removal== 71062 (pos)
                    (not (Bc_not_checked_p12))

                    ; #37641: <==negation-removal== 44347 (pos)
                    (not (Ba_not_checked_p12))

                    ; #39282: <==negation-removal== 37668 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #44089: <==negation-removal== 26236 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #50495: <==uncertain_firing== 26236 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #56893: <==negation-removal== 13370 (pos)
                    (not (Pa_not_checked_p12))

                    ; #58037: <==negation-removal== 78090 (pos)
                    (not (not_checked_p12))

                    ; #67870: <==negation-removal== 41892 (pos)
                    (not (Pb_not_checked_p12))

                    ; #73283: <==negation-removal== 27555 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #76168: <==negation-removal== 49867 (pos)
                    (not (Pc_not_checked_p12))

                    ; #90861: <==uncertain_firing== 34445 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #14520: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #15317: <==commonly_known== 67079 (neg)
                    (Pc_checked_p1)

                    ; #20417: <==closure== 14520 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #29178: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #34331: <==commonly_known== 67079 (neg)
                    (Pa_checked_p1)

                    ; #37721: <==commonly_known== 49911 (pos)
                    (Ba_checked_p1)

                    ; #43454: <==commonly_known== 49911 (pos)
                    (Bc_checked_p1)

                    ; #44927: <==commonly_known== 67079 (neg)
                    (Pb_checked_p1)

                    ; #47474: <==commonly_known== 49911 (pos)
                    (Bb_checked_p1)

                    ; #49911: origin
                    (checked_p1)

                    ; #74307: <==closure== 29178 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #12563: <==negation-removal== 44927 (pos)
                    (not (Bb_not_checked_p1))

                    ; #12848: <==uncertain_firing== 29178 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #17342: <==negation-removal== 14520 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #23789: <==uncertain_firing== 74307 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #31854: <==uncertain_firing== 14520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #35996: <==negation-removal== 29178 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #53436: <==negation-removal== 43454 (pos)
                    (not (Pc_not_checked_p1))

                    ; #59146: <==negation-removal== 74307 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #67079: <==negation-removal== 49911 (pos)
                    (not (not_checked_p1))

                    ; #72126: <==negation-removal== 47474 (pos)
                    (not (Pb_not_checked_p1))

                    ; #74481: <==negation-removal== 34331 (pos)
                    (not (Ba_not_checked_p1))

                    ; #75648: <==negation-removal== 15317 (pos)
                    (not (Bc_not_checked_p1))

                    ; #80082: <==negation-removal== 37721 (pos)
                    (not (Pa_not_checked_p1))

                    ; #90841: <==uncertain_firing== 20417 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #91931: <==negation-removal== 20417 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #17264: <==commonly_known== 13670 (neg)
                    (Pa_checked_p2)

                    ; #17990: <==commonly_known== 50676 (pos)
                    (Ba_checked_p2)

                    ; #27302: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #30134: <==commonly_known== 13670 (neg)
                    (Pb_checked_p2)

                    ; #31275: <==closure== 53353 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #50676: origin
                    (checked_p2)

                    ; #51725: <==commonly_known== 13670 (neg)
                    (Pc_checked_p2)

                    ; #53353: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #75527: <==commonly_known== 50676 (pos)
                    (Bb_checked_p2)

                    ; #85112: <==commonly_known== 50676 (pos)
                    (Bc_checked_p2)

                    ; #98385: <==closure== 27302 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #13670: <==negation-removal== 50676 (pos)
                    (not (not_checked_p2))

                    ; #19241: <==uncertain_firing== 31275 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #21749: <==negation-removal== 85112 (pos)
                    (not (Pc_not_checked_p2))

                    ; #22199: <==negation-removal== 31275 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #26056: <==uncertain_firing== 53353 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #36340: <==negation-removal== 98385 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #39324: <==negation-removal== 53353 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #39821: <==negation-removal== 30134 (pos)
                    (not (Bb_not_checked_p2))

                    ; #52575: <==uncertain_firing== 27302 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #68146: <==negation-removal== 75527 (pos)
                    (not (Pb_not_checked_p2))

                    ; #70751: <==negation-removal== 27302 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71087: <==uncertain_firing== 98385 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #71475: <==negation-removal== 17264 (pos)
                    (not (Ba_not_checked_p2))

                    ; #73826: <==negation-removal== 17990 (pos)
                    (not (Pa_not_checked_p2))

                    ; #87926: <==negation-removal== 51725 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #16175: <==commonly_known== 72834 (neg)
                    (Pa_checked_p3)

                    ; #33562: <==commonly_known== 72834 (neg)
                    (Pb_checked_p3)

                    ; #36822: <==closure== 72708 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #37277: <==commonly_known== 91317 (pos)
                    (Bc_checked_p3)

                    ; #52617: <==commonly_known== 72834 (neg)
                    (Pc_checked_p3)

                    ; #72324: <==closure== 87749 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #72708: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #73863: <==commonly_known== 91317 (pos)
                    (Bb_checked_p3)

                    ; #84088: <==commonly_known== 91317 (pos)
                    (Ba_checked_p3)

                    ; #87749: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #91317: origin
                    (checked_p3)

                    ; #15966: <==negation-removal== 37277 (pos)
                    (not (Pc_not_checked_p3))

                    ; #26505: <==negation-removal== 73863 (pos)
                    (not (Pb_not_checked_p3))

                    ; #29203: <==negation-removal== 72324 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #30243: <==negation-removal== 33562 (pos)
                    (not (Bb_not_checked_p3))

                    ; #31206: <==uncertain_firing== 87749 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #34747: <==negation-removal== 87749 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #34754: <==negation-removal== 72708 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37628: <==negation-removal== 52617 (pos)
                    (not (Bc_not_checked_p3))

                    ; #38688: <==negation-removal== 36822 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #49042: <==negation-removal== 84088 (pos)
                    (not (Pa_not_checked_p3))

                    ; #51937: <==uncertain_firing== 72708 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #55318: <==uncertain_firing== 36822 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #72834: <==negation-removal== 91317 (pos)
                    (not (not_checked_p3))

                    ; #76954: <==negation-removal== 16175 (pos)
                    (not (Ba_not_checked_p3))

                    ; #81785: <==uncertain_firing== 72324 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #14493: <==commonly_known== 58026 (neg)
                    (Pb_checked_p4)

                    ; #31470: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #33135: <==commonly_known== 58026 (neg)
                    (Pc_checked_p4)

                    ; #34545: <==closure== 91524 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #45262: <==commonly_known== 58026 (neg)
                    (Pa_checked_p4)

                    ; #55842: <==closure== 31470 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #61865: <==commonly_known== 96005 (pos)
                    (Bc_checked_p4)

                    ; #79914: <==commonly_known== 96005 (pos)
                    (Bb_checked_p4)

                    ; #79924: <==commonly_known== 96005 (pos)
                    (Ba_checked_p4)

                    ; #91524: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #96005: origin
                    (checked_p4)

                    ; #12599: <==uncertain_firing== 55842 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #13885: <==negation-removal== 91524 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #26389: <==uncertain_firing== 31470 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #30944: <==uncertain_firing== 34545 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #34679: <==negation-removal== 34545 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41974: <==negation-removal== 55842 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #44859: <==negation-removal== 79924 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49462: <==negation-removal== 45262 (pos)
                    (not (Ba_not_checked_p4))

                    ; #58026: <==negation-removal== 96005 (pos)
                    (not (not_checked_p4))

                    ; #67186: <==negation-removal== 14493 (pos)
                    (not (Bb_not_checked_p4))

                    ; #75127: <==negation-removal== 79914 (pos)
                    (not (Pb_not_checked_p4))

                    ; #75226: <==negation-removal== 61865 (pos)
                    (not (Pc_not_checked_p4))

                    ; #78215: <==negation-removal== 33135 (pos)
                    (not (Bc_not_checked_p4))

                    ; #85625: <==uncertain_firing== 91524 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #88957: <==negation-removal== 31470 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #14535: <==commonly_known== 15550 (pos)
                    (Bc_checked_p5)

                    ; #15550: origin
                    (checked_p5)

                    ; #16390: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #19898: <==commonly_known== 15550 (pos)
                    (Bb_checked_p5)

                    ; #24712: <==commonly_known== 83075 (neg)
                    (Pa_checked_p5)

                    ; #38854: <==commonly_known== 83075 (neg)
                    (Pb_checked_p5)

                    ; #57774: <==commonly_known== 83075 (neg)
                    (Pc_checked_p5)

                    ; #61810: <==closure== 16390 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #67142: <==closure== 84352 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #84352: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #91907: <==commonly_known== 15550 (pos)
                    (Ba_checked_p5)

                    ; #10825: <==negation-removal== 57774 (pos)
                    (not (Bc_not_checked_p5))

                    ; #21430: <==uncertain_firing== 67142 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #34497: <==negation-removal== 19898 (pos)
                    (not (Pb_not_checked_p5))

                    ; #35922: <==uncertain_firing== 61810 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #45997: <==negation-removal== 16390 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #47575: <==negation-removal== 61810 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #56731: <==negation-removal== 67142 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #56763: <==negation-removal== 14535 (pos)
                    (not (Pc_not_checked_p5))

                    ; #57895: <==negation-removal== 24712 (pos)
                    (not (Ba_not_checked_p5))

                    ; #59251: <==negation-removal== 38854 (pos)
                    (not (Bb_not_checked_p5))

                    ; #63186: <==uncertain_firing== 16390 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #70982: <==uncertain_firing== 84352 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #73493: <==negation-removal== 91907 (pos)
                    (not (Pa_not_checked_p5))

                    ; #83075: <==negation-removal== 15550 (pos)
                    (not (not_checked_p5))

                    ; #91988: <==negation-removal== 84352 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11307: <==commonly_known== 86204 (neg)
                    (Pc_checked_p6)

                    ; #17697: <==commonly_known== 86204 (neg)
                    (Pa_checked_p6)

                    ; #20873: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #21449: <==commonly_known== 86204 (neg)
                    (Pb_checked_p6)

                    ; #27494: <==closure== 20873 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #48768: <==commonly_known== 91007 (pos)
                    (Bb_checked_p6)

                    ; #60583: <==commonly_known== 91007 (pos)
                    (Ba_checked_p6)

                    ; #66582: <==commonly_known== 91007 (pos)
                    (Bc_checked_p6)

                    ; #80278: <==closure== 81431 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #81431: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #91007: origin
                    (checked_p6)

                    ; #13497: <==uncertain_firing== 81431 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #15604: <==negation-removal== 48768 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34696: <==uncertain_firing== 20873 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #37137: <==negation-removal== 20873 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #38807: <==negation-removal== 60583 (pos)
                    (not (Pa_not_checked_p6))

                    ; #39780: <==negation-removal== 80278 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #39911: <==negation-removal== 11307 (pos)
                    (not (Bc_not_checked_p6))

                    ; #41258: <==negation-removal== 17697 (pos)
                    (not (Ba_not_checked_p6))

                    ; #48564: <==negation-removal== 21449 (pos)
                    (not (Bb_not_checked_p6))

                    ; #52025: <==negation-removal== 81431 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #54668: <==negation-removal== 66582 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60681: <==negation-removal== 27494 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #86043: <==uncertain_firing== 27494 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #86204: <==negation-removal== 91007 (pos)
                    (not (not_checked_p6))

                    ; #92008: <==uncertain_firing== 80278 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12911: <==closure== 20352 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #20352: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #22122: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #22801: <==commonly_known== 91964 (neg)
                    (Pb_checked_p7)

                    ; #24711: <==commonly_known== 72396 (pos)
                    (Ba_checked_p7)

                    ; #35353: <==commonly_known== 91964 (neg)
                    (Pc_checked_p7)

                    ; #44411: <==commonly_known== 72396 (pos)
                    (Bb_checked_p7)

                    ; #54016: <==commonly_known== 72396 (pos)
                    (Bc_checked_p7)

                    ; #55290: <==commonly_known== 91964 (neg)
                    (Pa_checked_p7)

                    ; #70743: <==closure== 22122 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #72396: origin
                    (checked_p7)

                    ; #15493: <==uncertain_firing== 12911 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #15853: <==negation-removal== 55290 (pos)
                    (not (Ba_not_checked_p7))

                    ; #31487: <==negation-removal== 35353 (pos)
                    (not (Bc_not_checked_p7))

                    ; #37262: <==uncertain_firing== 20352 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49155: <==uncertain_firing== 22122 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #53659: <==uncertain_firing== 70743 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #57215: <==negation-removal== 70743 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #60013: <==negation-removal== 22801 (pos)
                    (not (Bb_not_checked_p7))

                    ; #63473: <==negation-removal== 12911 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #71669: <==negation-removal== 54016 (pos)
                    (not (Pc_not_checked_p7))

                    ; #71954: <==negation-removal== 44411 (pos)
                    (not (Pb_not_checked_p7))

                    ; #75198: <==negation-removal== 20352 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #77460: <==negation-removal== 24711 (pos)
                    (not (Pa_not_checked_p7))

                    ; #91022: <==negation-removal== 22122 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #91964: <==negation-removal== 72396 (pos)
                    (not (not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #15307: <==closure== 38589 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #23393: <==commonly_known== 89800 (pos)
                    (Ba_checked_p8)

                    ; #27864: <==commonly_known== 61388 (neg)
                    (Pa_checked_p8)

                    ; #29513: <==closure== 90947 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #38589: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #40395: <==commonly_known== 61388 (neg)
                    (Pb_checked_p8)

                    ; #56716: <==commonly_known== 89800 (pos)
                    (Bb_checked_p8)

                    ; #82179: <==commonly_known== 61388 (neg)
                    (Pc_checked_p8)

                    ; #84586: <==commonly_known== 89800 (pos)
                    (Bc_checked_p8)

                    ; #89800: origin
                    (checked_p8)

                    ; #90947: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #13435: <==negation-removal== 40395 (pos)
                    (not (Bb_not_checked_p8))

                    ; #14684: <==negation-removal== 23393 (pos)
                    (not (Pa_not_checked_p8))

                    ; #15203: <==negation-removal== 15307 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #22726: <==negation-removal== 90947 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #24057: <==uncertain_firing== 38589 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #24896: <==negation-removal== 56716 (pos)
                    (not (Pb_not_checked_p8))

                    ; #28427: <==uncertain_firing== 90947 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #44505: <==uncertain_firing== 15307 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #61388: <==negation-removal== 89800 (pos)
                    (not (not_checked_p8))

                    ; #66973: <==negation-removal== 29513 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #70379: <==negation-removal== 82179 (pos)
                    (not (Bc_not_checked_p8))

                    ; #70910: <==uncertain_firing== 29513 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #73561: <==negation-removal== 84586 (pos)
                    (not (Pc_not_checked_p8))

                    ; #85964: <==negation-removal== 38589 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #88512: <==negation-removal== 27864 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #14267: <==closure== 59272 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #26187: <==closure== 33556 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #33556: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #42278: origin
                    (checked_p9)

                    ; #47411: <==commonly_known== 42278 (pos)
                    (Bc_checked_p9)

                    ; #48929: <==commonly_known== 59747 (neg)
                    (Pb_checked_p9)

                    ; #54199: <==commonly_known== 59747 (neg)
                    (Pc_checked_p9)

                    ; #59272: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #61068: <==commonly_known== 59747 (neg)
                    (Pa_checked_p9)

                    ; #64190: <==commonly_known== 42278 (pos)
                    (Ba_checked_p9)

                    ; #70588: <==commonly_known== 42278 (pos)
                    (Bb_checked_p9)

                    ; #10276: <==negation-removal== 14267 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #13897: <==uncertain_firing== 33556 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #21943: <==uncertain_firing== 26187 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #27604: <==negation-removal== 64190 (pos)
                    (not (Pa_not_checked_p9))

                    ; #42860: <==negation-removal== 33556 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #52119: <==uncertain_firing== 14267 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #54942: <==negation-removal== 59272 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #59747: <==negation-removal== 42278 (pos)
                    (not (not_checked_p9))

                    ; #66932: <==negation-removal== 54199 (pos)
                    (not (Bc_not_checked_p9))

                    ; #73553: <==negation-removal== 26187 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #74351: <==negation-removal== 61068 (pos)
                    (not (Ba_not_checked_p9))

                    ; #77315: <==uncertain_firing== 59272 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #83048: <==negation-removal== 70588 (pos)
                    (not (Pb_not_checked_p9))

                    ; #86802: <==negation-removal== 48929 (pos)
                    (not (Bb_not_checked_p9))

                    ; #90105: <==negation-removal== 47411 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #12763: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #13030: <==commonly_known== 82146 (pos)
                    (Bb_checked_p10)

                    ; #17780: <==commonly_known== 80495 (neg)
                    (Pa_checked_p10)

                    ; #24196: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #49354: <==closure== 12763 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #60291: <==commonly_known== 80495 (neg)
                    (Pc_checked_p10)

                    ; #65472: <==commonly_known== 80495 (neg)
                    (Pb_checked_p10)

                    ; #69379: <==commonly_known== 82146 (pos)
                    (Bc_checked_p10)

                    ; #82146: origin
                    (checked_p10)

                    ; #85678: <==closure== 24196 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #87022: <==commonly_known== 82146 (pos)
                    (Ba_checked_p10)

                    ; #14180: <==negation-removal== 85678 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #17815: <==negation-removal== 24196 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #19745: <==uncertain_firing== 85678 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #26945: <==negation-removal== 65472 (pos)
                    (not (Bb_not_checked_p10))

                    ; #31841: <==uncertain_firing== 12763 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #33142: <==negation-removal== 49354 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #49001: <==negation-removal== 69379 (pos)
                    (not (Pc_not_checked_p10))

                    ; #56380: <==negation-removal== 60291 (pos)
                    (not (Bc_not_checked_p10))

                    ; #63696: <==negation-removal== 12763 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #64026: <==negation-removal== 87022 (pos)
                    (not (Pa_not_checked_p10))

                    ; #70977: <==uncertain_firing== 24196 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #80495: <==negation-removal== 82146 (pos)
                    (not (not_checked_p10))

                    ; #82881: <==negation-removal== 17780 (pos)
                    (not (Ba_not_checked_p10))

                    ; #88462: <==uncertain_firing== 49354 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #90108: <==negation-removal== 13030 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #35029: <==commonly_known== 63147 (pos)
                    (Bc_checked_p11)

                    ; #36430: <==commonly_known== 27399 (neg)
                    (Pc_checked_p11)

                    ; #39084: <==closure== 40752 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #40752: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #44170: <==commonly_known== 63147 (pos)
                    (Bb_checked_p11)

                    ; #47067: <==commonly_known== 63147 (pos)
                    (Ba_checked_p11)

                    ; #48554: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #50941: <==commonly_known== 27399 (neg)
                    (Pa_checked_p11)

                    ; #63147: origin
                    (checked_p11)

                    ; #74678: <==closure== 48554 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #81585: <==commonly_known== 27399 (neg)
                    (Pb_checked_p11)

                    ; #25953: <==negation-removal== 81585 (pos)
                    (not (Bb_not_checked_p11))

                    ; #27399: <==negation-removal== 63147 (pos)
                    (not (not_checked_p11))

                    ; #31250: <==negation-removal== 40752 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #45313: <==negation-removal== 36430 (pos)
                    (not (Bc_not_checked_p11))

                    ; #51520: <==uncertain_firing== 39084 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #53339: <==uncertain_firing== 74678 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #54206: <==negation-removal== 74678 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #57298: <==negation-removal== 48554 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #66846: <==negation-removal== 35029 (pos)
                    (not (Pc_not_checked_p11))

                    ; #70333: <==negation-removal== 44170 (pos)
                    (not (Pb_not_checked_p11))

                    ; #73928: <==uncertain_firing== 40752 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #75077: <==negation-removal== 39084 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #87045: <==negation-removal== 47067 (pos)
                    (not (Pa_not_checked_p11))

                    ; #87125: <==negation-removal== 50941 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88195: <==uncertain_firing== 48554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #13370: <==commonly_known== 78090 (pos)
                    (Ba_checked_p12)

                    ; #27019: <==closure== 99930 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #41892: <==commonly_known== 78090 (pos)
                    (Bb_checked_p12)

                    ; #44347: <==commonly_known== 58037 (neg)
                    (Pa_checked_p12)

                    ; #49867: <==commonly_known== 78090 (pos)
                    (Bc_checked_p12)

                    ; #70086: <==closure== 75796 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #70885: <==commonly_known== 58037 (neg)
                    (Pb_checked_p12)

                    ; #71062: <==commonly_known== 58037 (neg)
                    (Pc_checked_p12)

                    ; #75796: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #78090: origin
                    (checked_p12)

                    ; #99930: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #12963: <==uncertain_firing== 99930 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #19051: <==uncertain_firing== 27019 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #28355: <==negation-removal== 70885 (pos)
                    (not (Bb_not_checked_p12))

                    ; #29073: <==negation-removal== 71062 (pos)
                    (not (Bc_not_checked_p12))

                    ; #37641: <==negation-removal== 44347 (pos)
                    (not (Ba_not_checked_p12))

                    ; #46620: <==negation-removal== 75796 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #56893: <==negation-removal== 13370 (pos)
                    (not (Pa_not_checked_p12))

                    ; #58037: <==negation-removal== 78090 (pos)
                    (not (not_checked_p12))

                    ; #65597: <==uncertain_firing== 75796 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #67716: <==negation-removal== 99930 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #67870: <==negation-removal== 41892 (pos)
                    (not (Pb_not_checked_p12))

                    ; #70214: <==uncertain_firing== 70086 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #70689: <==negation-removal== 27019 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #76168: <==negation-removal== 49867 (pos)
                    (not (Pc_not_checked_p12))

                    ; #80136: <==negation-removal== 70086 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #15317: <==commonly_known== 67079 (neg)
                    (Pc_checked_p1)

                    ; #16024: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #19321: <==closure== 86951 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #34331: <==commonly_known== 67079 (neg)
                    (Pa_checked_p1)

                    ; #37721: <==commonly_known== 49911 (pos)
                    (Ba_checked_p1)

                    ; #42993: <==closure== 16024 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #43454: <==commonly_known== 49911 (pos)
                    (Bc_checked_p1)

                    ; #44927: <==commonly_known== 67079 (neg)
                    (Pb_checked_p1)

                    ; #47474: <==commonly_known== 49911 (pos)
                    (Bb_checked_p1)

                    ; #49911: origin
                    (checked_p1)

                    ; #86951: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #12563: <==negation-removal== 44927 (pos)
                    (not (Bb_not_checked_p1))

                    ; #23668: <==uncertain_firing== 16024 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #28299: <==uncertain_firing== 42993 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #31688: <==negation-removal== 86951 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #37563: <==uncertain_firing== 86951 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #37969: <==negation-removal== 42993 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #42751: <==negation-removal== 19321 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #53436: <==negation-removal== 43454 (pos)
                    (not (Pc_not_checked_p1))

                    ; #55255: <==negation-removal== 16024 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #67079: <==negation-removal== 49911 (pos)
                    (not (not_checked_p1))

                    ; #68682: <==uncertain_firing== 19321 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #72126: <==negation-removal== 47474 (pos)
                    (not (Pb_not_checked_p1))

                    ; #74481: <==negation-removal== 34331 (pos)
                    (not (Ba_not_checked_p1))

                    ; #75648: <==negation-removal== 15317 (pos)
                    (not (Bc_not_checked_p1))

                    ; #80082: <==negation-removal== 37721 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #17264: <==commonly_known== 13670 (neg)
                    (Pa_checked_p2)

                    ; #17990: <==commonly_known== 50676 (pos)
                    (Ba_checked_p2)

                    ; #23410: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #24908: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #30134: <==commonly_known== 13670 (neg)
                    (Pb_checked_p2)

                    ; #50676: origin
                    (checked_p2)

                    ; #51725: <==commonly_known== 13670 (neg)
                    (Pc_checked_p2)

                    ; #53594: <==closure== 24908 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #58944: <==closure== 23410 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #75527: <==commonly_known== 50676 (pos)
                    (Bb_checked_p2)

                    ; #85112: <==commonly_known== 50676 (pos)
                    (Bc_checked_p2)

                    ; #11378: <==negation-removal== 23410 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #13670: <==negation-removal== 50676 (pos)
                    (not (not_checked_p2))

                    ; #21749: <==negation-removal== 85112 (pos)
                    (not (Pc_not_checked_p2))

                    ; #39821: <==negation-removal== 30134 (pos)
                    (not (Bb_not_checked_p2))

                    ; #51714: <==uncertain_firing== 58944 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #55598: <==uncertain_firing== 23410 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #58947: <==uncertain_firing== 53594 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #66451: <==uncertain_firing== 24908 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #68146: <==negation-removal== 75527 (pos)
                    (not (Pb_not_checked_p2))

                    ; #71475: <==negation-removal== 17264 (pos)
                    (not (Ba_not_checked_p2))

                    ; #73826: <==negation-removal== 17990 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82323: <==negation-removal== 24908 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85150: <==negation-removal== 58944 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #85754: <==negation-removal== 53594 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #87926: <==negation-removal== 51725 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #16175: <==commonly_known== 72834 (neg)
                    (Pa_checked_p3)

                    ; #33562: <==commonly_known== 72834 (neg)
                    (Pb_checked_p3)

                    ; #37277: <==commonly_known== 91317 (pos)
                    (Bc_checked_p3)

                    ; #46716: <==closure== 91144 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #52617: <==commonly_known== 72834 (neg)
                    (Pc_checked_p3)

                    ; #55393: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #73863: <==commonly_known== 91317 (pos)
                    (Bb_checked_p3)

                    ; #84088: <==commonly_known== 91317 (pos)
                    (Ba_checked_p3)

                    ; #86562: <==closure== 55393 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #91144: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #91317: origin
                    (checked_p3)

                    ; #11438: <==negation-removal== 55393 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #15966: <==negation-removal== 37277 (pos)
                    (not (Pc_not_checked_p3))

                    ; #26505: <==negation-removal== 73863 (pos)
                    (not (Pb_not_checked_p3))

                    ; #29846: <==uncertain_firing== 46716 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #30243: <==negation-removal== 33562 (pos)
                    (not (Bb_not_checked_p3))

                    ; #34516: <==uncertain_firing== 55393 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #34623: <==uncertain_firing== 91144 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #37628: <==negation-removal== 52617 (pos)
                    (not (Bc_not_checked_p3))

                    ; #45413: <==negation-removal== 91144 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #49042: <==negation-removal== 84088 (pos)
                    (not (Pa_not_checked_p3))

                    ; #60272: <==negation-removal== 86562 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #72834: <==negation-removal== 91317 (pos)
                    (not (not_checked_p3))

                    ; #76123: <==negation-removal== 46716 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #76954: <==negation-removal== 16175 (pos)
                    (not (Ba_not_checked_p3))

                    ; #92062: <==uncertain_firing== 86562 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14493: <==commonly_known== 58026 (neg)
                    (Pb_checked_p4)

                    ; #15432: <==closure== 43396 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #26500: <==closure== 65401 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #33135: <==commonly_known== 58026 (neg)
                    (Pc_checked_p4)

                    ; #43396: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #45262: <==commonly_known== 58026 (neg)
                    (Pa_checked_p4)

                    ; #61865: <==commonly_known== 96005 (pos)
                    (Bc_checked_p4)

                    ; #65401: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #79914: <==commonly_known== 96005 (pos)
                    (Bb_checked_p4)

                    ; #79924: <==commonly_known== 96005 (pos)
                    (Ba_checked_p4)

                    ; #96005: origin
                    (checked_p4)

                    ; #20502: <==negation-removal== 15432 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #44859: <==negation-removal== 79924 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49462: <==negation-removal== 45262 (pos)
                    (not (Ba_not_checked_p4))

                    ; #50467: <==uncertain_firing== 65401 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #58026: <==negation-removal== 96005 (pos)
                    (not (not_checked_p4))

                    ; #64343: <==uncertain_firing== 26500 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #67186: <==negation-removal== 14493 (pos)
                    (not (Bb_not_checked_p4))

                    ; #75127: <==negation-removal== 79914 (pos)
                    (not (Pb_not_checked_p4))

                    ; #75226: <==negation-removal== 61865 (pos)
                    (not (Pc_not_checked_p4))

                    ; #78064: <==negation-removal== 65401 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #78215: <==negation-removal== 33135 (pos)
                    (not (Bc_not_checked_p4))

                    ; #79557: <==uncertain_firing== 15432 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #81407: <==negation-removal== 26500 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #88945: <==uncertain_firing== 43396 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #90106: <==negation-removal== 43396 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #14535: <==commonly_known== 15550 (pos)
                    (Bc_checked_p5)

                    ; #15550: origin
                    (checked_p5)

                    ; #19898: <==commonly_known== 15550 (pos)
                    (Bb_checked_p5)

                    ; #24712: <==commonly_known== 83075 (neg)
                    (Pa_checked_p5)

                    ; #28385: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #38854: <==commonly_known== 83075 (neg)
                    (Pb_checked_p5)

                    ; #47477: <==closure== 61333 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #57774: <==commonly_known== 83075 (neg)
                    (Pc_checked_p5)

                    ; #61333: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #63578: <==closure== 28385 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #91907: <==commonly_known== 15550 (pos)
                    (Ba_checked_p5)

                    ; #10825: <==negation-removal== 57774 (pos)
                    (not (Bc_not_checked_p5))

                    ; #19242: <==negation-removal== 63578 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #23981: <==uncertain_firing== 61333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #26172: <==negation-removal== 47477 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #26914: <==negation-removal== 28385 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #34497: <==negation-removal== 19898 (pos)
                    (not (Pb_not_checked_p5))

                    ; #37231: <==uncertain_firing== 47477 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #56763: <==negation-removal== 14535 (pos)
                    (not (Pc_not_checked_p5))

                    ; #57895: <==negation-removal== 24712 (pos)
                    (not (Ba_not_checked_p5))

                    ; #59251: <==negation-removal== 38854 (pos)
                    (not (Bb_not_checked_p5))

                    ; #62601: <==uncertain_firing== 63578 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #70219: <==negation-removal== 61333 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #72566: <==uncertain_firing== 28385 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #73493: <==negation-removal== 91907 (pos)
                    (not (Pa_not_checked_p5))

                    ; #83075: <==negation-removal== 15550 (pos)
                    (not (not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #11307: <==commonly_known== 86204 (neg)
                    (Pc_checked_p6)

                    ; #17697: <==commonly_known== 86204 (neg)
                    (Pa_checked_p6)

                    ; #21449: <==commonly_known== 86204 (neg)
                    (Pb_checked_p6)

                    ; #27767: <==closure== 82096 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #37934: <==closure== 75866 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #48768: <==commonly_known== 91007 (pos)
                    (Bb_checked_p6)

                    ; #60583: <==commonly_known== 91007 (pos)
                    (Ba_checked_p6)

                    ; #66582: <==commonly_known== 91007 (pos)
                    (Bc_checked_p6)

                    ; #75866: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #82096: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #91007: origin
                    (checked_p6)

                    ; #15604: <==negation-removal== 48768 (pos)
                    (not (Pb_not_checked_p6))

                    ; #20556: <==negation-removal== 82096 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #25454: <==negation-removal== 75866 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #26412: <==uncertain_firing== 82096 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #38807: <==negation-removal== 60583 (pos)
                    (not (Pa_not_checked_p6))

                    ; #39777: <==negation-removal== 37934 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #39911: <==negation-removal== 11307 (pos)
                    (not (Bc_not_checked_p6))

                    ; #41258: <==negation-removal== 17697 (pos)
                    (not (Ba_not_checked_p6))

                    ; #47668: <==negation-removal== 27767 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #48564: <==negation-removal== 21449 (pos)
                    (not (Bb_not_checked_p6))

                    ; #54668: <==negation-removal== 66582 (pos)
                    (not (Pc_not_checked_p6))

                    ; #62112: <==uncertain_firing== 75866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #70499: <==uncertain_firing== 27767 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #86204: <==negation-removal== 91007 (pos)
                    (not (not_checked_p6))

                    ; #91206: <==uncertain_firing== 37934 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12877: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #22801: <==commonly_known== 91964 (neg)
                    (Pb_checked_p7)

                    ; #24711: <==commonly_known== 72396 (pos)
                    (Ba_checked_p7)

                    ; #35353: <==commonly_known== 91964 (neg)
                    (Pc_checked_p7)

                    ; #44411: <==commonly_known== 72396 (pos)
                    (Bb_checked_p7)

                    ; #54016: <==commonly_known== 72396 (pos)
                    (Bc_checked_p7)

                    ; #55290: <==commonly_known== 91964 (neg)
                    (Pa_checked_p7)

                    ; #72396: origin
                    (checked_p7)

                    ; #77416: <==closure== 80480 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #80480: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #82162: <==closure== 12877 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #12736: <==uncertain_firing== 77416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #15853: <==negation-removal== 55290 (pos)
                    (not (Ba_not_checked_p7))

                    ; #25193: <==uncertain_firing== 82162 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #31487: <==negation-removal== 35353 (pos)
                    (not (Bc_not_checked_p7))

                    ; #34416: <==negation-removal== 77416 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #43368: <==uncertain_firing== 80480 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #50557: <==negation-removal== 82162 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #52699: <==negation-removal== 12877 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #54341: <==negation-removal== 80480 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #60013: <==negation-removal== 22801 (pos)
                    (not (Bb_not_checked_p7))

                    ; #71637: <==uncertain_firing== 12877 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #71669: <==negation-removal== 54016 (pos)
                    (not (Pc_not_checked_p7))

                    ; #71954: <==negation-removal== 44411 (pos)
                    (not (Pb_not_checked_p7))

                    ; #77460: <==negation-removal== 24711 (pos)
                    (not (Pa_not_checked_p7))

                    ; #91964: <==negation-removal== 72396 (pos)
                    (not (not_checked_p7))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #22248: <==closure== 46228 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #23393: <==commonly_known== 89800 (pos)
                    (Ba_checked_p8)

                    ; #27864: <==commonly_known== 61388 (neg)
                    (Pa_checked_p8)

                    ; #34942: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #40395: <==commonly_known== 61388 (neg)
                    (Pb_checked_p8)

                    ; #46228: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #56716: <==commonly_known== 89800 (pos)
                    (Bb_checked_p8)

                    ; #68736: <==closure== 34942 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #82179: <==commonly_known== 61388 (neg)
                    (Pc_checked_p8)

                    ; #84586: <==commonly_known== 89800 (pos)
                    (Bc_checked_p8)

                    ; #89800: origin
                    (checked_p8)

                    ; #13435: <==negation-removal== 40395 (pos)
                    (not (Bb_not_checked_p8))

                    ; #14120: <==uncertain_firing== 46228 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #14684: <==negation-removal== 23393 (pos)
                    (not (Pa_not_checked_p8))

                    ; #24896: <==negation-removal== 56716 (pos)
                    (not (Pb_not_checked_p8))

                    ; #29369: <==negation-removal== 46228 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #38331: <==negation-removal== 34942 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #54498: <==negation-removal== 68736 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #58700: <==negation-removal== 22248 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #58813: <==uncertain_firing== 22248 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #61388: <==negation-removal== 89800 (pos)
                    (not (not_checked_p8))

                    ; #63014: <==uncertain_firing== 34942 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #70379: <==negation-removal== 82179 (pos)
                    (not (Bc_not_checked_p8))

                    ; #73561: <==negation-removal== 84586 (pos)
                    (not (Pc_not_checked_p8))

                    ; #87339: <==uncertain_firing== 68736 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #88512: <==negation-removal== 27864 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #23552: <==closure== 76391 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #39092: <==closure== 67659 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #42278: origin
                    (checked_p9)

                    ; #47411: <==commonly_known== 42278 (pos)
                    (Bc_checked_p9)

                    ; #48929: <==commonly_known== 59747 (neg)
                    (Pb_checked_p9)

                    ; #54199: <==commonly_known== 59747 (neg)
                    (Pc_checked_p9)

                    ; #61068: <==commonly_known== 59747 (neg)
                    (Pa_checked_p9)

                    ; #64190: <==commonly_known== 42278 (pos)
                    (Ba_checked_p9)

                    ; #67659: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #70588: <==commonly_known== 42278 (pos)
                    (Bb_checked_p9)

                    ; #76391: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #12916: <==negation-removal== 23552 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #16481: <==negation-removal== 76391 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #19279: <==negation-removal== 39092 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #22175: <==negation-removal== 67659 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #27604: <==negation-removal== 64190 (pos)
                    (not (Pa_not_checked_p9))

                    ; #33971: <==uncertain_firing== 23552 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #58295: <==uncertain_firing== 39092 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #59747: <==negation-removal== 42278 (pos)
                    (not (not_checked_p9))

                    ; #66932: <==negation-removal== 54199 (pos)
                    (not (Bc_not_checked_p9))

                    ; #73759: <==uncertain_firing== 76391 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #74351: <==negation-removal== 61068 (pos)
                    (not (Ba_not_checked_p9))

                    ; #78808: <==uncertain_firing== 67659 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #83048: <==negation-removal== 70588 (pos)
                    (not (Pb_not_checked_p9))

                    ; #86802: <==negation-removal== 48929 (pos)
                    (not (Bb_not_checked_p9))

                    ; #90105: <==negation-removal== 47411 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #11075: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #13030: <==commonly_known== 82146 (pos)
                    (Bb_checked_p10)

                    ; #17780: <==commonly_known== 80495 (neg)
                    (Pa_checked_p10)

                    ; #28843: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #50059: <==closure== 28843 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #60291: <==commonly_known== 80495 (neg)
                    (Pc_checked_p10)

                    ; #65472: <==commonly_known== 80495 (neg)
                    (Pb_checked_p10)

                    ; #69379: <==commonly_known== 82146 (pos)
                    (Bc_checked_p10)

                    ; #82146: origin
                    (checked_p10)

                    ; #87022: <==commonly_known== 82146 (pos)
                    (Ba_checked_p10)

                    ; #88818: <==closure== 11075 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #12927: <==uncertain_firing== 88818 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #26945: <==negation-removal== 65472 (pos)
                    (not (Bb_not_checked_p10))

                    ; #32097: <==negation-removal== 28843 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #32590: <==uncertain_firing== 11075 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #40873: <==negation-removal== 11075 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #43524: <==negation-removal== 88818 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #49001: <==negation-removal== 69379 (pos)
                    (not (Pc_not_checked_p10))

                    ; #56380: <==negation-removal== 60291 (pos)
                    (not (Bc_not_checked_p10))

                    ; #64026: <==negation-removal== 87022 (pos)
                    (not (Pa_not_checked_p10))

                    ; #67897: <==uncertain_firing== 28843 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #71453: <==negation-removal== 50059 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #72572: <==uncertain_firing== 50059 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #80495: <==negation-removal== 82146 (pos)
                    (not (not_checked_p10))

                    ; #82881: <==negation-removal== 17780 (pos)
                    (not (Ba_not_checked_p10))

                    ; #90108: <==negation-removal== 13030 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #35029: <==commonly_known== 63147 (pos)
                    (Bc_checked_p11)

                    ; #36430: <==commonly_known== 27399 (neg)
                    (Pc_checked_p11)

                    ; #41607: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #44170: <==commonly_known== 63147 (pos)
                    (Bb_checked_p11)

                    ; #47067: <==commonly_known== 63147 (pos)
                    (Ba_checked_p11)

                    ; #50941: <==commonly_known== 27399 (neg)
                    (Pa_checked_p11)

                    ; #63147: origin
                    (checked_p11)

                    ; #68222: <==closure== 41607 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #69456: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #78048: <==closure== 69456 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #81585: <==commonly_known== 27399 (neg)
                    (Pb_checked_p11)

                    ; #16875: <==negation-removal== 68222 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #25020: <==uncertain_firing== 69456 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #25953: <==negation-removal== 81585 (pos)
                    (not (Bb_not_checked_p11))

                    ; #27399: <==negation-removal== 63147 (pos)
                    (not (not_checked_p11))

                    ; #31649: <==negation-removal== 78048 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #45313: <==negation-removal== 36430 (pos)
                    (not (Bc_not_checked_p11))

                    ; #63492: <==uncertain_firing== 68222 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #64104: <==negation-removal== 69456 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #66846: <==negation-removal== 35029 (pos)
                    (not (Pc_not_checked_p11))

                    ; #70333: <==negation-removal== 44170 (pos)
                    (not (Pb_not_checked_p11))

                    ; #86295: <==uncertain_firing== 41607 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #86719: <==negation-removal== 41607 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #87045: <==negation-removal== 47067 (pos)
                    (not (Pa_not_checked_p11))

                    ; #87125: <==negation-removal== 50941 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88611: <==uncertain_firing== 78048 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13370: <==commonly_known== 78090 (pos)
                    (Ba_checked_p12)

                    ; #40927: <==closure== 73018 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #41892: <==commonly_known== 78090 (pos)
                    (Bb_checked_p12)

                    ; #44347: <==commonly_known== 58037 (neg)
                    (Pa_checked_p12)

                    ; #48222: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #49867: <==commonly_known== 78090 (pos)
                    (Bc_checked_p12)

                    ; #60501: <==closure== 48222 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #70885: <==commonly_known== 58037 (neg)
                    (Pb_checked_p12)

                    ; #71062: <==commonly_known== 58037 (neg)
                    (Pc_checked_p12)

                    ; #73018: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #78090: origin
                    (checked_p12)

                    ; #13487: <==uncertain_firing== 40927 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #27321: <==uncertain_firing== 60501 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #28355: <==negation-removal== 70885 (pos)
                    (not (Bb_not_checked_p12))

                    ; #29073: <==negation-removal== 71062 (pos)
                    (not (Bc_not_checked_p12))

                    ; #29788: <==uncertain_firing== 48222 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #35980: <==negation-removal== 48222 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #37641: <==negation-removal== 44347 (pos)
                    (not (Ba_not_checked_p12))

                    ; #39882: <==negation-removal== 40927 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #49822: <==negation-removal== 60501 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #56893: <==negation-removal== 13370 (pos)
                    (not (Pa_not_checked_p12))

                    ; #58037: <==negation-removal== 78090 (pos)
                    (not (not_checked_p12))

                    ; #67870: <==negation-removal== 41892 (pos)
                    (not (Pb_not_checked_p12))

                    ; #70080: <==negation-removal== 73018 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #71767: <==uncertain_firing== 73018 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #76168: <==negation-removal== 49867 (pos)
                    (not (Pc_not_checked_p12))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10000: <==closure== 43844 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #15317: <==commonly_known== 67079 (neg)
                    (Pc_checked_p1)

                    ; #28246: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #34331: <==commonly_known== 67079 (neg)
                    (Pa_checked_p1)

                    ; #37721: <==commonly_known== 49911 (pos)
                    (Ba_checked_p1)

                    ; #39701: <==closure== 28246 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #43454: <==commonly_known== 49911 (pos)
                    (Bc_checked_p1)

                    ; #43844: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #44927: <==commonly_known== 67079 (neg)
                    (Pb_checked_p1)

                    ; #47474: <==commonly_known== 49911 (pos)
                    (Bb_checked_p1)

                    ; #49911: origin
                    (checked_p1)

                    ; #11544: <==negation-removal== 10000 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #12563: <==negation-removal== 44927 (pos)
                    (not (Bb_not_checked_p1))

                    ; #22340: <==uncertain_firing== 43844 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #25281: <==uncertain_firing== 28246 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #46813: <==negation-removal== 39701 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #53436: <==negation-removal== 43454 (pos)
                    (not (Pc_not_checked_p1))

                    ; #58916: <==negation-removal== 28246 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #62720: <==negation-removal== 43844 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #67079: <==negation-removal== 49911 (pos)
                    (not (not_checked_p1))

                    ; #71318: <==uncertain_firing== 39701 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #72126: <==negation-removal== 47474 (pos)
                    (not (Pb_not_checked_p1))

                    ; #74481: <==negation-removal== 34331 (pos)
                    (not (Ba_not_checked_p1))

                    ; #74635: <==uncertain_firing== 10000 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #75648: <==negation-removal== 15317 (pos)
                    (not (Bc_not_checked_p1))

                    ; #80082: <==negation-removal== 37721 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #17264: <==commonly_known== 13670 (neg)
                    (Pa_checked_p2)

                    ; #17990: <==commonly_known== 50676 (pos)
                    (Ba_checked_p2)

                    ; #19050: <==closure== 69823 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #30134: <==commonly_known== 13670 (neg)
                    (Pb_checked_p2)

                    ; #50676: origin
                    (checked_p2)

                    ; #51725: <==commonly_known== 13670 (neg)
                    (Pc_checked_p2)

                    ; #55364: <==closure== 63511 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #63511: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #69823: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #75527: <==commonly_known== 50676 (pos)
                    (Bb_checked_p2)

                    ; #85112: <==commonly_known== 50676 (pos)
                    (Bc_checked_p2)

                    ; #13670: <==negation-removal== 50676 (pos)
                    (not (not_checked_p2))

                    ; #20104: <==negation-removal== 63511 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #21749: <==negation-removal== 85112 (pos)
                    (not (Pc_not_checked_p2))

                    ; #23647: <==negation-removal== 69823 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #34985: <==negation-removal== 55364 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #39821: <==negation-removal== 30134 (pos)
                    (not (Bb_not_checked_p2))

                    ; #40729: <==uncertain_firing== 69823 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #52385: <==uncertain_firing== 63511 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #54879: <==negation-removal== 19050 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #56756: <==uncertain_firing== 19050 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #68146: <==negation-removal== 75527 (pos)
                    (not (Pb_not_checked_p2))

                    ; #71475: <==negation-removal== 17264 (pos)
                    (not (Ba_not_checked_p2))

                    ; #73826: <==negation-removal== 17990 (pos)
                    (not (Pa_not_checked_p2))

                    ; #75992: <==uncertain_firing== 55364 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #87926: <==negation-removal== 51725 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #16175: <==commonly_known== 72834 (neg)
                    (Pa_checked_p3)

                    ; #33562: <==commonly_known== 72834 (neg)
                    (Pb_checked_p3)

                    ; #37277: <==commonly_known== 91317 (pos)
                    (Bc_checked_p3)

                    ; #52617: <==commonly_known== 72834 (neg)
                    (Pc_checked_p3)

                    ; #60134: <==closure== 61610 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #61610: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #73863: <==commonly_known== 91317 (pos)
                    (Bb_checked_p3)

                    ; #83976: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #84088: <==commonly_known== 91317 (pos)
                    (Ba_checked_p3)

                    ; #87801: <==closure== 83976 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #91317: origin
                    (checked_p3)

                    ; #15150: <==negation-removal== 83976 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #15966: <==negation-removal== 37277 (pos)
                    (not (Pc_not_checked_p3))

                    ; #26505: <==negation-removal== 73863 (pos)
                    (not (Pb_not_checked_p3))

                    ; #29208: <==uncertain_firing== 87801 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #30243: <==negation-removal== 33562 (pos)
                    (not (Bb_not_checked_p3))

                    ; #37628: <==negation-removal== 52617 (pos)
                    (not (Bc_not_checked_p3))

                    ; #38551: <==negation-removal== 60134 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #39098: <==uncertain_firing== 61610 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49042: <==negation-removal== 84088 (pos)
                    (not (Pa_not_checked_p3))

                    ; #65153: <==negation-removal== 61610 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #72834: <==negation-removal== 91317 (pos)
                    (not (not_checked_p3))

                    ; #75287: <==uncertain_firing== 60134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #76954: <==negation-removal== 16175 (pos)
                    (not (Ba_not_checked_p3))

                    ; #79650: <==uncertain_firing== 83976 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #85600: <==negation-removal== 87801 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #13113: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #14493: <==commonly_known== 58026 (neg)
                    (Pb_checked_p4)

                    ; #33135: <==commonly_known== 58026 (neg)
                    (Pc_checked_p4)

                    ; #44872: <==closure== 13113 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #45262: <==commonly_known== 58026 (neg)
                    (Pa_checked_p4)

                    ; #61865: <==commonly_known== 96005 (pos)
                    (Bc_checked_p4)

                    ; #68570: <==closure== 75282 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #75282: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #79914: <==commonly_known== 96005 (pos)
                    (Bb_checked_p4)

                    ; #79924: <==commonly_known== 96005 (pos)
                    (Ba_checked_p4)

                    ; #96005: origin
                    (checked_p4)

                    ; #10828: <==uncertain_firing== 44872 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #33471: <==uncertain_firing== 75282 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39500: <==uncertain_firing== 13113 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #42086: <==negation-removal== 75282 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #44859: <==negation-removal== 79924 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49462: <==negation-removal== 45262 (pos)
                    (not (Ba_not_checked_p4))

                    ; #49864: <==uncertain_firing== 68570 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #58026: <==negation-removal== 96005 (pos)
                    (not (not_checked_p4))

                    ; #67186: <==negation-removal== 14493 (pos)
                    (not (Bb_not_checked_p4))

                    ; #68527: <==negation-removal== 44872 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #72964: <==negation-removal== 68570 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #75127: <==negation-removal== 79914 (pos)
                    (not (Pb_not_checked_p4))

                    ; #75226: <==negation-removal== 61865 (pos)
                    (not (Pc_not_checked_p4))

                    ; #75440: <==negation-removal== 13113 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #78215: <==negation-removal== 33135 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #11412: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #14535: <==commonly_known== 15550 (pos)
                    (Bc_checked_p5)

                    ; #15550: origin
                    (checked_p5)

                    ; #19898: <==commonly_known== 15550 (pos)
                    (Bb_checked_p5)

                    ; #24712: <==commonly_known== 83075 (neg)
                    (Pa_checked_p5)

                    ; #34282: <==closure== 11412 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #38854: <==commonly_known== 83075 (neg)
                    (Pb_checked_p5)

                    ; #39380: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #57774: <==commonly_known== 83075 (neg)
                    (Pc_checked_p5)

                    ; #79731: <==closure== 39380 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #91907: <==commonly_known== 15550 (pos)
                    (Ba_checked_p5)

                    ; #10825: <==negation-removal== 57774 (pos)
                    (not (Bc_not_checked_p5))

                    ; #11001: <==uncertain_firing== 39380 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #12976: <==negation-removal== 39380 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #34497: <==negation-removal== 19898 (pos)
                    (not (Pb_not_checked_p5))

                    ; #47064: <==negation-removal== 11412 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #53141: <==uncertain_firing== 11412 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #56763: <==negation-removal== 14535 (pos)
                    (not (Pc_not_checked_p5))

                    ; #57895: <==negation-removal== 24712 (pos)
                    (not (Ba_not_checked_p5))

                    ; #59251: <==negation-removal== 38854 (pos)
                    (not (Bb_not_checked_p5))

                    ; #60998: <==uncertain_firing== 34282 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #73493: <==negation-removal== 91907 (pos)
                    (not (Pa_not_checked_p5))

                    ; #74799: <==negation-removal== 34282 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #77155: <==negation-removal== 79731 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #83075: <==negation-removal== 15550 (pos)
                    (not (not_checked_p5))

                    ; #89647: <==uncertain_firing== 79731 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11307: <==commonly_known== 86204 (neg)
                    (Pc_checked_p6)

                    ; #16952: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #17697: <==commonly_known== 86204 (neg)
                    (Pa_checked_p6)

                    ; #21449: <==commonly_known== 86204 (neg)
                    (Pb_checked_p6)

                    ; #31702: <==closure== 16952 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #32770: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #48768: <==commonly_known== 91007 (pos)
                    (Bb_checked_p6)

                    ; #60583: <==commonly_known== 91007 (pos)
                    (Ba_checked_p6)

                    ; #66582: <==commonly_known== 91007 (pos)
                    (Bc_checked_p6)

                    ; #74723: <==closure== 32770 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #91007: origin
                    (checked_p6)

                    ; #12303: <==negation-removal== 74723 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #15604: <==negation-removal== 48768 (pos)
                    (not (Pb_not_checked_p6))

                    ; #28833: <==uncertain_firing== 16952 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #38807: <==negation-removal== 60583 (pos)
                    (not (Pa_not_checked_p6))

                    ; #39911: <==negation-removal== 11307 (pos)
                    (not (Bc_not_checked_p6))

                    ; #41258: <==negation-removal== 17697 (pos)
                    (not (Ba_not_checked_p6))

                    ; #48564: <==negation-removal== 21449 (pos)
                    (not (Bb_not_checked_p6))

                    ; #49240: <==negation-removal== 16952 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #54668: <==negation-removal== 66582 (pos)
                    (not (Pc_not_checked_p6))

                    ; #55628: <==uncertain_firing== 32770 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #82044: <==uncertain_firing== 31702 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #82893: <==uncertain_firing== 74723 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85242: <==negation-removal== 31702 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #86204: <==negation-removal== 91007 (pos)
                    (not (not_checked_p6))

                    ; #87184: <==negation-removal== 32770 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #22801: <==commonly_known== 91964 (neg)
                    (Pb_checked_p7)

                    ; #24711: <==commonly_known== 72396 (pos)
                    (Ba_checked_p7)

                    ; #33219: <==closure== 49610 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #35353: <==commonly_known== 91964 (neg)
                    (Pc_checked_p7)

                    ; #44411: <==commonly_known== 72396 (pos)
                    (Bb_checked_p7)

                    ; #49610: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #54016: <==commonly_known== 72396 (pos)
                    (Bc_checked_p7)

                    ; #55290: <==commonly_known== 91964 (neg)
                    (Pa_checked_p7)

                    ; #72396: origin
                    (checked_p7)

                    ; #74554: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #74608: <==closure== 74554 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #10693: <==negation-removal== 74554 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #14756: <==negation-removal== 74608 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #15853: <==negation-removal== 55290 (pos)
                    (not (Ba_not_checked_p7))

                    ; #26004: <==negation-removal== 49610 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #31487: <==negation-removal== 35353 (pos)
                    (not (Bc_not_checked_p7))

                    ; #54158: <==uncertain_firing== 33219 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #56695: <==uncertain_firing== 74554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #60013: <==negation-removal== 22801 (pos)
                    (not (Bb_not_checked_p7))

                    ; #65810: <==negation-removal== 33219 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #71669: <==negation-removal== 54016 (pos)
                    (not (Pc_not_checked_p7))

                    ; #71954: <==negation-removal== 44411 (pos)
                    (not (Pb_not_checked_p7))

                    ; #77460: <==negation-removal== 24711 (pos)
                    (not (Pa_not_checked_p7))

                    ; #87106: <==uncertain_firing== 49610 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #90891: <==uncertain_firing== 74608 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #91964: <==negation-removal== 72396 (pos)
                    (not (not_checked_p7))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #15011: <==closure== 35067 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #23393: <==commonly_known== 89800 (pos)
                    (Ba_checked_p8)

                    ; #27864: <==commonly_known== 61388 (neg)
                    (Pa_checked_p8)

                    ; #35067: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #35454: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #40395: <==commonly_known== 61388 (neg)
                    (Pb_checked_p8)

                    ; #56716: <==commonly_known== 89800 (pos)
                    (Bb_checked_p8)

                    ; #82105: <==closure== 35454 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #82179: <==commonly_known== 61388 (neg)
                    (Pc_checked_p8)

                    ; #84586: <==commonly_known== 89800 (pos)
                    (Bc_checked_p8)

                    ; #89800: origin
                    (checked_p8)

                    ; #11797: <==negation-removal== 35454 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #13435: <==negation-removal== 40395 (pos)
                    (not (Bb_not_checked_p8))

                    ; #14684: <==negation-removal== 23393 (pos)
                    (not (Pa_not_checked_p8))

                    ; #15017: <==uncertain_firing== 15011 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #24896: <==negation-removal== 56716 (pos)
                    (not (Pb_not_checked_p8))

                    ; #34394: <==negation-removal== 35067 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #50602: <==uncertain_firing== 35454 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61388: <==negation-removal== 89800 (pos)
                    (not (not_checked_p8))

                    ; #70379: <==negation-removal== 82179 (pos)
                    (not (Bc_not_checked_p8))

                    ; #71015: <==uncertain_firing== 82105 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #72650: <==negation-removal== 82105 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #73561: <==negation-removal== 84586 (pos)
                    (not (Pc_not_checked_p8))

                    ; #76584: <==uncertain_firing== 35067 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #77509: <==negation-removal== 15011 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #88512: <==negation-removal== 27864 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20107: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #41348: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #42278: origin
                    (checked_p9)

                    ; #47411: <==commonly_known== 42278 (pos)
                    (Bc_checked_p9)

                    ; #48929: <==commonly_known== 59747 (neg)
                    (Pb_checked_p9)

                    ; #54199: <==commonly_known== 59747 (neg)
                    (Pc_checked_p9)

                    ; #61068: <==commonly_known== 59747 (neg)
                    (Pa_checked_p9)

                    ; #61183: <==closure== 41348 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #64190: <==commonly_known== 42278 (pos)
                    (Ba_checked_p9)

                    ; #70588: <==commonly_known== 42278 (pos)
                    (Bb_checked_p9)

                    ; #90198: <==closure== 20107 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #13857: <==negation-removal== 20107 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #24755: <==negation-removal== 90198 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #26648: <==uncertain_firing== 61183 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #27604: <==negation-removal== 64190 (pos)
                    (not (Pa_not_checked_p9))

                    ; #31907: <==negation-removal== 61183 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #59747: <==negation-removal== 42278 (pos)
                    (not (not_checked_p9))

                    ; #66898: <==uncertain_firing== 90198 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66932: <==negation-removal== 54199 (pos)
                    (not (Bc_not_checked_p9))

                    ; #66974: <==uncertain_firing== 20107 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #67980: <==uncertain_firing== 41348 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #74351: <==negation-removal== 61068 (pos)
                    (not (Ba_not_checked_p9))

                    ; #80580: <==negation-removal== 41348 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #83048: <==negation-removal== 70588 (pos)
                    (not (Pb_not_checked_p9))

                    ; #86802: <==negation-removal== 48929 (pos)
                    (not (Bb_not_checked_p9))

                    ; #90105: <==negation-removal== 47411 (pos)
                    (not (Pc_not_checked_p9))))

)