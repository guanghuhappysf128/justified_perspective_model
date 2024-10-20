(define (domain grid)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_p1)
        (not_at_a_p2)
        (not_at_a_p3)
        (not_at_a_p4)
        (not_at_a_p5)
        (not_at_a_p6)
        (not_at_a_p7)
        (not_at_a_p8)
        (not_at_a_p9)
        (not_at_b_p1)
        (not_at_b_p2)
        (not_at_b_p3)
        (not_at_b_p4)
        (not_at_b_p5)
        (not_at_b_p6)
        (not_at_b_p7)
        (not_at_b_p8)
        (not_at_b_p9)
        (not_at_c_p1)
        (not_at_c_p2)
        (not_at_c_p3)
        (not_at_c_p4)
        (not_at_c_p5)
        (not_at_c_p6)
        (not_at_c_p7)
        (not_at_c_p8)
        (not_at_c_p9)
        (not_at_d_p1)
        (not_at_d_p2)
        (not_at_d_p3)
        (not_at_d_p4)
        (not_at_d_p5)
        (not_at_d_p6)
        (not_at_d_p7)
        (not_at_d_p8)
        (not_at_d_p9)
        (not_checked_p1)
        (not_checked_p2)
        (not_checked_p3)
        (not_checked_p4)
        (not_checked_p5)
        (not_checked_p6)
        (not_checked_p7)
        (not_checked_p8)
        (not_checked_p9)
        (not_hiddensurvivorat_s_p1)
        (not_hiddensurvivorat_s_p2)
        (not_hiddensurvivorat_s_p3)
        (not_hiddensurvivorat_s_p4)
        (not_hiddensurvivorat_s_p5)
        (not_hiddensurvivorat_s_p6)
        (not_hiddensurvivorat_s_p7)
        (not_hiddensurvivorat_s_p8)
        (not_hiddensurvivorat_s_p9)
        (not_succ_p1_p1)
        (not_succ_p1_p2)
        (not_succ_p1_p3)
        (not_succ_p1_p4)
        (not_succ_p1_p5)
        (not_succ_p1_p6)
        (not_succ_p1_p7)
        (not_succ_p1_p8)
        (not_succ_p1_p9)
        (not_succ_p2_p1)
        (not_succ_p2_p2)
        (not_succ_p2_p3)
        (not_succ_p2_p4)
        (not_succ_p2_p5)
        (not_succ_p2_p6)
        (not_succ_p2_p7)
        (not_succ_p2_p8)
        (not_succ_p2_p9)
        (not_succ_p3_p1)
        (not_succ_p3_p2)
        (not_succ_p3_p3)
        (not_succ_p3_p4)
        (not_succ_p3_p5)
        (not_succ_p3_p6)
        (not_succ_p3_p7)
        (not_succ_p3_p8)
        (not_succ_p3_p9)
        (not_succ_p4_p1)
        (not_succ_p4_p2)
        (not_succ_p4_p3)
        (not_succ_p4_p4)
        (not_succ_p4_p5)
        (not_succ_p4_p6)
        (not_succ_p4_p7)
        (not_succ_p4_p8)
        (not_succ_p4_p9)
        (not_succ_p5_p1)
        (not_succ_p5_p2)
        (not_succ_p5_p3)
        (not_succ_p5_p4)
        (not_succ_p5_p5)
        (not_succ_p5_p6)
        (not_succ_p5_p7)
        (not_succ_p5_p8)
        (not_succ_p5_p9)
        (not_succ_p6_p1)
        (not_succ_p6_p2)
        (not_succ_p6_p3)
        (not_succ_p6_p4)
        (not_succ_p6_p5)
        (not_succ_p6_p6)
        (not_succ_p6_p7)
        (not_succ_p6_p8)
        (not_succ_p6_p9)
        (not_succ_p7_p1)
        (not_succ_p7_p2)
        (not_succ_p7_p3)
        (not_succ_p7_p4)
        (not_succ_p7_p5)
        (not_succ_p7_p6)
        (not_succ_p7_p7)
        (not_succ_p7_p8)
        (not_succ_p7_p9)
        (not_succ_p8_p1)
        (not_succ_p8_p2)
        (not_succ_p8_p3)
        (not_succ_p8_p4)
        (not_succ_p8_p5)
        (not_succ_p8_p6)
        (not_succ_p8_p7)
        (not_succ_p8_p8)
        (not_succ_p8_p9)
        (not_succ_p9_p1)
        (not_succ_p9_p2)
        (not_succ_p9_p3)
        (not_succ_p9_p4)
        (not_succ_p9_p5)
        (not_succ_p9_p6)
        (not_succ_p9_p7)
        (not_succ_p9_p8)
        (not_succ_p9_p9)
        (not_survivorat_s_p1)
        (not_survivorat_s_p2)
        (not_survivorat_s_p3)
        (not_survivorat_s_p4)
        (not_survivorat_s_p5)
        (not_survivorat_s_p6)
        (not_survivorat_s_p7)
        (not_survivorat_s_p8)
        (not_survivorat_s_p9)
        (Ba_not_checked_p1)
        (Ba_not_checked_p2)
        (Ba_not_checked_p3)
        (Ba_not_checked_p4)
        (Ba_not_checked_p5)
        (Ba_not_checked_p6)
        (Ba_not_checked_p7)
        (Ba_not_checked_p8)
        (Ba_not_checked_p9)
        (Ba_not_hiddensurvivorat_s_p1)
        (Ba_not_hiddensurvivorat_s_p2)
        (Ba_not_hiddensurvivorat_s_p3)
        (Ba_not_hiddensurvivorat_s_p4)
        (Ba_not_hiddensurvivorat_s_p5)
        (Ba_not_hiddensurvivorat_s_p6)
        (Ba_not_hiddensurvivorat_s_p7)
        (Ba_not_hiddensurvivorat_s_p8)
        (Ba_not_hiddensurvivorat_s_p9)
        (Ba_not_survivorat_s_p1)
        (Ba_not_survivorat_s_p2)
        (Ba_not_survivorat_s_p3)
        (Ba_not_survivorat_s_p4)
        (Ba_not_survivorat_s_p5)
        (Ba_not_survivorat_s_p6)
        (Ba_not_survivorat_s_p7)
        (Ba_not_survivorat_s_p8)
        (Ba_not_survivorat_s_p9)
        (Ba_checked_p1)
        (Ba_checked_p2)
        (Ba_checked_p3)
        (Ba_checked_p4)
        (Ba_checked_p5)
        (Ba_checked_p6)
        (Ba_checked_p7)
        (Ba_checked_p8)
        (Ba_checked_p9)
        (Ba_hiddensurvivorat_s_p1)
        (Ba_hiddensurvivorat_s_p2)
        (Ba_hiddensurvivorat_s_p3)
        (Ba_hiddensurvivorat_s_p4)
        (Ba_hiddensurvivorat_s_p5)
        (Ba_hiddensurvivorat_s_p6)
        (Ba_hiddensurvivorat_s_p7)
        (Ba_hiddensurvivorat_s_p8)
        (Ba_hiddensurvivorat_s_p9)
        (Ba_survivorat_s_p1)
        (Ba_survivorat_s_p2)
        (Ba_survivorat_s_p3)
        (Ba_survivorat_s_p4)
        (Ba_survivorat_s_p5)
        (Ba_survivorat_s_p6)
        (Ba_survivorat_s_p7)
        (Ba_survivorat_s_p8)
        (Ba_survivorat_s_p9)
        (Bb_not_checked_p1)
        (Bb_not_checked_p2)
        (Bb_not_checked_p3)
        (Bb_not_checked_p4)
        (Bb_not_checked_p5)
        (Bb_not_checked_p6)
        (Bb_not_checked_p7)
        (Bb_not_checked_p8)
        (Bb_not_checked_p9)
        (Bb_not_hiddensurvivorat_s_p1)
        (Bb_not_hiddensurvivorat_s_p2)
        (Bb_not_hiddensurvivorat_s_p3)
        (Bb_not_hiddensurvivorat_s_p4)
        (Bb_not_hiddensurvivorat_s_p5)
        (Bb_not_hiddensurvivorat_s_p6)
        (Bb_not_hiddensurvivorat_s_p7)
        (Bb_not_hiddensurvivorat_s_p8)
        (Bb_not_hiddensurvivorat_s_p9)
        (Bb_not_survivorat_s_p1)
        (Bb_not_survivorat_s_p2)
        (Bb_not_survivorat_s_p3)
        (Bb_not_survivorat_s_p4)
        (Bb_not_survivorat_s_p5)
        (Bb_not_survivorat_s_p6)
        (Bb_not_survivorat_s_p7)
        (Bb_not_survivorat_s_p8)
        (Bb_not_survivorat_s_p9)
        (Bb_checked_p1)
        (Bb_checked_p2)
        (Bb_checked_p3)
        (Bb_checked_p4)
        (Bb_checked_p5)
        (Bb_checked_p6)
        (Bb_checked_p7)
        (Bb_checked_p8)
        (Bb_checked_p9)
        (Bb_hiddensurvivorat_s_p1)
        (Bb_hiddensurvivorat_s_p2)
        (Bb_hiddensurvivorat_s_p3)
        (Bb_hiddensurvivorat_s_p4)
        (Bb_hiddensurvivorat_s_p5)
        (Bb_hiddensurvivorat_s_p6)
        (Bb_hiddensurvivorat_s_p7)
        (Bb_hiddensurvivorat_s_p8)
        (Bb_hiddensurvivorat_s_p9)
        (Bb_survivorat_s_p1)
        (Bb_survivorat_s_p2)
        (Bb_survivorat_s_p3)
        (Bb_survivorat_s_p4)
        (Bb_survivorat_s_p5)
        (Bb_survivorat_s_p6)
        (Bb_survivorat_s_p7)
        (Bb_survivorat_s_p8)
        (Bb_survivorat_s_p9)
        (Bc_not_checked_p1)
        (Bc_not_checked_p2)
        (Bc_not_checked_p3)
        (Bc_not_checked_p4)
        (Bc_not_checked_p5)
        (Bc_not_checked_p6)
        (Bc_not_checked_p7)
        (Bc_not_checked_p8)
        (Bc_not_checked_p9)
        (Bc_not_hiddensurvivorat_s_p1)
        (Bc_not_hiddensurvivorat_s_p2)
        (Bc_not_hiddensurvivorat_s_p3)
        (Bc_not_hiddensurvivorat_s_p4)
        (Bc_not_hiddensurvivorat_s_p5)
        (Bc_not_hiddensurvivorat_s_p6)
        (Bc_not_hiddensurvivorat_s_p7)
        (Bc_not_hiddensurvivorat_s_p8)
        (Bc_not_hiddensurvivorat_s_p9)
        (Bc_not_survivorat_s_p1)
        (Bc_not_survivorat_s_p2)
        (Bc_not_survivorat_s_p3)
        (Bc_not_survivorat_s_p4)
        (Bc_not_survivorat_s_p5)
        (Bc_not_survivorat_s_p6)
        (Bc_not_survivorat_s_p7)
        (Bc_not_survivorat_s_p8)
        (Bc_not_survivorat_s_p9)
        (Bc_checked_p1)
        (Bc_checked_p2)
        (Bc_checked_p3)
        (Bc_checked_p4)
        (Bc_checked_p5)
        (Bc_checked_p6)
        (Bc_checked_p7)
        (Bc_checked_p8)
        (Bc_checked_p9)
        (Bc_hiddensurvivorat_s_p1)
        (Bc_hiddensurvivorat_s_p2)
        (Bc_hiddensurvivorat_s_p3)
        (Bc_hiddensurvivorat_s_p4)
        (Bc_hiddensurvivorat_s_p5)
        (Bc_hiddensurvivorat_s_p6)
        (Bc_hiddensurvivorat_s_p7)
        (Bc_hiddensurvivorat_s_p8)
        (Bc_hiddensurvivorat_s_p9)
        (Bc_survivorat_s_p1)
        (Bc_survivorat_s_p2)
        (Bc_survivorat_s_p3)
        (Bc_survivorat_s_p4)
        (Bc_survivorat_s_p5)
        (Bc_survivorat_s_p6)
        (Bc_survivorat_s_p7)
        (Bc_survivorat_s_p8)
        (Bc_survivorat_s_p9)
        (Bd_not_checked_p1)
        (Bd_not_checked_p2)
        (Bd_not_checked_p3)
        (Bd_not_checked_p4)
        (Bd_not_checked_p5)
        (Bd_not_checked_p6)
        (Bd_not_checked_p7)
        (Bd_not_checked_p8)
        (Bd_not_checked_p9)
        (Bd_not_hiddensurvivorat_s_p1)
        (Bd_not_hiddensurvivorat_s_p2)
        (Bd_not_hiddensurvivorat_s_p3)
        (Bd_not_hiddensurvivorat_s_p4)
        (Bd_not_hiddensurvivorat_s_p5)
        (Bd_not_hiddensurvivorat_s_p6)
        (Bd_not_hiddensurvivorat_s_p7)
        (Bd_not_hiddensurvivorat_s_p8)
        (Bd_not_hiddensurvivorat_s_p9)
        (Bd_not_survivorat_s_p1)
        (Bd_not_survivorat_s_p2)
        (Bd_not_survivorat_s_p3)
        (Bd_not_survivorat_s_p4)
        (Bd_not_survivorat_s_p5)
        (Bd_not_survivorat_s_p6)
        (Bd_not_survivorat_s_p7)
        (Bd_not_survivorat_s_p8)
        (Bd_not_survivorat_s_p9)
        (Bd_checked_p1)
        (Bd_checked_p2)
        (Bd_checked_p3)
        (Bd_checked_p4)
        (Bd_checked_p5)
        (Bd_checked_p6)
        (Bd_checked_p7)
        (Bd_checked_p8)
        (Bd_checked_p9)
        (Bd_hiddensurvivorat_s_p1)
        (Bd_hiddensurvivorat_s_p2)
        (Bd_hiddensurvivorat_s_p3)
        (Bd_hiddensurvivorat_s_p4)
        (Bd_hiddensurvivorat_s_p5)
        (Bd_hiddensurvivorat_s_p6)
        (Bd_hiddensurvivorat_s_p7)
        (Bd_hiddensurvivorat_s_p8)
        (Bd_hiddensurvivorat_s_p9)
        (Bd_survivorat_s_p1)
        (Bd_survivorat_s_p2)
        (Bd_survivorat_s_p3)
        (Bd_survivorat_s_p4)
        (Bd_survivorat_s_p5)
        (Bd_survivorat_s_p6)
        (Bd_survivorat_s_p7)
        (Bd_survivorat_s_p8)
        (Bd_survivorat_s_p9)
        (Pa_not_checked_p1)
        (Pa_not_checked_p2)
        (Pa_not_checked_p3)
        (Pa_not_checked_p4)
        (Pa_not_checked_p5)
        (Pa_not_checked_p6)
        (Pa_not_checked_p7)
        (Pa_not_checked_p8)
        (Pa_not_checked_p9)
        (Pa_not_hiddensurvivorat_s_p1)
        (Pa_not_hiddensurvivorat_s_p2)
        (Pa_not_hiddensurvivorat_s_p3)
        (Pa_not_hiddensurvivorat_s_p4)
        (Pa_not_hiddensurvivorat_s_p5)
        (Pa_not_hiddensurvivorat_s_p6)
        (Pa_not_hiddensurvivorat_s_p7)
        (Pa_not_hiddensurvivorat_s_p8)
        (Pa_not_hiddensurvivorat_s_p9)
        (Pa_not_survivorat_s_p1)
        (Pa_not_survivorat_s_p2)
        (Pa_not_survivorat_s_p3)
        (Pa_not_survivorat_s_p4)
        (Pa_not_survivorat_s_p5)
        (Pa_not_survivorat_s_p6)
        (Pa_not_survivorat_s_p7)
        (Pa_not_survivorat_s_p8)
        (Pa_not_survivorat_s_p9)
        (Pa_checked_p1)
        (Pa_checked_p2)
        (Pa_checked_p3)
        (Pa_checked_p4)
        (Pa_checked_p5)
        (Pa_checked_p6)
        (Pa_checked_p7)
        (Pa_checked_p8)
        (Pa_checked_p9)
        (Pa_hiddensurvivorat_s_p1)
        (Pa_hiddensurvivorat_s_p2)
        (Pa_hiddensurvivorat_s_p3)
        (Pa_hiddensurvivorat_s_p4)
        (Pa_hiddensurvivorat_s_p5)
        (Pa_hiddensurvivorat_s_p6)
        (Pa_hiddensurvivorat_s_p7)
        (Pa_hiddensurvivorat_s_p8)
        (Pa_hiddensurvivorat_s_p9)
        (Pa_survivorat_s_p1)
        (Pa_survivorat_s_p2)
        (Pa_survivorat_s_p3)
        (Pa_survivorat_s_p4)
        (Pa_survivorat_s_p5)
        (Pa_survivorat_s_p6)
        (Pa_survivorat_s_p7)
        (Pa_survivorat_s_p8)
        (Pa_survivorat_s_p9)
        (Pb_not_checked_p1)
        (Pb_not_checked_p2)
        (Pb_not_checked_p3)
        (Pb_not_checked_p4)
        (Pb_not_checked_p5)
        (Pb_not_checked_p6)
        (Pb_not_checked_p7)
        (Pb_not_checked_p8)
        (Pb_not_checked_p9)
        (Pb_not_hiddensurvivorat_s_p1)
        (Pb_not_hiddensurvivorat_s_p2)
        (Pb_not_hiddensurvivorat_s_p3)
        (Pb_not_hiddensurvivorat_s_p4)
        (Pb_not_hiddensurvivorat_s_p5)
        (Pb_not_hiddensurvivorat_s_p6)
        (Pb_not_hiddensurvivorat_s_p7)
        (Pb_not_hiddensurvivorat_s_p8)
        (Pb_not_hiddensurvivorat_s_p9)
        (Pb_not_survivorat_s_p1)
        (Pb_not_survivorat_s_p2)
        (Pb_not_survivorat_s_p3)
        (Pb_not_survivorat_s_p4)
        (Pb_not_survivorat_s_p5)
        (Pb_not_survivorat_s_p6)
        (Pb_not_survivorat_s_p7)
        (Pb_not_survivorat_s_p8)
        (Pb_not_survivorat_s_p9)
        (Pb_checked_p1)
        (Pb_checked_p2)
        (Pb_checked_p3)
        (Pb_checked_p4)
        (Pb_checked_p5)
        (Pb_checked_p6)
        (Pb_checked_p7)
        (Pb_checked_p8)
        (Pb_checked_p9)
        (Pb_hiddensurvivorat_s_p1)
        (Pb_hiddensurvivorat_s_p2)
        (Pb_hiddensurvivorat_s_p3)
        (Pb_hiddensurvivorat_s_p4)
        (Pb_hiddensurvivorat_s_p5)
        (Pb_hiddensurvivorat_s_p6)
        (Pb_hiddensurvivorat_s_p7)
        (Pb_hiddensurvivorat_s_p8)
        (Pb_hiddensurvivorat_s_p9)
        (Pb_survivorat_s_p1)
        (Pb_survivorat_s_p2)
        (Pb_survivorat_s_p3)
        (Pb_survivorat_s_p4)
        (Pb_survivorat_s_p5)
        (Pb_survivorat_s_p6)
        (Pb_survivorat_s_p7)
        (Pb_survivorat_s_p8)
        (Pb_survivorat_s_p9)
        (Pc_not_checked_p1)
        (Pc_not_checked_p2)
        (Pc_not_checked_p3)
        (Pc_not_checked_p4)
        (Pc_not_checked_p5)
        (Pc_not_checked_p6)
        (Pc_not_checked_p7)
        (Pc_not_checked_p8)
        (Pc_not_checked_p9)
        (Pc_not_hiddensurvivorat_s_p1)
        (Pc_not_hiddensurvivorat_s_p2)
        (Pc_not_hiddensurvivorat_s_p3)
        (Pc_not_hiddensurvivorat_s_p4)
        (Pc_not_hiddensurvivorat_s_p5)
        (Pc_not_hiddensurvivorat_s_p6)
        (Pc_not_hiddensurvivorat_s_p7)
        (Pc_not_hiddensurvivorat_s_p8)
        (Pc_not_hiddensurvivorat_s_p9)
        (Pc_not_survivorat_s_p1)
        (Pc_not_survivorat_s_p2)
        (Pc_not_survivorat_s_p3)
        (Pc_not_survivorat_s_p4)
        (Pc_not_survivorat_s_p5)
        (Pc_not_survivorat_s_p6)
        (Pc_not_survivorat_s_p7)
        (Pc_not_survivorat_s_p8)
        (Pc_not_survivorat_s_p9)
        (Pc_checked_p1)
        (Pc_checked_p2)
        (Pc_checked_p3)
        (Pc_checked_p4)
        (Pc_checked_p5)
        (Pc_checked_p6)
        (Pc_checked_p7)
        (Pc_checked_p8)
        (Pc_checked_p9)
        (Pc_hiddensurvivorat_s_p1)
        (Pc_hiddensurvivorat_s_p2)
        (Pc_hiddensurvivorat_s_p3)
        (Pc_hiddensurvivorat_s_p4)
        (Pc_hiddensurvivorat_s_p5)
        (Pc_hiddensurvivorat_s_p6)
        (Pc_hiddensurvivorat_s_p7)
        (Pc_hiddensurvivorat_s_p8)
        (Pc_hiddensurvivorat_s_p9)
        (Pc_survivorat_s_p1)
        (Pc_survivorat_s_p2)
        (Pc_survivorat_s_p3)
        (Pc_survivorat_s_p4)
        (Pc_survivorat_s_p5)
        (Pc_survivorat_s_p6)
        (Pc_survivorat_s_p7)
        (Pc_survivorat_s_p8)
        (Pc_survivorat_s_p9)
        (Pd_not_checked_p1)
        (Pd_not_checked_p2)
        (Pd_not_checked_p3)
        (Pd_not_checked_p4)
        (Pd_not_checked_p5)
        (Pd_not_checked_p6)
        (Pd_not_checked_p7)
        (Pd_not_checked_p8)
        (Pd_not_checked_p9)
        (Pd_not_hiddensurvivorat_s_p1)
        (Pd_not_hiddensurvivorat_s_p2)
        (Pd_not_hiddensurvivorat_s_p3)
        (Pd_not_hiddensurvivorat_s_p4)
        (Pd_not_hiddensurvivorat_s_p5)
        (Pd_not_hiddensurvivorat_s_p6)
        (Pd_not_hiddensurvivorat_s_p7)
        (Pd_not_hiddensurvivorat_s_p8)
        (Pd_not_hiddensurvivorat_s_p9)
        (Pd_not_survivorat_s_p1)
        (Pd_not_survivorat_s_p2)
        (Pd_not_survivorat_s_p3)
        (Pd_not_survivorat_s_p4)
        (Pd_not_survivorat_s_p5)
        (Pd_not_survivorat_s_p6)
        (Pd_not_survivorat_s_p7)
        (Pd_not_survivorat_s_p8)
        (Pd_not_survivorat_s_p9)
        (Pd_checked_p1)
        (Pd_checked_p2)
        (Pd_checked_p3)
        (Pd_checked_p4)
        (Pd_checked_p5)
        (Pd_checked_p6)
        (Pd_checked_p7)
        (Pd_checked_p8)
        (Pd_checked_p9)
        (Pd_hiddensurvivorat_s_p1)
        (Pd_hiddensurvivorat_s_p2)
        (Pd_hiddensurvivorat_s_p3)
        (Pd_hiddensurvivorat_s_p4)
        (Pd_hiddensurvivorat_s_p5)
        (Pd_hiddensurvivorat_s_p6)
        (Pd_hiddensurvivorat_s_p7)
        (Pd_hiddensurvivorat_s_p8)
        (Pd_hiddensurvivorat_s_p9)
        (Pd_survivorat_s_p1)
        (Pd_survivorat_s_p2)
        (Pd_survivorat_s_p3)
        (Pd_survivorat_s_p4)
        (Pd_survivorat_s_p5)
        (Pd_survivorat_s_p6)
        (Pd_survivorat_s_p7)
        (Pd_survivorat_s_p8)
        (Pd_survivorat_s_p9)
        (at_a_p1)
        (at_a_p2)
        (at_a_p3)
        (at_a_p4)
        (at_a_p5)
        (at_a_p6)
        (at_a_p7)
        (at_a_p8)
        (at_a_p9)
        (at_b_p1)
        (at_b_p2)
        (at_b_p3)
        (at_b_p4)
        (at_b_p5)
        (at_b_p6)
        (at_b_p7)
        (at_b_p8)
        (at_b_p9)
        (at_c_p1)
        (at_c_p2)
        (at_c_p3)
        (at_c_p4)
        (at_c_p5)
        (at_c_p6)
        (at_c_p7)
        (at_c_p8)
        (at_c_p9)
        (at_d_p1)
        (at_d_p2)
        (at_d_p3)
        (at_d_p4)
        (at_d_p5)
        (at_d_p6)
        (at_d_p7)
        (at_d_p8)
        (at_d_p9)
        (checked_p1)
        (checked_p2)
        (checked_p3)
        (checked_p4)
        (checked_p5)
        (checked_p6)
        (checked_p7)
        (checked_p8)
        (checked_p9)
        (hiddensurvivorat_s_p1)
        (hiddensurvivorat_s_p2)
        (hiddensurvivorat_s_p3)
        (hiddensurvivorat_s_p4)
        (hiddensurvivorat_s_p5)
        (hiddensurvivorat_s_p6)
        (hiddensurvivorat_s_p7)
        (hiddensurvivorat_s_p8)
        (hiddensurvivorat_s_p9)
        (succ_p1_p1)
        (succ_p1_p2)
        (succ_p1_p3)
        (succ_p1_p4)
        (succ_p1_p5)
        (succ_p1_p6)
        (succ_p1_p7)
        (succ_p1_p8)
        (succ_p1_p9)
        (succ_p2_p1)
        (succ_p2_p2)
        (succ_p2_p3)
        (succ_p2_p4)
        (succ_p2_p5)
        (succ_p2_p6)
        (succ_p2_p7)
        (succ_p2_p8)
        (succ_p2_p9)
        (succ_p3_p1)
        (succ_p3_p2)
        (succ_p3_p3)
        (succ_p3_p4)
        (succ_p3_p5)
        (succ_p3_p6)
        (succ_p3_p7)
        (succ_p3_p8)
        (succ_p3_p9)
        (succ_p4_p1)
        (succ_p4_p2)
        (succ_p4_p3)
        (succ_p4_p4)
        (succ_p4_p5)
        (succ_p4_p6)
        (succ_p4_p7)
        (succ_p4_p8)
        (succ_p4_p9)
        (succ_p5_p1)
        (succ_p5_p2)
        (succ_p5_p3)
        (succ_p5_p4)
        (succ_p5_p5)
        (succ_p5_p6)
        (succ_p5_p7)
        (succ_p5_p8)
        (succ_p5_p9)
        (succ_p6_p1)
        (succ_p6_p2)
        (succ_p6_p3)
        (succ_p6_p4)
        (succ_p6_p5)
        (succ_p6_p6)
        (succ_p6_p7)
        (succ_p6_p8)
        (succ_p6_p9)
        (succ_p7_p1)
        (succ_p7_p2)
        (succ_p7_p3)
        (succ_p7_p4)
        (succ_p7_p5)
        (succ_p7_p6)
        (succ_p7_p7)
        (succ_p7_p8)
        (succ_p7_p9)
        (succ_p8_p1)
        (succ_p8_p2)
        (succ_p8_p3)
        (succ_p8_p4)
        (succ_p8_p5)
        (succ_p8_p6)
        (succ_p8_p7)
        (succ_p8_p8)
        (succ_p8_p9)
        (succ_p9_p1)
        (succ_p9_p2)
        (succ_p9_p3)
        (succ_p9_p4)
        (succ_p9_p5)
        (succ_p9_p6)
        (succ_p9_p7)
        (succ_p9_p8)
        (succ_p9_p9)
        (survivorat_s_p1)
        (survivorat_s_p2)
        (survivorat_s_p3)
        (survivorat_s_p4)
        (survivorat_s_p5)
        (survivorat_s_p6)
        (survivorat_s_p7)
        (survivorat_s_p8)
        (survivorat_s_p9)
    )

    (:action badcomm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #11659: <==closure== 89934 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #46872: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #63489: <==closure== 63993 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #63993: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #70048: <==closure== 77572 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #77572: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #79397: <==closure== 46872 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #89934: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #14766: <==negation-removal== 63489 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #26024: <==negation-removal== 77572 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #27340: <==negation-removal== 79397 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #34388: <==negation-removal== 70048 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #38130: <==negation-removal== 46872 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #51446: <==uncertain_firing== 89934 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #54604: <==negation-removal== 63993 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54975: <==uncertain_firing== 11659 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #62581: <==negation-removal== 11659 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #63002: <==negation-removal== 89934 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #75456: <==uncertain_firing== 63993 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #77986: <==uncertain_firing== 46872 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #84279: <==uncertain_firing== 63489 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #86329: <==uncertain_firing== 77572 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #86928: <==uncertain_firing== 70048 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #88064: <==uncertain_firing== 79397 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #11659: <==closure== 89934 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #46872: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #63489: <==closure== 63993 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #63993: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #70048: <==closure== 77572 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #77572: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #79397: <==closure== 46872 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #89934: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #14766: <==negation-removal== 63489 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #26024: <==negation-removal== 77572 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #27340: <==negation-removal== 79397 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #34388: <==negation-removal== 70048 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #38130: <==negation-removal== 46872 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #51446: <==uncertain_firing== 89934 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #54604: <==negation-removal== 63993 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54975: <==uncertain_firing== 11659 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #62581: <==negation-removal== 11659 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #63002: <==negation-removal== 89934 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #75456: <==uncertain_firing== 63993 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #77986: <==uncertain_firing== 46872 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #84279: <==uncertain_firing== 63489 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #86329: <==uncertain_firing== 77572 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #86928: <==uncertain_firing== 70048 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #88064: <==uncertain_firing== 79397 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #11659: <==closure== 89934 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #46872: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #63489: <==closure== 63993 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #63993: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #70048: <==closure== 77572 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #77572: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #79397: <==closure== 46872 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #89934: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #14766: <==negation-removal== 63489 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #26024: <==negation-removal== 77572 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #27340: <==negation-removal== 79397 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #34388: <==negation-removal== 70048 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #38130: <==negation-removal== 46872 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #51446: <==uncertain_firing== 89934 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #54604: <==negation-removal== 63993 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54975: <==uncertain_firing== 11659 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #62581: <==negation-removal== 11659 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #63002: <==negation-removal== 89934 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #75456: <==uncertain_firing== 63993 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #77986: <==uncertain_firing== 46872 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #84279: <==uncertain_firing== 63489 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #86329: <==uncertain_firing== 77572 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #86928: <==uncertain_firing== 70048 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #88064: <==uncertain_firing== 79397 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #11659: <==closure== 89934 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #46872: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #63489: <==closure== 63993 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #63993: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #70048: <==closure== 77572 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #77572: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #79397: <==closure== 46872 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #89934: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #14766: <==negation-removal== 63489 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #26024: <==negation-removal== 77572 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #27340: <==negation-removal== 79397 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #34388: <==negation-removal== 70048 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #38130: <==negation-removal== 46872 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #51446: <==uncertain_firing== 89934 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #54604: <==negation-removal== 63993 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54975: <==uncertain_firing== 11659 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #62581: <==negation-removal== 11659 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #63002: <==negation-removal== 89934 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #75456: <==uncertain_firing== 63993 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #77986: <==uncertain_firing== 46872 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #84279: <==uncertain_firing== 63489 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #86329: <==uncertain_firing== 77572 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #86928: <==uncertain_firing== 70048 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #88064: <==uncertain_firing== 79397 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #24133: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #35063: <==closure== 92682 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #56062: <==closure== 86141 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #56508: <==closure== 79607 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #79160: <==closure== 24133 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #79607: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #86141: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #92682: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #16565: <==negation-removal== 56508 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #18641: <==uncertain_firing== 24133 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #18890: <==uncertain_firing== 86141 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #28488: <==negation-removal== 86141 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #37219: <==uncertain_firing== 92682 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #46156: <==negation-removal== 24133 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #47071: <==negation-removal== 92682 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #47085: <==uncertain_firing== 79607 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #51538: <==uncertain_firing== 56508 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #61704: <==negation-removal== 79160 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #68310: <==negation-removal== 56062 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #73074: <==uncertain_firing== 79160 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #74192: <==uncertain_firing== 56062 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #76714: <==uncertain_firing== 35063 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #83853: <==negation-removal== 79607 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #87950: <==negation-removal== 35063 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #24133: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #35063: <==closure== 92682 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #56062: <==closure== 86141 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #56508: <==closure== 79607 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #79160: <==closure== 24133 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #79607: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #86141: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #92682: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #16565: <==negation-removal== 56508 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #18641: <==uncertain_firing== 24133 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #18890: <==uncertain_firing== 86141 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #28488: <==negation-removal== 86141 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #37219: <==uncertain_firing== 92682 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #46156: <==negation-removal== 24133 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #47071: <==negation-removal== 92682 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #47085: <==uncertain_firing== 79607 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #51538: <==uncertain_firing== 56508 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #61704: <==negation-removal== 79160 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #68310: <==negation-removal== 56062 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #73074: <==uncertain_firing== 79160 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #74192: <==uncertain_firing== 56062 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #76714: <==uncertain_firing== 35063 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #83853: <==negation-removal== 79607 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #87950: <==negation-removal== 35063 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #24133: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #35063: <==closure== 92682 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #56062: <==closure== 86141 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #56508: <==closure== 79607 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #79160: <==closure== 24133 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #79607: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #86141: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #92682: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #16565: <==negation-removal== 56508 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #18641: <==uncertain_firing== 24133 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #18890: <==uncertain_firing== 86141 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #28488: <==negation-removal== 86141 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #37219: <==uncertain_firing== 92682 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #46156: <==negation-removal== 24133 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #47071: <==negation-removal== 92682 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #47085: <==uncertain_firing== 79607 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #51538: <==uncertain_firing== 56508 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #61704: <==negation-removal== 79160 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #68310: <==negation-removal== 56062 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #73074: <==uncertain_firing== 79160 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #74192: <==uncertain_firing== 56062 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #76714: <==uncertain_firing== 35063 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #83853: <==negation-removal== 79607 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #87950: <==negation-removal== 35063 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #24133: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #35063: <==closure== 92682 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #56062: <==closure== 86141 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #56508: <==closure== 79607 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #79160: <==closure== 24133 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #79607: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #86141: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #92682: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #16565: <==negation-removal== 56508 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #18641: <==uncertain_firing== 24133 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #18890: <==uncertain_firing== 86141 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #28488: <==negation-removal== 86141 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #37219: <==uncertain_firing== 92682 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #46156: <==negation-removal== 24133 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #47071: <==negation-removal== 92682 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #47085: <==uncertain_firing== 79607 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #51538: <==uncertain_firing== 56508 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #61704: <==negation-removal== 79160 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #68310: <==negation-removal== 56062 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #73074: <==uncertain_firing== 79160 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #74192: <==uncertain_firing== 56062 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #76714: <==uncertain_firing== 35063 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #83853: <==negation-removal== 79607 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #87950: <==negation-removal== 35063 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #12744: <==closure== 14718 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #14718: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #22009: <==closure== 48618 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #38243: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #48618: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #83130: <==closure== 88137 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #85548: <==closure== 38243 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #88137: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12501: <==negation-removal== 83130 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #14161: <==uncertain_firing== 12744 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #20831: <==negation-removal== 38243 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #25025: <==negation-removal== 48618 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #28652: <==uncertain_firing== 83130 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #41416: <==uncertain_firing== 14718 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #44063: <==uncertain_firing== 22009 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #55186: <==uncertain_firing== 38243 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #56517: <==negation-removal== 85548 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #64577: <==negation-removal== 88137 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #69065: <==uncertain_firing== 88137 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #82252: <==negation-removal== 14718 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #83628: <==uncertain_firing== 48618 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #83639: <==negation-removal== 22009 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #87175: <==negation-removal== 12744 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #95845: <==uncertain_firing== 85548 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #12744: <==closure== 14718 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #14718: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #22009: <==closure== 48618 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #38243: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #48618: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #83130: <==closure== 88137 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #85548: <==closure== 38243 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #88137: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12501: <==negation-removal== 83130 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #14161: <==uncertain_firing== 12744 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #20831: <==negation-removal== 38243 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #25025: <==negation-removal== 48618 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #28652: <==uncertain_firing== 83130 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #41416: <==uncertain_firing== 14718 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #44063: <==uncertain_firing== 22009 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #55186: <==uncertain_firing== 38243 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #56517: <==negation-removal== 85548 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #64577: <==negation-removal== 88137 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #69065: <==uncertain_firing== 88137 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #82252: <==negation-removal== 14718 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #83628: <==uncertain_firing== 48618 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #83639: <==negation-removal== 22009 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #87175: <==negation-removal== 12744 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #95845: <==uncertain_firing== 85548 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #12744: <==closure== 14718 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #14718: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #22009: <==closure== 48618 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #38243: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #48618: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #83130: <==closure== 88137 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #85548: <==closure== 38243 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #88137: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12501: <==negation-removal== 83130 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #14161: <==uncertain_firing== 12744 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #20831: <==negation-removal== 38243 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #25025: <==negation-removal== 48618 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #28652: <==uncertain_firing== 83130 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #41416: <==uncertain_firing== 14718 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #44063: <==uncertain_firing== 22009 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #55186: <==uncertain_firing== 38243 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #56517: <==negation-removal== 85548 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #64577: <==negation-removal== 88137 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #69065: <==uncertain_firing== 88137 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #82252: <==negation-removal== 14718 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #83628: <==uncertain_firing== 48618 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #83639: <==negation-removal== 22009 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #87175: <==negation-removal== 12744 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #95845: <==uncertain_firing== 85548 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #12744: <==closure== 14718 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #14718: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #22009: <==closure== 48618 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #38243: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #48618: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #83130: <==closure== 88137 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #85548: <==closure== 38243 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #88137: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12501: <==negation-removal== 83130 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #14161: <==uncertain_firing== 12744 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #20831: <==negation-removal== 38243 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #25025: <==negation-removal== 48618 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #28652: <==uncertain_firing== 83130 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #41416: <==uncertain_firing== 14718 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #44063: <==uncertain_firing== 22009 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #55186: <==uncertain_firing== 38243 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #56517: <==negation-removal== 85548 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #64577: <==negation-removal== 88137 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #69065: <==uncertain_firing== 88137 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #82252: <==negation-removal== 14718 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #83628: <==uncertain_firing== 48618 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #83639: <==negation-removal== 22009 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #87175: <==negation-removal== 12744 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #95845: <==uncertain_firing== 85548 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #19478: <==closure== 70605 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #23239: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #38419: <==closure== 23239 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #50092: <==closure== 78844 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #60268: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #70605: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #74519: <==closure== 60268 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78844: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #16867: <==negation-removal== 19478 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #24588: <==uncertain_firing== 50092 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #38111: <==uncertain_firing== 38419 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #41334: <==uncertain_firing== 23239 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #43160: <==uncertain_firing== 78844 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #45243: <==negation-removal== 50092 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #47205: <==negation-removal== 78844 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #58380: <==uncertain_firing== 60268 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #61339: <==uncertain_firing== 74519 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #61499: <==negation-removal== 23239 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #64398: <==negation-removal== 70605 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #71505: <==negation-removal== 74519 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #79353: <==uncertain_firing== 19478 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #79396: <==negation-removal== 60268 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80631: <==negation-removal== 38419 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #84801: <==uncertain_firing== 70605 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #19478: <==closure== 70605 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #23239: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #38419: <==closure== 23239 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #50092: <==closure== 78844 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #60268: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #70605: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #74519: <==closure== 60268 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78844: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #16867: <==negation-removal== 19478 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #24588: <==uncertain_firing== 50092 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #38111: <==uncertain_firing== 38419 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #41334: <==uncertain_firing== 23239 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #43160: <==uncertain_firing== 78844 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #45243: <==negation-removal== 50092 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #47205: <==negation-removal== 78844 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #58380: <==uncertain_firing== 60268 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #61339: <==uncertain_firing== 74519 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #61499: <==negation-removal== 23239 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #64398: <==negation-removal== 70605 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #71505: <==negation-removal== 74519 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #79353: <==uncertain_firing== 19478 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #79396: <==negation-removal== 60268 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80631: <==negation-removal== 38419 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #84801: <==uncertain_firing== 70605 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #19478: <==closure== 70605 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #23239: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #38419: <==closure== 23239 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #50092: <==closure== 78844 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #60268: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #70605: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #74519: <==closure== 60268 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78844: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #16867: <==negation-removal== 19478 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #24588: <==uncertain_firing== 50092 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #38111: <==uncertain_firing== 38419 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #41334: <==uncertain_firing== 23239 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #43160: <==uncertain_firing== 78844 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #45243: <==negation-removal== 50092 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #47205: <==negation-removal== 78844 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #58380: <==uncertain_firing== 60268 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #61339: <==uncertain_firing== 74519 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #61499: <==negation-removal== 23239 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #64398: <==negation-removal== 70605 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #71505: <==negation-removal== 74519 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #79353: <==uncertain_firing== 19478 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #79396: <==negation-removal== 60268 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80631: <==negation-removal== 38419 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #84801: <==uncertain_firing== 70605 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #19478: <==closure== 70605 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #23239: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #38419: <==closure== 23239 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #50092: <==closure== 78844 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #60268: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #70605: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #74519: <==closure== 60268 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78844: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #16867: <==negation-removal== 19478 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #24588: <==uncertain_firing== 50092 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #38111: <==uncertain_firing== 38419 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #41334: <==uncertain_firing== 23239 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #43160: <==uncertain_firing== 78844 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #45243: <==negation-removal== 50092 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #47205: <==negation-removal== 78844 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #58380: <==uncertain_firing== 60268 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #61339: <==uncertain_firing== 74519 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #61499: <==negation-removal== 23239 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #64398: <==negation-removal== 70605 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #71505: <==negation-removal== 74519 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #79353: <==uncertain_firing== 19478 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #79396: <==negation-removal== 60268 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80631: <==negation-removal== 38419 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #84801: <==uncertain_firing== 70605 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #21048: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #27430: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #30306: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #30739: <==closure== 21048 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #39845: <==closure== 30306 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #42222: <==closure== 57328 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #57328: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #60997: <==closure== 27430 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #18354: <==negation-removal== 39845 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #18646: <==negation-removal== 42222 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #19832: <==negation-removal== 57328 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #23887: <==negation-removal== 27430 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #33868: <==negation-removal== 60997 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #34911: <==negation-removal== 30306 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #36907: <==uncertain_firing== 60997 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #40228: <==negation-removal== 30739 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #47437: <==uncertain_firing== 57328 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #56028: <==uncertain_firing== 42222 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #58603: <==uncertain_firing== 30306 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #65086: <==uncertain_firing== 39845 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #66606: <==uncertain_firing== 21048 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #68603: <==uncertain_firing== 27430 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #74027: <==uncertain_firing== 30739 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #75853: <==negation-removal== 21048 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #21048: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #27430: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #30306: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #30739: <==closure== 21048 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #39845: <==closure== 30306 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #42222: <==closure== 57328 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #57328: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #60997: <==closure== 27430 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #18354: <==negation-removal== 39845 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #18646: <==negation-removal== 42222 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #19832: <==negation-removal== 57328 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #23887: <==negation-removal== 27430 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #33868: <==negation-removal== 60997 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #34911: <==negation-removal== 30306 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #36907: <==uncertain_firing== 60997 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #40228: <==negation-removal== 30739 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #47437: <==uncertain_firing== 57328 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #56028: <==uncertain_firing== 42222 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #58603: <==uncertain_firing== 30306 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #65086: <==uncertain_firing== 39845 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #66606: <==uncertain_firing== 21048 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #68603: <==uncertain_firing== 27430 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #74027: <==uncertain_firing== 30739 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #75853: <==negation-removal== 21048 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #21048: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #27430: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #30306: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #30739: <==closure== 21048 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #39845: <==closure== 30306 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #42222: <==closure== 57328 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #57328: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #60997: <==closure== 27430 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #18354: <==negation-removal== 39845 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #18646: <==negation-removal== 42222 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #19832: <==negation-removal== 57328 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #23887: <==negation-removal== 27430 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #33868: <==negation-removal== 60997 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #34911: <==negation-removal== 30306 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #36907: <==uncertain_firing== 60997 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #40228: <==negation-removal== 30739 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #47437: <==uncertain_firing== 57328 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #56028: <==uncertain_firing== 42222 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #58603: <==uncertain_firing== 30306 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #65086: <==uncertain_firing== 39845 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #66606: <==uncertain_firing== 21048 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #68603: <==uncertain_firing== 27430 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #74027: <==uncertain_firing== 30739 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #75853: <==negation-removal== 21048 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #21048: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #27430: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #30306: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #30739: <==closure== 21048 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #39845: <==closure== 30306 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #42222: <==closure== 57328 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #57328: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #60997: <==closure== 27430 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #18354: <==negation-removal== 39845 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #18646: <==negation-removal== 42222 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #19832: <==negation-removal== 57328 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #23887: <==negation-removal== 27430 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #33868: <==negation-removal== 60997 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #34911: <==negation-removal== 30306 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #36907: <==uncertain_firing== 60997 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #40228: <==negation-removal== 30739 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #47437: <==uncertain_firing== 57328 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #56028: <==uncertain_firing== 42222 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #58603: <==uncertain_firing== 30306 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #65086: <==uncertain_firing== 39845 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #66606: <==uncertain_firing== 21048 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #68603: <==uncertain_firing== 27430 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #74027: <==uncertain_firing== 30739 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #75853: <==negation-removal== 21048 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #13670: <==closure== 87125 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #16868: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #32527: <==closure== 38441 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #38441: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #52123: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #55342: <==closure== 52123 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #65950: <==closure== 16868 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #87125: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #19111: <==uncertain_firing== 13670 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #25736: <==uncertain_firing== 55342 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #34748: <==negation-removal== 13670 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #37430: <==negation-removal== 38441 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #41841: <==uncertain_firing== 32527 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #46200: <==negation-removal== 32527 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #47967: <==negation-removal== 52123 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #53050: <==negation-removal== 55342 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #53577: <==negation-removal== 65950 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #59523: <==uncertain_firing== 65950 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #59576: <==uncertain_firing== 38441 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #70082: <==uncertain_firing== 52123 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #72142: <==negation-removal== 16868 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #74047: <==negation-removal== 87125 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #86276: <==uncertain_firing== 16868 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #87457: <==uncertain_firing== 87125 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #13670: <==closure== 87125 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #16868: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #32527: <==closure== 38441 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #38441: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #52123: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #55342: <==closure== 52123 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #65950: <==closure== 16868 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #87125: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #19111: <==uncertain_firing== 13670 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #25736: <==uncertain_firing== 55342 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #34748: <==negation-removal== 13670 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #37430: <==negation-removal== 38441 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #41841: <==uncertain_firing== 32527 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #46200: <==negation-removal== 32527 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #47967: <==negation-removal== 52123 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #53050: <==negation-removal== 55342 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #53577: <==negation-removal== 65950 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #59523: <==uncertain_firing== 65950 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #59576: <==uncertain_firing== 38441 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #70082: <==uncertain_firing== 52123 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #72142: <==negation-removal== 16868 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #74047: <==negation-removal== 87125 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #86276: <==uncertain_firing== 16868 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #87457: <==uncertain_firing== 87125 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #13670: <==closure== 87125 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #16868: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #32527: <==closure== 38441 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #38441: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #52123: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #55342: <==closure== 52123 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #65950: <==closure== 16868 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #87125: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #19111: <==uncertain_firing== 13670 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #25736: <==uncertain_firing== 55342 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #34748: <==negation-removal== 13670 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #37430: <==negation-removal== 38441 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #41841: <==uncertain_firing== 32527 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #46200: <==negation-removal== 32527 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #47967: <==negation-removal== 52123 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #53050: <==negation-removal== 55342 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #53577: <==negation-removal== 65950 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #59523: <==uncertain_firing== 65950 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #59576: <==uncertain_firing== 38441 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #70082: <==uncertain_firing== 52123 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #72142: <==negation-removal== 16868 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #74047: <==negation-removal== 87125 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #86276: <==uncertain_firing== 16868 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #87457: <==uncertain_firing== 87125 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (at_d_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #13670: <==closure== 87125 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #16868: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #32527: <==closure== 38441 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #38441: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #52123: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #55342: <==closure== 52123 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #65950: <==closure== 16868 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #87125: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #19111: <==uncertain_firing== 13670 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #25736: <==uncertain_firing== 55342 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #34748: <==negation-removal== 13670 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #37430: <==negation-removal== 38441 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #41841: <==uncertain_firing== 32527 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #46200: <==negation-removal== 32527 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #47967: <==negation-removal== 52123 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #53050: <==negation-removal== 55342 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #53577: <==negation-removal== 65950 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #59523: <==uncertain_firing== 65950 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #59576: <==uncertain_firing== 38441 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #70082: <==uncertain_firing== 52123 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #72142: <==negation-removal== 16868 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #74047: <==negation-removal== 87125 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #86276: <==uncertain_firing== 16868 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #87457: <==uncertain_firing== 87125 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #28185: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #39789: <==closure== 91995 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #55719: <==closure== 82689 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #57119: <==closure== 28185 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #59863: <==closure== 69389 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #69389: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #82689: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #91995: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #10155: <==uncertain_firing== 39789 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #12396: <==uncertain_firing== 82689 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #12700: <==negation-removal== 28185 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #18921: <==uncertain_firing== 69389 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #23661: <==negation-removal== 91995 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #28347: <==negation-removal== 82689 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #31084: <==uncertain_firing== 28185 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #37609: <==uncertain_firing== 55719 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #37977: <==uncertain_firing== 91995 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #42582: <==negation-removal== 55719 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #60421: <==negation-removal== 57119 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #63870: <==negation-removal== 59863 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #70874: <==uncertain_firing== 57119 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #82281: <==negation-removal== 69389 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #85155: <==negation-removal== 39789 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #90531: <==uncertain_firing== 59863 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #28185: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #39789: <==closure== 91995 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #55719: <==closure== 82689 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #57119: <==closure== 28185 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #59863: <==closure== 69389 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #69389: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #82689: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #91995: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #10155: <==uncertain_firing== 39789 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #12396: <==uncertain_firing== 82689 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #12700: <==negation-removal== 28185 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #18921: <==uncertain_firing== 69389 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #23661: <==negation-removal== 91995 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #28347: <==negation-removal== 82689 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #31084: <==uncertain_firing== 28185 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #37609: <==uncertain_firing== 55719 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #37977: <==uncertain_firing== 91995 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #42582: <==negation-removal== 55719 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #60421: <==negation-removal== 57119 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #63870: <==negation-removal== 59863 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #70874: <==uncertain_firing== 57119 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #82281: <==negation-removal== 69389 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #85155: <==negation-removal== 39789 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #90531: <==uncertain_firing== 59863 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #28185: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #39789: <==closure== 91995 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #55719: <==closure== 82689 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #57119: <==closure== 28185 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #59863: <==closure== 69389 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #69389: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #82689: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #91995: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #10155: <==uncertain_firing== 39789 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #12396: <==uncertain_firing== 82689 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #12700: <==negation-removal== 28185 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #18921: <==uncertain_firing== 69389 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #23661: <==negation-removal== 91995 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #28347: <==negation-removal== 82689 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #31084: <==uncertain_firing== 28185 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #37609: <==uncertain_firing== 55719 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #37977: <==uncertain_firing== 91995 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #42582: <==negation-removal== 55719 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #60421: <==negation-removal== 57119 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #63870: <==negation-removal== 59863 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #70874: <==uncertain_firing== 57119 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #82281: <==negation-removal== 69389 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #85155: <==negation-removal== 39789 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #90531: <==uncertain_firing== 59863 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #28185: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #39789: <==closure== 91995 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #55719: <==closure== 82689 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #57119: <==closure== 28185 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #59863: <==closure== 69389 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #69389: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #82689: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #91995: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #10155: <==uncertain_firing== 39789 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #12396: <==uncertain_firing== 82689 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #12700: <==negation-removal== 28185 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #18921: <==uncertain_firing== 69389 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #23661: <==negation-removal== 91995 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #28347: <==negation-removal== 82689 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #31084: <==uncertain_firing== 28185 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #37609: <==uncertain_firing== 55719 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #37977: <==uncertain_firing== 91995 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #42582: <==negation-removal== 55719 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #60421: <==negation-removal== 57119 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #63870: <==negation-removal== 59863 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #70874: <==uncertain_firing== 57119 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #82281: <==negation-removal== 69389 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #85155: <==negation-removal== 39789 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #90531: <==uncertain_firing== 59863 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #27940: <==closure== 33902 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #33902: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #41445: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #41815: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #45683: <==closure== 41815 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #56747: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #73336: <==closure== 41445 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #85507: <==closure== 56747 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #13067: <==negation-removal== 41445 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #20001: <==negation-removal== 45683 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #20786: <==uncertain_firing== 85507 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #32874: <==uncertain_firing== 45683 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #49091: <==negation-removal== 73336 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #51567: <==uncertain_firing== 27940 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #58134: <==uncertain_firing== 41445 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61124: <==negation-removal== 33902 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #61267: <==negation-removal== 85507 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #72174: <==negation-removal== 41815 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #74789: <==uncertain_firing== 56747 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #75154: <==uncertain_firing== 73336 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #77684: <==negation-removal== 27940 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80708: <==negation-removal== 56747 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #84226: <==uncertain_firing== 41815 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #84798: <==uncertain_firing== 33902 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #27940: <==closure== 33902 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #33902: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #41445: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #41815: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #45683: <==closure== 41815 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #56747: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #73336: <==closure== 41445 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #85507: <==closure== 56747 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #13067: <==negation-removal== 41445 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #20001: <==negation-removal== 45683 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #20786: <==uncertain_firing== 85507 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #32874: <==uncertain_firing== 45683 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #49091: <==negation-removal== 73336 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #51567: <==uncertain_firing== 27940 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #58134: <==uncertain_firing== 41445 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61124: <==negation-removal== 33902 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #61267: <==negation-removal== 85507 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #72174: <==negation-removal== 41815 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #74789: <==uncertain_firing== 56747 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #75154: <==uncertain_firing== 73336 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #77684: <==negation-removal== 27940 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80708: <==negation-removal== 56747 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #84226: <==uncertain_firing== 41815 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #84798: <==uncertain_firing== 33902 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #27940: <==closure== 33902 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #33902: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #41445: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #41815: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #45683: <==closure== 41815 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #56747: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #73336: <==closure== 41445 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #85507: <==closure== 56747 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #13067: <==negation-removal== 41445 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #20001: <==negation-removal== 45683 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #20786: <==uncertain_firing== 85507 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #32874: <==uncertain_firing== 45683 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #49091: <==negation-removal== 73336 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #51567: <==uncertain_firing== 27940 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #58134: <==uncertain_firing== 41445 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61124: <==negation-removal== 33902 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #61267: <==negation-removal== 85507 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #72174: <==negation-removal== 41815 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #74789: <==uncertain_firing== 56747 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #75154: <==uncertain_firing== 73336 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #77684: <==negation-removal== 27940 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80708: <==negation-removal== 56747 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #84226: <==uncertain_firing== 41815 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #84798: <==uncertain_firing== 33902 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #27940: <==closure== 33902 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #33902: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #41445: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #41815: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #45683: <==closure== 41815 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #56747: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #73336: <==closure== 41445 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #85507: <==closure== 56747 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #13067: <==negation-removal== 41445 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #20001: <==negation-removal== 45683 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #20786: <==uncertain_firing== 85507 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #32874: <==uncertain_firing== 45683 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #49091: <==negation-removal== 73336 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #51567: <==uncertain_firing== 27940 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #58134: <==uncertain_firing== 41445 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61124: <==negation-removal== 33902 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #61267: <==negation-removal== 85507 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #72174: <==negation-removal== 41815 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #74789: <==uncertain_firing== 56747 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #75154: <==uncertain_firing== 73336 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #77684: <==negation-removal== 27940 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80708: <==negation-removal== 56747 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #84226: <==uncertain_firing== 41815 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #84798: <==uncertain_firing== 33902 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #12430: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #12597: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #18101: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #19845: <==closure== 18101 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #26092: <==closure== 12430 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #26519: <==closure== 12597 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #75907: <==closure== 77575 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77575: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #13061: <==uncertain_firing== 12430 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #13949: <==negation-removal== 75907 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #20734: <==negation-removal== 18101 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #45317: <==uncertain_firing== 77575 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #46261: <==negation-removal== 12597 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #50046: <==uncertain_firing== 12597 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #56391: <==negation-removal== 19845 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #56666: <==negation-removal== 26092 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #61641: <==negation-removal== 12430 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #64432: <==uncertain_firing== 75907 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #67709: <==uncertain_firing== 26092 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #69690: <==uncertain_firing== 18101 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #70487: <==uncertain_firing== 26519 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #74032: <==uncertain_firing== 19845 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #76755: <==negation-removal== 26519 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #85442: <==negation-removal== 77575 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #12430: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #12597: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #18101: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #19845: <==closure== 18101 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #26092: <==closure== 12430 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #26519: <==closure== 12597 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #75907: <==closure== 77575 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77575: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #13061: <==uncertain_firing== 12430 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #13949: <==negation-removal== 75907 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #20734: <==negation-removal== 18101 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #45317: <==uncertain_firing== 77575 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #46261: <==negation-removal== 12597 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #50046: <==uncertain_firing== 12597 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #56391: <==negation-removal== 19845 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #56666: <==negation-removal== 26092 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #61641: <==negation-removal== 12430 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #64432: <==uncertain_firing== 75907 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #67709: <==uncertain_firing== 26092 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #69690: <==uncertain_firing== 18101 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #70487: <==uncertain_firing== 26519 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #74032: <==uncertain_firing== 19845 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #76755: <==negation-removal== 26519 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #85442: <==negation-removal== 77575 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #12430: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #12597: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #18101: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #19845: <==closure== 18101 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #26092: <==closure== 12430 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #26519: <==closure== 12597 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #75907: <==closure== 77575 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77575: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #13061: <==uncertain_firing== 12430 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #13949: <==negation-removal== 75907 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #20734: <==negation-removal== 18101 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #45317: <==uncertain_firing== 77575 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #46261: <==negation-removal== 12597 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #50046: <==uncertain_firing== 12597 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #56391: <==negation-removal== 19845 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #56666: <==negation-removal== 26092 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #61641: <==negation-removal== 12430 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #64432: <==uncertain_firing== 75907 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #67709: <==uncertain_firing== 26092 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #69690: <==uncertain_firing== 18101 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #70487: <==uncertain_firing== 26519 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #74032: <==uncertain_firing== 19845 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #76755: <==negation-removal== 26519 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #85442: <==negation-removal== 77575 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (Bd_survivorat_s_p9)
                           (at_d_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #12430: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #12597: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #18101: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #19845: <==closure== 18101 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #26092: <==closure== 12430 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #26519: <==closure== 12597 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #75907: <==closure== 77575 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77575: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #13061: <==uncertain_firing== 12430 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #13949: <==negation-removal== 75907 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #20734: <==negation-removal== 18101 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #45317: <==uncertain_firing== 77575 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #46261: <==negation-removal== 12597 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #50046: <==uncertain_firing== 12597 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #56391: <==negation-removal== 19845 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #56666: <==negation-removal== 26092 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #61641: <==negation-removal== 12430 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #64432: <==uncertain_firing== 75907 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #67709: <==uncertain_firing== 26092 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #69690: <==uncertain_firing== 18101 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #70487: <==uncertain_firing== 26519 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #74032: <==uncertain_firing== 19845 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #76755: <==negation-removal== 26519 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #85442: <==negation-removal== 77575 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #15859: <==closure== 65966 (pos)
                    (Pd_survivorat_s_p1)

                    ; #32983: <==closure== 71820 (pos)
                    (Pb_survivorat_s_p1)

                    ; #36868: <==closure== 55686 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52684: <==closure== 55146 (pos)
                    (Pc_survivorat_s_p1)

                    ; #55146: origin
                    (Bc_survivorat_s_p1)

                    ; #55686: origin
                    (Ba_survivorat_s_p1)

                    ; #65966: origin
                    (Bd_survivorat_s_p1)

                    ; #71820: origin
                    (Bb_survivorat_s_p1)

                    ; #23514: <==negation-removal== 55686 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #24142: <==negation-removal== 52684 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #28048: <==negation-removal== 36868 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #28920: <==negation-removal== 55146 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #45258: <==negation-removal== 32983 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #47436: <==negation-removal== 15859 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #60438: <==negation-removal== 71820 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #84139: <==negation-removal== 65966 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #15859: <==closure== 65966 (pos)
                    (Pd_survivorat_s_p1)

                    ; #32983: <==closure== 71820 (pos)
                    (Pb_survivorat_s_p1)

                    ; #36868: <==closure== 55686 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52684: <==closure== 55146 (pos)
                    (Pc_survivorat_s_p1)

                    ; #55146: origin
                    (Bc_survivorat_s_p1)

                    ; #55686: origin
                    (Ba_survivorat_s_p1)

                    ; #65966: origin
                    (Bd_survivorat_s_p1)

                    ; #71820: origin
                    (Bb_survivorat_s_p1)

                    ; #23514: <==negation-removal== 55686 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #24142: <==negation-removal== 52684 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #28048: <==negation-removal== 36868 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #28920: <==negation-removal== 55146 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #45258: <==negation-removal== 32983 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #47436: <==negation-removal== 15859 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #60438: <==negation-removal== 71820 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #84139: <==negation-removal== 65966 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #15859: <==closure== 65966 (pos)
                    (Pd_survivorat_s_p1)

                    ; #32983: <==closure== 71820 (pos)
                    (Pb_survivorat_s_p1)

                    ; #36868: <==closure== 55686 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52684: <==closure== 55146 (pos)
                    (Pc_survivorat_s_p1)

                    ; #55146: origin
                    (Bc_survivorat_s_p1)

                    ; #55686: origin
                    (Ba_survivorat_s_p1)

                    ; #65966: origin
                    (Bd_survivorat_s_p1)

                    ; #71820: origin
                    (Bb_survivorat_s_p1)

                    ; #23514: <==negation-removal== 55686 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #24142: <==negation-removal== 52684 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #28048: <==negation-removal== 36868 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #28920: <==negation-removal== 55146 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #45258: <==negation-removal== 32983 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #47436: <==negation-removal== 15859 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #60438: <==negation-removal== 71820 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #84139: <==negation-removal== 65966 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #15859: <==closure== 65966 (pos)
                    (Pd_survivorat_s_p1)

                    ; #32983: <==closure== 71820 (pos)
                    (Pb_survivorat_s_p1)

                    ; #36868: <==closure== 55686 (pos)
                    (Pa_survivorat_s_p1)

                    ; #52684: <==closure== 55146 (pos)
                    (Pc_survivorat_s_p1)

                    ; #55146: origin
                    (Bc_survivorat_s_p1)

                    ; #55686: origin
                    (Ba_survivorat_s_p1)

                    ; #65966: origin
                    (Bd_survivorat_s_p1)

                    ; #71820: origin
                    (Bb_survivorat_s_p1)

                    ; #23514: <==negation-removal== 55686 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #24142: <==negation-removal== 52684 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #28048: <==negation-removal== 36868 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #28920: <==negation-removal== 55146 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #45258: <==negation-removal== 32983 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #47436: <==negation-removal== 15859 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #60438: <==negation-removal== 71820 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #84139: <==negation-removal== 65966 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #24199: origin
                    (Bd_survivorat_s_p2)

                    ; #25397: origin
                    (Bc_survivorat_s_p2)

                    ; #27451: <==closure== 25397 (pos)
                    (Pc_survivorat_s_p2)

                    ; #34473: <==closure== 60910 (pos)
                    (Pa_survivorat_s_p2)

                    ; #37591: <==closure== 24199 (pos)
                    (Pd_survivorat_s_p2)

                    ; #59867: <==closure== 88079 (pos)
                    (Pb_survivorat_s_p2)

                    ; #60910: origin
                    (Ba_survivorat_s_p2)

                    ; #88079: origin
                    (Bb_survivorat_s_p2)

                    ; #16140: <==negation-removal== 59867 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #17872: <==negation-removal== 37591 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #17997: <==negation-removal== 60910 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26300: <==negation-removal== 27451 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #32850: <==negation-removal== 24199 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #77590: <==negation-removal== 25397 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #84523: <==negation-removal== 88079 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #87658: <==negation-removal== 34473 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #24199: origin
                    (Bd_survivorat_s_p2)

                    ; #25397: origin
                    (Bc_survivorat_s_p2)

                    ; #27451: <==closure== 25397 (pos)
                    (Pc_survivorat_s_p2)

                    ; #34473: <==closure== 60910 (pos)
                    (Pa_survivorat_s_p2)

                    ; #37591: <==closure== 24199 (pos)
                    (Pd_survivorat_s_p2)

                    ; #59867: <==closure== 88079 (pos)
                    (Pb_survivorat_s_p2)

                    ; #60910: origin
                    (Ba_survivorat_s_p2)

                    ; #88079: origin
                    (Bb_survivorat_s_p2)

                    ; #16140: <==negation-removal== 59867 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #17872: <==negation-removal== 37591 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #17997: <==negation-removal== 60910 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26300: <==negation-removal== 27451 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #32850: <==negation-removal== 24199 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #77590: <==negation-removal== 25397 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #84523: <==negation-removal== 88079 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #87658: <==negation-removal== 34473 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #24199: origin
                    (Bd_survivorat_s_p2)

                    ; #25397: origin
                    (Bc_survivorat_s_p2)

                    ; #27451: <==closure== 25397 (pos)
                    (Pc_survivorat_s_p2)

                    ; #34473: <==closure== 60910 (pos)
                    (Pa_survivorat_s_p2)

                    ; #37591: <==closure== 24199 (pos)
                    (Pd_survivorat_s_p2)

                    ; #59867: <==closure== 88079 (pos)
                    (Pb_survivorat_s_p2)

                    ; #60910: origin
                    (Ba_survivorat_s_p2)

                    ; #88079: origin
                    (Bb_survivorat_s_p2)

                    ; #16140: <==negation-removal== 59867 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #17872: <==negation-removal== 37591 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #17997: <==negation-removal== 60910 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26300: <==negation-removal== 27451 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #32850: <==negation-removal== 24199 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #77590: <==negation-removal== 25397 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #84523: <==negation-removal== 88079 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #87658: <==negation-removal== 34473 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #24199: origin
                    (Bd_survivorat_s_p2)

                    ; #25397: origin
                    (Bc_survivorat_s_p2)

                    ; #27451: <==closure== 25397 (pos)
                    (Pc_survivorat_s_p2)

                    ; #34473: <==closure== 60910 (pos)
                    (Pa_survivorat_s_p2)

                    ; #37591: <==closure== 24199 (pos)
                    (Pd_survivorat_s_p2)

                    ; #59867: <==closure== 88079 (pos)
                    (Pb_survivorat_s_p2)

                    ; #60910: origin
                    (Ba_survivorat_s_p2)

                    ; #88079: origin
                    (Bb_survivorat_s_p2)

                    ; #16140: <==negation-removal== 59867 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #17872: <==negation-removal== 37591 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #17997: <==negation-removal== 60910 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26300: <==negation-removal== 27451 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #32850: <==negation-removal== 24199 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #77590: <==negation-removal== 25397 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #84523: <==negation-removal== 88079 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #87658: <==negation-removal== 34473 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #20187: origin
                    (Bd_survivorat_s_p3)

                    ; #25309: <==closure== 20187 (pos)
                    (Pd_survivorat_s_p3)

                    ; #40274: origin
                    (Bc_survivorat_s_p3)

                    ; #43400: <==closure== 40274 (pos)
                    (Pc_survivorat_s_p3)

                    ; #45158: <==closure== 74219 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49510: <==closure== 84813 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74219: origin
                    (Bb_survivorat_s_p3)

                    ; #84813: origin
                    (Ba_survivorat_s_p3)

                    ; #36425: <==negation-removal== 74219 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #38366: <==negation-removal== 25309 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #43286: <==negation-removal== 40274 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46652: <==negation-removal== 20187 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #56773: <==negation-removal== 43400 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59818: <==negation-removal== 84813 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78749: <==negation-removal== 45158 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88297: <==negation-removal== 49510 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #20187: origin
                    (Bd_survivorat_s_p3)

                    ; #25309: <==closure== 20187 (pos)
                    (Pd_survivorat_s_p3)

                    ; #40274: origin
                    (Bc_survivorat_s_p3)

                    ; #43400: <==closure== 40274 (pos)
                    (Pc_survivorat_s_p3)

                    ; #45158: <==closure== 74219 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49510: <==closure== 84813 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74219: origin
                    (Bb_survivorat_s_p3)

                    ; #84813: origin
                    (Ba_survivorat_s_p3)

                    ; #36425: <==negation-removal== 74219 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #38366: <==negation-removal== 25309 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #43286: <==negation-removal== 40274 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46652: <==negation-removal== 20187 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #56773: <==negation-removal== 43400 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59818: <==negation-removal== 84813 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78749: <==negation-removal== 45158 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88297: <==negation-removal== 49510 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #20187: origin
                    (Bd_survivorat_s_p3)

                    ; #25309: <==closure== 20187 (pos)
                    (Pd_survivorat_s_p3)

                    ; #40274: origin
                    (Bc_survivorat_s_p3)

                    ; #43400: <==closure== 40274 (pos)
                    (Pc_survivorat_s_p3)

                    ; #45158: <==closure== 74219 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49510: <==closure== 84813 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74219: origin
                    (Bb_survivorat_s_p3)

                    ; #84813: origin
                    (Ba_survivorat_s_p3)

                    ; #36425: <==negation-removal== 74219 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #38366: <==negation-removal== 25309 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #43286: <==negation-removal== 40274 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46652: <==negation-removal== 20187 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #56773: <==negation-removal== 43400 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59818: <==negation-removal== 84813 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78749: <==negation-removal== 45158 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88297: <==negation-removal== 49510 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #20187: origin
                    (Bd_survivorat_s_p3)

                    ; #25309: <==closure== 20187 (pos)
                    (Pd_survivorat_s_p3)

                    ; #40274: origin
                    (Bc_survivorat_s_p3)

                    ; #43400: <==closure== 40274 (pos)
                    (Pc_survivorat_s_p3)

                    ; #45158: <==closure== 74219 (pos)
                    (Pb_survivorat_s_p3)

                    ; #49510: <==closure== 84813 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74219: origin
                    (Bb_survivorat_s_p3)

                    ; #84813: origin
                    (Ba_survivorat_s_p3)

                    ; #36425: <==negation-removal== 74219 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #38366: <==negation-removal== 25309 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #43286: <==negation-removal== 40274 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #46652: <==negation-removal== 20187 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #56773: <==negation-removal== 43400 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59818: <==negation-removal== 84813 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #78749: <==negation-removal== 45158 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #88297: <==negation-removal== 49510 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #14560: <==closure== 91019 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18491: origin
                    (Bb_survivorat_s_p4)

                    ; #21434: origin
                    (Bd_survivorat_s_p4)

                    ; #35025: <==closure== 21434 (pos)
                    (Pd_survivorat_s_p4)

                    ; #43737: origin
                    (Bc_survivorat_s_p4)

                    ; #49571: <==closure== 43737 (pos)
                    (Pc_survivorat_s_p4)

                    ; #71472: <==closure== 18491 (pos)
                    (Pb_survivorat_s_p4)

                    ; #91019: origin
                    (Ba_survivorat_s_p4)

                    ; #12711: <==negation-removal== 71472 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #18494: <==negation-removal== 49571 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #25964: <==negation-removal== 35025 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #34709: <==negation-removal== 91019 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #38610: <==negation-removal== 14560 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #58063: <==negation-removal== 21434 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #67677: <==negation-removal== 43737 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #89767: <==negation-removal== 18491 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #14560: <==closure== 91019 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18491: origin
                    (Bb_survivorat_s_p4)

                    ; #21434: origin
                    (Bd_survivorat_s_p4)

                    ; #35025: <==closure== 21434 (pos)
                    (Pd_survivorat_s_p4)

                    ; #43737: origin
                    (Bc_survivorat_s_p4)

                    ; #49571: <==closure== 43737 (pos)
                    (Pc_survivorat_s_p4)

                    ; #71472: <==closure== 18491 (pos)
                    (Pb_survivorat_s_p4)

                    ; #91019: origin
                    (Ba_survivorat_s_p4)

                    ; #12711: <==negation-removal== 71472 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #18494: <==negation-removal== 49571 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #25964: <==negation-removal== 35025 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #34709: <==negation-removal== 91019 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #38610: <==negation-removal== 14560 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #58063: <==negation-removal== 21434 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #67677: <==negation-removal== 43737 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #89767: <==negation-removal== 18491 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #14560: <==closure== 91019 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18491: origin
                    (Bb_survivorat_s_p4)

                    ; #21434: origin
                    (Bd_survivorat_s_p4)

                    ; #35025: <==closure== 21434 (pos)
                    (Pd_survivorat_s_p4)

                    ; #43737: origin
                    (Bc_survivorat_s_p4)

                    ; #49571: <==closure== 43737 (pos)
                    (Pc_survivorat_s_p4)

                    ; #71472: <==closure== 18491 (pos)
                    (Pb_survivorat_s_p4)

                    ; #91019: origin
                    (Ba_survivorat_s_p4)

                    ; #12711: <==negation-removal== 71472 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #18494: <==negation-removal== 49571 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #25964: <==negation-removal== 35025 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #34709: <==negation-removal== 91019 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #38610: <==negation-removal== 14560 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #58063: <==negation-removal== 21434 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #67677: <==negation-removal== 43737 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #89767: <==negation-removal== 18491 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #14560: <==closure== 91019 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18491: origin
                    (Bb_survivorat_s_p4)

                    ; #21434: origin
                    (Bd_survivorat_s_p4)

                    ; #35025: <==closure== 21434 (pos)
                    (Pd_survivorat_s_p4)

                    ; #43737: origin
                    (Bc_survivorat_s_p4)

                    ; #49571: <==closure== 43737 (pos)
                    (Pc_survivorat_s_p4)

                    ; #71472: <==closure== 18491 (pos)
                    (Pb_survivorat_s_p4)

                    ; #91019: origin
                    (Ba_survivorat_s_p4)

                    ; #12711: <==negation-removal== 71472 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #18494: <==negation-removal== 49571 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #25964: <==negation-removal== 35025 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #34709: <==negation-removal== 91019 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #38610: <==negation-removal== 14560 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #58063: <==negation-removal== 21434 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #67677: <==negation-removal== 43737 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #89767: <==negation-removal== 18491 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #26598: origin
                    (Bc_survivorat_s_p5)

                    ; #40298: <==closure== 26598 (pos)
                    (Pc_survivorat_s_p5)

                    ; #48303: origin
                    (Bb_survivorat_s_p5)

                    ; #52351: <==closure== 48303 (pos)
                    (Pb_survivorat_s_p5)

                    ; #55148: origin
                    (Ba_survivorat_s_p5)

                    ; #68664: <==closure== 55148 (pos)
                    (Pa_survivorat_s_p5)

                    ; #78654: <==closure== 84558 (pos)
                    (Pd_survivorat_s_p5)

                    ; #84558: origin
                    (Bd_survivorat_s_p5)

                    ; #37192: <==negation-removal== 52351 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #41143: <==negation-removal== 68664 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55528: <==negation-removal== 26598 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #60524: <==negation-removal== 55148 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #67705: <==negation-removal== 84558 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #68903: <==negation-removal== 78654 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #72792: <==negation-removal== 40298 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #89198: <==negation-removal== 48303 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #26598: origin
                    (Bc_survivorat_s_p5)

                    ; #40298: <==closure== 26598 (pos)
                    (Pc_survivorat_s_p5)

                    ; #48303: origin
                    (Bb_survivorat_s_p5)

                    ; #52351: <==closure== 48303 (pos)
                    (Pb_survivorat_s_p5)

                    ; #55148: origin
                    (Ba_survivorat_s_p5)

                    ; #68664: <==closure== 55148 (pos)
                    (Pa_survivorat_s_p5)

                    ; #78654: <==closure== 84558 (pos)
                    (Pd_survivorat_s_p5)

                    ; #84558: origin
                    (Bd_survivorat_s_p5)

                    ; #37192: <==negation-removal== 52351 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #41143: <==negation-removal== 68664 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55528: <==negation-removal== 26598 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #60524: <==negation-removal== 55148 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #67705: <==negation-removal== 84558 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #68903: <==negation-removal== 78654 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #72792: <==negation-removal== 40298 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #89198: <==negation-removal== 48303 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #26598: origin
                    (Bc_survivorat_s_p5)

                    ; #40298: <==closure== 26598 (pos)
                    (Pc_survivorat_s_p5)

                    ; #48303: origin
                    (Bb_survivorat_s_p5)

                    ; #52351: <==closure== 48303 (pos)
                    (Pb_survivorat_s_p5)

                    ; #55148: origin
                    (Ba_survivorat_s_p5)

                    ; #68664: <==closure== 55148 (pos)
                    (Pa_survivorat_s_p5)

                    ; #78654: <==closure== 84558 (pos)
                    (Pd_survivorat_s_p5)

                    ; #84558: origin
                    (Bd_survivorat_s_p5)

                    ; #37192: <==negation-removal== 52351 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #41143: <==negation-removal== 68664 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55528: <==negation-removal== 26598 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #60524: <==negation-removal== 55148 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #67705: <==negation-removal== 84558 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #68903: <==negation-removal== 78654 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #72792: <==negation-removal== 40298 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #89198: <==negation-removal== 48303 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #26598: origin
                    (Bc_survivorat_s_p5)

                    ; #40298: <==closure== 26598 (pos)
                    (Pc_survivorat_s_p5)

                    ; #48303: origin
                    (Bb_survivorat_s_p5)

                    ; #52351: <==closure== 48303 (pos)
                    (Pb_survivorat_s_p5)

                    ; #55148: origin
                    (Ba_survivorat_s_p5)

                    ; #68664: <==closure== 55148 (pos)
                    (Pa_survivorat_s_p5)

                    ; #78654: <==closure== 84558 (pos)
                    (Pd_survivorat_s_p5)

                    ; #84558: origin
                    (Bd_survivorat_s_p5)

                    ; #37192: <==negation-removal== 52351 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #41143: <==negation-removal== 68664 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #55528: <==negation-removal== 26598 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #60524: <==negation-removal== 55148 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #67705: <==negation-removal== 84558 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #68903: <==negation-removal== 78654 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #72792: <==negation-removal== 40298 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #89198: <==negation-removal== 48303 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #12483: origin
                    (Bc_survivorat_s_p6)

                    ; #29846: origin
                    (Bd_survivorat_s_p6)

                    ; #30704: <==closure== 54134 (pos)
                    (Pa_survivorat_s_p6)

                    ; #32119: <==closure== 76265 (pos)
                    (Pb_survivorat_s_p6)

                    ; #39248: <==closure== 29846 (pos)
                    (Pd_survivorat_s_p6)

                    ; #54134: origin
                    (Ba_survivorat_s_p6)

                    ; #76265: origin
                    (Bb_survivorat_s_p6)

                    ; #89695: <==closure== 12483 (pos)
                    (Pc_survivorat_s_p6)

                    ; #19954: <==negation-removal== 32119 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #38003: <==negation-removal== 39248 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #41280: <==negation-removal== 89695 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #42835: <==negation-removal== 12483 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #74857: <==negation-removal== 76265 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #78814: <==negation-removal== 30704 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #79120: <==negation-removal== 29846 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #87939: <==negation-removal== 54134 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #12483: origin
                    (Bc_survivorat_s_p6)

                    ; #29846: origin
                    (Bd_survivorat_s_p6)

                    ; #30704: <==closure== 54134 (pos)
                    (Pa_survivorat_s_p6)

                    ; #32119: <==closure== 76265 (pos)
                    (Pb_survivorat_s_p6)

                    ; #39248: <==closure== 29846 (pos)
                    (Pd_survivorat_s_p6)

                    ; #54134: origin
                    (Ba_survivorat_s_p6)

                    ; #76265: origin
                    (Bb_survivorat_s_p6)

                    ; #89695: <==closure== 12483 (pos)
                    (Pc_survivorat_s_p6)

                    ; #19954: <==negation-removal== 32119 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #38003: <==negation-removal== 39248 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #41280: <==negation-removal== 89695 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #42835: <==negation-removal== 12483 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #74857: <==negation-removal== 76265 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #78814: <==negation-removal== 30704 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #79120: <==negation-removal== 29846 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #87939: <==negation-removal== 54134 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #12483: origin
                    (Bc_survivorat_s_p6)

                    ; #29846: origin
                    (Bd_survivorat_s_p6)

                    ; #30704: <==closure== 54134 (pos)
                    (Pa_survivorat_s_p6)

                    ; #32119: <==closure== 76265 (pos)
                    (Pb_survivorat_s_p6)

                    ; #39248: <==closure== 29846 (pos)
                    (Pd_survivorat_s_p6)

                    ; #54134: origin
                    (Ba_survivorat_s_p6)

                    ; #76265: origin
                    (Bb_survivorat_s_p6)

                    ; #89695: <==closure== 12483 (pos)
                    (Pc_survivorat_s_p6)

                    ; #19954: <==negation-removal== 32119 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #38003: <==negation-removal== 39248 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #41280: <==negation-removal== 89695 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #42835: <==negation-removal== 12483 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #74857: <==negation-removal== 76265 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #78814: <==negation-removal== 30704 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #79120: <==negation-removal== 29846 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #87939: <==negation-removal== 54134 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (at_d_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #12483: origin
                    (Bc_survivorat_s_p6)

                    ; #29846: origin
                    (Bd_survivorat_s_p6)

                    ; #30704: <==closure== 54134 (pos)
                    (Pa_survivorat_s_p6)

                    ; #32119: <==closure== 76265 (pos)
                    (Pb_survivorat_s_p6)

                    ; #39248: <==closure== 29846 (pos)
                    (Pd_survivorat_s_p6)

                    ; #54134: origin
                    (Ba_survivorat_s_p6)

                    ; #76265: origin
                    (Bb_survivorat_s_p6)

                    ; #89695: <==closure== 12483 (pos)
                    (Pc_survivorat_s_p6)

                    ; #19954: <==negation-removal== 32119 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #38003: <==negation-removal== 39248 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #41280: <==negation-removal== 89695 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #42835: <==negation-removal== 12483 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #74857: <==negation-removal== 76265 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #78814: <==negation-removal== 30704 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #79120: <==negation-removal== 29846 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #87939: <==negation-removal== 54134 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #10774: <==closure== 65455 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20152: <==closure== 88228 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59969: <==closure== 84045 (pos)
                    (Pb_survivorat_s_p7)

                    ; #62542: origin
                    (Bc_survivorat_s_p7)

                    ; #65455: origin
                    (Ba_survivorat_s_p7)

                    ; #77290: <==closure== 62542 (pos)
                    (Pc_survivorat_s_p7)

                    ; #84045: origin
                    (Bb_survivorat_s_p7)

                    ; #88228: origin
                    (Bd_survivorat_s_p7)

                    ; #28310: <==negation-removal== 59969 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36502: <==negation-removal== 88228 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #38657: <==negation-removal== 10774 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #57388: <==negation-removal== 20152 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #70747: <==negation-removal== 65455 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #71560: <==negation-removal== 84045 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #87352: <==negation-removal== 77290 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #89818: <==negation-removal== 62542 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #10774: <==closure== 65455 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20152: <==closure== 88228 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59969: <==closure== 84045 (pos)
                    (Pb_survivorat_s_p7)

                    ; #62542: origin
                    (Bc_survivorat_s_p7)

                    ; #65455: origin
                    (Ba_survivorat_s_p7)

                    ; #77290: <==closure== 62542 (pos)
                    (Pc_survivorat_s_p7)

                    ; #84045: origin
                    (Bb_survivorat_s_p7)

                    ; #88228: origin
                    (Bd_survivorat_s_p7)

                    ; #28310: <==negation-removal== 59969 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36502: <==negation-removal== 88228 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #38657: <==negation-removal== 10774 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #57388: <==negation-removal== 20152 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #70747: <==negation-removal== 65455 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #71560: <==negation-removal== 84045 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #87352: <==negation-removal== 77290 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #89818: <==negation-removal== 62542 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #10774: <==closure== 65455 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20152: <==closure== 88228 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59969: <==closure== 84045 (pos)
                    (Pb_survivorat_s_p7)

                    ; #62542: origin
                    (Bc_survivorat_s_p7)

                    ; #65455: origin
                    (Ba_survivorat_s_p7)

                    ; #77290: <==closure== 62542 (pos)
                    (Pc_survivorat_s_p7)

                    ; #84045: origin
                    (Bb_survivorat_s_p7)

                    ; #88228: origin
                    (Bd_survivorat_s_p7)

                    ; #28310: <==negation-removal== 59969 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36502: <==negation-removal== 88228 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #38657: <==negation-removal== 10774 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #57388: <==negation-removal== 20152 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #70747: <==negation-removal== 65455 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #71560: <==negation-removal== 84045 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #87352: <==negation-removal== 77290 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #89818: <==negation-removal== 62542 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #10774: <==closure== 65455 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20152: <==closure== 88228 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59969: <==closure== 84045 (pos)
                    (Pb_survivorat_s_p7)

                    ; #62542: origin
                    (Bc_survivorat_s_p7)

                    ; #65455: origin
                    (Ba_survivorat_s_p7)

                    ; #77290: <==closure== 62542 (pos)
                    (Pc_survivorat_s_p7)

                    ; #84045: origin
                    (Bb_survivorat_s_p7)

                    ; #88228: origin
                    (Bd_survivorat_s_p7)

                    ; #28310: <==negation-removal== 59969 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36502: <==negation-removal== 88228 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #38657: <==negation-removal== 10774 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #57388: <==negation-removal== 20152 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #70747: <==negation-removal== 65455 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #71560: <==negation-removal== 84045 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #87352: <==negation-removal== 77290 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #89818: <==negation-removal== 62542 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #16263: origin
                    (Bd_survivorat_s_p8)

                    ; #32970: <==closure== 77368 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50260: <==closure== 91515 (pos)
                    (Pb_survivorat_s_p8)

                    ; #56446: <==closure== 16263 (pos)
                    (Pd_survivorat_s_p8)

                    ; #67292: <==closure== 70546 (pos)
                    (Pc_survivorat_s_p8)

                    ; #70546: origin
                    (Bc_survivorat_s_p8)

                    ; #77368: origin
                    (Ba_survivorat_s_p8)

                    ; #91515: origin
                    (Bb_survivorat_s_p8)

                    ; #33852: <==negation-removal== 70546 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36126: <==negation-removal== 91515 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #38815: <==negation-removal== 50260 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #45061: <==negation-removal== 67292 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #61627: <==negation-removal== 77368 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #68690: <==negation-removal== 16263 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #74601: <==negation-removal== 56446 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #90851: <==negation-removal== 32970 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #16263: origin
                    (Bd_survivorat_s_p8)

                    ; #32970: <==closure== 77368 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50260: <==closure== 91515 (pos)
                    (Pb_survivorat_s_p8)

                    ; #56446: <==closure== 16263 (pos)
                    (Pd_survivorat_s_p8)

                    ; #67292: <==closure== 70546 (pos)
                    (Pc_survivorat_s_p8)

                    ; #70546: origin
                    (Bc_survivorat_s_p8)

                    ; #77368: origin
                    (Ba_survivorat_s_p8)

                    ; #91515: origin
                    (Bb_survivorat_s_p8)

                    ; #33852: <==negation-removal== 70546 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36126: <==negation-removal== 91515 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #38815: <==negation-removal== 50260 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #45061: <==negation-removal== 67292 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #61627: <==negation-removal== 77368 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #68690: <==negation-removal== 16263 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #74601: <==negation-removal== 56446 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #90851: <==negation-removal== 32970 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #16263: origin
                    (Bd_survivorat_s_p8)

                    ; #32970: <==closure== 77368 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50260: <==closure== 91515 (pos)
                    (Pb_survivorat_s_p8)

                    ; #56446: <==closure== 16263 (pos)
                    (Pd_survivorat_s_p8)

                    ; #67292: <==closure== 70546 (pos)
                    (Pc_survivorat_s_p8)

                    ; #70546: origin
                    (Bc_survivorat_s_p8)

                    ; #77368: origin
                    (Ba_survivorat_s_p8)

                    ; #91515: origin
                    (Bb_survivorat_s_p8)

                    ; #33852: <==negation-removal== 70546 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36126: <==negation-removal== 91515 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #38815: <==negation-removal== 50260 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #45061: <==negation-removal== 67292 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #61627: <==negation-removal== 77368 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #68690: <==negation-removal== 16263 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #74601: <==negation-removal== 56446 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #90851: <==negation-removal== 32970 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #16263: origin
                    (Bd_survivorat_s_p8)

                    ; #32970: <==closure== 77368 (pos)
                    (Pa_survivorat_s_p8)

                    ; #50260: <==closure== 91515 (pos)
                    (Pb_survivorat_s_p8)

                    ; #56446: <==closure== 16263 (pos)
                    (Pd_survivorat_s_p8)

                    ; #67292: <==closure== 70546 (pos)
                    (Pc_survivorat_s_p8)

                    ; #70546: origin
                    (Bc_survivorat_s_p8)

                    ; #77368: origin
                    (Ba_survivorat_s_p8)

                    ; #91515: origin
                    (Bb_survivorat_s_p8)

                    ; #33852: <==negation-removal== 70546 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36126: <==negation-removal== 91515 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #38815: <==negation-removal== 50260 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #45061: <==negation-removal== 67292 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #61627: <==negation-removal== 77368 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #68690: <==negation-removal== 16263 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #74601: <==negation-removal== 56446 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #90851: <==negation-removal== 32970 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #12531: <==closure== 71726 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25714: origin
                    (Bd_survivorat_s_p9)

                    ; #36263: origin
                    (Bc_survivorat_s_p9)

                    ; #38882: <==closure== 25714 (pos)
                    (Pd_survivorat_s_p9)

                    ; #55303: <==closure== 36263 (pos)
                    (Pc_survivorat_s_p9)

                    ; #60507: <==closure== 85707 (pos)
                    (Pb_survivorat_s_p9)

                    ; #71726: origin
                    (Ba_survivorat_s_p9)

                    ; #85707: origin
                    (Bb_survivorat_s_p9)

                    ; #17283: <==negation-removal== 25714 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #24674: <==negation-removal== 60507 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #32834: <==negation-removal== 71726 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #33230: <==negation-removal== 36263 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #44986: <==negation-removal== 85707 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #49723: <==negation-removal== 38882 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #55779: <==negation-removal== 55303 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56631: <==negation-removal== 12531 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #12531: <==closure== 71726 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25714: origin
                    (Bd_survivorat_s_p9)

                    ; #36263: origin
                    (Bc_survivorat_s_p9)

                    ; #38882: <==closure== 25714 (pos)
                    (Pd_survivorat_s_p9)

                    ; #55303: <==closure== 36263 (pos)
                    (Pc_survivorat_s_p9)

                    ; #60507: <==closure== 85707 (pos)
                    (Pb_survivorat_s_p9)

                    ; #71726: origin
                    (Ba_survivorat_s_p9)

                    ; #85707: origin
                    (Bb_survivorat_s_p9)

                    ; #17283: <==negation-removal== 25714 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #24674: <==negation-removal== 60507 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #32834: <==negation-removal== 71726 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #33230: <==negation-removal== 36263 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #44986: <==negation-removal== 85707 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #49723: <==negation-removal== 38882 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #55779: <==negation-removal== 55303 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56631: <==negation-removal== 12531 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #12531: <==closure== 71726 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25714: origin
                    (Bd_survivorat_s_p9)

                    ; #36263: origin
                    (Bc_survivorat_s_p9)

                    ; #38882: <==closure== 25714 (pos)
                    (Pd_survivorat_s_p9)

                    ; #55303: <==closure== 36263 (pos)
                    (Pc_survivorat_s_p9)

                    ; #60507: <==closure== 85707 (pos)
                    (Pb_survivorat_s_p9)

                    ; #71726: origin
                    (Ba_survivorat_s_p9)

                    ; #85707: origin
                    (Bb_survivorat_s_p9)

                    ; #17283: <==negation-removal== 25714 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #24674: <==negation-removal== 60507 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #32834: <==negation-removal== 71726 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #33230: <==negation-removal== 36263 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #44986: <==negation-removal== 85707 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #49723: <==negation-removal== 38882 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #55779: <==negation-removal== 55303 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56631: <==negation-removal== 12531 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (Bd_survivorat_s_p9)
                           (at_d_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #12531: <==closure== 71726 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25714: origin
                    (Bd_survivorat_s_p9)

                    ; #36263: origin
                    (Bc_survivorat_s_p9)

                    ; #38882: <==closure== 25714 (pos)
                    (Pd_survivorat_s_p9)

                    ; #55303: <==closure== 36263 (pos)
                    (Pc_survivorat_s_p9)

                    ; #60507: <==closure== 85707 (pos)
                    (Pb_survivorat_s_p9)

                    ; #71726: origin
                    (Ba_survivorat_s_p9)

                    ; #85707: origin
                    (Bb_survivorat_s_p9)

                    ; #17283: <==negation-removal== 25714 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #24674: <==negation-removal== 60507 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #32834: <==negation-removal== 71726 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #33230: <==negation-removal== 36263 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #44986: <==negation-removal== 85707 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #49723: <==negation-removal== 38882 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #55779: <==negation-removal== 55303 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56631: <==negation-removal== 12531 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #49583: origin
                    (not_at_a_p1)

                    ; #51599: origin
                    (at_a_p1)

                    ; #49583: <==negation-removal== 51599 (pos)
                    (not (not_at_a_p1))

                    ; #51599: <==negation-removal== 49583 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #10264: origin
                    (at_a_p2)

                    ; #49583: origin
                    (not_at_a_p1)

                    ; #25854: <==negation-removal== 10264 (pos)
                    (not (not_at_a_p2))

                    ; #51599: <==negation-removal== 49583 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #45499: origin
                    (at_a_p3)

                    ; #49583: origin
                    (not_at_a_p1)

                    ; #51599: <==negation-removal== 49583 (pos)
                    (not (at_a_p1))

                    ; #83520: <==negation-removal== 45499 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #31438: origin
                    (at_a_p4)

                    ; #49583: origin
                    (not_at_a_p1)

                    ; #48944: <==negation-removal== 31438 (pos)
                    (not (not_at_a_p4))

                    ; #51599: <==negation-removal== 49583 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #41003: origin
                    (at_a_p5)

                    ; #49583: origin
                    (not_at_a_p1)

                    ; #51599: <==negation-removal== 49583 (pos)
                    (not (at_a_p1))

                    ; #91680: <==negation-removal== 41003 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #26380: origin
                    (at_a_p6)

                    ; #49583: origin
                    (not_at_a_p1)

                    ; #51599: <==negation-removal== 49583 (pos)
                    (not (at_a_p1))

                    ; #85970: <==negation-removal== 26380 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #47773: origin
                    (at_a_p7)

                    ; #49583: origin
                    (not_at_a_p1)

                    ; #33687: <==negation-removal== 47773 (pos)
                    (not (not_at_a_p7))

                    ; #51599: <==negation-removal== 49583 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #49583: origin
                    (not_at_a_p1)

                    ; #85142: origin
                    (at_a_p8)

                    ; #18079: <==negation-removal== 85142 (pos)
                    (not (not_at_a_p8))

                    ; #51599: <==negation-removal== 49583 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #37972: origin
                    (at_a_p9)

                    ; #49583: origin
                    (not_at_a_p1)

                    ; #41303: <==negation-removal== 37972 (pos)
                    (not (not_at_a_p9))

                    ; #51599: <==negation-removal== 49583 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #25854: origin
                    (not_at_a_p2)

                    ; #51599: origin
                    (at_a_p1)

                    ; #10264: <==negation-removal== 25854 (pos)
                    (not (at_a_p2))

                    ; #49583: <==negation-removal== 51599 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #10264: origin
                    (at_a_p2)

                    ; #25854: origin
                    (not_at_a_p2)

                    ; #10264: <==negation-removal== 25854 (pos)
                    (not (at_a_p2))

                    ; #25854: <==negation-removal== 10264 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #25854: origin
                    (not_at_a_p2)

                    ; #45499: origin
                    (at_a_p3)

                    ; #10264: <==negation-removal== 25854 (pos)
                    (not (at_a_p2))

                    ; #83520: <==negation-removal== 45499 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #25854: origin
                    (not_at_a_p2)

                    ; #31438: origin
                    (at_a_p4)

                    ; #10264: <==negation-removal== 25854 (pos)
                    (not (at_a_p2))

                    ; #48944: <==negation-removal== 31438 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #25854: origin
                    (not_at_a_p2)

                    ; #41003: origin
                    (at_a_p5)

                    ; #10264: <==negation-removal== 25854 (pos)
                    (not (at_a_p2))

                    ; #91680: <==negation-removal== 41003 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #25854: origin
                    (not_at_a_p2)

                    ; #26380: origin
                    (at_a_p6)

                    ; #10264: <==negation-removal== 25854 (pos)
                    (not (at_a_p2))

                    ; #85970: <==negation-removal== 26380 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #25854: origin
                    (not_at_a_p2)

                    ; #47773: origin
                    (at_a_p7)

                    ; #10264: <==negation-removal== 25854 (pos)
                    (not (at_a_p2))

                    ; #33687: <==negation-removal== 47773 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #25854: origin
                    (not_at_a_p2)

                    ; #85142: origin
                    (at_a_p8)

                    ; #10264: <==negation-removal== 25854 (pos)
                    (not (at_a_p2))

                    ; #18079: <==negation-removal== 85142 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #25854: origin
                    (not_at_a_p2)

                    ; #37972: origin
                    (at_a_p9)

                    ; #10264: <==negation-removal== 25854 (pos)
                    (not (at_a_p2))

                    ; #41303: <==negation-removal== 37972 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #51599: origin
                    (at_a_p1)

                    ; #83520: origin
                    (not_at_a_p3)

                    ; #45499: <==negation-removal== 83520 (pos)
                    (not (at_a_p3))

                    ; #49583: <==negation-removal== 51599 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #10264: origin
                    (at_a_p2)

                    ; #83520: origin
                    (not_at_a_p3)

                    ; #25854: <==negation-removal== 10264 (pos)
                    (not (not_at_a_p2))

                    ; #45499: <==negation-removal== 83520 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #45499: origin
                    (at_a_p3)

                    ; #83520: origin
                    (not_at_a_p3)

                    ; #45499: <==negation-removal== 83520 (pos)
                    (not (at_a_p3))

                    ; #83520: <==negation-removal== 45499 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #31438: origin
                    (at_a_p4)

                    ; #83520: origin
                    (not_at_a_p3)

                    ; #45499: <==negation-removal== 83520 (pos)
                    (not (at_a_p3))

                    ; #48944: <==negation-removal== 31438 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #41003: origin
                    (at_a_p5)

                    ; #83520: origin
                    (not_at_a_p3)

                    ; #45499: <==negation-removal== 83520 (pos)
                    (not (at_a_p3))

                    ; #91680: <==negation-removal== 41003 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #26380: origin
                    (at_a_p6)

                    ; #83520: origin
                    (not_at_a_p3)

                    ; #45499: <==negation-removal== 83520 (pos)
                    (not (at_a_p3))

                    ; #85970: <==negation-removal== 26380 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #47773: origin
                    (at_a_p7)

                    ; #83520: origin
                    (not_at_a_p3)

                    ; #33687: <==negation-removal== 47773 (pos)
                    (not (not_at_a_p7))

                    ; #45499: <==negation-removal== 83520 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #83520: origin
                    (not_at_a_p3)

                    ; #85142: origin
                    (at_a_p8)

                    ; #18079: <==negation-removal== 85142 (pos)
                    (not (not_at_a_p8))

                    ; #45499: <==negation-removal== 83520 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #37972: origin
                    (at_a_p9)

                    ; #83520: origin
                    (not_at_a_p3)

                    ; #41303: <==negation-removal== 37972 (pos)
                    (not (not_at_a_p9))

                    ; #45499: <==negation-removal== 83520 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #48944: origin
                    (not_at_a_p4)

                    ; #51599: origin
                    (at_a_p1)

                    ; #31438: <==negation-removal== 48944 (pos)
                    (not (at_a_p4))

                    ; #49583: <==negation-removal== 51599 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #10264: origin
                    (at_a_p2)

                    ; #48944: origin
                    (not_at_a_p4)

                    ; #25854: <==negation-removal== 10264 (pos)
                    (not (not_at_a_p2))

                    ; #31438: <==negation-removal== 48944 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #45499: origin
                    (at_a_p3)

                    ; #48944: origin
                    (not_at_a_p4)

                    ; #31438: <==negation-removal== 48944 (pos)
                    (not (at_a_p4))

                    ; #83520: <==negation-removal== 45499 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #31438: origin
                    (at_a_p4)

                    ; #48944: origin
                    (not_at_a_p4)

                    ; #31438: <==negation-removal== 48944 (pos)
                    (not (at_a_p4))

                    ; #48944: <==negation-removal== 31438 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #41003: origin
                    (at_a_p5)

                    ; #48944: origin
                    (not_at_a_p4)

                    ; #31438: <==negation-removal== 48944 (pos)
                    (not (at_a_p4))

                    ; #91680: <==negation-removal== 41003 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #26380: origin
                    (at_a_p6)

                    ; #48944: origin
                    (not_at_a_p4)

                    ; #31438: <==negation-removal== 48944 (pos)
                    (not (at_a_p4))

                    ; #85970: <==negation-removal== 26380 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #47773: origin
                    (at_a_p7)

                    ; #48944: origin
                    (not_at_a_p4)

                    ; #31438: <==negation-removal== 48944 (pos)
                    (not (at_a_p4))

                    ; #33687: <==negation-removal== 47773 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #48944: origin
                    (not_at_a_p4)

                    ; #85142: origin
                    (at_a_p8)

                    ; #18079: <==negation-removal== 85142 (pos)
                    (not (not_at_a_p8))

                    ; #31438: <==negation-removal== 48944 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #37972: origin
                    (at_a_p9)

                    ; #48944: origin
                    (not_at_a_p4)

                    ; #31438: <==negation-removal== 48944 (pos)
                    (not (at_a_p4))

                    ; #41303: <==negation-removal== 37972 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #51599: origin
                    (at_a_p1)

                    ; #91680: origin
                    (not_at_a_p5)

                    ; #41003: <==negation-removal== 91680 (pos)
                    (not (at_a_p5))

                    ; #49583: <==negation-removal== 51599 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #10264: origin
                    (at_a_p2)

                    ; #91680: origin
                    (not_at_a_p5)

                    ; #25854: <==negation-removal== 10264 (pos)
                    (not (not_at_a_p2))

                    ; #41003: <==negation-removal== 91680 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #45499: origin
                    (at_a_p3)

                    ; #91680: origin
                    (not_at_a_p5)

                    ; #41003: <==negation-removal== 91680 (pos)
                    (not (at_a_p5))

                    ; #83520: <==negation-removal== 45499 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #31438: origin
                    (at_a_p4)

                    ; #91680: origin
                    (not_at_a_p5)

                    ; #41003: <==negation-removal== 91680 (pos)
                    (not (at_a_p5))

                    ; #48944: <==negation-removal== 31438 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #41003: origin
                    (at_a_p5)

                    ; #91680: origin
                    (not_at_a_p5)

                    ; #41003: <==negation-removal== 91680 (pos)
                    (not (at_a_p5))

                    ; #91680: <==negation-removal== 41003 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #26380: origin
                    (at_a_p6)

                    ; #91680: origin
                    (not_at_a_p5)

                    ; #41003: <==negation-removal== 91680 (pos)
                    (not (at_a_p5))

                    ; #85970: <==negation-removal== 26380 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #47773: origin
                    (at_a_p7)

                    ; #91680: origin
                    (not_at_a_p5)

                    ; #33687: <==negation-removal== 47773 (pos)
                    (not (not_at_a_p7))

                    ; #41003: <==negation-removal== 91680 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #85142: origin
                    (at_a_p8)

                    ; #91680: origin
                    (not_at_a_p5)

                    ; #18079: <==negation-removal== 85142 (pos)
                    (not (not_at_a_p8))

                    ; #41003: <==negation-removal== 91680 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #37972: origin
                    (at_a_p9)

                    ; #91680: origin
                    (not_at_a_p5)

                    ; #41003: <==negation-removal== 91680 (pos)
                    (not (at_a_p5))

                    ; #41303: <==negation-removal== 37972 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #51599: origin
                    (at_a_p1)

                    ; #85970: origin
                    (not_at_a_p6)

                    ; #26380: <==negation-removal== 85970 (pos)
                    (not (at_a_p6))

                    ; #49583: <==negation-removal== 51599 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #10264: origin
                    (at_a_p2)

                    ; #85970: origin
                    (not_at_a_p6)

                    ; #25854: <==negation-removal== 10264 (pos)
                    (not (not_at_a_p2))

                    ; #26380: <==negation-removal== 85970 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #45499: origin
                    (at_a_p3)

                    ; #85970: origin
                    (not_at_a_p6)

                    ; #26380: <==negation-removal== 85970 (pos)
                    (not (at_a_p6))

                    ; #83520: <==negation-removal== 45499 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #31438: origin
                    (at_a_p4)

                    ; #85970: origin
                    (not_at_a_p6)

                    ; #26380: <==negation-removal== 85970 (pos)
                    (not (at_a_p6))

                    ; #48944: <==negation-removal== 31438 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #41003: origin
                    (at_a_p5)

                    ; #85970: origin
                    (not_at_a_p6)

                    ; #26380: <==negation-removal== 85970 (pos)
                    (not (at_a_p6))

                    ; #91680: <==negation-removal== 41003 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #26380: origin
                    (at_a_p6)

                    ; #85970: origin
                    (not_at_a_p6)

                    ; #26380: <==negation-removal== 85970 (pos)
                    (not (at_a_p6))

                    ; #85970: <==negation-removal== 26380 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #47773: origin
                    (at_a_p7)

                    ; #85970: origin
                    (not_at_a_p6)

                    ; #26380: <==negation-removal== 85970 (pos)
                    (not (at_a_p6))

                    ; #33687: <==negation-removal== 47773 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #85142: origin
                    (at_a_p8)

                    ; #85970: origin
                    (not_at_a_p6)

                    ; #18079: <==negation-removal== 85142 (pos)
                    (not (not_at_a_p8))

                    ; #26380: <==negation-removal== 85970 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #37972: origin
                    (at_a_p9)

                    ; #85970: origin
                    (not_at_a_p6)

                    ; #26380: <==negation-removal== 85970 (pos)
                    (not (at_a_p6))

                    ; #41303: <==negation-removal== 37972 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #33687: origin
                    (not_at_a_p7)

                    ; #51599: origin
                    (at_a_p1)

                    ; #47773: <==negation-removal== 33687 (pos)
                    (not (at_a_p7))

                    ; #49583: <==negation-removal== 51599 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #10264: origin
                    (at_a_p2)

                    ; #33687: origin
                    (not_at_a_p7)

                    ; #25854: <==negation-removal== 10264 (pos)
                    (not (not_at_a_p2))

                    ; #47773: <==negation-removal== 33687 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #33687: origin
                    (not_at_a_p7)

                    ; #45499: origin
                    (at_a_p3)

                    ; #47773: <==negation-removal== 33687 (pos)
                    (not (at_a_p7))

                    ; #83520: <==negation-removal== 45499 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #31438: origin
                    (at_a_p4)

                    ; #33687: origin
                    (not_at_a_p7)

                    ; #47773: <==negation-removal== 33687 (pos)
                    (not (at_a_p7))

                    ; #48944: <==negation-removal== 31438 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #33687: origin
                    (not_at_a_p7)

                    ; #41003: origin
                    (at_a_p5)

                    ; #47773: <==negation-removal== 33687 (pos)
                    (not (at_a_p7))

                    ; #91680: <==negation-removal== 41003 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #26380: origin
                    (at_a_p6)

                    ; #33687: origin
                    (not_at_a_p7)

                    ; #47773: <==negation-removal== 33687 (pos)
                    (not (at_a_p7))

                    ; #85970: <==negation-removal== 26380 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #33687: origin
                    (not_at_a_p7)

                    ; #47773: origin
                    (at_a_p7)

                    ; #33687: <==negation-removal== 47773 (pos)
                    (not (not_at_a_p7))

                    ; #47773: <==negation-removal== 33687 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #33687: origin
                    (not_at_a_p7)

                    ; #85142: origin
                    (at_a_p8)

                    ; #18079: <==negation-removal== 85142 (pos)
                    (not (not_at_a_p8))

                    ; #47773: <==negation-removal== 33687 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #33687: origin
                    (not_at_a_p7)

                    ; #37972: origin
                    (at_a_p9)

                    ; #41303: <==negation-removal== 37972 (pos)
                    (not (not_at_a_p9))

                    ; #47773: <==negation-removal== 33687 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #18079: origin
                    (not_at_a_p8)

                    ; #51599: origin
                    (at_a_p1)

                    ; #49583: <==negation-removal== 51599 (pos)
                    (not (not_at_a_p1))

                    ; #85142: <==negation-removal== 18079 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #10264: origin
                    (at_a_p2)

                    ; #18079: origin
                    (not_at_a_p8)

                    ; #25854: <==negation-removal== 10264 (pos)
                    (not (not_at_a_p2))

                    ; #85142: <==negation-removal== 18079 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #18079: origin
                    (not_at_a_p8)

                    ; #45499: origin
                    (at_a_p3)

                    ; #83520: <==negation-removal== 45499 (pos)
                    (not (not_at_a_p3))

                    ; #85142: <==negation-removal== 18079 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #18079: origin
                    (not_at_a_p8)

                    ; #31438: origin
                    (at_a_p4)

                    ; #48944: <==negation-removal== 31438 (pos)
                    (not (not_at_a_p4))

                    ; #85142: <==negation-removal== 18079 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #18079: origin
                    (not_at_a_p8)

                    ; #41003: origin
                    (at_a_p5)

                    ; #85142: <==negation-removal== 18079 (pos)
                    (not (at_a_p8))

                    ; #91680: <==negation-removal== 41003 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #18079: origin
                    (not_at_a_p8)

                    ; #26380: origin
                    (at_a_p6)

                    ; #85142: <==negation-removal== 18079 (pos)
                    (not (at_a_p8))

                    ; #85970: <==negation-removal== 26380 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #18079: origin
                    (not_at_a_p8)

                    ; #47773: origin
                    (at_a_p7)

                    ; #33687: <==negation-removal== 47773 (pos)
                    (not (not_at_a_p7))

                    ; #85142: <==negation-removal== 18079 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #18079: origin
                    (not_at_a_p8)

                    ; #85142: origin
                    (at_a_p8)

                    ; #18079: <==negation-removal== 85142 (pos)
                    (not (not_at_a_p8))

                    ; #85142: <==negation-removal== 18079 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #18079: origin
                    (not_at_a_p8)

                    ; #37972: origin
                    (at_a_p9)

                    ; #41303: <==negation-removal== 37972 (pos)
                    (not (not_at_a_p9))

                    ; #85142: <==negation-removal== 18079 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #41303: origin
                    (not_at_a_p9)

                    ; #51599: origin
                    (at_a_p1)

                    ; #37972: <==negation-removal== 41303 (pos)
                    (not (at_a_p9))

                    ; #49583: <==negation-removal== 51599 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #10264: origin
                    (at_a_p2)

                    ; #41303: origin
                    (not_at_a_p9)

                    ; #25854: <==negation-removal== 10264 (pos)
                    (not (not_at_a_p2))

                    ; #37972: <==negation-removal== 41303 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #41303: origin
                    (not_at_a_p9)

                    ; #45499: origin
                    (at_a_p3)

                    ; #37972: <==negation-removal== 41303 (pos)
                    (not (at_a_p9))

                    ; #83520: <==negation-removal== 45499 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #31438: origin
                    (at_a_p4)

                    ; #41303: origin
                    (not_at_a_p9)

                    ; #37972: <==negation-removal== 41303 (pos)
                    (not (at_a_p9))

                    ; #48944: <==negation-removal== 31438 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #41003: origin
                    (at_a_p5)

                    ; #41303: origin
                    (not_at_a_p9)

                    ; #37972: <==negation-removal== 41303 (pos)
                    (not (at_a_p9))

                    ; #91680: <==negation-removal== 41003 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #26380: origin
                    (at_a_p6)

                    ; #41303: origin
                    (not_at_a_p9)

                    ; #37972: <==negation-removal== 41303 (pos)
                    (not (at_a_p9))

                    ; #85970: <==negation-removal== 26380 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #41303: origin
                    (not_at_a_p9)

                    ; #47773: origin
                    (at_a_p7)

                    ; #33687: <==negation-removal== 47773 (pos)
                    (not (not_at_a_p7))

                    ; #37972: <==negation-removal== 41303 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #41303: origin
                    (not_at_a_p9)

                    ; #85142: origin
                    (at_a_p8)

                    ; #18079: <==negation-removal== 85142 (pos)
                    (not (not_at_a_p8))

                    ; #37972: <==negation-removal== 41303 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #37972: origin
                    (at_a_p9)

                    ; #41303: origin
                    (not_at_a_p9)

                    ; #37972: <==negation-removal== 41303 (pos)
                    (not (at_a_p9))

                    ; #41303: <==negation-removal== 37972 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #72717: origin
                    (not_at_b_p1)

                    ; #79638: origin
                    (at_b_p1)

                    ; #72717: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p1))

                    ; #79638: <==negation-removal== 72717 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #34414: origin
                    (at_b_p2)

                    ; #72717: origin
                    (not_at_b_p1)

                    ; #29263: <==negation-removal== 34414 (pos)
                    (not (not_at_b_p2))

                    ; #79638: <==negation-removal== 72717 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #29329: origin
                    (at_b_p3)

                    ; #72717: origin
                    (not_at_b_p1)

                    ; #79638: <==negation-removal== 72717 (pos)
                    (not (at_b_p1))

                    ; #89079: <==negation-removal== 29329 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #67007: origin
                    (at_b_p4)

                    ; #72717: origin
                    (not_at_b_p1)

                    ; #71645: <==negation-removal== 67007 (pos)
                    (not (not_at_b_p4))

                    ; #79638: <==negation-removal== 72717 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #72717: origin
                    (not_at_b_p1)

                    ; #89569: origin
                    (at_b_p5)

                    ; #60272: <==negation-removal== 89569 (pos)
                    (not (not_at_b_p5))

                    ; #79638: <==negation-removal== 72717 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #72717: origin
                    (not_at_b_p1)

                    ; #83721: origin
                    (at_b_p6)

                    ; #29139: <==negation-removal== 83721 (pos)
                    (not (not_at_b_p6))

                    ; #79638: <==negation-removal== 72717 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #44991: origin
                    (at_b_p7)

                    ; #72717: origin
                    (not_at_b_p1)

                    ; #59585: <==negation-removal== 44991 (pos)
                    (not (not_at_b_p7))

                    ; #79638: <==negation-removal== 72717 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #47720: origin
                    (at_b_p8)

                    ; #72717: origin
                    (not_at_b_p1)

                    ; #72165: <==negation-removal== 47720 (pos)
                    (not (not_at_b_p8))

                    ; #79638: <==negation-removal== 72717 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #60457: origin
                    (at_b_p9)

                    ; #72717: origin
                    (not_at_b_p1)

                    ; #79638: <==negation-removal== 72717 (pos)
                    (not (at_b_p1))

                    ; #86617: <==negation-removal== 60457 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #29263: origin
                    (not_at_b_p2)

                    ; #79638: origin
                    (at_b_p1)

                    ; #34414: <==negation-removal== 29263 (pos)
                    (not (at_b_p2))

                    ; #72717: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #29263: origin
                    (not_at_b_p2)

                    ; #34414: origin
                    (at_b_p2)

                    ; #29263: <==negation-removal== 34414 (pos)
                    (not (not_at_b_p2))

                    ; #34414: <==negation-removal== 29263 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #29263: origin
                    (not_at_b_p2)

                    ; #29329: origin
                    (at_b_p3)

                    ; #34414: <==negation-removal== 29263 (pos)
                    (not (at_b_p2))

                    ; #89079: <==negation-removal== 29329 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #29263: origin
                    (not_at_b_p2)

                    ; #67007: origin
                    (at_b_p4)

                    ; #34414: <==negation-removal== 29263 (pos)
                    (not (at_b_p2))

                    ; #71645: <==negation-removal== 67007 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #29263: origin
                    (not_at_b_p2)

                    ; #89569: origin
                    (at_b_p5)

                    ; #34414: <==negation-removal== 29263 (pos)
                    (not (at_b_p2))

                    ; #60272: <==negation-removal== 89569 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #29263: origin
                    (not_at_b_p2)

                    ; #83721: origin
                    (at_b_p6)

                    ; #29139: <==negation-removal== 83721 (pos)
                    (not (not_at_b_p6))

                    ; #34414: <==negation-removal== 29263 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #29263: origin
                    (not_at_b_p2)

                    ; #44991: origin
                    (at_b_p7)

                    ; #34414: <==negation-removal== 29263 (pos)
                    (not (at_b_p2))

                    ; #59585: <==negation-removal== 44991 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #29263: origin
                    (not_at_b_p2)

                    ; #47720: origin
                    (at_b_p8)

                    ; #34414: <==negation-removal== 29263 (pos)
                    (not (at_b_p2))

                    ; #72165: <==negation-removal== 47720 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #29263: origin
                    (not_at_b_p2)

                    ; #60457: origin
                    (at_b_p9)

                    ; #34414: <==negation-removal== 29263 (pos)
                    (not (at_b_p2))

                    ; #86617: <==negation-removal== 60457 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #79638: origin
                    (at_b_p1)

                    ; #89079: origin
                    (not_at_b_p3)

                    ; #29329: <==negation-removal== 89079 (pos)
                    (not (at_b_p3))

                    ; #72717: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #34414: origin
                    (at_b_p2)

                    ; #89079: origin
                    (not_at_b_p3)

                    ; #29263: <==negation-removal== 34414 (pos)
                    (not (not_at_b_p2))

                    ; #29329: <==negation-removal== 89079 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #29329: origin
                    (at_b_p3)

                    ; #89079: origin
                    (not_at_b_p3)

                    ; #29329: <==negation-removal== 89079 (pos)
                    (not (at_b_p3))

                    ; #89079: <==negation-removal== 29329 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #67007: origin
                    (at_b_p4)

                    ; #89079: origin
                    (not_at_b_p3)

                    ; #29329: <==negation-removal== 89079 (pos)
                    (not (at_b_p3))

                    ; #71645: <==negation-removal== 67007 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #89079: origin
                    (not_at_b_p3)

                    ; #89569: origin
                    (at_b_p5)

                    ; #29329: <==negation-removal== 89079 (pos)
                    (not (at_b_p3))

                    ; #60272: <==negation-removal== 89569 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #83721: origin
                    (at_b_p6)

                    ; #89079: origin
                    (not_at_b_p3)

                    ; #29139: <==negation-removal== 83721 (pos)
                    (not (not_at_b_p6))

                    ; #29329: <==negation-removal== 89079 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #44991: origin
                    (at_b_p7)

                    ; #89079: origin
                    (not_at_b_p3)

                    ; #29329: <==negation-removal== 89079 (pos)
                    (not (at_b_p3))

                    ; #59585: <==negation-removal== 44991 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #47720: origin
                    (at_b_p8)

                    ; #89079: origin
                    (not_at_b_p3)

                    ; #29329: <==negation-removal== 89079 (pos)
                    (not (at_b_p3))

                    ; #72165: <==negation-removal== 47720 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #60457: origin
                    (at_b_p9)

                    ; #89079: origin
                    (not_at_b_p3)

                    ; #29329: <==negation-removal== 89079 (pos)
                    (not (at_b_p3))

                    ; #86617: <==negation-removal== 60457 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #71645: origin
                    (not_at_b_p4)

                    ; #79638: origin
                    (at_b_p1)

                    ; #67007: <==negation-removal== 71645 (pos)
                    (not (at_b_p4))

                    ; #72717: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #34414: origin
                    (at_b_p2)

                    ; #71645: origin
                    (not_at_b_p4)

                    ; #29263: <==negation-removal== 34414 (pos)
                    (not (not_at_b_p2))

                    ; #67007: <==negation-removal== 71645 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #29329: origin
                    (at_b_p3)

                    ; #71645: origin
                    (not_at_b_p4)

                    ; #67007: <==negation-removal== 71645 (pos)
                    (not (at_b_p4))

                    ; #89079: <==negation-removal== 29329 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #67007: origin
                    (at_b_p4)

                    ; #71645: origin
                    (not_at_b_p4)

                    ; #67007: <==negation-removal== 71645 (pos)
                    (not (at_b_p4))

                    ; #71645: <==negation-removal== 67007 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #71645: origin
                    (not_at_b_p4)

                    ; #89569: origin
                    (at_b_p5)

                    ; #60272: <==negation-removal== 89569 (pos)
                    (not (not_at_b_p5))

                    ; #67007: <==negation-removal== 71645 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #71645: origin
                    (not_at_b_p4)

                    ; #83721: origin
                    (at_b_p6)

                    ; #29139: <==negation-removal== 83721 (pos)
                    (not (not_at_b_p6))

                    ; #67007: <==negation-removal== 71645 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #44991: origin
                    (at_b_p7)

                    ; #71645: origin
                    (not_at_b_p4)

                    ; #59585: <==negation-removal== 44991 (pos)
                    (not (not_at_b_p7))

                    ; #67007: <==negation-removal== 71645 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #47720: origin
                    (at_b_p8)

                    ; #71645: origin
                    (not_at_b_p4)

                    ; #67007: <==negation-removal== 71645 (pos)
                    (not (at_b_p4))

                    ; #72165: <==negation-removal== 47720 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #60457: origin
                    (at_b_p9)

                    ; #71645: origin
                    (not_at_b_p4)

                    ; #67007: <==negation-removal== 71645 (pos)
                    (not (at_b_p4))

                    ; #86617: <==negation-removal== 60457 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #60272: origin
                    (not_at_b_p5)

                    ; #79638: origin
                    (at_b_p1)

                    ; #72717: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p1))

                    ; #89569: <==negation-removal== 60272 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #34414: origin
                    (at_b_p2)

                    ; #60272: origin
                    (not_at_b_p5)

                    ; #29263: <==negation-removal== 34414 (pos)
                    (not (not_at_b_p2))

                    ; #89569: <==negation-removal== 60272 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #29329: origin
                    (at_b_p3)

                    ; #60272: origin
                    (not_at_b_p5)

                    ; #89079: <==negation-removal== 29329 (pos)
                    (not (not_at_b_p3))

                    ; #89569: <==negation-removal== 60272 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #60272: origin
                    (not_at_b_p5)

                    ; #67007: origin
                    (at_b_p4)

                    ; #71645: <==negation-removal== 67007 (pos)
                    (not (not_at_b_p4))

                    ; #89569: <==negation-removal== 60272 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #60272: origin
                    (not_at_b_p5)

                    ; #89569: origin
                    (at_b_p5)

                    ; #60272: <==negation-removal== 89569 (pos)
                    (not (not_at_b_p5))

                    ; #89569: <==negation-removal== 60272 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #60272: origin
                    (not_at_b_p5)

                    ; #83721: origin
                    (at_b_p6)

                    ; #29139: <==negation-removal== 83721 (pos)
                    (not (not_at_b_p6))

                    ; #89569: <==negation-removal== 60272 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #44991: origin
                    (at_b_p7)

                    ; #60272: origin
                    (not_at_b_p5)

                    ; #59585: <==negation-removal== 44991 (pos)
                    (not (not_at_b_p7))

                    ; #89569: <==negation-removal== 60272 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #47720: origin
                    (at_b_p8)

                    ; #60272: origin
                    (not_at_b_p5)

                    ; #72165: <==negation-removal== 47720 (pos)
                    (not (not_at_b_p8))

                    ; #89569: <==negation-removal== 60272 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #60272: origin
                    (not_at_b_p5)

                    ; #60457: origin
                    (at_b_p9)

                    ; #86617: <==negation-removal== 60457 (pos)
                    (not (not_at_b_p9))

                    ; #89569: <==negation-removal== 60272 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #29139: origin
                    (not_at_b_p6)

                    ; #79638: origin
                    (at_b_p1)

                    ; #72717: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p1))

                    ; #83721: <==negation-removal== 29139 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #29139: origin
                    (not_at_b_p6)

                    ; #34414: origin
                    (at_b_p2)

                    ; #29263: <==negation-removal== 34414 (pos)
                    (not (not_at_b_p2))

                    ; #83721: <==negation-removal== 29139 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #29139: origin
                    (not_at_b_p6)

                    ; #29329: origin
                    (at_b_p3)

                    ; #83721: <==negation-removal== 29139 (pos)
                    (not (at_b_p6))

                    ; #89079: <==negation-removal== 29329 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #29139: origin
                    (not_at_b_p6)

                    ; #67007: origin
                    (at_b_p4)

                    ; #71645: <==negation-removal== 67007 (pos)
                    (not (not_at_b_p4))

                    ; #83721: <==negation-removal== 29139 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #29139: origin
                    (not_at_b_p6)

                    ; #89569: origin
                    (at_b_p5)

                    ; #60272: <==negation-removal== 89569 (pos)
                    (not (not_at_b_p5))

                    ; #83721: <==negation-removal== 29139 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #29139: origin
                    (not_at_b_p6)

                    ; #83721: origin
                    (at_b_p6)

                    ; #29139: <==negation-removal== 83721 (pos)
                    (not (not_at_b_p6))

                    ; #83721: <==negation-removal== 29139 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #29139: origin
                    (not_at_b_p6)

                    ; #44991: origin
                    (at_b_p7)

                    ; #59585: <==negation-removal== 44991 (pos)
                    (not (not_at_b_p7))

                    ; #83721: <==negation-removal== 29139 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #29139: origin
                    (not_at_b_p6)

                    ; #47720: origin
                    (at_b_p8)

                    ; #72165: <==negation-removal== 47720 (pos)
                    (not (not_at_b_p8))

                    ; #83721: <==negation-removal== 29139 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #29139: origin
                    (not_at_b_p6)

                    ; #60457: origin
                    (at_b_p9)

                    ; #83721: <==negation-removal== 29139 (pos)
                    (not (at_b_p6))

                    ; #86617: <==negation-removal== 60457 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #59585: origin
                    (not_at_b_p7)

                    ; #79638: origin
                    (at_b_p1)

                    ; #44991: <==negation-removal== 59585 (pos)
                    (not (at_b_p7))

                    ; #72717: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #34414: origin
                    (at_b_p2)

                    ; #59585: origin
                    (not_at_b_p7)

                    ; #29263: <==negation-removal== 34414 (pos)
                    (not (not_at_b_p2))

                    ; #44991: <==negation-removal== 59585 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #29329: origin
                    (at_b_p3)

                    ; #59585: origin
                    (not_at_b_p7)

                    ; #44991: <==negation-removal== 59585 (pos)
                    (not (at_b_p7))

                    ; #89079: <==negation-removal== 29329 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #59585: origin
                    (not_at_b_p7)

                    ; #67007: origin
                    (at_b_p4)

                    ; #44991: <==negation-removal== 59585 (pos)
                    (not (at_b_p7))

                    ; #71645: <==negation-removal== 67007 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #59585: origin
                    (not_at_b_p7)

                    ; #89569: origin
                    (at_b_p5)

                    ; #44991: <==negation-removal== 59585 (pos)
                    (not (at_b_p7))

                    ; #60272: <==negation-removal== 89569 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #59585: origin
                    (not_at_b_p7)

                    ; #83721: origin
                    (at_b_p6)

                    ; #29139: <==negation-removal== 83721 (pos)
                    (not (not_at_b_p6))

                    ; #44991: <==negation-removal== 59585 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #44991: origin
                    (at_b_p7)

                    ; #59585: origin
                    (not_at_b_p7)

                    ; #44991: <==negation-removal== 59585 (pos)
                    (not (at_b_p7))

                    ; #59585: <==negation-removal== 44991 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #47720: origin
                    (at_b_p8)

                    ; #59585: origin
                    (not_at_b_p7)

                    ; #44991: <==negation-removal== 59585 (pos)
                    (not (at_b_p7))

                    ; #72165: <==negation-removal== 47720 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #59585: origin
                    (not_at_b_p7)

                    ; #60457: origin
                    (at_b_p9)

                    ; #44991: <==negation-removal== 59585 (pos)
                    (not (at_b_p7))

                    ; #86617: <==negation-removal== 60457 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #72165: origin
                    (not_at_b_p8)

                    ; #79638: origin
                    (at_b_p1)

                    ; #47720: <==negation-removal== 72165 (pos)
                    (not (at_b_p8))

                    ; #72717: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #34414: origin
                    (at_b_p2)

                    ; #72165: origin
                    (not_at_b_p8)

                    ; #29263: <==negation-removal== 34414 (pos)
                    (not (not_at_b_p2))

                    ; #47720: <==negation-removal== 72165 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #29329: origin
                    (at_b_p3)

                    ; #72165: origin
                    (not_at_b_p8)

                    ; #47720: <==negation-removal== 72165 (pos)
                    (not (at_b_p8))

                    ; #89079: <==negation-removal== 29329 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #67007: origin
                    (at_b_p4)

                    ; #72165: origin
                    (not_at_b_p8)

                    ; #47720: <==negation-removal== 72165 (pos)
                    (not (at_b_p8))

                    ; #71645: <==negation-removal== 67007 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #72165: origin
                    (not_at_b_p8)

                    ; #89569: origin
                    (at_b_p5)

                    ; #47720: <==negation-removal== 72165 (pos)
                    (not (at_b_p8))

                    ; #60272: <==negation-removal== 89569 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #72165: origin
                    (not_at_b_p8)

                    ; #83721: origin
                    (at_b_p6)

                    ; #29139: <==negation-removal== 83721 (pos)
                    (not (not_at_b_p6))

                    ; #47720: <==negation-removal== 72165 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #44991: origin
                    (at_b_p7)

                    ; #72165: origin
                    (not_at_b_p8)

                    ; #47720: <==negation-removal== 72165 (pos)
                    (not (at_b_p8))

                    ; #59585: <==negation-removal== 44991 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #47720: origin
                    (at_b_p8)

                    ; #72165: origin
                    (not_at_b_p8)

                    ; #47720: <==negation-removal== 72165 (pos)
                    (not (at_b_p8))

                    ; #72165: <==negation-removal== 47720 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #60457: origin
                    (at_b_p9)

                    ; #72165: origin
                    (not_at_b_p8)

                    ; #47720: <==negation-removal== 72165 (pos)
                    (not (at_b_p8))

                    ; #86617: <==negation-removal== 60457 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #79638: origin
                    (at_b_p1)

                    ; #86617: origin
                    (not_at_b_p9)

                    ; #60457: <==negation-removal== 86617 (pos)
                    (not (at_b_p9))

                    ; #72717: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #34414: origin
                    (at_b_p2)

                    ; #86617: origin
                    (not_at_b_p9)

                    ; #29263: <==negation-removal== 34414 (pos)
                    (not (not_at_b_p2))

                    ; #60457: <==negation-removal== 86617 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #29329: origin
                    (at_b_p3)

                    ; #86617: origin
                    (not_at_b_p9)

                    ; #60457: <==negation-removal== 86617 (pos)
                    (not (at_b_p9))

                    ; #89079: <==negation-removal== 29329 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #67007: origin
                    (at_b_p4)

                    ; #86617: origin
                    (not_at_b_p9)

                    ; #60457: <==negation-removal== 86617 (pos)
                    (not (at_b_p9))

                    ; #71645: <==negation-removal== 67007 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #86617: origin
                    (not_at_b_p9)

                    ; #89569: origin
                    (at_b_p5)

                    ; #60272: <==negation-removal== 89569 (pos)
                    (not (not_at_b_p5))

                    ; #60457: <==negation-removal== 86617 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #83721: origin
                    (at_b_p6)

                    ; #86617: origin
                    (not_at_b_p9)

                    ; #29139: <==negation-removal== 83721 (pos)
                    (not (not_at_b_p6))

                    ; #60457: <==negation-removal== 86617 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #44991: origin
                    (at_b_p7)

                    ; #86617: origin
                    (not_at_b_p9)

                    ; #59585: <==negation-removal== 44991 (pos)
                    (not (not_at_b_p7))

                    ; #60457: <==negation-removal== 86617 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #47720: origin
                    (at_b_p8)

                    ; #86617: origin
                    (not_at_b_p9)

                    ; #60457: <==negation-removal== 86617 (pos)
                    (not (at_b_p9))

                    ; #72165: <==negation-removal== 47720 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #60457: origin
                    (at_b_p9)

                    ; #86617: origin
                    (not_at_b_p9)

                    ; #60457: <==negation-removal== 86617 (pos)
                    (not (at_b_p9))

                    ; #86617: <==negation-removal== 60457 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #27423: origin
                    (not_at_c_p1)

                    ; #75388: origin
                    (at_c_p1)

                    ; #27423: <==negation-removal== 75388 (pos)
                    (not (not_at_c_p1))

                    ; #75388: <==negation-removal== 27423 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #27423: origin
                    (not_at_c_p1)

                    ; #40770: origin
                    (at_c_p2)

                    ; #25435: <==negation-removal== 40770 (pos)
                    (not (not_at_c_p2))

                    ; #75388: <==negation-removal== 27423 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #27423: origin
                    (not_at_c_p1)

                    ; #61346: origin
                    (at_c_p3)

                    ; #52253: <==negation-removal== 61346 (pos)
                    (not (not_at_c_p3))

                    ; #75388: <==negation-removal== 27423 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #27423: origin
                    (not_at_c_p1)

                    ; #80065: origin
                    (at_c_p4)

                    ; #20120: <==negation-removal== 80065 (pos)
                    (not (not_at_c_p4))

                    ; #75388: <==negation-removal== 27423 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #27423: origin
                    (not_at_c_p1)

                    ; #82595: origin
                    (at_c_p5)

                    ; #75388: <==negation-removal== 27423 (pos)
                    (not (at_c_p1))

                    ; #85462: <==negation-removal== 82595 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #27423: origin
                    (not_at_c_p1)

                    ; #33805: origin
                    (at_c_p6)

                    ; #75388: <==negation-removal== 27423 (pos)
                    (not (at_c_p1))

                    ; #76719: <==negation-removal== 33805 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #27423: origin
                    (not_at_c_p1)

                    ; #79620: origin
                    (at_c_p7)

                    ; #69909: <==negation-removal== 79620 (pos)
                    (not (not_at_c_p7))

                    ; #75388: <==negation-removal== 27423 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #27423: origin
                    (not_at_c_p1)

                    ; #80790: origin
                    (at_c_p8)

                    ; #45422: <==negation-removal== 80790 (pos)
                    (not (not_at_c_p8))

                    ; #75388: <==negation-removal== 27423 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #27423: origin
                    (not_at_c_p1)

                    ; #77242: origin
                    (at_c_p9)

                    ; #13731: <==negation-removal== 77242 (pos)
                    (not (not_at_c_p9))

                    ; #75388: <==negation-removal== 27423 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #25435: origin
                    (not_at_c_p2)

                    ; #75388: origin
                    (at_c_p1)

                    ; #27423: <==negation-removal== 75388 (pos)
                    (not (not_at_c_p1))

                    ; #40770: <==negation-removal== 25435 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #25435: origin
                    (not_at_c_p2)

                    ; #40770: origin
                    (at_c_p2)

                    ; #25435: <==negation-removal== 40770 (pos)
                    (not (not_at_c_p2))

                    ; #40770: <==negation-removal== 25435 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #25435: origin
                    (not_at_c_p2)

                    ; #61346: origin
                    (at_c_p3)

                    ; #40770: <==negation-removal== 25435 (pos)
                    (not (at_c_p2))

                    ; #52253: <==negation-removal== 61346 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #25435: origin
                    (not_at_c_p2)

                    ; #80065: origin
                    (at_c_p4)

                    ; #20120: <==negation-removal== 80065 (pos)
                    (not (not_at_c_p4))

                    ; #40770: <==negation-removal== 25435 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #25435: origin
                    (not_at_c_p2)

                    ; #82595: origin
                    (at_c_p5)

                    ; #40770: <==negation-removal== 25435 (pos)
                    (not (at_c_p2))

                    ; #85462: <==negation-removal== 82595 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #25435: origin
                    (not_at_c_p2)

                    ; #33805: origin
                    (at_c_p6)

                    ; #40770: <==negation-removal== 25435 (pos)
                    (not (at_c_p2))

                    ; #76719: <==negation-removal== 33805 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #25435: origin
                    (not_at_c_p2)

                    ; #79620: origin
                    (at_c_p7)

                    ; #40770: <==negation-removal== 25435 (pos)
                    (not (at_c_p2))

                    ; #69909: <==negation-removal== 79620 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #25435: origin
                    (not_at_c_p2)

                    ; #80790: origin
                    (at_c_p8)

                    ; #40770: <==negation-removal== 25435 (pos)
                    (not (at_c_p2))

                    ; #45422: <==negation-removal== 80790 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #25435: origin
                    (not_at_c_p2)

                    ; #77242: origin
                    (at_c_p9)

                    ; #13731: <==negation-removal== 77242 (pos)
                    (not (not_at_c_p9))

                    ; #40770: <==negation-removal== 25435 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #52253: origin
                    (not_at_c_p3)

                    ; #75388: origin
                    (at_c_p1)

                    ; #27423: <==negation-removal== 75388 (pos)
                    (not (not_at_c_p1))

                    ; #61346: <==negation-removal== 52253 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #40770: origin
                    (at_c_p2)

                    ; #52253: origin
                    (not_at_c_p3)

                    ; #25435: <==negation-removal== 40770 (pos)
                    (not (not_at_c_p2))

                    ; #61346: <==negation-removal== 52253 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #52253: origin
                    (not_at_c_p3)

                    ; #61346: origin
                    (at_c_p3)

                    ; #52253: <==negation-removal== 61346 (pos)
                    (not (not_at_c_p3))

                    ; #61346: <==negation-removal== 52253 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #52253: origin
                    (not_at_c_p3)

                    ; #80065: origin
                    (at_c_p4)

                    ; #20120: <==negation-removal== 80065 (pos)
                    (not (not_at_c_p4))

                    ; #61346: <==negation-removal== 52253 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #52253: origin
                    (not_at_c_p3)

                    ; #82595: origin
                    (at_c_p5)

                    ; #61346: <==negation-removal== 52253 (pos)
                    (not (at_c_p3))

                    ; #85462: <==negation-removal== 82595 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #33805: origin
                    (at_c_p6)

                    ; #52253: origin
                    (not_at_c_p3)

                    ; #61346: <==negation-removal== 52253 (pos)
                    (not (at_c_p3))

                    ; #76719: <==negation-removal== 33805 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #52253: origin
                    (not_at_c_p3)

                    ; #79620: origin
                    (at_c_p7)

                    ; #61346: <==negation-removal== 52253 (pos)
                    (not (at_c_p3))

                    ; #69909: <==negation-removal== 79620 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #52253: origin
                    (not_at_c_p3)

                    ; #80790: origin
                    (at_c_p8)

                    ; #45422: <==negation-removal== 80790 (pos)
                    (not (not_at_c_p8))

                    ; #61346: <==negation-removal== 52253 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #52253: origin
                    (not_at_c_p3)

                    ; #77242: origin
                    (at_c_p9)

                    ; #13731: <==negation-removal== 77242 (pos)
                    (not (not_at_c_p9))

                    ; #61346: <==negation-removal== 52253 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #20120: origin
                    (not_at_c_p4)

                    ; #75388: origin
                    (at_c_p1)

                    ; #27423: <==negation-removal== 75388 (pos)
                    (not (not_at_c_p1))

                    ; #80065: <==negation-removal== 20120 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #20120: origin
                    (not_at_c_p4)

                    ; #40770: origin
                    (at_c_p2)

                    ; #25435: <==negation-removal== 40770 (pos)
                    (not (not_at_c_p2))

                    ; #80065: <==negation-removal== 20120 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #20120: origin
                    (not_at_c_p4)

                    ; #61346: origin
                    (at_c_p3)

                    ; #52253: <==negation-removal== 61346 (pos)
                    (not (not_at_c_p3))

                    ; #80065: <==negation-removal== 20120 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #20120: origin
                    (not_at_c_p4)

                    ; #80065: origin
                    (at_c_p4)

                    ; #20120: <==negation-removal== 80065 (pos)
                    (not (not_at_c_p4))

                    ; #80065: <==negation-removal== 20120 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #20120: origin
                    (not_at_c_p4)

                    ; #82595: origin
                    (at_c_p5)

                    ; #80065: <==negation-removal== 20120 (pos)
                    (not (at_c_p4))

                    ; #85462: <==negation-removal== 82595 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #20120: origin
                    (not_at_c_p4)

                    ; #33805: origin
                    (at_c_p6)

                    ; #76719: <==negation-removal== 33805 (pos)
                    (not (not_at_c_p6))

                    ; #80065: <==negation-removal== 20120 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #20120: origin
                    (not_at_c_p4)

                    ; #79620: origin
                    (at_c_p7)

                    ; #69909: <==negation-removal== 79620 (pos)
                    (not (not_at_c_p7))

                    ; #80065: <==negation-removal== 20120 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #20120: origin
                    (not_at_c_p4)

                    ; #80790: origin
                    (at_c_p8)

                    ; #45422: <==negation-removal== 80790 (pos)
                    (not (not_at_c_p8))

                    ; #80065: <==negation-removal== 20120 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #20120: origin
                    (not_at_c_p4)

                    ; #77242: origin
                    (at_c_p9)

                    ; #13731: <==negation-removal== 77242 (pos)
                    (not (not_at_c_p9))

                    ; #80065: <==negation-removal== 20120 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #75388: origin
                    (at_c_p1)

                    ; #85462: origin
                    (not_at_c_p5)

                    ; #27423: <==negation-removal== 75388 (pos)
                    (not (not_at_c_p1))

                    ; #82595: <==negation-removal== 85462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #40770: origin
                    (at_c_p2)

                    ; #85462: origin
                    (not_at_c_p5)

                    ; #25435: <==negation-removal== 40770 (pos)
                    (not (not_at_c_p2))

                    ; #82595: <==negation-removal== 85462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #61346: origin
                    (at_c_p3)

                    ; #85462: origin
                    (not_at_c_p5)

                    ; #52253: <==negation-removal== 61346 (pos)
                    (not (not_at_c_p3))

                    ; #82595: <==negation-removal== 85462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #80065: origin
                    (at_c_p4)

                    ; #85462: origin
                    (not_at_c_p5)

                    ; #20120: <==negation-removal== 80065 (pos)
                    (not (not_at_c_p4))

                    ; #82595: <==negation-removal== 85462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #82595: origin
                    (at_c_p5)

                    ; #85462: origin
                    (not_at_c_p5)

                    ; #82595: <==negation-removal== 85462 (pos)
                    (not (at_c_p5))

                    ; #85462: <==negation-removal== 82595 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #33805: origin
                    (at_c_p6)

                    ; #85462: origin
                    (not_at_c_p5)

                    ; #76719: <==negation-removal== 33805 (pos)
                    (not (not_at_c_p6))

                    ; #82595: <==negation-removal== 85462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #79620: origin
                    (at_c_p7)

                    ; #85462: origin
                    (not_at_c_p5)

                    ; #69909: <==negation-removal== 79620 (pos)
                    (not (not_at_c_p7))

                    ; #82595: <==negation-removal== 85462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #80790: origin
                    (at_c_p8)

                    ; #85462: origin
                    (not_at_c_p5)

                    ; #45422: <==negation-removal== 80790 (pos)
                    (not (not_at_c_p8))

                    ; #82595: <==negation-removal== 85462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #77242: origin
                    (at_c_p9)

                    ; #85462: origin
                    (not_at_c_p5)

                    ; #13731: <==negation-removal== 77242 (pos)
                    (not (not_at_c_p9))

                    ; #82595: <==negation-removal== 85462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #75388: origin
                    (at_c_p1)

                    ; #76719: origin
                    (not_at_c_p6)

                    ; #27423: <==negation-removal== 75388 (pos)
                    (not (not_at_c_p1))

                    ; #33805: <==negation-removal== 76719 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #40770: origin
                    (at_c_p2)

                    ; #76719: origin
                    (not_at_c_p6)

                    ; #25435: <==negation-removal== 40770 (pos)
                    (not (not_at_c_p2))

                    ; #33805: <==negation-removal== 76719 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #61346: origin
                    (at_c_p3)

                    ; #76719: origin
                    (not_at_c_p6)

                    ; #33805: <==negation-removal== 76719 (pos)
                    (not (at_c_p6))

                    ; #52253: <==negation-removal== 61346 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #76719: origin
                    (not_at_c_p6)

                    ; #80065: origin
                    (at_c_p4)

                    ; #20120: <==negation-removal== 80065 (pos)
                    (not (not_at_c_p4))

                    ; #33805: <==negation-removal== 76719 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #76719: origin
                    (not_at_c_p6)

                    ; #82595: origin
                    (at_c_p5)

                    ; #33805: <==negation-removal== 76719 (pos)
                    (not (at_c_p6))

                    ; #85462: <==negation-removal== 82595 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #33805: origin
                    (at_c_p6)

                    ; #76719: origin
                    (not_at_c_p6)

                    ; #33805: <==negation-removal== 76719 (pos)
                    (not (at_c_p6))

                    ; #76719: <==negation-removal== 33805 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #76719: origin
                    (not_at_c_p6)

                    ; #79620: origin
                    (at_c_p7)

                    ; #33805: <==negation-removal== 76719 (pos)
                    (not (at_c_p6))

                    ; #69909: <==negation-removal== 79620 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #76719: origin
                    (not_at_c_p6)

                    ; #80790: origin
                    (at_c_p8)

                    ; #33805: <==negation-removal== 76719 (pos)
                    (not (at_c_p6))

                    ; #45422: <==negation-removal== 80790 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #76719: origin
                    (not_at_c_p6)

                    ; #77242: origin
                    (at_c_p9)

                    ; #13731: <==negation-removal== 77242 (pos)
                    (not (not_at_c_p9))

                    ; #33805: <==negation-removal== 76719 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #69909: origin
                    (not_at_c_p7)

                    ; #75388: origin
                    (at_c_p1)

                    ; #27423: <==negation-removal== 75388 (pos)
                    (not (not_at_c_p1))

                    ; #79620: <==negation-removal== 69909 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #40770: origin
                    (at_c_p2)

                    ; #69909: origin
                    (not_at_c_p7)

                    ; #25435: <==negation-removal== 40770 (pos)
                    (not (not_at_c_p2))

                    ; #79620: <==negation-removal== 69909 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #61346: origin
                    (at_c_p3)

                    ; #69909: origin
                    (not_at_c_p7)

                    ; #52253: <==negation-removal== 61346 (pos)
                    (not (not_at_c_p3))

                    ; #79620: <==negation-removal== 69909 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #69909: origin
                    (not_at_c_p7)

                    ; #80065: origin
                    (at_c_p4)

                    ; #20120: <==negation-removal== 80065 (pos)
                    (not (not_at_c_p4))

                    ; #79620: <==negation-removal== 69909 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #69909: origin
                    (not_at_c_p7)

                    ; #82595: origin
                    (at_c_p5)

                    ; #79620: <==negation-removal== 69909 (pos)
                    (not (at_c_p7))

                    ; #85462: <==negation-removal== 82595 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #33805: origin
                    (at_c_p6)

                    ; #69909: origin
                    (not_at_c_p7)

                    ; #76719: <==negation-removal== 33805 (pos)
                    (not (not_at_c_p6))

                    ; #79620: <==negation-removal== 69909 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #69909: origin
                    (not_at_c_p7)

                    ; #79620: origin
                    (at_c_p7)

                    ; #69909: <==negation-removal== 79620 (pos)
                    (not (not_at_c_p7))

                    ; #79620: <==negation-removal== 69909 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #69909: origin
                    (not_at_c_p7)

                    ; #80790: origin
                    (at_c_p8)

                    ; #45422: <==negation-removal== 80790 (pos)
                    (not (not_at_c_p8))

                    ; #79620: <==negation-removal== 69909 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #69909: origin
                    (not_at_c_p7)

                    ; #77242: origin
                    (at_c_p9)

                    ; #13731: <==negation-removal== 77242 (pos)
                    (not (not_at_c_p9))

                    ; #79620: <==negation-removal== 69909 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #45422: origin
                    (not_at_c_p8)

                    ; #75388: origin
                    (at_c_p1)

                    ; #27423: <==negation-removal== 75388 (pos)
                    (not (not_at_c_p1))

                    ; #80790: <==negation-removal== 45422 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #40770: origin
                    (at_c_p2)

                    ; #45422: origin
                    (not_at_c_p8)

                    ; #25435: <==negation-removal== 40770 (pos)
                    (not (not_at_c_p2))

                    ; #80790: <==negation-removal== 45422 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #45422: origin
                    (not_at_c_p8)

                    ; #61346: origin
                    (at_c_p3)

                    ; #52253: <==negation-removal== 61346 (pos)
                    (not (not_at_c_p3))

                    ; #80790: <==negation-removal== 45422 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #45422: origin
                    (not_at_c_p8)

                    ; #80065: origin
                    (at_c_p4)

                    ; #20120: <==negation-removal== 80065 (pos)
                    (not (not_at_c_p4))

                    ; #80790: <==negation-removal== 45422 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #45422: origin
                    (not_at_c_p8)

                    ; #82595: origin
                    (at_c_p5)

                    ; #80790: <==negation-removal== 45422 (pos)
                    (not (at_c_p8))

                    ; #85462: <==negation-removal== 82595 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #33805: origin
                    (at_c_p6)

                    ; #45422: origin
                    (not_at_c_p8)

                    ; #76719: <==negation-removal== 33805 (pos)
                    (not (not_at_c_p6))

                    ; #80790: <==negation-removal== 45422 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #45422: origin
                    (not_at_c_p8)

                    ; #79620: origin
                    (at_c_p7)

                    ; #69909: <==negation-removal== 79620 (pos)
                    (not (not_at_c_p7))

                    ; #80790: <==negation-removal== 45422 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #45422: origin
                    (not_at_c_p8)

                    ; #80790: origin
                    (at_c_p8)

                    ; #45422: <==negation-removal== 80790 (pos)
                    (not (not_at_c_p8))

                    ; #80790: <==negation-removal== 45422 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #45422: origin
                    (not_at_c_p8)

                    ; #77242: origin
                    (at_c_p9)

                    ; #13731: <==negation-removal== 77242 (pos)
                    (not (not_at_c_p9))

                    ; #80790: <==negation-removal== 45422 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #13731: origin
                    (not_at_c_p9)

                    ; #75388: origin
                    (at_c_p1)

                    ; #27423: <==negation-removal== 75388 (pos)
                    (not (not_at_c_p1))

                    ; #77242: <==negation-removal== 13731 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #13731: origin
                    (not_at_c_p9)

                    ; #40770: origin
                    (at_c_p2)

                    ; #25435: <==negation-removal== 40770 (pos)
                    (not (not_at_c_p2))

                    ; #77242: <==negation-removal== 13731 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #13731: origin
                    (not_at_c_p9)

                    ; #61346: origin
                    (at_c_p3)

                    ; #52253: <==negation-removal== 61346 (pos)
                    (not (not_at_c_p3))

                    ; #77242: <==negation-removal== 13731 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #13731: origin
                    (not_at_c_p9)

                    ; #80065: origin
                    (at_c_p4)

                    ; #20120: <==negation-removal== 80065 (pos)
                    (not (not_at_c_p4))

                    ; #77242: <==negation-removal== 13731 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #13731: origin
                    (not_at_c_p9)

                    ; #82595: origin
                    (at_c_p5)

                    ; #77242: <==negation-removal== 13731 (pos)
                    (not (at_c_p9))

                    ; #85462: <==negation-removal== 82595 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #13731: origin
                    (not_at_c_p9)

                    ; #33805: origin
                    (at_c_p6)

                    ; #76719: <==negation-removal== 33805 (pos)
                    (not (not_at_c_p6))

                    ; #77242: <==negation-removal== 13731 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #13731: origin
                    (not_at_c_p9)

                    ; #79620: origin
                    (at_c_p7)

                    ; #69909: <==negation-removal== 79620 (pos)
                    (not (not_at_c_p7))

                    ; #77242: <==negation-removal== 13731 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #13731: origin
                    (not_at_c_p9)

                    ; #80790: origin
                    (at_c_p8)

                    ; #45422: <==negation-removal== 80790 (pos)
                    (not (not_at_c_p8))

                    ; #77242: <==negation-removal== 13731 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #13731: origin
                    (not_at_c_p9)

                    ; #77242: origin
                    (at_c_p9)

                    ; #13731: <==negation-removal== 77242 (pos)
                    (not (not_at_c_p9))

                    ; #77242: <==negation-removal== 13731 (pos)
                    (not (at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #68050: origin
                    (not_at_d_p1)

                    ; #77376: origin
                    (at_d_p1)

                    ; #68050: <==negation-removal== 77376 (pos)
                    (not (not_at_d_p1))

                    ; #77376: <==negation-removal== 68050 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #68050: origin
                    (not_at_d_p1)

                    ; #84891: origin
                    (at_d_p2)

                    ; #77376: <==negation-removal== 68050 (pos)
                    (not (at_d_p1))

                    ; #87207: <==negation-removal== 84891 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #14191: origin
                    (at_d_p3)

                    ; #68050: origin
                    (not_at_d_p1)

                    ; #77376: <==negation-removal== 68050 (pos)
                    (not (at_d_p1))

                    ; #90944: <==negation-removal== 14191 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1))
        :effect (and
                    ; #68050: origin
                    (not_at_d_p1)

                    ; #80879: origin
                    (at_d_p4)

                    ; #53915: <==negation-removal== 80879 (pos)
                    (not (not_at_d_p4))

                    ; #77376: <==negation-removal== 68050 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #45715: origin
                    (at_d_p5)

                    ; #68050: origin
                    (not_at_d_p1)

                    ; #18215: <==negation-removal== 45715 (pos)
                    (not (not_at_d_p5))

                    ; #77376: <==negation-removal== 68050 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #33660: origin
                    (at_d_p6)

                    ; #68050: origin
                    (not_at_d_p1)

                    ; #77376: <==negation-removal== 68050 (pos)
                    (not (at_d_p1))

                    ; #81238: <==negation-removal== 33660 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (at_d_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #40669: origin
                    (at_d_p7)

                    ; #68050: origin
                    (not_at_d_p1)

                    ; #18429: <==negation-removal== 40669 (pos)
                    (not (not_at_d_p7))

                    ; #77376: <==negation-removal== 68050 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #68050: origin
                    (not_at_d_p1)

                    ; #69810: origin
                    (at_d_p8)

                    ; #22388: <==negation-removal== 69810 (pos)
                    (not (not_at_d_p8))

                    ; #77376: <==negation-removal== 68050 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #68050: origin
                    (not_at_d_p1)

                    ; #72716: origin
                    (at_d_p9)

                    ; #31718: <==negation-removal== 72716 (pos)
                    (not (not_at_d_p9))

                    ; #77376: <==negation-removal== 68050 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #77376: origin
                    (at_d_p1)

                    ; #87207: origin
                    (not_at_d_p2)

                    ; #68050: <==negation-removal== 77376 (pos)
                    (not (not_at_d_p1))

                    ; #84891: <==negation-removal== 87207 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #84891: origin
                    (at_d_p2)

                    ; #87207: origin
                    (not_at_d_p2)

                    ; #84891: <==negation-removal== 87207 (pos)
                    (not (at_d_p2))

                    ; #87207: <==negation-removal== 84891 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #14191: origin
                    (at_d_p3)

                    ; #87207: origin
                    (not_at_d_p2)

                    ; #84891: <==negation-removal== 87207 (pos)
                    (not (at_d_p2))

                    ; #90944: <==negation-removal== 14191 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #80879: origin
                    (at_d_p4)

                    ; #87207: origin
                    (not_at_d_p2)

                    ; #53915: <==negation-removal== 80879 (pos)
                    (not (not_at_d_p4))

                    ; #84891: <==negation-removal== 87207 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #45715: origin
                    (at_d_p5)

                    ; #87207: origin
                    (not_at_d_p2)

                    ; #18215: <==negation-removal== 45715 (pos)
                    (not (not_at_d_p5))

                    ; #84891: <==negation-removal== 87207 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #33660: origin
                    (at_d_p6)

                    ; #87207: origin
                    (not_at_d_p2)

                    ; #81238: <==negation-removal== 33660 (pos)
                    (not (not_at_d_p6))

                    ; #84891: <==negation-removal== 87207 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #40669: origin
                    (at_d_p7)

                    ; #87207: origin
                    (not_at_d_p2)

                    ; #18429: <==negation-removal== 40669 (pos)
                    (not (not_at_d_p7))

                    ; #84891: <==negation-removal== 87207 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #69810: origin
                    (at_d_p8)

                    ; #87207: origin
                    (not_at_d_p2)

                    ; #22388: <==negation-removal== 69810 (pos)
                    (not (not_at_d_p8))

                    ; #84891: <==negation-removal== 87207 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #72716: origin
                    (at_d_p9)

                    ; #87207: origin
                    (not_at_d_p2)

                    ; #31718: <==negation-removal== 72716 (pos)
                    (not (not_at_d_p9))

                    ; #84891: <==negation-removal== 87207 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #77376: origin
                    (at_d_p1)

                    ; #90944: origin
                    (not_at_d_p3)

                    ; #14191: <==negation-removal== 90944 (pos)
                    (not (at_d_p3))

                    ; #68050: <==negation-removal== 77376 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #84891: origin
                    (at_d_p2)

                    ; #90944: origin
                    (not_at_d_p3)

                    ; #14191: <==negation-removal== 90944 (pos)
                    (not (at_d_p3))

                    ; #87207: <==negation-removal== 84891 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #14191: origin
                    (at_d_p3)

                    ; #90944: origin
                    (not_at_d_p3)

                    ; #14191: <==negation-removal== 90944 (pos)
                    (not (at_d_p3))

                    ; #90944: <==negation-removal== 14191 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #80879: origin
                    (at_d_p4)

                    ; #90944: origin
                    (not_at_d_p3)

                    ; #14191: <==negation-removal== 90944 (pos)
                    (not (at_d_p3))

                    ; #53915: <==negation-removal== 80879 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #45715: origin
                    (at_d_p5)

                    ; #90944: origin
                    (not_at_d_p3)

                    ; #14191: <==negation-removal== 90944 (pos)
                    (not (at_d_p3))

                    ; #18215: <==negation-removal== 45715 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #33660: origin
                    (at_d_p6)

                    ; #90944: origin
                    (not_at_d_p3)

                    ; #14191: <==negation-removal== 90944 (pos)
                    (not (at_d_p3))

                    ; #81238: <==negation-removal== 33660 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #40669: origin
                    (at_d_p7)

                    ; #90944: origin
                    (not_at_d_p3)

                    ; #14191: <==negation-removal== 90944 (pos)
                    (not (at_d_p3))

                    ; #18429: <==negation-removal== 40669 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #69810: origin
                    (at_d_p8)

                    ; #90944: origin
                    (not_at_d_p3)

                    ; #14191: <==negation-removal== 90944 (pos)
                    (not (at_d_p3))

                    ; #22388: <==negation-removal== 69810 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #72716: origin
                    (at_d_p9)

                    ; #90944: origin
                    (not_at_d_p3)

                    ; #14191: <==negation-removal== 90944 (pos)
                    (not (at_d_p3))

                    ; #31718: <==negation-removal== 72716 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #53915: origin
                    (not_at_d_p4)

                    ; #77376: origin
                    (at_d_p1)

                    ; #68050: <==negation-removal== 77376 (pos)
                    (not (not_at_d_p1))

                    ; #80879: <==negation-removal== 53915 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_d_p4))
        :effect (and
                    ; #53915: origin
                    (not_at_d_p4)

                    ; #84891: origin
                    (at_d_p2)

                    ; #80879: <==negation-removal== 53915 (pos)
                    (not (at_d_p4))

                    ; #87207: <==negation-removal== 84891 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4))
        :effect (and
                    ; #14191: origin
                    (at_d_p3)

                    ; #53915: origin
                    (not_at_d_p4)

                    ; #80879: <==negation-removal== 53915 (pos)
                    (not (at_d_p4))

                    ; #90944: <==negation-removal== 14191 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #53915: origin
                    (not_at_d_p4)

                    ; #80879: origin
                    (at_d_p4)

                    ; #53915: <==negation-removal== 80879 (pos)
                    (not (not_at_d_p4))

                    ; #80879: <==negation-removal== 53915 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4))
        :effect (and
                    ; #45715: origin
                    (at_d_p5)

                    ; #53915: origin
                    (not_at_d_p4)

                    ; #18215: <==negation-removal== 45715 (pos)
                    (not (not_at_d_p5))

                    ; #80879: <==negation-removal== 53915 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #33660: origin
                    (at_d_p6)

                    ; #53915: origin
                    (not_at_d_p4)

                    ; #80879: <==negation-removal== 53915 (pos)
                    (not (at_d_p4))

                    ; #81238: <==negation-removal== 33660 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_d_p4))
        :effect (and
                    ; #40669: origin
                    (at_d_p7)

                    ; #53915: origin
                    (not_at_d_p4)

                    ; #18429: <==negation-removal== 40669 (pos)
                    (not (not_at_d_p7))

                    ; #80879: <==negation-removal== 53915 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #53915: origin
                    (not_at_d_p4)

                    ; #69810: origin
                    (at_d_p8)

                    ; #22388: <==negation-removal== 69810 (pos)
                    (not (not_at_d_p8))

                    ; #80879: <==negation-removal== 53915 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #53915: origin
                    (not_at_d_p4)

                    ; #72716: origin
                    (at_d_p9)

                    ; #31718: <==negation-removal== 72716 (pos)
                    (not (not_at_d_p9))

                    ; #80879: <==negation-removal== 53915 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #18215: origin
                    (not_at_d_p5)

                    ; #77376: origin
                    (at_d_p1)

                    ; #45715: <==negation-removal== 18215 (pos)
                    (not (at_d_p5))

                    ; #68050: <==negation-removal== 77376 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #18215: origin
                    (not_at_d_p5)

                    ; #84891: origin
                    (at_d_p2)

                    ; #45715: <==negation-removal== 18215 (pos)
                    (not (at_d_p5))

                    ; #87207: <==negation-removal== 84891 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #14191: origin
                    (at_d_p3)

                    ; #18215: origin
                    (not_at_d_p5)

                    ; #45715: <==negation-removal== 18215 (pos)
                    (not (at_d_p5))

                    ; #90944: <==negation-removal== 14191 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #18215: origin
                    (not_at_d_p5)

                    ; #80879: origin
                    (at_d_p4)

                    ; #45715: <==negation-removal== 18215 (pos)
                    (not (at_d_p5))

                    ; #53915: <==negation-removal== 80879 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #18215: origin
                    (not_at_d_p5)

                    ; #45715: origin
                    (at_d_p5)

                    ; #18215: <==negation-removal== 45715 (pos)
                    (not (not_at_d_p5))

                    ; #45715: <==negation-removal== 18215 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #18215: origin
                    (not_at_d_p5)

                    ; #33660: origin
                    (at_d_p6)

                    ; #45715: <==negation-removal== 18215 (pos)
                    (not (at_d_p5))

                    ; #81238: <==negation-removal== 33660 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #18215: origin
                    (not_at_d_p5)

                    ; #40669: origin
                    (at_d_p7)

                    ; #18429: <==negation-removal== 40669 (pos)
                    (not (not_at_d_p7))

                    ; #45715: <==negation-removal== 18215 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #18215: origin
                    (not_at_d_p5)

                    ; #69810: origin
                    (at_d_p8)

                    ; #22388: <==negation-removal== 69810 (pos)
                    (not (not_at_d_p8))

                    ; #45715: <==negation-removal== 18215 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #18215: origin
                    (not_at_d_p5)

                    ; #72716: origin
                    (at_d_p9)

                    ; #31718: <==negation-removal== 72716 (pos)
                    (not (not_at_d_p9))

                    ; #45715: <==negation-removal== 18215 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #77376: origin
                    (at_d_p1)

                    ; #81238: origin
                    (not_at_d_p6)

                    ; #33660: <==negation-removal== 81238 (pos)
                    (not (at_d_p6))

                    ; #68050: <==negation-removal== 77376 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #81238: origin
                    (not_at_d_p6)

                    ; #84891: origin
                    (at_d_p2)

                    ; #33660: <==negation-removal== 81238 (pos)
                    (not (at_d_p6))

                    ; #87207: <==negation-removal== 84891 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #14191: origin
                    (at_d_p3)

                    ; #81238: origin
                    (not_at_d_p6)

                    ; #33660: <==negation-removal== 81238 (pos)
                    (not (at_d_p6))

                    ; #90944: <==negation-removal== 14191 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #80879: origin
                    (at_d_p4)

                    ; #81238: origin
                    (not_at_d_p6)

                    ; #33660: <==negation-removal== 81238 (pos)
                    (not (at_d_p6))

                    ; #53915: <==negation-removal== 80879 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #45715: origin
                    (at_d_p5)

                    ; #81238: origin
                    (not_at_d_p6)

                    ; #18215: <==negation-removal== 45715 (pos)
                    (not (not_at_d_p5))

                    ; #33660: <==negation-removal== 81238 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #33660: origin
                    (at_d_p6)

                    ; #81238: origin
                    (not_at_d_p6)

                    ; #33660: <==negation-removal== 81238 (pos)
                    (not (at_d_p6))

                    ; #81238: <==negation-removal== 33660 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #40669: origin
                    (at_d_p7)

                    ; #81238: origin
                    (not_at_d_p6)

                    ; #18429: <==negation-removal== 40669 (pos)
                    (not (not_at_d_p7))

                    ; #33660: <==negation-removal== 81238 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (at_d_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #69810: origin
                    (at_d_p8)

                    ; #81238: origin
                    (not_at_d_p6)

                    ; #22388: <==negation-removal== 69810 (pos)
                    (not (not_at_d_p8))

                    ; #33660: <==negation-removal== 81238 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #72716: origin
                    (at_d_p9)

                    ; #81238: origin
                    (not_at_d_p6)

                    ; #31718: <==negation-removal== 72716 (pos)
                    (not (not_at_d_p9))

                    ; #33660: <==negation-removal== 81238 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7))
        :effect (and
                    ; #18429: origin
                    (not_at_d_p7)

                    ; #77376: origin
                    (at_d_p1)

                    ; #40669: <==negation-removal== 18429 (pos)
                    (not (at_d_p7))

                    ; #68050: <==negation-removal== 77376 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #18429: origin
                    (not_at_d_p7)

                    ; #84891: origin
                    (at_d_p2)

                    ; #40669: <==negation-removal== 18429 (pos)
                    (not (at_d_p7))

                    ; #87207: <==negation-removal== 84891 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #14191: origin
                    (at_d_p3)

                    ; #18429: origin
                    (not_at_d_p7)

                    ; #40669: <==negation-removal== 18429 (pos)
                    (not (at_d_p7))

                    ; #90944: <==negation-removal== 14191 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7))
        :effect (and
                    ; #18429: origin
                    (not_at_d_p7)

                    ; #80879: origin
                    (at_d_p4)

                    ; #40669: <==negation-removal== 18429 (pos)
                    (not (at_d_p7))

                    ; #53915: <==negation-removal== 80879 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #18429: origin
                    (not_at_d_p7)

                    ; #45715: origin
                    (at_d_p5)

                    ; #18215: <==negation-removal== 45715 (pos)
                    (not (not_at_d_p5))

                    ; #40669: <==negation-removal== 18429 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #18429: origin
                    (not_at_d_p7)

                    ; #33660: origin
                    (at_d_p6)

                    ; #40669: <==negation-removal== 18429 (pos)
                    (not (at_d_p7))

                    ; #81238: <==negation-removal== 33660 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7))
        :effect (and
                    ; #18429: origin
                    (not_at_d_p7)

                    ; #40669: origin
                    (at_d_p7)

                    ; #18429: <==negation-removal== 40669 (pos)
                    (not (not_at_d_p7))

                    ; #40669: <==negation-removal== 18429 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #18429: origin
                    (not_at_d_p7)

                    ; #69810: origin
                    (at_d_p8)

                    ; #22388: <==negation-removal== 69810 (pos)
                    (not (not_at_d_p8))

                    ; #40669: <==negation-removal== 18429 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #18429: origin
                    (not_at_d_p7)

                    ; #72716: origin
                    (at_d_p9)

                    ; #31718: <==negation-removal== 72716 (pos)
                    (not (not_at_d_p9))

                    ; #40669: <==negation-removal== 18429 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #22388: origin
                    (not_at_d_p8)

                    ; #77376: origin
                    (at_d_p1)

                    ; #68050: <==negation-removal== 77376 (pos)
                    (not (not_at_d_p1))

                    ; #69810: <==negation-removal== 22388 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #22388: origin
                    (not_at_d_p8)

                    ; #84891: origin
                    (at_d_p2)

                    ; #69810: <==negation-removal== 22388 (pos)
                    (not (at_d_p8))

                    ; #87207: <==negation-removal== 84891 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #14191: origin
                    (at_d_p3)

                    ; #22388: origin
                    (not_at_d_p8)

                    ; #69810: <==negation-removal== 22388 (pos)
                    (not (at_d_p8))

                    ; #90944: <==negation-removal== 14191 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_d_p8))
        :effect (and
                    ; #22388: origin
                    (not_at_d_p8)

                    ; #80879: origin
                    (at_d_p4)

                    ; #53915: <==negation-removal== 80879 (pos)
                    (not (not_at_d_p4))

                    ; #69810: <==negation-removal== 22388 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #22388: origin
                    (not_at_d_p8)

                    ; #45715: origin
                    (at_d_p5)

                    ; #18215: <==negation-removal== 45715 (pos)
                    (not (not_at_d_p5))

                    ; #69810: <==negation-removal== 22388 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8))
        :effect (and
                    ; #22388: origin
                    (not_at_d_p8)

                    ; #33660: origin
                    (at_d_p6)

                    ; #69810: <==negation-removal== 22388 (pos)
                    (not (at_d_p8))

                    ; #81238: <==negation-removal== 33660 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #22388: origin
                    (not_at_d_p8)

                    ; #40669: origin
                    (at_d_p7)

                    ; #18429: <==negation-removal== 40669 (pos)
                    (not (not_at_d_p7))

                    ; #69810: <==negation-removal== 22388 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #22388: origin
                    (not_at_d_p8)

                    ; #69810: origin
                    (at_d_p8)

                    ; #22388: <==negation-removal== 69810 (pos)
                    (not (not_at_d_p8))

                    ; #69810: <==negation-removal== 22388 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #22388: origin
                    (not_at_d_p8)

                    ; #72716: origin
                    (at_d_p9)

                    ; #31718: <==negation-removal== 72716 (pos)
                    (not (not_at_d_p9))

                    ; #69810: <==negation-removal== 22388 (pos)
                    (not (at_d_p8))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #31718: origin
                    (not_at_d_p9)

                    ; #77376: origin
                    (at_d_p1)

                    ; #68050: <==negation-removal== 77376 (pos)
                    (not (not_at_d_p1))

                    ; #72716: <==negation-removal== 31718 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #31718: origin
                    (not_at_d_p9)

                    ; #84891: origin
                    (at_d_p2)

                    ; #72716: <==negation-removal== 31718 (pos)
                    (not (at_d_p9))

                    ; #87207: <==negation-removal== 84891 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #14191: origin
                    (at_d_p3)

                    ; #31718: origin
                    (not_at_d_p9)

                    ; #72716: <==negation-removal== 31718 (pos)
                    (not (at_d_p9))

                    ; #90944: <==negation-removal== 14191 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9))
        :effect (and
                    ; #31718: origin
                    (not_at_d_p9)

                    ; #80879: origin
                    (at_d_p4)

                    ; #53915: <==negation-removal== 80879 (pos)
                    (not (not_at_d_p4))

                    ; #72716: <==negation-removal== 31718 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_d_p9))
        :effect (and
                    ; #31718: origin
                    (not_at_d_p9)

                    ; #45715: origin
                    (at_d_p5)

                    ; #18215: <==negation-removal== 45715 (pos)
                    (not (not_at_d_p5))

                    ; #72716: <==negation-removal== 31718 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #31718: origin
                    (not_at_d_p9)

                    ; #33660: origin
                    (at_d_p6)

                    ; #72716: <==negation-removal== 31718 (pos)
                    (not (at_d_p9))

                    ; #81238: <==negation-removal== 33660 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #31718: origin
                    (not_at_d_p9)

                    ; #40669: origin
                    (at_d_p7)

                    ; #18429: <==negation-removal== 40669 (pos)
                    (not (not_at_d_p7))

                    ; #72716: <==negation-removal== 31718 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_d_p9))
        :effect (and
                    ; #31718: origin
                    (not_at_d_p9)

                    ; #69810: origin
                    (at_d_p8)

                    ; #22388: <==negation-removal== 69810 (pos)
                    (not (not_at_d_p8))

                    ; #72716: <==negation-removal== 31718 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #31718: origin
                    (not_at_d_p9)

                    ; #72716: origin
                    (at_d_p9)

                    ; #31718: <==negation-removal== 72716 (pos)
                    (not (not_at_d_p9))

                    ; #72716: <==negation-removal== 31718 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #15877: <==commonly_known== 83909 (neg)
                    (Pb_checked_p1)

                    ; #16703: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #18869: <==closure== 16703 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #28800: <==commonly_known== 68348 (pos)
                    (Bd_checked_p1)

                    ; #36438: <==commonly_known== 68348 (pos)
                    (Bc_checked_p1)

                    ; #43268: <==commonly_known== 83909 (neg)
                    (Pa_checked_p1)

                    ; #50881: <==commonly_known== 83909 (neg)
                    (Pd_checked_p1)

                    ; #58546: <==commonly_known== 83909 (neg)
                    (Pc_checked_p1)

                    ; #66597: <==commonly_known== 68348 (pos)
                    (Ba_checked_p1)

                    ; #66719: <==commonly_known== 68348 (pos)
                    (Bb_checked_p1)

                    ; #68348: origin
                    (checked_p1)

                    ; #75588: <==closure== 84852 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #84852: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #12432: <==negation-removal== 18869 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #14287: <==uncertain_firing== 18869 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #23512: <==negation-removal== 15877 (pos)
                    (not (Bb_not_checked_p1))

                    ; #31490: <==negation-removal== 58546 (pos)
                    (not (Bc_not_checked_p1))

                    ; #42116: <==negation-removal== 16703 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #43319: <==uncertain_firing== 84852 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #44071: <==negation-removal== 66719 (pos)
                    (not (Pb_not_checked_p1))

                    ; #46133: <==negation-removal== 50881 (pos)
                    (not (Bd_not_checked_p1))

                    ; #55186: <==uncertain_firing== 16703 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #55825: <==negation-removal== 43268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #58715: <==uncertain_firing== 75588 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65519: <==negation-removal== 36438 (pos)
                    (not (Pc_not_checked_p1))

                    ; #66047: <==negation-removal== 28800 (pos)
                    (not (Pd_not_checked_p1))

                    ; #67668: <==negation-removal== 75588 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #70806: <==negation-removal== 66597 (pos)
                    (not (Pa_not_checked_p1))

                    ; #83909: <==negation-removal== 68348 (pos)
                    (not (not_checked_p1))

                    ; #89106: <==negation-removal== 84852 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #21889: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #23203: origin
                    (checked_p2)

                    ; #27500: <==closure== 21889 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #28291: <==commonly_known== 60693 (neg)
                    (Pb_checked_p2)

                    ; #32216: <==closure== 42601 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #42601: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #58008: <==commonly_known== 60693 (neg)
                    (Pa_checked_p2)

                    ; #59027: <==commonly_known== 23203 (pos)
                    (Bb_checked_p2)

                    ; #68897: <==commonly_known== 23203 (pos)
                    (Ba_checked_p2)

                    ; #72593: <==commonly_known== 60693 (neg)
                    (Pc_checked_p2)

                    ; #81594: <==commonly_known== 60693 (neg)
                    (Pd_checked_p2)

                    ; #84345: <==commonly_known== 23203 (pos)
                    (Bc_checked_p2)

                    ; #86860: <==commonly_known== 23203 (pos)
                    (Bd_checked_p2)

                    ; #13334: <==negation-removal== 81594 (pos)
                    (not (Bd_not_checked_p2))

                    ; #16471: <==negation-removal== 59027 (pos)
                    (not (Pb_not_checked_p2))

                    ; #21779: <==negation-removal== 68897 (pos)
                    (not (Pa_not_checked_p2))

                    ; #32293: <==negation-removal== 32216 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41847: <==negation-removal== 21889 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #43556: <==uncertain_firing== 21889 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #44315: <==uncertain_firing== 42601 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #45930: <==negation-removal== 58008 (pos)
                    (not (Ba_not_checked_p2))

                    ; #46205: <==uncertain_firing== 32216 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #60693: <==negation-removal== 23203 (pos)
                    (not (not_checked_p2))

                    ; #64853: <==negation-removal== 42601 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #73971: <==negation-removal== 72593 (pos)
                    (not (Bc_not_checked_p2))

                    ; #75268: <==negation-removal== 86860 (pos)
                    (not (Pd_not_checked_p2))

                    ; #79516: <==negation-removal== 27500 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #82033: <==negation-removal== 28291 (pos)
                    (not (Bb_not_checked_p2))

                    ; #85995: <==uncertain_firing== 27500 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #89618: <==negation-removal== 84345 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11850: <==commonly_known== 17993 (neg)
                    (Pd_checked_p3)

                    ; #15818: <==commonly_known== 90847 (pos)
                    (Bc_checked_p3)

                    ; #18207: <==commonly_known== 17993 (neg)
                    (Pa_checked_p3)

                    ; #24298: <==commonly_known== 17993 (neg)
                    (Pc_checked_p3)

                    ; #28406: <==closure== 87036 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #34956: <==commonly_known== 90847 (pos)
                    (Bd_checked_p3)

                    ; #50830: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54710: <==commonly_known== 17993 (neg)
                    (Pb_checked_p3)

                    ; #67632: <==closure== 50830 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #83772: <==commonly_known== 90847 (pos)
                    (Bb_checked_p3)

                    ; #87036: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #88198: <==commonly_known== 90847 (pos)
                    (Ba_checked_p3)

                    ; #90847: origin
                    (checked_p3)

                    ; #12800: <==uncertain_firing== 67632 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #15396: <==negation-removal== 34956 (pos)
                    (not (Pd_not_checked_p3))

                    ; #15942: <==negation-removal== 83772 (pos)
                    (not (Pb_not_checked_p3))

                    ; #17993: <==negation-removal== 90847 (pos)
                    (not (not_checked_p3))

                    ; #19207: <==negation-removal== 18207 (pos)
                    (not (Ba_not_checked_p3))

                    ; #32518: <==negation-removal== 50830 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #32617: <==negation-removal== 28406 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #33180: <==negation-removal== 11850 (pos)
                    (not (Bd_not_checked_p3))

                    ; #37138: <==uncertain_firing== 50830 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #42223: <==negation-removal== 88198 (pos)
                    (not (Pa_not_checked_p3))

                    ; #42565: <==uncertain_firing== 87036 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #43092: <==uncertain_firing== 28406 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #62538: <==negation-removal== 67632 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #66875: <==negation-removal== 87036 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #67990: <==negation-removal== 15818 (pos)
                    (not (Pc_not_checked_p3))

                    ; #75706: <==negation-removal== 54710 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86573: <==negation-removal== 24298 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10653: <==closure== 72775 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #12386: <==commonly_known== 35405 (neg)
                    (Pa_checked_p4)

                    ; #14838: <==commonly_known== 75462 (pos)
                    (Bb_checked_p4)

                    ; #20145: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #26943: <==commonly_known== 75462 (pos)
                    (Bd_checked_p4)

                    ; #27740: <==closure== 20145 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #30616: <==commonly_known== 75462 (pos)
                    (Ba_checked_p4)

                    ; #40042: <==commonly_known== 35405 (neg)
                    (Pc_checked_p4)

                    ; #41428: <==commonly_known== 35405 (neg)
                    (Pb_checked_p4)

                    ; #70355: <==commonly_known== 35405 (neg)
                    (Pd_checked_p4)

                    ; #72775: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #75462: origin
                    (checked_p4)

                    ; #94945: <==commonly_known== 75462 (pos)
                    (Bc_checked_p4)

                    ; #12215: <==negation-removal== 12386 (pos)
                    (not (Ba_not_checked_p4))

                    ; #17025: <==negation-removal== 20145 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #22873: <==negation-removal== 27740 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #32574: <==negation-removal== 40042 (pos)
                    (not (Bc_not_checked_p4))

                    ; #34235: <==negation-removal== 26943 (pos)
                    (not (Pd_not_checked_p4))

                    ; #35405: <==negation-removal== 75462 (pos)
                    (not (not_checked_p4))

                    ; #37374: <==uncertain_firing== 72775 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #41078: <==negation-removal== 72775 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #44380: <==uncertain_firing== 20145 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #47631: <==negation-removal== 41428 (pos)
                    (not (Bb_not_checked_p4))

                    ; #66263: <==uncertain_firing== 27740 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #66314: <==negation-removal== 70355 (pos)
                    (not (Bd_not_checked_p4))

                    ; #68582: <==negation-removal== 14838 (pos)
                    (not (Pb_not_checked_p4))

                    ; #72236: <==negation-removal== 94945 (pos)
                    (not (Pc_not_checked_p4))

                    ; #74808: <==negation-removal== 30616 (pos)
                    (not (Pa_not_checked_p4))

                    ; #82712: <==negation-removal== 10653 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #89568: <==uncertain_firing== 10653 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #17300: <==commonly_known== 75277 (neg)
                    (Pa_checked_p5)

                    ; #21253: <==closure== 21605 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #21605: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #26835: <==closure== 27728 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #27728: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #28621: <==commonly_known== 34603 (pos)
                    (Bd_checked_p5)

                    ; #34603: origin
                    (checked_p5)

                    ; #50859: <==commonly_known== 34603 (pos)
                    (Bc_checked_p5)

                    ; #58494: <==commonly_known== 34603 (pos)
                    (Bb_checked_p5)

                    ; #62013: <==commonly_known== 75277 (neg)
                    (Pd_checked_p5)

                    ; #66989: <==commonly_known== 75277 (neg)
                    (Pb_checked_p5)

                    ; #72952: <==commonly_known== 75277 (neg)
                    (Pc_checked_p5)

                    ; #85341: <==commonly_known== 34603 (pos)
                    (Ba_checked_p5)

                    ; #11835: <==negation-removal== 66989 (pos)
                    (not (Bb_not_checked_p5))

                    ; #14594: <==uncertain_firing== 21605 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #15891: <==negation-removal== 27728 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #40377: <==negation-removal== 85341 (pos)
                    (not (Pa_not_checked_p5))

                    ; #42086: <==negation-removal== 21605 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #51355: <==negation-removal== 58494 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55382: <==negation-removal== 72952 (pos)
                    (not (Bc_not_checked_p5))

                    ; #58934: <==negation-removal== 26835 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #68251: <==uncertain_firing== 27728 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #72097: <==negation-removal== 50859 (pos)
                    (not (Pc_not_checked_p5))

                    ; #75277: <==negation-removal== 34603 (pos)
                    (not (not_checked_p5))

                    ; #76296: <==negation-removal== 62013 (pos)
                    (not (Bd_not_checked_p5))

                    ; #78560: <==negation-removal== 17300 (pos)
                    (not (Ba_not_checked_p5))

                    ; #79413: <==uncertain_firing== 26835 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #81181: <==negation-removal== 28621 (pos)
                    (not (Pd_not_checked_p5))

                    ; #86188: <==negation-removal== 21253 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #88976: <==uncertain_firing== 21253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14073: <==closure== 42266 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #17461: <==commonly_known== 13629 (neg)
                    (Pc_checked_p6)

                    ; #30342: origin
                    (checked_p6)

                    ; #35967: <==commonly_known== 30342 (pos)
                    (Bc_checked_p6)

                    ; #37205: <==commonly_known== 13629 (neg)
                    (Pb_checked_p6)

                    ; #42266: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #50587: <==commonly_known== 30342 (pos)
                    (Bd_checked_p6)

                    ; #62460: <==commonly_known== 30342 (pos)
                    (Ba_checked_p6)

                    ; #63753: <==closure== 72653 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #72653: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #74253: <==commonly_known== 13629 (neg)
                    (Pa_checked_p6)

                    ; #83099: <==commonly_known== 30342 (pos)
                    (Bb_checked_p6)

                    ; #87549: <==commonly_known== 13629 (neg)
                    (Pd_checked_p6)

                    ; #13629: <==negation-removal== 30342 (pos)
                    (not (not_checked_p6))

                    ; #14365: <==negation-removal== 50587 (pos)
                    (not (Pd_not_checked_p6))

                    ; #20133: <==uncertain_firing== 72653 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #21432: <==negation-removal== 63753 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #22216: <==negation-removal== 37205 (pos)
                    (not (Bb_not_checked_p6))

                    ; #24286: <==negation-removal== 83099 (pos)
                    (not (Pb_not_checked_p6))

                    ; #24990: <==negation-removal== 72653 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #34606: <==negation-removal== 14073 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #36479: <==negation-removal== 87549 (pos)
                    (not (Bd_not_checked_p6))

                    ; #37962: <==negation-removal== 62460 (pos)
                    (not (Pa_not_checked_p6))

                    ; #50968: <==negation-removal== 17461 (pos)
                    (not (Bc_not_checked_p6))

                    ; #70059: <==negation-removal== 42266 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #72580: <==uncertain_firing== 14073 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77632: <==negation-removal== 74253 (pos)
                    (not (Ba_not_checked_p6))

                    ; #78009: <==uncertain_firing== 42266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #78560: <==negation-removal== 35967 (pos)
                    (not (Pc_not_checked_p6))

                    ; #89578: <==uncertain_firing== 63753 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18824: <==commonly_known== 27803 (pos)
                    (Bd_checked_p7)

                    ; #21800: <==commonly_known== 27803 (pos)
                    (Ba_checked_p7)

                    ; #27006: <==commonly_known== 41579 (neg)
                    (Pa_checked_p7)

                    ; #27803: origin
                    (checked_p7)

                    ; #40678: <==commonly_known== 27803 (pos)
                    (Bb_checked_p7)

                    ; #44253: <==commonly_known== 41579 (neg)
                    (Pc_checked_p7)

                    ; #48311: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #62082: <==commonly_known== 41579 (neg)
                    (Pd_checked_p7)

                    ; #67459: <==commonly_known== 27803 (pos)
                    (Bc_checked_p7)

                    ; #78091: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79824: <==closure== 48311 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #81782: <==closure== 78091 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #86950: <==commonly_known== 41579 (neg)
                    (Pb_checked_p7)

                    ; #18765: <==negation-removal== 67459 (pos)
                    (not (Pc_not_checked_p7))

                    ; #21927: <==negation-removal== 78091 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #22452: <==negation-removal== 79824 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #29171: <==negation-removal== 44253 (pos)
                    (not (Bc_not_checked_p7))

                    ; #30584: <==negation-removal== 81782 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #31679: <==negation-removal== 27006 (pos)
                    (not (Ba_not_checked_p7))

                    ; #41579: <==negation-removal== 27803 (pos)
                    (not (not_checked_p7))

                    ; #47104: <==uncertain_firing== 48311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #51756: <==uncertain_firing== 78091 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #53742: <==negation-removal== 48311 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #54748: <==negation-removal== 21800 (pos)
                    (not (Pa_not_checked_p7))

                    ; #56350: <==negation-removal== 86950 (pos)
                    (not (Bb_not_checked_p7))

                    ; #64864: <==negation-removal== 40678 (pos)
                    (not (Pb_not_checked_p7))

                    ; #71975: <==uncertain_firing== 81782 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #74068: <==negation-removal== 18824 (pos)
                    (not (Pd_not_checked_p7))

                    ; #81815: <==uncertain_firing== 79824 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #84103: <==negation-removal== 62082 (pos)
                    (not (Bd_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11876: <==closure== 42458 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #18186: <==commonly_known== 82767 (neg)
                    (Pc_checked_p8)

                    ; #19865: <==commonly_known== 53929 (pos)
                    (Bb_checked_p8)

                    ; #32668: <==commonly_known== 53929 (pos)
                    (Bc_checked_p8)

                    ; #42458: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #47351: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #50581: <==commonly_known== 82767 (neg)
                    (Pb_checked_p8)

                    ; #52559: <==commonly_known== 82767 (neg)
                    (Pa_checked_p8)

                    ; #53929: origin
                    (checked_p8)

                    ; #56142: <==commonly_known== 53929 (pos)
                    (Bd_checked_p8)

                    ; #70119: <==commonly_known== 82767 (neg)
                    (Pd_checked_p8)

                    ; #79412: <==commonly_known== 53929 (pos)
                    (Ba_checked_p8)

                    ; #89255: <==closure== 47351 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #14152: <==negation-removal== 18186 (pos)
                    (not (Bc_not_checked_p8))

                    ; #14781: <==negation-removal== 50581 (pos)
                    (not (Bb_not_checked_p8))

                    ; #24506: <==negation-removal== 56142 (pos)
                    (not (Pd_not_checked_p8))

                    ; #28377: <==negation-removal== 42458 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #29646: <==negation-removal== 89255 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #45330: <==negation-removal== 47351 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #48925: <==negation-removal== 79412 (pos)
                    (not (Pa_not_checked_p8))

                    ; #50176: <==negation-removal== 11876 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #53531: <==negation-removal== 70119 (pos)
                    (not (Bd_not_checked_p8))

                    ; #58421: <==negation-removal== 19865 (pos)
                    (not (Pb_not_checked_p8))

                    ; #61795: <==negation-removal== 52559 (pos)
                    (not (Ba_not_checked_p8))

                    ; #79364: <==negation-removal== 32668 (pos)
                    (not (Pc_not_checked_p8))

                    ; #82052: <==uncertain_firing== 89255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #82767: <==negation-removal== 53929 (pos)
                    (not (not_checked_p8))

                    ; #87375: <==uncertain_firing== 42458 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #88042: <==uncertain_firing== 11876 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #93274: <==uncertain_firing== 47351 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11769: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #25553: <==closure== 11769 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #33585: <==commonly_known== 30556 (neg)
                    (Pa_checked_p9)

                    ; #46158: <==commonly_known== 91168 (pos)
                    (Ba_checked_p9)

                    ; #46690: <==commonly_known== 91168 (pos)
                    (Bb_checked_p9)

                    ; #60224: <==commonly_known== 30556 (neg)
                    (Pd_checked_p9)

                    ; #62404: <==closure== 81839 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #65776: <==commonly_known== 30556 (neg)
                    (Pb_checked_p9)

                    ; #74994: <==commonly_known== 91168 (pos)
                    (Bd_checked_p9)

                    ; #78160: <==commonly_known== 30556 (neg)
                    (Pc_checked_p9)

                    ; #79345: <==commonly_known== 91168 (pos)
                    (Bc_checked_p9)

                    ; #81839: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #91168: origin
                    (checked_p9)

                    ; #12352: <==negation-removal== 60224 (pos)
                    (not (Bd_not_checked_p9))

                    ; #17567: <==negation-removal== 46158 (pos)
                    (not (Pa_not_checked_p9))

                    ; #18031: <==uncertain_firing== 81839 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #19459: <==negation-removal== 11769 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #23857: <==negation-removal== 65776 (pos)
                    (not (Bb_not_checked_p9))

                    ; #24482: <==negation-removal== 46690 (pos)
                    (not (Pb_not_checked_p9))

                    ; #30556: <==negation-removal== 91168 (pos)
                    (not (not_checked_p9))

                    ; #31582: <==negation-removal== 79345 (pos)
                    (not (Pc_not_checked_p9))

                    ; #37308: <==negation-removal== 81839 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #41384: <==negation-removal== 25553 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #55390: <==negation-removal== 74994 (pos)
                    (not (Pd_not_checked_p9))

                    ; #61226: <==negation-removal== 78160 (pos)
                    (not (Bc_not_checked_p9))

                    ; #66896: <==negation-removal== 62404 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #68885: <==uncertain_firing== 62404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73809: <==uncertain_firing== 11769 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #77990: <==negation-removal== 33585 (pos)
                    (not (Ba_not_checked_p9))

                    ; #91276: <==uncertain_firing== 25553 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #15877: <==commonly_known== 83909 (neg)
                    (Pb_checked_p1)

                    ; #21221: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #28800: <==commonly_known== 68348 (pos)
                    (Bd_checked_p1)

                    ; #34195: <==closure== 84315 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #36438: <==commonly_known== 68348 (pos)
                    (Bc_checked_p1)

                    ; #43268: <==commonly_known== 83909 (neg)
                    (Pa_checked_p1)

                    ; #50881: <==commonly_known== 83909 (neg)
                    (Pd_checked_p1)

                    ; #58546: <==commonly_known== 83909 (neg)
                    (Pc_checked_p1)

                    ; #59327: <==closure== 21221 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #66597: <==commonly_known== 68348 (pos)
                    (Ba_checked_p1)

                    ; #66719: <==commonly_known== 68348 (pos)
                    (Bb_checked_p1)

                    ; #68348: origin
                    (checked_p1)

                    ; #84315: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #23512: <==negation-removal== 15877 (pos)
                    (not (Bb_not_checked_p1))

                    ; #31490: <==negation-removal== 58546 (pos)
                    (not (Bc_not_checked_p1))

                    ; #33736: <==uncertain_firing== 21221 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #44071: <==negation-removal== 66719 (pos)
                    (not (Pb_not_checked_p1))

                    ; #46133: <==negation-removal== 50881 (pos)
                    (not (Bd_not_checked_p1))

                    ; #48802: <==negation-removal== 21221 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #55825: <==negation-removal== 43268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #58590: <==negation-removal== 59327 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65519: <==negation-removal== 36438 (pos)
                    (not (Pc_not_checked_p1))

                    ; #66047: <==negation-removal== 28800 (pos)
                    (not (Pd_not_checked_p1))

                    ; #70653: <==uncertain_firing== 59327 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #70806: <==negation-removal== 66597 (pos)
                    (not (Pa_not_checked_p1))

                    ; #75424: <==negation-removal== 84315 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #76713: <==uncertain_firing== 34195 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #77183: <==uncertain_firing== 84315 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #83909: <==negation-removal== 68348 (pos)
                    (not (not_checked_p1))

                    ; #84528: <==negation-removal== 34195 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #23203: origin
                    (checked_p2)

                    ; #27225: <==closure== 27654 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #27654: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #28291: <==commonly_known== 60693 (neg)
                    (Pb_checked_p2)

                    ; #32102: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #58008: <==commonly_known== 60693 (neg)
                    (Pa_checked_p2)

                    ; #59027: <==commonly_known== 23203 (pos)
                    (Bb_checked_p2)

                    ; #68897: <==commonly_known== 23203 (pos)
                    (Ba_checked_p2)

                    ; #70396: <==closure== 32102 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #72593: <==commonly_known== 60693 (neg)
                    (Pc_checked_p2)

                    ; #81594: <==commonly_known== 60693 (neg)
                    (Pd_checked_p2)

                    ; #84345: <==commonly_known== 23203 (pos)
                    (Bc_checked_p2)

                    ; #86860: <==commonly_known== 23203 (pos)
                    (Bd_checked_p2)

                    ; #13334: <==negation-removal== 81594 (pos)
                    (not (Bd_not_checked_p2))

                    ; #16331: <==uncertain_firing== 27654 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #16471: <==negation-removal== 59027 (pos)
                    (not (Pb_not_checked_p2))

                    ; #21779: <==negation-removal== 68897 (pos)
                    (not (Pa_not_checked_p2))

                    ; #29327: <==negation-removal== 32102 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #36028: <==negation-removal== 27225 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #40651: <==uncertain_firing== 70396 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #45930: <==negation-removal== 58008 (pos)
                    (not (Ba_not_checked_p2))

                    ; #60693: <==negation-removal== 23203 (pos)
                    (not (not_checked_p2))

                    ; #73971: <==negation-removal== 72593 (pos)
                    (not (Bc_not_checked_p2))

                    ; #75268: <==negation-removal== 86860 (pos)
                    (not (Pd_not_checked_p2))

                    ; #80730: <==negation-removal== 70396 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #81306: <==uncertain_firing== 32102 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #82033: <==negation-removal== 28291 (pos)
                    (not (Bb_not_checked_p2))

                    ; #88913: <==uncertain_firing== 27225 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #89618: <==negation-removal== 84345 (pos)
                    (not (Pc_not_checked_p2))

                    ; #91793: <==negation-removal== 27654 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11850: <==commonly_known== 17993 (neg)
                    (Pd_checked_p3)

                    ; #15818: <==commonly_known== 90847 (pos)
                    (Bc_checked_p3)

                    ; #18207: <==commonly_known== 17993 (neg)
                    (Pa_checked_p3)

                    ; #24298: <==commonly_known== 17993 (neg)
                    (Pc_checked_p3)

                    ; #30188: <==closure== 61085 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #34956: <==commonly_known== 90847 (pos)
                    (Bd_checked_p3)

                    ; #36186: <==closure== 79491 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #54710: <==commonly_known== 17993 (neg)
                    (Pb_checked_p3)

                    ; #61085: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #79491: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #83772: <==commonly_known== 90847 (pos)
                    (Bb_checked_p3)

                    ; #88198: <==commonly_known== 90847 (pos)
                    (Ba_checked_p3)

                    ; #90847: origin
                    (checked_p3)

                    ; #15396: <==negation-removal== 34956 (pos)
                    (not (Pd_not_checked_p3))

                    ; #15942: <==negation-removal== 83772 (pos)
                    (not (Pb_not_checked_p3))

                    ; #16319: <==uncertain_firing== 61085 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #17993: <==negation-removal== 90847 (pos)
                    (not (not_checked_p3))

                    ; #19207: <==negation-removal== 18207 (pos)
                    (not (Ba_not_checked_p3))

                    ; #27999: <==negation-removal== 61085 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #29702: <==uncertain_firing== 30188 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #31504: <==negation-removal== 79491 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #33180: <==negation-removal== 11850 (pos)
                    (not (Bd_not_checked_p3))

                    ; #35743: <==negation-removal== 36186 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #42223: <==negation-removal== 88198 (pos)
                    (not (Pa_not_checked_p3))

                    ; #48007: <==uncertain_firing== 79491 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #67990: <==negation-removal== 15818 (pos)
                    (not (Pc_not_checked_p3))

                    ; #70195: <==negation-removal== 30188 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #75695: <==uncertain_firing== 36186 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #75706: <==negation-removal== 54710 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86573: <==negation-removal== 24298 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12386: <==commonly_known== 35405 (neg)
                    (Pa_checked_p4)

                    ; #14838: <==commonly_known== 75462 (pos)
                    (Bb_checked_p4)

                    ; #22204: <==closure== 24874 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #24874: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #26943: <==commonly_known== 75462 (pos)
                    (Bd_checked_p4)

                    ; #30616: <==commonly_known== 75462 (pos)
                    (Ba_checked_p4)

                    ; #34495: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #40042: <==commonly_known== 35405 (neg)
                    (Pc_checked_p4)

                    ; #41428: <==commonly_known== 35405 (neg)
                    (Pb_checked_p4)

                    ; #70355: <==commonly_known== 35405 (neg)
                    (Pd_checked_p4)

                    ; #75462: origin
                    (checked_p4)

                    ; #76173: <==closure== 34495 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #94945: <==commonly_known== 75462 (pos)
                    (Bc_checked_p4)

                    ; #12215: <==negation-removal== 12386 (pos)
                    (not (Ba_not_checked_p4))

                    ; #13774: <==negation-removal== 34495 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #19755: <==uncertain_firing== 76173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #28346: <==negation-removal== 22204 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #32527: <==negation-removal== 76173 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #32574: <==negation-removal== 40042 (pos)
                    (not (Bc_not_checked_p4))

                    ; #34235: <==negation-removal== 26943 (pos)
                    (not (Pd_not_checked_p4))

                    ; #35405: <==negation-removal== 75462 (pos)
                    (not (not_checked_p4))

                    ; #47631: <==negation-removal== 41428 (pos)
                    (not (Bb_not_checked_p4))

                    ; #54571: <==uncertain_firing== 34495 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #65475: <==uncertain_firing== 24874 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #65803: <==negation-removal== 24874 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #66314: <==negation-removal== 70355 (pos)
                    (not (Bd_not_checked_p4))

                    ; #68582: <==negation-removal== 14838 (pos)
                    (not (Pb_not_checked_p4))

                    ; #72236: <==negation-removal== 94945 (pos)
                    (not (Pc_not_checked_p4))

                    ; #74808: <==negation-removal== 30616 (pos)
                    (not (Pa_not_checked_p4))

                    ; #85199: <==uncertain_firing== 22204 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #17300: <==commonly_known== 75277 (neg)
                    (Pa_checked_p5)

                    ; #28621: <==commonly_known== 34603 (pos)
                    (Bd_checked_p5)

                    ; #34603: origin
                    (checked_p5)

                    ; #36141: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #39191: <==closure== 68434 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #50859: <==commonly_known== 34603 (pos)
                    (Bc_checked_p5)

                    ; #58494: <==commonly_known== 34603 (pos)
                    (Bb_checked_p5)

                    ; #62013: <==commonly_known== 75277 (neg)
                    (Pd_checked_p5)

                    ; #66989: <==commonly_known== 75277 (neg)
                    (Pb_checked_p5)

                    ; #68434: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #72952: <==commonly_known== 75277 (neg)
                    (Pc_checked_p5)

                    ; #85341: <==commonly_known== 34603 (pos)
                    (Ba_checked_p5)

                    ; #87038: <==closure== 36141 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #11835: <==negation-removal== 66989 (pos)
                    (not (Bb_not_checked_p5))

                    ; #11944: <==uncertain_firing== 36141 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #13514: <==negation-removal== 87038 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #19138: <==uncertain_firing== 68434 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #35316: <==negation-removal== 39191 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #35430: <==negation-removal== 36141 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #40377: <==negation-removal== 85341 (pos)
                    (not (Pa_not_checked_p5))

                    ; #45516: <==negation-removal== 68434 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #51355: <==negation-removal== 58494 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55382: <==negation-removal== 72952 (pos)
                    (not (Bc_not_checked_p5))

                    ; #69949: <==uncertain_firing== 87038 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #72097: <==negation-removal== 50859 (pos)
                    (not (Pc_not_checked_p5))

                    ; #75277: <==negation-removal== 34603 (pos)
                    (not (not_checked_p5))

                    ; #76296: <==negation-removal== 62013 (pos)
                    (not (Bd_not_checked_p5))

                    ; #78560: <==negation-removal== 17300 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81181: <==negation-removal== 28621 (pos)
                    (not (Pd_not_checked_p5))

                    ; #91008: <==uncertain_firing== 39191 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10142: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #17461: <==commonly_known== 13629 (neg)
                    (Pc_checked_p6)

                    ; #23812: <==closure== 10142 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #30342: origin
                    (checked_p6)

                    ; #35967: <==commonly_known== 30342 (pos)
                    (Bc_checked_p6)

                    ; #37205: <==commonly_known== 13629 (neg)
                    (Pb_checked_p6)

                    ; #48749: <==closure== 71931 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #50587: <==commonly_known== 30342 (pos)
                    (Bd_checked_p6)

                    ; #62460: <==commonly_known== 30342 (pos)
                    (Ba_checked_p6)

                    ; #71931: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #74253: <==commonly_known== 13629 (neg)
                    (Pa_checked_p6)

                    ; #83099: <==commonly_known== 30342 (pos)
                    (Bb_checked_p6)

                    ; #87549: <==commonly_known== 13629 (neg)
                    (Pd_checked_p6)

                    ; #13629: <==negation-removal== 30342 (pos)
                    (not (not_checked_p6))

                    ; #14365: <==negation-removal== 50587 (pos)
                    (not (Pd_not_checked_p6))

                    ; #21441: <==uncertain_firing== 71931 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #22216: <==negation-removal== 37205 (pos)
                    (not (Bb_not_checked_p6))

                    ; #24286: <==negation-removal== 83099 (pos)
                    (not (Pb_not_checked_p6))

                    ; #28834: <==uncertain_firing== 48749 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #36479: <==negation-removal== 87549 (pos)
                    (not (Bd_not_checked_p6))

                    ; #37479: <==negation-removal== 10142 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #37962: <==negation-removal== 62460 (pos)
                    (not (Pa_not_checked_p6))

                    ; #40314: <==uncertain_firing== 23812 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #44472: <==uncertain_firing== 10142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #49928: <==negation-removal== 71931 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #50968: <==negation-removal== 17461 (pos)
                    (not (Bc_not_checked_p6))

                    ; #53018: <==negation-removal== 23812 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #66136: <==negation-removal== 48749 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #77632: <==negation-removal== 74253 (pos)
                    (not (Ba_not_checked_p6))

                    ; #78560: <==negation-removal== 35967 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18824: <==commonly_known== 27803 (pos)
                    (Bd_checked_p7)

                    ; #21800: <==commonly_known== 27803 (pos)
                    (Ba_checked_p7)

                    ; #22425: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #27006: <==commonly_known== 41579 (neg)
                    (Pa_checked_p7)

                    ; #27803: origin
                    (checked_p7)

                    ; #28773: <==closure== 57047 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #40678: <==commonly_known== 27803 (pos)
                    (Bb_checked_p7)

                    ; #44253: <==commonly_known== 41579 (neg)
                    (Pc_checked_p7)

                    ; #48925: <==closure== 22425 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #57047: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #62082: <==commonly_known== 41579 (neg)
                    (Pd_checked_p7)

                    ; #67459: <==commonly_known== 27803 (pos)
                    (Bc_checked_p7)

                    ; #86950: <==commonly_known== 41579 (neg)
                    (Pb_checked_p7)

                    ; #11720: <==negation-removal== 22425 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #18765: <==negation-removal== 67459 (pos)
                    (not (Pc_not_checked_p7))

                    ; #29171: <==negation-removal== 44253 (pos)
                    (not (Bc_not_checked_p7))

                    ; #31580: <==uncertain_firing== 48925 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #31679: <==negation-removal== 27006 (pos)
                    (not (Ba_not_checked_p7))

                    ; #35694: <==negation-removal== 28773 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #38431: <==uncertain_firing== 22425 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #41579: <==negation-removal== 27803 (pos)
                    (not (not_checked_p7))

                    ; #44581: <==uncertain_firing== 57047 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #52645: <==negation-removal== 48925 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #54748: <==negation-removal== 21800 (pos)
                    (not (Pa_not_checked_p7))

                    ; #56350: <==negation-removal== 86950 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57558: <==uncertain_firing== 28773 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #64864: <==negation-removal== 40678 (pos)
                    (not (Pb_not_checked_p7))

                    ; #74068: <==negation-removal== 18824 (pos)
                    (not (Pd_not_checked_p7))

                    ; #84103: <==negation-removal== 62082 (pos)
                    (not (Bd_not_checked_p7))

                    ; #89660: <==negation-removal== 57047 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17182: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #18186: <==commonly_known== 82767 (neg)
                    (Pc_checked_p8)

                    ; #19865: <==commonly_known== 53929 (pos)
                    (Bb_checked_p8)

                    ; #29854: <==closure== 17182 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #32668: <==commonly_known== 53929 (pos)
                    (Bc_checked_p8)

                    ; #50581: <==commonly_known== 82767 (neg)
                    (Pb_checked_p8)

                    ; #52559: <==commonly_known== 82767 (neg)
                    (Pa_checked_p8)

                    ; #53929: origin
                    (checked_p8)

                    ; #56142: <==commonly_known== 53929 (pos)
                    (Bd_checked_p8)

                    ; #70119: <==commonly_known== 82767 (neg)
                    (Pd_checked_p8)

                    ; #75677: <==closure== 77025 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #77025: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #79412: <==commonly_known== 53929 (pos)
                    (Ba_checked_p8)

                    ; #14152: <==negation-removal== 18186 (pos)
                    (not (Bc_not_checked_p8))

                    ; #14781: <==negation-removal== 50581 (pos)
                    (not (Bb_not_checked_p8))

                    ; #15201: <==uncertain_firing== 17182 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #21835: <==uncertain_firing== 75677 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #24506: <==negation-removal== 56142 (pos)
                    (not (Pd_not_checked_p8))

                    ; #27808: <==uncertain_firing== 29854 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #38496: <==negation-removal== 77025 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #40814: <==negation-removal== 75677 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #41621: <==negation-removal== 29854 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #46050: <==uncertain_firing== 77025 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48925: <==negation-removal== 79412 (pos)
                    (not (Pa_not_checked_p8))

                    ; #53531: <==negation-removal== 70119 (pos)
                    (not (Bd_not_checked_p8))

                    ; #58421: <==negation-removal== 19865 (pos)
                    (not (Pb_not_checked_p8))

                    ; #61795: <==negation-removal== 52559 (pos)
                    (not (Ba_not_checked_p8))

                    ; #72209: <==negation-removal== 17182 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #79364: <==negation-removal== 32668 (pos)
                    (not (Pc_not_checked_p8))

                    ; #82767: <==negation-removal== 53929 (pos)
                    (not (not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #28129: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #33585: <==commonly_known== 30556 (neg)
                    (Pa_checked_p9)

                    ; #38355: <==closure== 38441 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #38441: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #46158: <==commonly_known== 91168 (pos)
                    (Ba_checked_p9)

                    ; #46690: <==commonly_known== 91168 (pos)
                    (Bb_checked_p9)

                    ; #60224: <==commonly_known== 30556 (neg)
                    (Pd_checked_p9)

                    ; #65776: <==commonly_known== 30556 (neg)
                    (Pb_checked_p9)

                    ; #74994: <==commonly_known== 91168 (pos)
                    (Bd_checked_p9)

                    ; #78160: <==commonly_known== 30556 (neg)
                    (Pc_checked_p9)

                    ; #79345: <==commonly_known== 91168 (pos)
                    (Bc_checked_p9)

                    ; #79608: <==closure== 28129 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #91168: origin
                    (checked_p9)

                    ; #12352: <==negation-removal== 60224 (pos)
                    (not (Bd_not_checked_p9))

                    ; #16078: <==uncertain_firing== 38441 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #16934: <==negation-removal== 28129 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #17567: <==negation-removal== 46158 (pos)
                    (not (Pa_not_checked_p9))

                    ; #23857: <==negation-removal== 65776 (pos)
                    (not (Bb_not_checked_p9))

                    ; #24482: <==negation-removal== 46690 (pos)
                    (not (Pb_not_checked_p9))

                    ; #30556: <==negation-removal== 91168 (pos)
                    (not (not_checked_p9))

                    ; #31582: <==negation-removal== 79345 (pos)
                    (not (Pc_not_checked_p9))

                    ; #41229: <==negation-removal== 38441 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #45690: <==negation-removal== 79608 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #49540: <==uncertain_firing== 28129 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #55390: <==negation-removal== 74994 (pos)
                    (not (Pd_not_checked_p9))

                    ; #56720: <==uncertain_firing== 38355 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #61226: <==negation-removal== 78160 (pos)
                    (not (Bc_not_checked_p9))

                    ; #69396: <==uncertain_firing== 79608 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #75448: <==negation-removal== 38355 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #77990: <==negation-removal== 33585 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #15526: <==closure== 45400 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #15877: <==commonly_known== 83909 (neg)
                    (Pb_checked_p1)

                    ; #17477: <==closure== 56280 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #28800: <==commonly_known== 68348 (pos)
                    (Bd_checked_p1)

                    ; #36438: <==commonly_known== 68348 (pos)
                    (Bc_checked_p1)

                    ; #43268: <==commonly_known== 83909 (neg)
                    (Pa_checked_p1)

                    ; #45400: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #50881: <==commonly_known== 83909 (neg)
                    (Pd_checked_p1)

                    ; #56280: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #58546: <==commonly_known== 83909 (neg)
                    (Pc_checked_p1)

                    ; #66597: <==commonly_known== 68348 (pos)
                    (Ba_checked_p1)

                    ; #66719: <==commonly_known== 68348 (pos)
                    (Bb_checked_p1)

                    ; #68348: origin
                    (checked_p1)

                    ; #21797: <==uncertain_firing== 45400 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #23512: <==negation-removal== 15877 (pos)
                    (not (Bb_not_checked_p1))

                    ; #24902: <==negation-removal== 45400 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #31490: <==negation-removal== 58546 (pos)
                    (not (Bc_not_checked_p1))

                    ; #44071: <==negation-removal== 66719 (pos)
                    (not (Pb_not_checked_p1))

                    ; #44444: <==uncertain_firing== 56280 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #46133: <==negation-removal== 50881 (pos)
                    (not (Bd_not_checked_p1))

                    ; #47137: <==uncertain_firing== 15526 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #55825: <==negation-removal== 43268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #65519: <==negation-removal== 36438 (pos)
                    (not (Pc_not_checked_p1))

                    ; #66047: <==negation-removal== 28800 (pos)
                    (not (Pd_not_checked_p1))

                    ; #70806: <==negation-removal== 66597 (pos)
                    (not (Pa_not_checked_p1))

                    ; #72899: <==negation-removal== 15526 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #83909: <==negation-removal== 68348 (pos)
                    (not (not_checked_p1))

                    ; #83993: <==negation-removal== 17477 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #85278: <==uncertain_firing== 17477 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #91147: <==negation-removal== 56280 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #23203: origin
                    (checked_p2)

                    ; #28291: <==commonly_known== 60693 (neg)
                    (Pb_checked_p2)

                    ; #36458: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #43926: <==closure== 36458 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #58008: <==commonly_known== 60693 (neg)
                    (Pa_checked_p2)

                    ; #59027: <==commonly_known== 23203 (pos)
                    (Bb_checked_p2)

                    ; #64636: <==closure== 78559 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #68897: <==commonly_known== 23203 (pos)
                    (Ba_checked_p2)

                    ; #72593: <==commonly_known== 60693 (neg)
                    (Pc_checked_p2)

                    ; #78559: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #81594: <==commonly_known== 60693 (neg)
                    (Pd_checked_p2)

                    ; #84345: <==commonly_known== 23203 (pos)
                    (Bc_checked_p2)

                    ; #86860: <==commonly_known== 23203 (pos)
                    (Bd_checked_p2)

                    ; #13334: <==negation-removal== 81594 (pos)
                    (not (Bd_not_checked_p2))

                    ; #16471: <==negation-removal== 59027 (pos)
                    (not (Pb_not_checked_p2))

                    ; #21456: <==uncertain_firing== 64636 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #21779: <==negation-removal== 68897 (pos)
                    (not (Pa_not_checked_p2))

                    ; #35590: <==uncertain_firing== 78559 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #45930: <==negation-removal== 58008 (pos)
                    (not (Ba_not_checked_p2))

                    ; #60693: <==negation-removal== 23203 (pos)
                    (not (not_checked_p2))

                    ; #62504: <==negation-removal== 64636 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #68277: <==negation-removal== 78559 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #73971: <==negation-removal== 72593 (pos)
                    (not (Bc_not_checked_p2))

                    ; #75268: <==negation-removal== 86860 (pos)
                    (not (Pd_not_checked_p2))

                    ; #82033: <==negation-removal== 28291 (pos)
                    (not (Bb_not_checked_p2))

                    ; #82422: <==negation-removal== 43926 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #87252: <==negation-removal== 36458 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #88986: <==uncertain_firing== 36458 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #89618: <==negation-removal== 84345 (pos)
                    (not (Pc_not_checked_p2))

                    ; #97752: <==uncertain_firing== 43926 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11850: <==commonly_known== 17993 (neg)
                    (Pd_checked_p3)

                    ; #15818: <==commonly_known== 90847 (pos)
                    (Bc_checked_p3)

                    ; #18207: <==commonly_known== 17993 (neg)
                    (Pa_checked_p3)

                    ; #24298: <==commonly_known== 17993 (neg)
                    (Pc_checked_p3)

                    ; #24468: <==closure== 38682 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #32626: <==closure== 71148 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #34956: <==commonly_known== 90847 (pos)
                    (Bd_checked_p3)

                    ; #38682: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #54710: <==commonly_known== 17993 (neg)
                    (Pb_checked_p3)

                    ; #71148: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #83772: <==commonly_known== 90847 (pos)
                    (Bb_checked_p3)

                    ; #88198: <==commonly_known== 90847 (pos)
                    (Ba_checked_p3)

                    ; #90847: origin
                    (checked_p3)

                    ; #15396: <==negation-removal== 34956 (pos)
                    (not (Pd_not_checked_p3))

                    ; #15942: <==negation-removal== 83772 (pos)
                    (not (Pb_not_checked_p3))

                    ; #17797: <==negation-removal== 24468 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #17993: <==negation-removal== 90847 (pos)
                    (not (not_checked_p3))

                    ; #19025: <==negation-removal== 71148 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #19207: <==negation-removal== 18207 (pos)
                    (not (Ba_not_checked_p3))

                    ; #33180: <==negation-removal== 11850 (pos)
                    (not (Bd_not_checked_p3))

                    ; #42223: <==negation-removal== 88198 (pos)
                    (not (Pa_not_checked_p3))

                    ; #43239: <==uncertain_firing== 32626 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #45862: <==negation-removal== 38682 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #55114: <==uncertain_firing== 71148 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #56739: <==negation-removal== 32626 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #67990: <==negation-removal== 15818 (pos)
                    (not (Pc_not_checked_p3))

                    ; #70492: <==uncertain_firing== 24468 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #72781: <==uncertain_firing== 38682 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #75706: <==negation-removal== 54710 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86573: <==negation-removal== 24298 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12386: <==commonly_known== 35405 (neg)
                    (Pa_checked_p4)

                    ; #14838: <==commonly_known== 75462 (pos)
                    (Bb_checked_p4)

                    ; #17926: <==closure== 69158 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #26943: <==commonly_known== 75462 (pos)
                    (Bd_checked_p4)

                    ; #30219: <==closure== 60756 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #30616: <==commonly_known== 75462 (pos)
                    (Ba_checked_p4)

                    ; #40042: <==commonly_known== 35405 (neg)
                    (Pc_checked_p4)

                    ; #41428: <==commonly_known== 35405 (neg)
                    (Pb_checked_p4)

                    ; #60756: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #69158: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #70355: <==commonly_known== 35405 (neg)
                    (Pd_checked_p4)

                    ; #75462: origin
                    (checked_p4)

                    ; #94945: <==commonly_known== 75462 (pos)
                    (Bc_checked_p4)

                    ; #12002: <==negation-removal== 60756 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #12215: <==negation-removal== 12386 (pos)
                    (not (Ba_not_checked_p4))

                    ; #15618: <==uncertain_firing== 30219 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #32574: <==negation-removal== 40042 (pos)
                    (not (Bc_not_checked_p4))

                    ; #34235: <==negation-removal== 26943 (pos)
                    (not (Pd_not_checked_p4))

                    ; #35405: <==negation-removal== 75462 (pos)
                    (not (not_checked_p4))

                    ; #39970: <==uncertain_firing== 60756 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #41574: <==negation-removal== 17926 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #47631: <==negation-removal== 41428 (pos)
                    (not (Bb_not_checked_p4))

                    ; #49859: <==negation-removal== 69158 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #66314: <==negation-removal== 70355 (pos)
                    (not (Bd_not_checked_p4))

                    ; #68582: <==negation-removal== 14838 (pos)
                    (not (Pb_not_checked_p4))

                    ; #72236: <==negation-removal== 94945 (pos)
                    (not (Pc_not_checked_p4))

                    ; #74808: <==negation-removal== 30616 (pos)
                    (not (Pa_not_checked_p4))

                    ; #78584: <==uncertain_firing== 17926 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #82132: <==uncertain_firing== 69158 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #82381: <==negation-removal== 30219 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #17300: <==commonly_known== 75277 (neg)
                    (Pa_checked_p5)

                    ; #28621: <==commonly_known== 34603 (pos)
                    (Bd_checked_p5)

                    ; #34603: origin
                    (checked_p5)

                    ; #42350: <==closure== 47046 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #47046: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #48760: <==closure== 76592 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #50859: <==commonly_known== 34603 (pos)
                    (Bc_checked_p5)

                    ; #58494: <==commonly_known== 34603 (pos)
                    (Bb_checked_p5)

                    ; #62013: <==commonly_known== 75277 (neg)
                    (Pd_checked_p5)

                    ; #66989: <==commonly_known== 75277 (neg)
                    (Pb_checked_p5)

                    ; #72952: <==commonly_known== 75277 (neg)
                    (Pc_checked_p5)

                    ; #76592: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #85341: <==commonly_known== 34603 (pos)
                    (Ba_checked_p5)

                    ; #11835: <==negation-removal== 66989 (pos)
                    (not (Bb_not_checked_p5))

                    ; #13172: <==negation-removal== 48760 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #31453: <==negation-removal== 47046 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #40377: <==negation-removal== 85341 (pos)
                    (not (Pa_not_checked_p5))

                    ; #41024: <==uncertain_firing== 48760 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #41975: <==negation-removal== 42350 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #51355: <==negation-removal== 58494 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55382: <==negation-removal== 72952 (pos)
                    (not (Bc_not_checked_p5))

                    ; #55992: <==uncertain_firing== 76592 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #71190: <==negation-removal== 76592 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #72097: <==negation-removal== 50859 (pos)
                    (not (Pc_not_checked_p5))

                    ; #75277: <==negation-removal== 34603 (pos)
                    (not (not_checked_p5))

                    ; #76296: <==negation-removal== 62013 (pos)
                    (not (Bd_not_checked_p5))

                    ; #76925: <==uncertain_firing== 42350 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #78560: <==negation-removal== 17300 (pos)
                    (not (Ba_not_checked_p5))

                    ; #80827: <==uncertain_firing== 47046 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #81181: <==negation-removal== 28621 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #17461: <==commonly_known== 13629 (neg)
                    (Pc_checked_p6)

                    ; #30342: origin
                    (checked_p6)

                    ; #30836: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #35967: <==commonly_known== 30342 (pos)
                    (Bc_checked_p6)

                    ; #37205: <==commonly_known== 13629 (neg)
                    (Pb_checked_p6)

                    ; #50587: <==commonly_known== 30342 (pos)
                    (Bd_checked_p6)

                    ; #56893: <==closure== 66721 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #62460: <==commonly_known== 30342 (pos)
                    (Ba_checked_p6)

                    ; #66721: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #74253: <==commonly_known== 13629 (neg)
                    (Pa_checked_p6)

                    ; #83099: <==commonly_known== 30342 (pos)
                    (Bb_checked_p6)

                    ; #87050: <==closure== 30836 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #87549: <==commonly_known== 13629 (neg)
                    (Pd_checked_p6)

                    ; #13629: <==negation-removal== 30342 (pos)
                    (not (not_checked_p6))

                    ; #14365: <==negation-removal== 50587 (pos)
                    (not (Pd_not_checked_p6))

                    ; #18343: <==negation-removal== 56893 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #19661: <==uncertain_firing== 66721 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #22216: <==negation-removal== 37205 (pos)
                    (not (Bb_not_checked_p6))

                    ; #24286: <==negation-removal== 83099 (pos)
                    (not (Pb_not_checked_p6))

                    ; #27740: <==uncertain_firing== 30836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #36479: <==negation-removal== 87549 (pos)
                    (not (Bd_not_checked_p6))

                    ; #37962: <==negation-removal== 62460 (pos)
                    (not (Pa_not_checked_p6))

                    ; #44146: <==uncertain_firing== 87050 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #47368: <==negation-removal== 30836 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #50968: <==negation-removal== 17461 (pos)
                    (not (Bc_not_checked_p6))

                    ; #51366: <==negation-removal== 87050 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #76158: <==negation-removal== 66721 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #77632: <==negation-removal== 74253 (pos)
                    (not (Ba_not_checked_p6))

                    ; #78560: <==negation-removal== 35967 (pos)
                    (not (Pc_not_checked_p6))

                    ; #81978: <==uncertain_firing== 56893 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18824: <==commonly_known== 27803 (pos)
                    (Bd_checked_p7)

                    ; #21800: <==commonly_known== 27803 (pos)
                    (Ba_checked_p7)

                    ; #27006: <==commonly_known== 41579 (neg)
                    (Pa_checked_p7)

                    ; #27803: origin
                    (checked_p7)

                    ; #40678: <==commonly_known== 27803 (pos)
                    (Bb_checked_p7)

                    ; #42353: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #44253: <==commonly_known== 41579 (neg)
                    (Pc_checked_p7)

                    ; #62082: <==commonly_known== 41579 (neg)
                    (Pd_checked_p7)

                    ; #67459: <==commonly_known== 27803 (pos)
                    (Bc_checked_p7)

                    ; #76225: <==closure== 79490 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #79490: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #83564: <==closure== 42353 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #86950: <==commonly_known== 41579 (neg)
                    (Pb_checked_p7)

                    ; #11036: <==negation-removal== 76225 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #18765: <==negation-removal== 67459 (pos)
                    (not (Pc_not_checked_p7))

                    ; #29171: <==negation-removal== 44253 (pos)
                    (not (Bc_not_checked_p7))

                    ; #29810: <==uncertain_firing== 79490 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #30997: <==uncertain_firing== 76225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #31679: <==negation-removal== 27006 (pos)
                    (not (Ba_not_checked_p7))

                    ; #41579: <==negation-removal== 27803 (pos)
                    (not (not_checked_p7))

                    ; #49720: <==uncertain_firing== 42353 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #54748: <==negation-removal== 21800 (pos)
                    (not (Pa_not_checked_p7))

                    ; #56350: <==negation-removal== 86950 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57816: <==uncertain_firing== 83564 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #61476: <==negation-removal== 42353 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #64864: <==negation-removal== 40678 (pos)
                    (not (Pb_not_checked_p7))

                    ; #68577: <==negation-removal== 83564 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #74068: <==negation-removal== 18824 (pos)
                    (not (Pd_not_checked_p7))

                    ; #84103: <==negation-removal== 62082 (pos)
                    (not (Bd_not_checked_p7))

                    ; #89594: <==negation-removal== 79490 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #18186: <==commonly_known== 82767 (neg)
                    (Pc_checked_p8)

                    ; #19865: <==commonly_known== 53929 (pos)
                    (Bb_checked_p8)

                    ; #29226: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #32668: <==commonly_known== 53929 (pos)
                    (Bc_checked_p8)

                    ; #45581: <==closure== 59567 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #50581: <==commonly_known== 82767 (neg)
                    (Pb_checked_p8)

                    ; #52559: <==commonly_known== 82767 (neg)
                    (Pa_checked_p8)

                    ; #53929: origin
                    (checked_p8)

                    ; #56142: <==commonly_known== 53929 (pos)
                    (Bd_checked_p8)

                    ; #56563: <==closure== 29226 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #59567: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #70119: <==commonly_known== 82767 (neg)
                    (Pd_checked_p8)

                    ; #79412: <==commonly_known== 53929 (pos)
                    (Ba_checked_p8)

                    ; #14152: <==negation-removal== 18186 (pos)
                    (not (Bc_not_checked_p8))

                    ; #14781: <==negation-removal== 50581 (pos)
                    (not (Bb_not_checked_p8))

                    ; #16519: <==uncertain_firing== 56563 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #24506: <==negation-removal== 56142 (pos)
                    (not (Pd_not_checked_p8))

                    ; #33972: <==uncertain_firing== 29226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #38562: <==negation-removal== 56563 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #39890: <==negation-removal== 29226 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #42227: <==negation-removal== 45581 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #48925: <==negation-removal== 79412 (pos)
                    (not (Pa_not_checked_p8))

                    ; #53531: <==negation-removal== 70119 (pos)
                    (not (Bd_not_checked_p8))

                    ; #58421: <==negation-removal== 19865 (pos)
                    (not (Pb_not_checked_p8))

                    ; #59000: <==negation-removal== 59567 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #61795: <==negation-removal== 52559 (pos)
                    (not (Ba_not_checked_p8))

                    ; #69982: <==uncertain_firing== 45581 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #75252: <==uncertain_firing== 59567 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #79364: <==negation-removal== 32668 (pos)
                    (not (Pc_not_checked_p8))

                    ; #82767: <==negation-removal== 53929 (pos)
                    (not (not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #33585: <==commonly_known== 30556 (neg)
                    (Pa_checked_p9)

                    ; #46043: <==closure== 86909 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46158: <==commonly_known== 91168 (pos)
                    (Ba_checked_p9)

                    ; #46690: <==commonly_known== 91168 (pos)
                    (Bb_checked_p9)

                    ; #50277: <==closure== 67220 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #60224: <==commonly_known== 30556 (neg)
                    (Pd_checked_p9)

                    ; #65776: <==commonly_known== 30556 (neg)
                    (Pb_checked_p9)

                    ; #67220: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #74994: <==commonly_known== 91168 (pos)
                    (Bd_checked_p9)

                    ; #78160: <==commonly_known== 30556 (neg)
                    (Pc_checked_p9)

                    ; #79345: <==commonly_known== 91168 (pos)
                    (Bc_checked_p9)

                    ; #86909: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #91168: origin
                    (checked_p9)

                    ; #12352: <==negation-removal== 60224 (pos)
                    (not (Bd_not_checked_p9))

                    ; #17567: <==negation-removal== 46158 (pos)
                    (not (Pa_not_checked_p9))

                    ; #21742: <==negation-removal== 46043 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #23857: <==negation-removal== 65776 (pos)
                    (not (Bb_not_checked_p9))

                    ; #24482: <==negation-removal== 46690 (pos)
                    (not (Pb_not_checked_p9))

                    ; #30556: <==negation-removal== 91168 (pos)
                    (not (not_checked_p9))

                    ; #31582: <==negation-removal== 79345 (pos)
                    (not (Pc_not_checked_p9))

                    ; #44122: <==negation-removal== 67220 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #48965: <==uncertain_firing== 67220 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #55390: <==negation-removal== 74994 (pos)
                    (not (Pd_not_checked_p9))

                    ; #61226: <==negation-removal== 78160 (pos)
                    (not (Bc_not_checked_p9))

                    ; #62685: <==uncertain_firing== 86909 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #69321: <==negation-removal== 50277 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #77990: <==negation-removal== 33585 (pos)
                    (not (Ba_not_checked_p9))

                    ; #80215: <==negation-removal== 86909 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #82250: <==uncertain_firing== 46043 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #92181: <==uncertain_firing== 50277 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #15877: <==commonly_known== 83909 (neg)
                    (Pb_checked_p1)

                    ; #19393: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #28800: <==commonly_known== 68348 (pos)
                    (Bd_checked_p1)

                    ; #36438: <==commonly_known== 68348 (pos)
                    (Bc_checked_p1)

                    ; #43268: <==commonly_known== 83909 (neg)
                    (Pa_checked_p1)

                    ; #47077: <==closure== 53533 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #50881: <==commonly_known== 83909 (neg)
                    (Pd_checked_p1)

                    ; #53533: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #58546: <==commonly_known== 83909 (neg)
                    (Pc_checked_p1)

                    ; #66597: <==commonly_known== 68348 (pos)
                    (Ba_checked_p1)

                    ; #66719: <==commonly_known== 68348 (pos)
                    (Bb_checked_p1)

                    ; #68348: origin
                    (checked_p1)

                    ; #93087: <==closure== 19393 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #19153: <==negation-removal== 47077 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #19951: <==uncertain_firing== 53533 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #23512: <==negation-removal== 15877 (pos)
                    (not (Bb_not_checked_p1))

                    ; #29440: <==uncertain_firing== 47077 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #31490: <==negation-removal== 58546 (pos)
                    (not (Bc_not_checked_p1))

                    ; #44071: <==negation-removal== 66719 (pos)
                    (not (Pb_not_checked_p1))

                    ; #46133: <==negation-removal== 50881 (pos)
                    (not (Bd_not_checked_p1))

                    ; #54794: <==negation-removal== 93087 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #55825: <==negation-removal== 43268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #57615: <==negation-removal== 19393 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #61182: <==uncertain_firing== 19393 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #63038: <==uncertain_firing== 93087 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #65279: <==negation-removal== 53533 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #65519: <==negation-removal== 36438 (pos)
                    (not (Pc_not_checked_p1))

                    ; #66047: <==negation-removal== 28800 (pos)
                    (not (Pd_not_checked_p1))

                    ; #70806: <==negation-removal== 66597 (pos)
                    (not (Pa_not_checked_p1))

                    ; #83909: <==negation-removal== 68348 (pos)
                    (not (not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #20382: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #23203: origin
                    (checked_p2)

                    ; #28291: <==commonly_known== 60693 (neg)
                    (Pb_checked_p2)

                    ; #58008: <==commonly_known== 60693 (neg)
                    (Pa_checked_p2)

                    ; #59027: <==commonly_known== 23203 (pos)
                    (Bb_checked_p2)

                    ; #63354: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #65416: <==closure== 63354 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #68236: <==closure== 20382 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #68897: <==commonly_known== 23203 (pos)
                    (Ba_checked_p2)

                    ; #72593: <==commonly_known== 60693 (neg)
                    (Pc_checked_p2)

                    ; #81594: <==commonly_known== 60693 (neg)
                    (Pd_checked_p2)

                    ; #84345: <==commonly_known== 23203 (pos)
                    (Bc_checked_p2)

                    ; #86860: <==commonly_known== 23203 (pos)
                    (Bd_checked_p2)

                    ; #12269: <==uncertain_firing== 20382 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #13334: <==negation-removal== 81594 (pos)
                    (not (Bd_not_checked_p2))

                    ; #16471: <==negation-removal== 59027 (pos)
                    (not (Pb_not_checked_p2))

                    ; #20666: <==negation-removal== 63354 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #21779: <==negation-removal== 68897 (pos)
                    (not (Pa_not_checked_p2))

                    ; #39996: <==negation-removal== 20382 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #42394: <==uncertain_firing== 63354 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #45508: <==negation-removal== 65416 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #45930: <==negation-removal== 58008 (pos)
                    (not (Ba_not_checked_p2))

                    ; #59566: <==negation-removal== 68236 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #60693: <==negation-removal== 23203 (pos)
                    (not (not_checked_p2))

                    ; #71617: <==uncertain_firing== 68236 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #73971: <==negation-removal== 72593 (pos)
                    (not (Bc_not_checked_p2))

                    ; #75268: <==negation-removal== 86860 (pos)
                    (not (Pd_not_checked_p2))

                    ; #82033: <==negation-removal== 28291 (pos)
                    (not (Bb_not_checked_p2))

                    ; #84256: <==uncertain_firing== 65416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #89618: <==negation-removal== 84345 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11850: <==commonly_known== 17993 (neg)
                    (Pd_checked_p3)

                    ; #15818: <==commonly_known== 90847 (pos)
                    (Bc_checked_p3)

                    ; #18207: <==commonly_known== 17993 (neg)
                    (Pa_checked_p3)

                    ; #19743: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #24298: <==commonly_known== 17993 (neg)
                    (Pc_checked_p3)

                    ; #34956: <==commonly_known== 90847 (pos)
                    (Bd_checked_p3)

                    ; #54710: <==commonly_known== 17993 (neg)
                    (Pb_checked_p3)

                    ; #63395: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #74080: <==closure== 19743 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #83772: <==commonly_known== 90847 (pos)
                    (Bb_checked_p3)

                    ; #88198: <==commonly_known== 90847 (pos)
                    (Ba_checked_p3)

                    ; #88808: <==closure== 63395 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #90847: origin
                    (checked_p3)

                    ; #15396: <==negation-removal== 34956 (pos)
                    (not (Pd_not_checked_p3))

                    ; #15942: <==negation-removal== 83772 (pos)
                    (not (Pb_not_checked_p3))

                    ; #17993: <==negation-removal== 90847 (pos)
                    (not (not_checked_p3))

                    ; #19207: <==negation-removal== 18207 (pos)
                    (not (Ba_not_checked_p3))

                    ; #33180: <==negation-removal== 11850 (pos)
                    (not (Bd_not_checked_p3))

                    ; #33916: <==negation-removal== 88808 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #35016: <==negation-removal== 63395 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #37588: <==uncertain_firing== 63395 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #42223: <==negation-removal== 88198 (pos)
                    (not (Pa_not_checked_p3))

                    ; #42663: <==negation-removal== 74080 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #44299: <==negation-removal== 19743 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #49556: <==uncertain_firing== 19743 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #67990: <==negation-removal== 15818 (pos)
                    (not (Pc_not_checked_p3))

                    ; #75706: <==negation-removal== 54710 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86573: <==negation-removal== 24298 (pos)
                    (not (Bc_not_checked_p3))

                    ; #89272: <==uncertain_firing== 74080 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #90697: <==uncertain_firing== 88808 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12386: <==commonly_known== 35405 (neg)
                    (Pa_checked_p4)

                    ; #14838: <==commonly_known== 75462 (pos)
                    (Bb_checked_p4)

                    ; #26943: <==commonly_known== 75462 (pos)
                    (Bd_checked_p4)

                    ; #29157: <==closure== 31360 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #30616: <==commonly_known== 75462 (pos)
                    (Ba_checked_p4)

                    ; #31360: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #40042: <==commonly_known== 35405 (neg)
                    (Pc_checked_p4)

                    ; #41428: <==commonly_known== 35405 (neg)
                    (Pb_checked_p4)

                    ; #64475: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #70355: <==commonly_known== 35405 (neg)
                    (Pd_checked_p4)

                    ; #75462: origin
                    (checked_p4)

                    ; #85369: <==closure== 64475 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #94945: <==commonly_known== 75462 (pos)
                    (Bc_checked_p4)

                    ; #12215: <==negation-removal== 12386 (pos)
                    (not (Ba_not_checked_p4))

                    ; #23144: <==negation-removal== 85369 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #26213: <==uncertain_firing== 85369 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #30552: <==negation-removal== 31360 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #32574: <==negation-removal== 40042 (pos)
                    (not (Bc_not_checked_p4))

                    ; #34235: <==negation-removal== 26943 (pos)
                    (not (Pd_not_checked_p4))

                    ; #35405: <==negation-removal== 75462 (pos)
                    (not (not_checked_p4))

                    ; #37833: <==uncertain_firing== 31360 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #47631: <==negation-removal== 41428 (pos)
                    (not (Bb_not_checked_p4))

                    ; #66314: <==negation-removal== 70355 (pos)
                    (not (Bd_not_checked_p4))

                    ; #68582: <==negation-removal== 14838 (pos)
                    (not (Pb_not_checked_p4))

                    ; #72236: <==negation-removal== 94945 (pos)
                    (not (Pc_not_checked_p4))

                    ; #74607: <==negation-removal== 64475 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #74808: <==negation-removal== 30616 (pos)
                    (not (Pa_not_checked_p4))

                    ; #80347: <==uncertain_firing== 29157 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #90061: <==uncertain_firing== 64475 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #91891: <==negation-removal== 29157 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12546: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #17300: <==commonly_known== 75277 (neg)
                    (Pa_checked_p5)

                    ; #28621: <==commonly_known== 34603 (pos)
                    (Bd_checked_p5)

                    ; #33470: <==closure== 73407 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #34603: origin
                    (checked_p5)

                    ; #46771: <==closure== 12546 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #50859: <==commonly_known== 34603 (pos)
                    (Bc_checked_p5)

                    ; #58494: <==commonly_known== 34603 (pos)
                    (Bb_checked_p5)

                    ; #62013: <==commonly_known== 75277 (neg)
                    (Pd_checked_p5)

                    ; #66989: <==commonly_known== 75277 (neg)
                    (Pb_checked_p5)

                    ; #72952: <==commonly_known== 75277 (neg)
                    (Pc_checked_p5)

                    ; #73407: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #85341: <==commonly_known== 34603 (pos)
                    (Ba_checked_p5)

                    ; #11835: <==negation-removal== 66989 (pos)
                    (not (Bb_not_checked_p5))

                    ; #17595: <==uncertain_firing== 46771 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #19893: <==uncertain_firing== 73407 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #24293: <==uncertain_firing== 12546 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #36097: <==negation-removal== 33470 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #38645: <==negation-removal== 12546 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #40377: <==negation-removal== 85341 (pos)
                    (not (Pa_not_checked_p5))

                    ; #49927: <==negation-removal== 73407 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #51355: <==negation-removal== 58494 (pos)
                    (not (Pb_not_checked_p5))

                    ; #55382: <==negation-removal== 72952 (pos)
                    (not (Bc_not_checked_p5))

                    ; #56959: <==uncertain_firing== 33470 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #62484: <==negation-removal== 46771 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #72097: <==negation-removal== 50859 (pos)
                    (not (Pc_not_checked_p5))

                    ; #75277: <==negation-removal== 34603 (pos)
                    (not (not_checked_p5))

                    ; #76296: <==negation-removal== 62013 (pos)
                    (not (Bd_not_checked_p5))

                    ; #78560: <==negation-removal== 17300 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81181: <==negation-removal== 28621 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #17461: <==commonly_known== 13629 (neg)
                    (Pc_checked_p6)

                    ; #20640: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #30342: origin
                    (checked_p6)

                    ; #32174: <==closure== 32219 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #32219: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #35967: <==commonly_known== 30342 (pos)
                    (Bc_checked_p6)

                    ; #37205: <==commonly_known== 13629 (neg)
                    (Pb_checked_p6)

                    ; #50587: <==commonly_known== 30342 (pos)
                    (Bd_checked_p6)

                    ; #62460: <==commonly_known== 30342 (pos)
                    (Ba_checked_p6)

                    ; #74253: <==commonly_known== 13629 (neg)
                    (Pa_checked_p6)

                    ; #83099: <==commonly_known== 30342 (pos)
                    (Bb_checked_p6)

                    ; #85005: <==closure== 20640 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #87549: <==commonly_known== 13629 (neg)
                    (Pd_checked_p6)

                    ; #11896: <==uncertain_firing== 20640 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #13629: <==negation-removal== 30342 (pos)
                    (not (not_checked_p6))

                    ; #14365: <==negation-removal== 50587 (pos)
                    (not (Pd_not_checked_p6))

                    ; #20657: <==uncertain_firing== 32219 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #22216: <==negation-removal== 37205 (pos)
                    (not (Bb_not_checked_p6))

                    ; #24286: <==negation-removal== 83099 (pos)
                    (not (Pb_not_checked_p6))

                    ; #35832: <==uncertain_firing== 85005 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #36479: <==negation-removal== 87549 (pos)
                    (not (Bd_not_checked_p6))

                    ; #37962: <==negation-removal== 62460 (pos)
                    (not (Pa_not_checked_p6))

                    ; #41218: <==negation-removal== 32174 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #50968: <==negation-removal== 17461 (pos)
                    (not (Bc_not_checked_p6))

                    ; #56553: <==negation-removal== 85005 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #57025: <==negation-removal== 20640 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #70245: <==uncertain_firing== 32174 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #77632: <==negation-removal== 74253 (pos)
                    (not (Ba_not_checked_p6))

                    ; #78560: <==negation-removal== 35967 (pos)
                    (not (Pc_not_checked_p6))

                    ; #87898: <==negation-removal== 32219 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18824: <==commonly_known== 27803 (pos)
                    (Bd_checked_p7)

                    ; #21800: <==commonly_known== 27803 (pos)
                    (Ba_checked_p7)

                    ; #27006: <==commonly_known== 41579 (neg)
                    (Pa_checked_p7)

                    ; #27803: origin
                    (checked_p7)

                    ; #40678: <==commonly_known== 27803 (pos)
                    (Bb_checked_p7)

                    ; #44253: <==commonly_known== 41579 (neg)
                    (Pc_checked_p7)

                    ; #51795: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #59636: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #62082: <==commonly_known== 41579 (neg)
                    (Pd_checked_p7)

                    ; #67459: <==commonly_known== 27803 (pos)
                    (Bc_checked_p7)

                    ; #69225: <==closure== 59636 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #77160: <==closure== 51795 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #86950: <==commonly_known== 41579 (neg)
                    (Pb_checked_p7)

                    ; #18765: <==negation-removal== 67459 (pos)
                    (not (Pc_not_checked_p7))

                    ; #23744: <==uncertain_firing== 77160 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #29171: <==negation-removal== 44253 (pos)
                    (not (Bc_not_checked_p7))

                    ; #30513: <==negation-removal== 69225 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #31679: <==negation-removal== 27006 (pos)
                    (not (Ba_not_checked_p7))

                    ; #34973: <==negation-removal== 51795 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #41579: <==negation-removal== 27803 (pos)
                    (not (not_checked_p7))

                    ; #48838: <==negation-removal== 77160 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #54748: <==negation-removal== 21800 (pos)
                    (not (Pa_not_checked_p7))

                    ; #56350: <==negation-removal== 86950 (pos)
                    (not (Bb_not_checked_p7))

                    ; #59140: <==uncertain_firing== 59636 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #64864: <==negation-removal== 40678 (pos)
                    (not (Pb_not_checked_p7))

                    ; #69385: <==uncertain_firing== 51795 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #74068: <==negation-removal== 18824 (pos)
                    (not (Pd_not_checked_p7))

                    ; #82041: <==uncertain_firing== 69225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #84103: <==negation-removal== 62082 (pos)
                    (not (Bd_not_checked_p7))

                    ; #89670: <==negation-removal== 59636 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #18186: <==commonly_known== 82767 (neg)
                    (Pc_checked_p8)

                    ; #19865: <==commonly_known== 53929 (pos)
                    (Bb_checked_p8)

                    ; #32668: <==commonly_known== 53929 (pos)
                    (Bc_checked_p8)

                    ; #37339: <==closure== 58264 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #42049: <==closure== 78400 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #50581: <==commonly_known== 82767 (neg)
                    (Pb_checked_p8)

                    ; #52559: <==commonly_known== 82767 (neg)
                    (Pa_checked_p8)

                    ; #53929: origin
                    (checked_p8)

                    ; #56142: <==commonly_known== 53929 (pos)
                    (Bd_checked_p8)

                    ; #58264: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #70119: <==commonly_known== 82767 (neg)
                    (Pd_checked_p8)

                    ; #78400: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #79412: <==commonly_known== 53929 (pos)
                    (Ba_checked_p8)

                    ; #14152: <==negation-removal== 18186 (pos)
                    (not (Bc_not_checked_p8))

                    ; #14781: <==negation-removal== 50581 (pos)
                    (not (Bb_not_checked_p8))

                    ; #20887: <==uncertain_firing== 78400 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #24506: <==negation-removal== 56142 (pos)
                    (not (Pd_not_checked_p8))

                    ; #40118: <==uncertain_firing== 37339 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #47650: <==negation-removal== 78400 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #48925: <==negation-removal== 79412 (pos)
                    (not (Pa_not_checked_p8))

                    ; #53531: <==negation-removal== 70119 (pos)
                    (not (Bd_not_checked_p8))

                    ; #55898: <==negation-removal== 58264 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #58421: <==negation-removal== 19865 (pos)
                    (not (Pb_not_checked_p8))

                    ; #61795: <==negation-removal== 52559 (pos)
                    (not (Ba_not_checked_p8))

                    ; #63226: <==negation-removal== 42049 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #66103: <==negation-removal== 37339 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #68361: <==uncertain_firing== 58264 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #79364: <==negation-removal== 32668 (pos)
                    (not (Pc_not_checked_p8))

                    ; #82767: <==negation-removal== 53929 (pos)
                    (not (not_checked_p8))

                    ; #91790: <==uncertain_firing== 42049 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21423: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #33585: <==commonly_known== 30556 (neg)
                    (Pa_checked_p9)

                    ; #46158: <==commonly_known== 91168 (pos)
                    (Ba_checked_p9)

                    ; #46690: <==commonly_known== 91168 (pos)
                    (Bb_checked_p9)

                    ; #60224: <==commonly_known== 30556 (neg)
                    (Pd_checked_p9)

                    ; #64635: <==closure== 76587 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #65776: <==commonly_known== 30556 (neg)
                    (Pb_checked_p9)

                    ; #74888: <==closure== 21423 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #74994: <==commonly_known== 91168 (pos)
                    (Bd_checked_p9)

                    ; #76587: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #78160: <==commonly_known== 30556 (neg)
                    (Pc_checked_p9)

                    ; #79345: <==commonly_known== 91168 (pos)
                    (Bc_checked_p9)

                    ; #91168: origin
                    (checked_p9)

                    ; #10707: <==uncertain_firing== 76587 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #12352: <==negation-removal== 60224 (pos)
                    (not (Bd_not_checked_p9))

                    ; #17567: <==negation-removal== 46158 (pos)
                    (not (Pa_not_checked_p9))

                    ; #23857: <==negation-removal== 65776 (pos)
                    (not (Bb_not_checked_p9))

                    ; #24482: <==negation-removal== 46690 (pos)
                    (not (Pb_not_checked_p9))

                    ; #29681: <==uncertain_firing== 21423 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #30556: <==negation-removal== 91168 (pos)
                    (not (not_checked_p9))

                    ; #31582: <==negation-removal== 79345 (pos)
                    (not (Pc_not_checked_p9))

                    ; #35052: <==negation-removal== 21423 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #54111: <==negation-removal== 64635 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #55390: <==negation-removal== 74994 (pos)
                    (not (Pd_not_checked_p9))

                    ; #59576: <==uncertain_firing== 64635 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #61226: <==negation-removal== 78160 (pos)
                    (not (Bc_not_checked_p9))

                    ; #71553: <==negation-removal== 76587 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #77990: <==negation-removal== 33585 (pos)
                    (not (Ba_not_checked_p9))

                    ; #82438: <==uncertain_firing== 74888 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #84159: <==negation-removal== 74888 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))))

)