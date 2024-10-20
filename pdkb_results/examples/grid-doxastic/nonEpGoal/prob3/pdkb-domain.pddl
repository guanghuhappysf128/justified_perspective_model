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
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #13271: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #32842: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #37360: <==closure== 74412 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #57911: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #63477: <==closure== 13271 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #74412: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #76387: <==closure== 32842 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #76416: <==closure== 57911 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #18059: <==uncertain_firing== 76387 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #18586: <==negation-removal== 74412 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #19224: <==uncertain_firing== 37360 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25612: <==negation-removal== 32842 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34718: <==negation-removal== 76387 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #37319: <==uncertain_firing== 76416 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #38328: <==uncertain_firing== 57911 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #51185: <==uncertain_firing== 13271 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #56535: <==negation-removal== 57911 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #59426: <==negation-removal== 63477 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65143: <==uncertain_firing== 74412 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #73296: <==negation-removal== 13271 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81780: <==negation-removal== 37360 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #82169: <==uncertain_firing== 63477 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84096: <==uncertain_firing== 32842 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #88674: <==negation-removal== 76416 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #13271: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #32842: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #37360: <==closure== 74412 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #57911: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #63477: <==closure== 13271 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #74412: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #76387: <==closure== 32842 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #76416: <==closure== 57911 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #18059: <==uncertain_firing== 76387 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #18586: <==negation-removal== 74412 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #19224: <==uncertain_firing== 37360 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25612: <==negation-removal== 32842 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34718: <==negation-removal== 76387 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #37319: <==uncertain_firing== 76416 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #38328: <==uncertain_firing== 57911 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #51185: <==uncertain_firing== 13271 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #56535: <==negation-removal== 57911 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #59426: <==negation-removal== 63477 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65143: <==uncertain_firing== 74412 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #73296: <==negation-removal== 13271 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81780: <==negation-removal== 37360 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #82169: <==uncertain_firing== 63477 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84096: <==uncertain_firing== 32842 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #88674: <==negation-removal== 76416 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #13271: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #32842: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #37360: <==closure== 74412 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #57911: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #63477: <==closure== 13271 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #74412: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #76387: <==closure== 32842 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #76416: <==closure== 57911 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #18059: <==uncertain_firing== 76387 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #18586: <==negation-removal== 74412 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #19224: <==uncertain_firing== 37360 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25612: <==negation-removal== 32842 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34718: <==negation-removal== 76387 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #37319: <==uncertain_firing== 76416 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #38328: <==uncertain_firing== 57911 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #51185: <==uncertain_firing== 13271 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #56535: <==negation-removal== 57911 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #59426: <==negation-removal== 63477 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65143: <==uncertain_firing== 74412 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #73296: <==negation-removal== 13271 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81780: <==negation-removal== 37360 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #82169: <==uncertain_firing== 63477 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84096: <==uncertain_firing== 32842 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #88674: <==negation-removal== 76416 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (at_d_p1)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #13271: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #32842: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #37360: <==closure== 74412 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #57911: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #63477: <==closure== 13271 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #74412: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #76387: <==closure== 32842 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #76416: <==closure== 57911 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #18059: <==uncertain_firing== 76387 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #18586: <==negation-removal== 74412 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #19224: <==uncertain_firing== 37360 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25612: <==negation-removal== 32842 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34718: <==negation-removal== 76387 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #37319: <==uncertain_firing== 76416 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #38328: <==uncertain_firing== 57911 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #51185: <==uncertain_firing== 13271 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #56535: <==negation-removal== 57911 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #59426: <==negation-removal== 63477 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #65143: <==uncertain_firing== 74412 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #73296: <==negation-removal== 13271 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81780: <==negation-removal== 37360 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #82169: <==uncertain_firing== 63477 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84096: <==uncertain_firing== 32842 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #88674: <==negation-removal== 76416 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #19069: <==closure== 88481 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #19172: <==closure== 23735 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #21885: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #23735: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #56406: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #64983: <==closure== 56406 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #86872: <==closure== 21885 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #88481: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #16426: <==negation-removal== 23735 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #17208: <==negation-removal== 86872 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #20532: <==uncertain_firing== 19069 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #25539: <==negation-removal== 64983 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #29268: <==negation-removal== 88481 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #34662: <==negation-removal== 56406 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42736: <==uncertain_firing== 64983 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43303: <==negation-removal== 19069 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #48942: <==uncertain_firing== 86872 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #58484: <==uncertain_firing== 88481 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #59252: <==negation-removal== 19172 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #62778: <==uncertain_firing== 19172 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #80264: <==uncertain_firing== 56406 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82357: <==negation-removal== 21885 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85909: <==uncertain_firing== 23735 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #92098: <==uncertain_firing== 21885 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #19069: <==closure== 88481 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #19172: <==closure== 23735 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #21885: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #23735: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #56406: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #64983: <==closure== 56406 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #86872: <==closure== 21885 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #88481: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #16426: <==negation-removal== 23735 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #17208: <==negation-removal== 86872 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #20532: <==uncertain_firing== 19069 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #25539: <==negation-removal== 64983 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #29268: <==negation-removal== 88481 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #34662: <==negation-removal== 56406 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42736: <==uncertain_firing== 64983 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43303: <==negation-removal== 19069 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #48942: <==uncertain_firing== 86872 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #58484: <==uncertain_firing== 88481 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #59252: <==negation-removal== 19172 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #62778: <==uncertain_firing== 19172 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #80264: <==uncertain_firing== 56406 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82357: <==negation-removal== 21885 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85909: <==uncertain_firing== 23735 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #92098: <==uncertain_firing== 21885 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #19069: <==closure== 88481 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #19172: <==closure== 23735 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #21885: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #23735: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #56406: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #64983: <==closure== 56406 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #86872: <==closure== 21885 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #88481: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #16426: <==negation-removal== 23735 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #17208: <==negation-removal== 86872 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #20532: <==uncertain_firing== 19069 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #25539: <==negation-removal== 64983 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #29268: <==negation-removal== 88481 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #34662: <==negation-removal== 56406 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42736: <==uncertain_firing== 64983 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43303: <==negation-removal== 19069 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #48942: <==uncertain_firing== 86872 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #58484: <==uncertain_firing== 88481 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #59252: <==negation-removal== 19172 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #62778: <==uncertain_firing== 19172 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #80264: <==uncertain_firing== 56406 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82357: <==negation-removal== 21885 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85909: <==uncertain_firing== 23735 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #92098: <==uncertain_firing== 21885 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (at_d_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #19069: <==closure== 88481 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #19172: <==closure== 23735 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #21885: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #23735: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #56406: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #64983: <==closure== 56406 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #86872: <==closure== 21885 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #88481: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #16426: <==negation-removal== 23735 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #17208: <==negation-removal== 86872 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #20532: <==uncertain_firing== 19069 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #25539: <==negation-removal== 64983 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #29268: <==negation-removal== 88481 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #34662: <==negation-removal== 56406 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42736: <==uncertain_firing== 64983 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43303: <==negation-removal== 19069 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #48942: <==uncertain_firing== 86872 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #58484: <==uncertain_firing== 88481 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #59252: <==negation-removal== 19172 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #62778: <==uncertain_firing== 19172 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #80264: <==uncertain_firing== 56406 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82357: <==negation-removal== 21885 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85909: <==uncertain_firing== 23735 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #92098: <==uncertain_firing== 21885 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #31808: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #52464: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #54353: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #54835: <==closure== 87523 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #58350: <==closure== 54353 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #82746: <==closure== 52464 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #87523: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #91728: <==closure== 31808 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #24794: <==uncertain_firing== 58350 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #36795: <==negation-removal== 31808 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #42424: <==negation-removal== 91728 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #44468: <==uncertain_firing== 52464 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #45868: <==uncertain_firing== 31808 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49055: <==uncertain_firing== 91728 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #56669: <==uncertain_firing== 82746 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #61455: <==uncertain_firing== 87523 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67297: <==negation-removal== 58350 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #67447: <==negation-removal== 54353 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #76396: <==uncertain_firing== 54353 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #79183: <==negation-removal== 87523 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #81109: <==negation-removal== 82746 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #83273: <==negation-removal== 54835 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #85799: <==uncertain_firing== 54835 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89573: <==negation-removal== 52464 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #31808: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #52464: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #54353: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #54835: <==closure== 87523 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #58350: <==closure== 54353 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #82746: <==closure== 52464 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #87523: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #91728: <==closure== 31808 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #24794: <==uncertain_firing== 58350 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #36795: <==negation-removal== 31808 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #42424: <==negation-removal== 91728 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #44468: <==uncertain_firing== 52464 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #45868: <==uncertain_firing== 31808 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49055: <==uncertain_firing== 91728 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #56669: <==uncertain_firing== 82746 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #61455: <==uncertain_firing== 87523 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67297: <==negation-removal== 58350 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #67447: <==negation-removal== 54353 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #76396: <==uncertain_firing== 54353 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #79183: <==negation-removal== 87523 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #81109: <==negation-removal== 82746 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #83273: <==negation-removal== 54835 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #85799: <==uncertain_firing== 54835 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89573: <==negation-removal== 52464 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #31808: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #52464: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #54353: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #54835: <==closure== 87523 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #58350: <==closure== 54353 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #82746: <==closure== 52464 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #87523: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #91728: <==closure== 31808 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #24794: <==uncertain_firing== 58350 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #36795: <==negation-removal== 31808 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #42424: <==negation-removal== 91728 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #44468: <==uncertain_firing== 52464 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #45868: <==uncertain_firing== 31808 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49055: <==uncertain_firing== 91728 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #56669: <==uncertain_firing== 82746 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #61455: <==uncertain_firing== 87523 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67297: <==negation-removal== 58350 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #67447: <==negation-removal== 54353 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #76396: <==uncertain_firing== 54353 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #79183: <==negation-removal== 87523 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #81109: <==negation-removal== 82746 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #83273: <==negation-removal== 54835 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #85799: <==uncertain_firing== 54835 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89573: <==negation-removal== 52464 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (at_d_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #31808: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #52464: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #54353: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #54835: <==closure== 87523 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #58350: <==closure== 54353 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #82746: <==closure== 52464 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #87523: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #91728: <==closure== 31808 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #24794: <==uncertain_firing== 58350 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #36795: <==negation-removal== 31808 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #42424: <==negation-removal== 91728 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #44468: <==uncertain_firing== 52464 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #45868: <==uncertain_firing== 31808 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49055: <==uncertain_firing== 91728 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #56669: <==uncertain_firing== 82746 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #61455: <==uncertain_firing== 87523 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67297: <==negation-removal== 58350 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #67447: <==negation-removal== 54353 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #76396: <==uncertain_firing== 54353 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #79183: <==negation-removal== 87523 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #81109: <==negation-removal== 82746 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #83273: <==negation-removal== 54835 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #85799: <==uncertain_firing== 54835 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89573: <==negation-removal== 52464 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #21506: <==closure== 91287 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #39812: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #49119: <==closure== 66372 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #50159: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #52307: <==closure== 39812 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #66372: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #82535: <==closure== 50159 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #91287: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #14742: <==negation-removal== 49119 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24863: <==uncertain_firing== 66372 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #26738: <==uncertain_firing== 21506 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #28933: <==negation-removal== 66372 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #31457: <==negation-removal== 50159 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #35076: <==uncertain_firing== 52307 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41213: <==uncertain_firing== 50159 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41776: <==negation-removal== 82535 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #48947: <==negation-removal== 52307 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #49738: <==uncertain_firing== 49119 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #53922: <==uncertain_firing== 91287 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #68613: <==negation-removal== 21506 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #73162: <==negation-removal== 91287 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #73507: <==uncertain_firing== 39812 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #81172: <==negation-removal== 39812 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #81238: <==uncertain_firing== 82535 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #21506: <==closure== 91287 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #39812: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #49119: <==closure== 66372 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #50159: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #52307: <==closure== 39812 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #66372: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #82535: <==closure== 50159 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #91287: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #14742: <==negation-removal== 49119 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24863: <==uncertain_firing== 66372 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #26738: <==uncertain_firing== 21506 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #28933: <==negation-removal== 66372 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #31457: <==negation-removal== 50159 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #35076: <==uncertain_firing== 52307 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41213: <==uncertain_firing== 50159 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41776: <==negation-removal== 82535 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #48947: <==negation-removal== 52307 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #49738: <==uncertain_firing== 49119 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #53922: <==uncertain_firing== 91287 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #68613: <==negation-removal== 21506 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #73162: <==negation-removal== 91287 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #73507: <==uncertain_firing== 39812 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #81172: <==negation-removal== 39812 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #81238: <==uncertain_firing== 82535 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #21506: <==closure== 91287 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #39812: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #49119: <==closure== 66372 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #50159: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #52307: <==closure== 39812 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #66372: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #82535: <==closure== 50159 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #91287: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #14742: <==negation-removal== 49119 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24863: <==uncertain_firing== 66372 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #26738: <==uncertain_firing== 21506 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #28933: <==negation-removal== 66372 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #31457: <==negation-removal== 50159 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #35076: <==uncertain_firing== 52307 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41213: <==uncertain_firing== 50159 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41776: <==negation-removal== 82535 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #48947: <==negation-removal== 52307 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #49738: <==uncertain_firing== 49119 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #53922: <==uncertain_firing== 91287 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #68613: <==negation-removal== 21506 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #73162: <==negation-removal== 91287 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #73507: <==uncertain_firing== 39812 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #81172: <==negation-removal== 39812 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #81238: <==uncertain_firing== 82535 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #21506: <==closure== 91287 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #39812: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #49119: <==closure== 66372 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #50159: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #52307: <==closure== 39812 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #66372: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #82535: <==closure== 50159 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #91287: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #14742: <==negation-removal== 49119 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24863: <==uncertain_firing== 66372 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #26738: <==uncertain_firing== 21506 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #28933: <==negation-removal== 66372 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #31457: <==negation-removal== 50159 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #35076: <==uncertain_firing== 52307 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41213: <==uncertain_firing== 50159 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41776: <==negation-removal== 82535 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #48947: <==negation-removal== 52307 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #49738: <==uncertain_firing== 49119 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #53922: <==uncertain_firing== 91287 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #68613: <==negation-removal== 21506 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #73162: <==negation-removal== 91287 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #73507: <==uncertain_firing== 39812 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #81172: <==negation-removal== 39812 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #81238: <==uncertain_firing== 82535 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #21815: <==closure== 71677 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #25371: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #30687: <==closure== 62085 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #35964: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #36609: <==closure== 35964 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #40857: <==closure== 25371 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #62085: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #71677: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #10114: <==uncertain_firing== 35964 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #12896: <==negation-removal== 36609 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #15119: <==uncertain_firing== 21815 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #20157: <==negation-removal== 71677 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #25789: <==negation-removal== 35964 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #27406: <==uncertain_firing== 62085 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #30659: <==negation-removal== 25371 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42834: <==negation-removal== 62085 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #49716: <==uncertain_firing== 71677 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52808: <==negation-removal== 21815 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #53619: <==uncertain_firing== 30687 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67430: <==negation-removal== 40857 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #69987: <==uncertain_firing== 25371 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #77597: <==uncertain_firing== 40857 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #89346: <==uncertain_firing== 36609 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #91000: <==negation-removal== 30687 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #21815: <==closure== 71677 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #25371: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #30687: <==closure== 62085 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #35964: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #36609: <==closure== 35964 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #40857: <==closure== 25371 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #62085: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #71677: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #10114: <==uncertain_firing== 35964 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #12896: <==negation-removal== 36609 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #15119: <==uncertain_firing== 21815 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #20157: <==negation-removal== 71677 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #25789: <==negation-removal== 35964 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #27406: <==uncertain_firing== 62085 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #30659: <==negation-removal== 25371 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42834: <==negation-removal== 62085 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #49716: <==uncertain_firing== 71677 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52808: <==negation-removal== 21815 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #53619: <==uncertain_firing== 30687 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67430: <==negation-removal== 40857 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #69987: <==uncertain_firing== 25371 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #77597: <==uncertain_firing== 40857 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #89346: <==uncertain_firing== 36609 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #91000: <==negation-removal== 30687 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #21815: <==closure== 71677 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #25371: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #30687: <==closure== 62085 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #35964: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #36609: <==closure== 35964 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #40857: <==closure== 25371 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #62085: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #71677: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #10114: <==uncertain_firing== 35964 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #12896: <==negation-removal== 36609 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #15119: <==uncertain_firing== 21815 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #20157: <==negation-removal== 71677 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #25789: <==negation-removal== 35964 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #27406: <==uncertain_firing== 62085 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #30659: <==negation-removal== 25371 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42834: <==negation-removal== 62085 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #49716: <==uncertain_firing== 71677 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52808: <==negation-removal== 21815 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #53619: <==uncertain_firing== 30687 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67430: <==negation-removal== 40857 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #69987: <==uncertain_firing== 25371 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #77597: <==uncertain_firing== 40857 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #89346: <==uncertain_firing== 36609 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #91000: <==negation-removal== 30687 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #21815: <==closure== 71677 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #25371: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #30687: <==closure== 62085 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #35964: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #36609: <==closure== 35964 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #40857: <==closure== 25371 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #62085: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #71677: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #10114: <==uncertain_firing== 35964 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #12896: <==negation-removal== 36609 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #15119: <==uncertain_firing== 21815 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #20157: <==negation-removal== 71677 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #25789: <==negation-removal== 35964 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #27406: <==uncertain_firing== 62085 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #30659: <==negation-removal== 25371 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42834: <==negation-removal== 62085 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #49716: <==uncertain_firing== 71677 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52808: <==negation-removal== 21815 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #53619: <==uncertain_firing== 30687 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67430: <==negation-removal== 40857 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #69987: <==uncertain_firing== 25371 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #77597: <==uncertain_firing== 40857 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #89346: <==uncertain_firing== 36609 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #91000: <==negation-removal== 30687 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #53068: <==closure== 81445 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #54552: <==closure== 74262 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #59466: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #61726: <==closure== 59466 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68052: <==closure== 69180 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #69180: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #74262: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #81445: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11686: <==negation-removal== 68052 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #18331: <==negation-removal== 61726 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #19217: <==negation-removal== 54552 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #19709: <==uncertain_firing== 74262 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22839: <==uncertain_firing== 69180 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #23786: <==uncertain_firing== 53068 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #31784: <==uncertain_firing== 68052 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #39922: <==uncertain_firing== 61726 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #40136: <==uncertain_firing== 54552 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #60396: <==negation-removal== 53068 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63686: <==negation-removal== 74262 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68011: <==negation-removal== 81445 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #68784: <==negation-removal== 69180 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #71401: <==uncertain_firing== 81445 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #72229: <==negation-removal== 59466 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87872: <==uncertain_firing== 59466 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #53068: <==closure== 81445 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #54552: <==closure== 74262 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #59466: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #61726: <==closure== 59466 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68052: <==closure== 69180 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #69180: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #74262: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #81445: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11686: <==negation-removal== 68052 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #18331: <==negation-removal== 61726 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #19217: <==negation-removal== 54552 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #19709: <==uncertain_firing== 74262 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22839: <==uncertain_firing== 69180 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #23786: <==uncertain_firing== 53068 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #31784: <==uncertain_firing== 68052 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #39922: <==uncertain_firing== 61726 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #40136: <==uncertain_firing== 54552 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #60396: <==negation-removal== 53068 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63686: <==negation-removal== 74262 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68011: <==negation-removal== 81445 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #68784: <==negation-removal== 69180 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #71401: <==uncertain_firing== 81445 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #72229: <==negation-removal== 59466 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87872: <==uncertain_firing== 59466 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #53068: <==closure== 81445 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #54552: <==closure== 74262 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #59466: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #61726: <==closure== 59466 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68052: <==closure== 69180 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #69180: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #74262: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #81445: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11686: <==negation-removal== 68052 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #18331: <==negation-removal== 61726 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #19217: <==negation-removal== 54552 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #19709: <==uncertain_firing== 74262 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22839: <==uncertain_firing== 69180 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #23786: <==uncertain_firing== 53068 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #31784: <==uncertain_firing== 68052 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #39922: <==uncertain_firing== 61726 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #40136: <==uncertain_firing== 54552 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #60396: <==negation-removal== 53068 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63686: <==negation-removal== 74262 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68011: <==negation-removal== 81445 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #68784: <==negation-removal== 69180 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #71401: <==uncertain_firing== 81445 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #72229: <==negation-removal== 59466 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87872: <==uncertain_firing== 59466 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #53068: <==closure== 81445 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #54552: <==closure== 74262 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #59466: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #61726: <==closure== 59466 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #68052: <==closure== 69180 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #69180: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #74262: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #81445: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11686: <==negation-removal== 68052 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #18331: <==negation-removal== 61726 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #19217: <==negation-removal== 54552 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #19709: <==uncertain_firing== 74262 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22839: <==uncertain_firing== 69180 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #23786: <==uncertain_firing== 53068 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #31784: <==uncertain_firing== 68052 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #39922: <==uncertain_firing== 61726 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #40136: <==uncertain_firing== 54552 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #60396: <==negation-removal== 53068 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #63686: <==negation-removal== 74262 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68011: <==negation-removal== 81445 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #68784: <==negation-removal== 69180 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #71401: <==uncertain_firing== 81445 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #72229: <==negation-removal== 59466 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87872: <==uncertain_firing== 59466 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #14101: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #19863: <==closure== 66423 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #33877: <==closure== 14101 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #47184: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #50672: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #50985: <==closure== 50672 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66423: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #91384: <==closure== 47184 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #14276: <==negation-removal== 47184 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #14932: <==negation-removal== 50672 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #23849: <==negation-removal== 19863 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24313: <==uncertain_firing== 66423 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #26451: <==uncertain_firing== 91384 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40271: <==negation-removal== 91384 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #42782: <==uncertain_firing== 47184 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #50109: <==uncertain_firing== 19863 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59147: <==uncertain_firing== 50985 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63813: <==negation-removal== 14101 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #68185: <==uncertain_firing== 50672 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #76690: <==negation-removal== 66423 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78478: <==negation-removal== 33877 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #79823: <==uncertain_firing== 33877 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #81248: <==uncertain_firing== 14101 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #88824: <==negation-removal== 50985 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #14101: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #19863: <==closure== 66423 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #33877: <==closure== 14101 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #47184: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #50672: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #50985: <==closure== 50672 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66423: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #91384: <==closure== 47184 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #14276: <==negation-removal== 47184 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #14932: <==negation-removal== 50672 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #23849: <==negation-removal== 19863 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24313: <==uncertain_firing== 66423 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #26451: <==uncertain_firing== 91384 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40271: <==negation-removal== 91384 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #42782: <==uncertain_firing== 47184 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #50109: <==uncertain_firing== 19863 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59147: <==uncertain_firing== 50985 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63813: <==negation-removal== 14101 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #68185: <==uncertain_firing== 50672 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #76690: <==negation-removal== 66423 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78478: <==negation-removal== 33877 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #79823: <==uncertain_firing== 33877 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #81248: <==uncertain_firing== 14101 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #88824: <==negation-removal== 50985 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #14101: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #19863: <==closure== 66423 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #33877: <==closure== 14101 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #47184: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #50672: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #50985: <==closure== 50672 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66423: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #91384: <==closure== 47184 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #14276: <==negation-removal== 47184 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #14932: <==negation-removal== 50672 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #23849: <==negation-removal== 19863 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24313: <==uncertain_firing== 66423 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #26451: <==uncertain_firing== 91384 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40271: <==negation-removal== 91384 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #42782: <==uncertain_firing== 47184 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #50109: <==uncertain_firing== 19863 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59147: <==uncertain_firing== 50985 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63813: <==negation-removal== 14101 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #68185: <==uncertain_firing== 50672 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #76690: <==negation-removal== 66423 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78478: <==negation-removal== 33877 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #79823: <==uncertain_firing== 33877 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #81248: <==uncertain_firing== 14101 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #88824: <==negation-removal== 50985 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #14101: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #19863: <==closure== 66423 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #33877: <==closure== 14101 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #47184: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #50672: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #50985: <==closure== 50672 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66423: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #91384: <==closure== 47184 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #14276: <==negation-removal== 47184 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #14932: <==negation-removal== 50672 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #23849: <==negation-removal== 19863 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24313: <==uncertain_firing== 66423 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #26451: <==uncertain_firing== 91384 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40271: <==negation-removal== 91384 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #42782: <==uncertain_firing== 47184 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #50109: <==uncertain_firing== 19863 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59147: <==uncertain_firing== 50985 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63813: <==negation-removal== 14101 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #68185: <==uncertain_firing== 50672 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #76690: <==negation-removal== 66423 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78478: <==negation-removal== 33877 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #79823: <==uncertain_firing== 33877 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #81248: <==uncertain_firing== 14101 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #88824: <==negation-removal== 50985 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #25660: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #25881: <==closure== 66396 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #38126: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #40455: <==closure== 25660 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #48566: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #60414: <==closure== 48566 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #66396: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #87114: <==closure== 38126 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #17352: <==negation-removal== 40455 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #24218: <==negation-removal== 38126 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #26316: <==uncertain_firing== 25660 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #36025: <==negation-removal== 48566 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #50526: <==negation-removal== 66396 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53833: <==negation-removal== 87114 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54690: <==uncertain_firing== 25881 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63764: <==negation-removal== 25660 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #65466: <==uncertain_firing== 66396 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #71893: <==uncertain_firing== 60414 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #74211: <==uncertain_firing== 87114 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #81407: <==uncertain_firing== 48566 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #83440: <==uncertain_firing== 40455 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #83552: <==negation-removal== 60414 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89329: <==uncertain_firing== 38126 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #99005: <==negation-removal== 25881 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #25660: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #25881: <==closure== 66396 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #38126: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #40455: <==closure== 25660 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #48566: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #60414: <==closure== 48566 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #66396: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #87114: <==closure== 38126 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #17352: <==negation-removal== 40455 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #24218: <==negation-removal== 38126 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #26316: <==uncertain_firing== 25660 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #36025: <==negation-removal== 48566 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #50526: <==negation-removal== 66396 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53833: <==negation-removal== 87114 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54690: <==uncertain_firing== 25881 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63764: <==negation-removal== 25660 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #65466: <==uncertain_firing== 66396 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #71893: <==uncertain_firing== 60414 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #74211: <==uncertain_firing== 87114 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #81407: <==uncertain_firing== 48566 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #83440: <==uncertain_firing== 40455 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #83552: <==negation-removal== 60414 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89329: <==uncertain_firing== 38126 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #99005: <==negation-removal== 25881 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #25660: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #25881: <==closure== 66396 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #38126: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #40455: <==closure== 25660 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #48566: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #60414: <==closure== 48566 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #66396: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #87114: <==closure== 38126 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #17352: <==negation-removal== 40455 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #24218: <==negation-removal== 38126 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #26316: <==uncertain_firing== 25660 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #36025: <==negation-removal== 48566 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #50526: <==negation-removal== 66396 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53833: <==negation-removal== 87114 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54690: <==uncertain_firing== 25881 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63764: <==negation-removal== 25660 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #65466: <==uncertain_firing== 66396 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #71893: <==uncertain_firing== 60414 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #74211: <==uncertain_firing== 87114 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #81407: <==uncertain_firing== 48566 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #83440: <==uncertain_firing== 40455 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #83552: <==negation-removal== 60414 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89329: <==uncertain_firing== 38126 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #99005: <==negation-removal== 25881 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (at_d_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #25660: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #25881: <==closure== 66396 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #38126: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #40455: <==closure== 25660 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #48566: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #60414: <==closure== 48566 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #66396: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #87114: <==closure== 38126 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #17352: <==negation-removal== 40455 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #24218: <==negation-removal== 38126 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #26316: <==uncertain_firing== 25660 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #36025: <==negation-removal== 48566 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #50526: <==negation-removal== 66396 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53833: <==negation-removal== 87114 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54690: <==uncertain_firing== 25881 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63764: <==negation-removal== 25660 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #65466: <==uncertain_firing== 66396 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #71893: <==uncertain_firing== 60414 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #74211: <==uncertain_firing== 87114 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #81407: <==uncertain_firing== 48566 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #83440: <==uncertain_firing== 40455 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #83552: <==negation-removal== 60414 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89329: <==uncertain_firing== 38126 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #99005: <==negation-removal== 25881 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #18635: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #21553: <==closure== 64034 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #27992: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #52792: <==closure== 89322 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #54252: <==closure== 18635 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #64034: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #85463: <==closure== 27992 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #89322: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #18338: <==uncertain_firing== 85463 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #30195: <==negation-removal== 64034 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #31632: <==uncertain_firing== 18635 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #40994: <==negation-removal== 21553 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #48508: <==negation-removal== 89322 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #51981: <==uncertain_firing== 54252 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #53424: <==uncertain_firing== 21553 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56110: <==negation-removal== 18635 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #58950: <==uncertain_firing== 89322 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #62935: <==uncertain_firing== 64034 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #63519: <==uncertain_firing== 27992 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #63870: <==negation-removal== 52792 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69059: <==negation-removal== 27992 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #74096: <==negation-removal== 85463 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #79313: <==negation-removal== 54252 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #81710: <==uncertain_firing== 52792 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #18635: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #21553: <==closure== 64034 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #27992: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #52792: <==closure== 89322 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #54252: <==closure== 18635 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #64034: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #85463: <==closure== 27992 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #89322: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #18338: <==uncertain_firing== 85463 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #30195: <==negation-removal== 64034 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #31632: <==uncertain_firing== 18635 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #40994: <==negation-removal== 21553 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #48508: <==negation-removal== 89322 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #51981: <==uncertain_firing== 54252 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #53424: <==uncertain_firing== 21553 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56110: <==negation-removal== 18635 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #58950: <==uncertain_firing== 89322 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #62935: <==uncertain_firing== 64034 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #63519: <==uncertain_firing== 27992 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #63870: <==negation-removal== 52792 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69059: <==negation-removal== 27992 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #74096: <==negation-removal== 85463 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #79313: <==negation-removal== 54252 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #81710: <==uncertain_firing== 52792 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #18635: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #21553: <==closure== 64034 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #27992: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #52792: <==closure== 89322 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #54252: <==closure== 18635 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #64034: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #85463: <==closure== 27992 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #89322: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #18338: <==uncertain_firing== 85463 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #30195: <==negation-removal== 64034 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #31632: <==uncertain_firing== 18635 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #40994: <==negation-removal== 21553 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #48508: <==negation-removal== 89322 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #51981: <==uncertain_firing== 54252 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #53424: <==uncertain_firing== 21553 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56110: <==negation-removal== 18635 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #58950: <==uncertain_firing== 89322 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #62935: <==uncertain_firing== 64034 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #63519: <==uncertain_firing== 27992 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #63870: <==negation-removal== 52792 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69059: <==negation-removal== 27992 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #74096: <==negation-removal== 85463 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #79313: <==negation-removal== 54252 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #81710: <==uncertain_firing== 52792 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #18635: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #21553: <==closure== 64034 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #27992: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #52792: <==closure== 89322 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #54252: <==closure== 18635 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #64034: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #85463: <==closure== 27992 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #89322: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #18338: <==uncertain_firing== 85463 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #30195: <==negation-removal== 64034 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #31632: <==uncertain_firing== 18635 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #40994: <==negation-removal== 21553 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #48508: <==negation-removal== 89322 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #51981: <==uncertain_firing== 54252 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #53424: <==uncertain_firing== 21553 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56110: <==negation-removal== 18635 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #58950: <==uncertain_firing== 89322 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #62935: <==uncertain_firing== 64034 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #63519: <==uncertain_firing== 27992 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #63870: <==negation-removal== 52792 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69059: <==negation-removal== 27992 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #74096: <==negation-removal== 85463 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #79313: <==negation-removal== 54252 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #81710: <==uncertain_firing== 52792 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #10519: <==closure== 54628 (pos)
                    (Pc_survivorat_s_p1)

                    ; #39552: origin
                    (Bb_survivorat_s_p1)

                    ; #54628: origin
                    (Bc_survivorat_s_p1)

                    ; #58128: origin
                    (Ba_survivorat_s_p1)

                    ; #69331: <==closure== 39552 (pos)
                    (Pb_survivorat_s_p1)

                    ; #74786: <==closure== 58128 (pos)
                    (Pa_survivorat_s_p1)

                    ; #81363: <==closure== 85052 (pos)
                    (Pd_survivorat_s_p1)

                    ; #85052: origin
                    (Bd_survivorat_s_p1)

                    ; #37358: <==negation-removal== 81363 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #57404: <==negation-removal== 54628 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63210: <==negation-removal== 85052 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #69696: <==negation-removal== 58128 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #77266: <==negation-removal== 69331 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #84036: <==negation-removal== 10519 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #87674: <==negation-removal== 39552 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #89270: <==negation-removal== 74786 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #10519: <==closure== 54628 (pos)
                    (Pc_survivorat_s_p1)

                    ; #39552: origin
                    (Bb_survivorat_s_p1)

                    ; #54628: origin
                    (Bc_survivorat_s_p1)

                    ; #58128: origin
                    (Ba_survivorat_s_p1)

                    ; #69331: <==closure== 39552 (pos)
                    (Pb_survivorat_s_p1)

                    ; #74786: <==closure== 58128 (pos)
                    (Pa_survivorat_s_p1)

                    ; #81363: <==closure== 85052 (pos)
                    (Pd_survivorat_s_p1)

                    ; #85052: origin
                    (Bd_survivorat_s_p1)

                    ; #37358: <==negation-removal== 81363 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #57404: <==negation-removal== 54628 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63210: <==negation-removal== 85052 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #69696: <==negation-removal== 58128 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #77266: <==negation-removal== 69331 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #84036: <==negation-removal== 10519 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #87674: <==negation-removal== 39552 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #89270: <==negation-removal== 74786 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #10519: <==closure== 54628 (pos)
                    (Pc_survivorat_s_p1)

                    ; #39552: origin
                    (Bb_survivorat_s_p1)

                    ; #54628: origin
                    (Bc_survivorat_s_p1)

                    ; #58128: origin
                    (Ba_survivorat_s_p1)

                    ; #69331: <==closure== 39552 (pos)
                    (Pb_survivorat_s_p1)

                    ; #74786: <==closure== 58128 (pos)
                    (Pa_survivorat_s_p1)

                    ; #81363: <==closure== 85052 (pos)
                    (Pd_survivorat_s_p1)

                    ; #85052: origin
                    (Bd_survivorat_s_p1)

                    ; #37358: <==negation-removal== 81363 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #57404: <==negation-removal== 54628 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63210: <==negation-removal== 85052 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #69696: <==negation-removal== 58128 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #77266: <==negation-removal== 69331 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #84036: <==negation-removal== 10519 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #87674: <==negation-removal== 39552 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #89270: <==negation-removal== 74786 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (at_d_p1)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #10519: <==closure== 54628 (pos)
                    (Pc_survivorat_s_p1)

                    ; #39552: origin
                    (Bb_survivorat_s_p1)

                    ; #54628: origin
                    (Bc_survivorat_s_p1)

                    ; #58128: origin
                    (Ba_survivorat_s_p1)

                    ; #69331: <==closure== 39552 (pos)
                    (Pb_survivorat_s_p1)

                    ; #74786: <==closure== 58128 (pos)
                    (Pa_survivorat_s_p1)

                    ; #81363: <==closure== 85052 (pos)
                    (Pd_survivorat_s_p1)

                    ; #85052: origin
                    (Bd_survivorat_s_p1)

                    ; #37358: <==negation-removal== 81363 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #57404: <==negation-removal== 54628 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63210: <==negation-removal== 85052 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #69696: <==negation-removal== 58128 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #77266: <==negation-removal== 69331 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #84036: <==negation-removal== 10519 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #87674: <==negation-removal== 39552 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #89270: <==negation-removal== 74786 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #18722: origin
                    (Ba_survivorat_s_p2)

                    ; #22243: origin
                    (Bc_survivorat_s_p2)

                    ; #33715: <==closure== 46309 (pos)
                    (Pd_survivorat_s_p2)

                    ; #46309: origin
                    (Bd_survivorat_s_p2)

                    ; #52259: <==closure== 70390 (pos)
                    (Pb_survivorat_s_p2)

                    ; #56693: <==closure== 18722 (pos)
                    (Pa_survivorat_s_p2)

                    ; #70390: origin
                    (Bb_survivorat_s_p2)

                    ; #75593: <==closure== 22243 (pos)
                    (Pc_survivorat_s_p2)

                    ; #26103: <==negation-removal== 18722 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #38456: <==negation-removal== 56693 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #62923: <==negation-removal== 46309 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #63633: <==negation-removal== 70390 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67571: <==negation-removal== 52259 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #68100: <==negation-removal== 33715 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #74195: <==negation-removal== 75593 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #91617: <==negation-removal== 22243 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #18722: origin
                    (Ba_survivorat_s_p2)

                    ; #22243: origin
                    (Bc_survivorat_s_p2)

                    ; #33715: <==closure== 46309 (pos)
                    (Pd_survivorat_s_p2)

                    ; #46309: origin
                    (Bd_survivorat_s_p2)

                    ; #52259: <==closure== 70390 (pos)
                    (Pb_survivorat_s_p2)

                    ; #56693: <==closure== 18722 (pos)
                    (Pa_survivorat_s_p2)

                    ; #70390: origin
                    (Bb_survivorat_s_p2)

                    ; #75593: <==closure== 22243 (pos)
                    (Pc_survivorat_s_p2)

                    ; #26103: <==negation-removal== 18722 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #38456: <==negation-removal== 56693 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #62923: <==negation-removal== 46309 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #63633: <==negation-removal== 70390 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67571: <==negation-removal== 52259 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #68100: <==negation-removal== 33715 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #74195: <==negation-removal== 75593 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #91617: <==negation-removal== 22243 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #18722: origin
                    (Ba_survivorat_s_p2)

                    ; #22243: origin
                    (Bc_survivorat_s_p2)

                    ; #33715: <==closure== 46309 (pos)
                    (Pd_survivorat_s_p2)

                    ; #46309: origin
                    (Bd_survivorat_s_p2)

                    ; #52259: <==closure== 70390 (pos)
                    (Pb_survivorat_s_p2)

                    ; #56693: <==closure== 18722 (pos)
                    (Pa_survivorat_s_p2)

                    ; #70390: origin
                    (Bb_survivorat_s_p2)

                    ; #75593: <==closure== 22243 (pos)
                    (Pc_survivorat_s_p2)

                    ; #26103: <==negation-removal== 18722 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #38456: <==negation-removal== 56693 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #62923: <==negation-removal== 46309 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #63633: <==negation-removal== 70390 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67571: <==negation-removal== 52259 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #68100: <==negation-removal== 33715 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #74195: <==negation-removal== 75593 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #91617: <==negation-removal== 22243 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (at_d_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #18722: origin
                    (Ba_survivorat_s_p2)

                    ; #22243: origin
                    (Bc_survivorat_s_p2)

                    ; #33715: <==closure== 46309 (pos)
                    (Pd_survivorat_s_p2)

                    ; #46309: origin
                    (Bd_survivorat_s_p2)

                    ; #52259: <==closure== 70390 (pos)
                    (Pb_survivorat_s_p2)

                    ; #56693: <==closure== 18722 (pos)
                    (Pa_survivorat_s_p2)

                    ; #70390: origin
                    (Bb_survivorat_s_p2)

                    ; #75593: <==closure== 22243 (pos)
                    (Pc_survivorat_s_p2)

                    ; #26103: <==negation-removal== 18722 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #38456: <==negation-removal== 56693 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #62923: <==negation-removal== 46309 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #63633: <==negation-removal== 70390 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #67571: <==negation-removal== 52259 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #68100: <==negation-removal== 33715 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #74195: <==negation-removal== 75593 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #91617: <==negation-removal== 22243 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #29434: origin
                    (Bd_survivorat_s_p3)

                    ; #55780: <==closure== 76026 (pos)
                    (Pc_survivorat_s_p3)

                    ; #75346: origin
                    (Ba_survivorat_s_p3)

                    ; #76026: origin
                    (Bc_survivorat_s_p3)

                    ; #78878: origin
                    (Bb_survivorat_s_p3)

                    ; #86782: <==closure== 75346 (pos)
                    (Pa_survivorat_s_p3)

                    ; #86849: <==closure== 29434 (pos)
                    (Pd_survivorat_s_p3)

                    ; #89729: <==closure== 78878 (pos)
                    (Pb_survivorat_s_p3)

                    ; #27139: <==negation-removal== 86782 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #40878: <==negation-removal== 55780 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #52432: <==negation-removal== 29434 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #54078: <==negation-removal== 75346 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #61205: <==negation-removal== 76026 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #63258: <==negation-removal== 89729 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78948: <==negation-removal== 86849 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #79156: <==negation-removal== 78878 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #29434: origin
                    (Bd_survivorat_s_p3)

                    ; #55780: <==closure== 76026 (pos)
                    (Pc_survivorat_s_p3)

                    ; #75346: origin
                    (Ba_survivorat_s_p3)

                    ; #76026: origin
                    (Bc_survivorat_s_p3)

                    ; #78878: origin
                    (Bb_survivorat_s_p3)

                    ; #86782: <==closure== 75346 (pos)
                    (Pa_survivorat_s_p3)

                    ; #86849: <==closure== 29434 (pos)
                    (Pd_survivorat_s_p3)

                    ; #89729: <==closure== 78878 (pos)
                    (Pb_survivorat_s_p3)

                    ; #27139: <==negation-removal== 86782 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #40878: <==negation-removal== 55780 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #52432: <==negation-removal== 29434 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #54078: <==negation-removal== 75346 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #61205: <==negation-removal== 76026 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #63258: <==negation-removal== 89729 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78948: <==negation-removal== 86849 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #79156: <==negation-removal== 78878 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #29434: origin
                    (Bd_survivorat_s_p3)

                    ; #55780: <==closure== 76026 (pos)
                    (Pc_survivorat_s_p3)

                    ; #75346: origin
                    (Ba_survivorat_s_p3)

                    ; #76026: origin
                    (Bc_survivorat_s_p3)

                    ; #78878: origin
                    (Bb_survivorat_s_p3)

                    ; #86782: <==closure== 75346 (pos)
                    (Pa_survivorat_s_p3)

                    ; #86849: <==closure== 29434 (pos)
                    (Pd_survivorat_s_p3)

                    ; #89729: <==closure== 78878 (pos)
                    (Pb_survivorat_s_p3)

                    ; #27139: <==negation-removal== 86782 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #40878: <==negation-removal== 55780 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #52432: <==negation-removal== 29434 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #54078: <==negation-removal== 75346 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #61205: <==negation-removal== 76026 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #63258: <==negation-removal== 89729 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78948: <==negation-removal== 86849 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #79156: <==negation-removal== 78878 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (at_d_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #29434: origin
                    (Bd_survivorat_s_p3)

                    ; #55780: <==closure== 76026 (pos)
                    (Pc_survivorat_s_p3)

                    ; #75346: origin
                    (Ba_survivorat_s_p3)

                    ; #76026: origin
                    (Bc_survivorat_s_p3)

                    ; #78878: origin
                    (Bb_survivorat_s_p3)

                    ; #86782: <==closure== 75346 (pos)
                    (Pa_survivorat_s_p3)

                    ; #86849: <==closure== 29434 (pos)
                    (Pd_survivorat_s_p3)

                    ; #89729: <==closure== 78878 (pos)
                    (Pb_survivorat_s_p3)

                    ; #27139: <==negation-removal== 86782 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #40878: <==negation-removal== 55780 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #52432: <==negation-removal== 29434 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #54078: <==negation-removal== 75346 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #61205: <==negation-removal== 76026 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #63258: <==negation-removal== 89729 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78948: <==negation-removal== 86849 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #79156: <==negation-removal== 78878 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #25547: <==closure== 42558 (pos)
                    (Pb_survivorat_s_p4)

                    ; #37426: origin
                    (Bd_survivorat_s_p4)

                    ; #37468: origin
                    (Ba_survivorat_s_p4)

                    ; #42558: origin
                    (Bb_survivorat_s_p4)

                    ; #42998: <==closure== 37468 (pos)
                    (Pa_survivorat_s_p4)

                    ; #48670: <==closure== 37426 (pos)
                    (Pd_survivorat_s_p4)

                    ; #56301: origin
                    (Bc_survivorat_s_p4)

                    ; #69031: <==closure== 56301 (pos)
                    (Pc_survivorat_s_p4)

                    ; #21164: <==negation-removal== 42998 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #38224: <==negation-removal== 69031 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #44597: <==negation-removal== 37426 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #46081: <==negation-removal== 56301 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #51795: <==negation-removal== 37468 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #73877: <==negation-removal== 48670 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #74405: <==negation-removal== 25547 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90629: <==negation-removal== 42558 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #25547: <==closure== 42558 (pos)
                    (Pb_survivorat_s_p4)

                    ; #37426: origin
                    (Bd_survivorat_s_p4)

                    ; #37468: origin
                    (Ba_survivorat_s_p4)

                    ; #42558: origin
                    (Bb_survivorat_s_p4)

                    ; #42998: <==closure== 37468 (pos)
                    (Pa_survivorat_s_p4)

                    ; #48670: <==closure== 37426 (pos)
                    (Pd_survivorat_s_p4)

                    ; #56301: origin
                    (Bc_survivorat_s_p4)

                    ; #69031: <==closure== 56301 (pos)
                    (Pc_survivorat_s_p4)

                    ; #21164: <==negation-removal== 42998 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #38224: <==negation-removal== 69031 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #44597: <==negation-removal== 37426 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #46081: <==negation-removal== 56301 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #51795: <==negation-removal== 37468 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #73877: <==negation-removal== 48670 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #74405: <==negation-removal== 25547 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90629: <==negation-removal== 42558 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #25547: <==closure== 42558 (pos)
                    (Pb_survivorat_s_p4)

                    ; #37426: origin
                    (Bd_survivorat_s_p4)

                    ; #37468: origin
                    (Ba_survivorat_s_p4)

                    ; #42558: origin
                    (Bb_survivorat_s_p4)

                    ; #42998: <==closure== 37468 (pos)
                    (Pa_survivorat_s_p4)

                    ; #48670: <==closure== 37426 (pos)
                    (Pd_survivorat_s_p4)

                    ; #56301: origin
                    (Bc_survivorat_s_p4)

                    ; #69031: <==closure== 56301 (pos)
                    (Pc_survivorat_s_p4)

                    ; #21164: <==negation-removal== 42998 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #38224: <==negation-removal== 69031 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #44597: <==negation-removal== 37426 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #46081: <==negation-removal== 56301 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #51795: <==negation-removal== 37468 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #73877: <==negation-removal== 48670 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #74405: <==negation-removal== 25547 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90629: <==negation-removal== 42558 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #25547: <==closure== 42558 (pos)
                    (Pb_survivorat_s_p4)

                    ; #37426: origin
                    (Bd_survivorat_s_p4)

                    ; #37468: origin
                    (Ba_survivorat_s_p4)

                    ; #42558: origin
                    (Bb_survivorat_s_p4)

                    ; #42998: <==closure== 37468 (pos)
                    (Pa_survivorat_s_p4)

                    ; #48670: <==closure== 37426 (pos)
                    (Pd_survivorat_s_p4)

                    ; #56301: origin
                    (Bc_survivorat_s_p4)

                    ; #69031: <==closure== 56301 (pos)
                    (Pc_survivorat_s_p4)

                    ; #21164: <==negation-removal== 42998 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #38224: <==negation-removal== 69031 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #44597: <==negation-removal== 37426 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #46081: <==negation-removal== 56301 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #51795: <==negation-removal== 37468 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #73877: <==negation-removal== 48670 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #74405: <==negation-removal== 25547 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90629: <==negation-removal== 42558 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #15435: <==closure== 54420 (pos)
                    (Pb_survivorat_s_p5)

                    ; #40285: origin
                    (Ba_survivorat_s_p5)

                    ; #41408: <==closure== 40285 (pos)
                    (Pa_survivorat_s_p5)

                    ; #42546: <==closure== 56016 (pos)
                    (Pc_survivorat_s_p5)

                    ; #54420: origin
                    (Bb_survivorat_s_p5)

                    ; #56016: origin
                    (Bc_survivorat_s_p5)

                    ; #79078: <==closure== 82825 (pos)
                    (Pd_survivorat_s_p5)

                    ; #82825: origin
                    (Bd_survivorat_s_p5)

                    ; #13954: <==negation-removal== 82825 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14332: <==negation-removal== 42546 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #27996: <==negation-removal== 15435 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32451: <==negation-removal== 79078 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #36958: <==negation-removal== 40285 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #50178: <==negation-removal== 54420 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66184: <==negation-removal== 41408 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #79190: <==negation-removal== 56016 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #15435: <==closure== 54420 (pos)
                    (Pb_survivorat_s_p5)

                    ; #40285: origin
                    (Ba_survivorat_s_p5)

                    ; #41408: <==closure== 40285 (pos)
                    (Pa_survivorat_s_p5)

                    ; #42546: <==closure== 56016 (pos)
                    (Pc_survivorat_s_p5)

                    ; #54420: origin
                    (Bb_survivorat_s_p5)

                    ; #56016: origin
                    (Bc_survivorat_s_p5)

                    ; #79078: <==closure== 82825 (pos)
                    (Pd_survivorat_s_p5)

                    ; #82825: origin
                    (Bd_survivorat_s_p5)

                    ; #13954: <==negation-removal== 82825 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14332: <==negation-removal== 42546 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #27996: <==negation-removal== 15435 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32451: <==negation-removal== 79078 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #36958: <==negation-removal== 40285 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #50178: <==negation-removal== 54420 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66184: <==negation-removal== 41408 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #79190: <==negation-removal== 56016 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #15435: <==closure== 54420 (pos)
                    (Pb_survivorat_s_p5)

                    ; #40285: origin
                    (Ba_survivorat_s_p5)

                    ; #41408: <==closure== 40285 (pos)
                    (Pa_survivorat_s_p5)

                    ; #42546: <==closure== 56016 (pos)
                    (Pc_survivorat_s_p5)

                    ; #54420: origin
                    (Bb_survivorat_s_p5)

                    ; #56016: origin
                    (Bc_survivorat_s_p5)

                    ; #79078: <==closure== 82825 (pos)
                    (Pd_survivorat_s_p5)

                    ; #82825: origin
                    (Bd_survivorat_s_p5)

                    ; #13954: <==negation-removal== 82825 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14332: <==negation-removal== 42546 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #27996: <==negation-removal== 15435 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32451: <==negation-removal== 79078 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #36958: <==negation-removal== 40285 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #50178: <==negation-removal== 54420 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66184: <==negation-removal== 41408 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #79190: <==negation-removal== 56016 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #15435: <==closure== 54420 (pos)
                    (Pb_survivorat_s_p5)

                    ; #40285: origin
                    (Ba_survivorat_s_p5)

                    ; #41408: <==closure== 40285 (pos)
                    (Pa_survivorat_s_p5)

                    ; #42546: <==closure== 56016 (pos)
                    (Pc_survivorat_s_p5)

                    ; #54420: origin
                    (Bb_survivorat_s_p5)

                    ; #56016: origin
                    (Bc_survivorat_s_p5)

                    ; #79078: <==closure== 82825 (pos)
                    (Pd_survivorat_s_p5)

                    ; #82825: origin
                    (Bd_survivorat_s_p5)

                    ; #13954: <==negation-removal== 82825 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14332: <==negation-removal== 42546 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #27996: <==negation-removal== 15435 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32451: <==negation-removal== 79078 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #36958: <==negation-removal== 40285 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #50178: <==negation-removal== 54420 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66184: <==negation-removal== 41408 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #79190: <==negation-removal== 56016 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #13454: origin
                    (Bd_survivorat_s_p6)

                    ; #30997: origin
                    (Bb_survivorat_s_p6)

                    ; #35363: origin
                    (Ba_survivorat_s_p6)

                    ; #55371: origin
                    (Bc_survivorat_s_p6)

                    ; #57036: <==closure== 35363 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63759: <==closure== 13454 (pos)
                    (Pd_survivorat_s_p6)

                    ; #67110: <==closure== 55371 (pos)
                    (Pc_survivorat_s_p6)

                    ; #68819: <==closure== 30997 (pos)
                    (Pb_survivorat_s_p6)

                    ; #17230: <==negation-removal== 13454 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #23233: <==negation-removal== 68819 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #28085: <==negation-removal== 63759 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #29917: <==negation-removal== 35363 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #41134: <==negation-removal== 57036 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #74557: <==negation-removal== 67110 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91312: <==negation-removal== 55371 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #93713: <==negation-removal== 30997 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #13454: origin
                    (Bd_survivorat_s_p6)

                    ; #30997: origin
                    (Bb_survivorat_s_p6)

                    ; #35363: origin
                    (Ba_survivorat_s_p6)

                    ; #55371: origin
                    (Bc_survivorat_s_p6)

                    ; #57036: <==closure== 35363 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63759: <==closure== 13454 (pos)
                    (Pd_survivorat_s_p6)

                    ; #67110: <==closure== 55371 (pos)
                    (Pc_survivorat_s_p6)

                    ; #68819: <==closure== 30997 (pos)
                    (Pb_survivorat_s_p6)

                    ; #17230: <==negation-removal== 13454 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #23233: <==negation-removal== 68819 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #28085: <==negation-removal== 63759 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #29917: <==negation-removal== 35363 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #41134: <==negation-removal== 57036 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #74557: <==negation-removal== 67110 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91312: <==negation-removal== 55371 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #93713: <==negation-removal== 30997 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #13454: origin
                    (Bd_survivorat_s_p6)

                    ; #30997: origin
                    (Bb_survivorat_s_p6)

                    ; #35363: origin
                    (Ba_survivorat_s_p6)

                    ; #55371: origin
                    (Bc_survivorat_s_p6)

                    ; #57036: <==closure== 35363 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63759: <==closure== 13454 (pos)
                    (Pd_survivorat_s_p6)

                    ; #67110: <==closure== 55371 (pos)
                    (Pc_survivorat_s_p6)

                    ; #68819: <==closure== 30997 (pos)
                    (Pb_survivorat_s_p6)

                    ; #17230: <==negation-removal== 13454 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #23233: <==negation-removal== 68819 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #28085: <==negation-removal== 63759 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #29917: <==negation-removal== 35363 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #41134: <==negation-removal== 57036 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #74557: <==negation-removal== 67110 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91312: <==negation-removal== 55371 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #93713: <==negation-removal== 30997 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #13454: origin
                    (Bd_survivorat_s_p6)

                    ; #30997: origin
                    (Bb_survivorat_s_p6)

                    ; #35363: origin
                    (Ba_survivorat_s_p6)

                    ; #55371: origin
                    (Bc_survivorat_s_p6)

                    ; #57036: <==closure== 35363 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63759: <==closure== 13454 (pos)
                    (Pd_survivorat_s_p6)

                    ; #67110: <==closure== 55371 (pos)
                    (Pc_survivorat_s_p6)

                    ; #68819: <==closure== 30997 (pos)
                    (Pb_survivorat_s_p6)

                    ; #17230: <==negation-removal== 13454 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #23233: <==negation-removal== 68819 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #28085: <==negation-removal== 63759 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #29917: <==negation-removal== 35363 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #41134: <==negation-removal== 57036 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #74557: <==negation-removal== 67110 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #91312: <==negation-removal== 55371 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #93713: <==negation-removal== 30997 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #35797: origin
                    (Bb_survivorat_s_p7)

                    ; #41654: <==closure== 57246 (pos)
                    (Pd_survivorat_s_p7)

                    ; #57246: origin
                    (Bd_survivorat_s_p7)

                    ; #58755: <==closure== 35797 (pos)
                    (Pb_survivorat_s_p7)

                    ; #60172: origin
                    (Ba_survivorat_s_p7)

                    ; #78044: <==closure== 60172 (pos)
                    (Pa_survivorat_s_p7)

                    ; #80546: <==closure== 90567 (pos)
                    (Pc_survivorat_s_p7)

                    ; #90567: origin
                    (Bc_survivorat_s_p7)

                    ; #15620: <==negation-removal== 57246 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #22146: <==negation-removal== 35797 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23875: <==negation-removal== 58755 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #25874: <==negation-removal== 80546 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #45882: <==negation-removal== 41654 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #47142: <==negation-removal== 60172 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #73819: <==negation-removal== 78044 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #78494: <==negation-removal== 90567 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #35797: origin
                    (Bb_survivorat_s_p7)

                    ; #41654: <==closure== 57246 (pos)
                    (Pd_survivorat_s_p7)

                    ; #57246: origin
                    (Bd_survivorat_s_p7)

                    ; #58755: <==closure== 35797 (pos)
                    (Pb_survivorat_s_p7)

                    ; #60172: origin
                    (Ba_survivorat_s_p7)

                    ; #78044: <==closure== 60172 (pos)
                    (Pa_survivorat_s_p7)

                    ; #80546: <==closure== 90567 (pos)
                    (Pc_survivorat_s_p7)

                    ; #90567: origin
                    (Bc_survivorat_s_p7)

                    ; #15620: <==negation-removal== 57246 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #22146: <==negation-removal== 35797 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23875: <==negation-removal== 58755 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #25874: <==negation-removal== 80546 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #45882: <==negation-removal== 41654 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #47142: <==negation-removal== 60172 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #73819: <==negation-removal== 78044 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #78494: <==negation-removal== 90567 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #35797: origin
                    (Bb_survivorat_s_p7)

                    ; #41654: <==closure== 57246 (pos)
                    (Pd_survivorat_s_p7)

                    ; #57246: origin
                    (Bd_survivorat_s_p7)

                    ; #58755: <==closure== 35797 (pos)
                    (Pb_survivorat_s_p7)

                    ; #60172: origin
                    (Ba_survivorat_s_p7)

                    ; #78044: <==closure== 60172 (pos)
                    (Pa_survivorat_s_p7)

                    ; #80546: <==closure== 90567 (pos)
                    (Pc_survivorat_s_p7)

                    ; #90567: origin
                    (Bc_survivorat_s_p7)

                    ; #15620: <==negation-removal== 57246 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #22146: <==negation-removal== 35797 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23875: <==negation-removal== 58755 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #25874: <==negation-removal== 80546 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #45882: <==negation-removal== 41654 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #47142: <==negation-removal== 60172 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #73819: <==negation-removal== 78044 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #78494: <==negation-removal== 90567 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #35797: origin
                    (Bb_survivorat_s_p7)

                    ; #41654: <==closure== 57246 (pos)
                    (Pd_survivorat_s_p7)

                    ; #57246: origin
                    (Bd_survivorat_s_p7)

                    ; #58755: <==closure== 35797 (pos)
                    (Pb_survivorat_s_p7)

                    ; #60172: origin
                    (Ba_survivorat_s_p7)

                    ; #78044: <==closure== 60172 (pos)
                    (Pa_survivorat_s_p7)

                    ; #80546: <==closure== 90567 (pos)
                    (Pc_survivorat_s_p7)

                    ; #90567: origin
                    (Bc_survivorat_s_p7)

                    ; #15620: <==negation-removal== 57246 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #22146: <==negation-removal== 35797 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #23875: <==negation-removal== 58755 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #25874: <==negation-removal== 80546 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #45882: <==negation-removal== 41654 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #47142: <==negation-removal== 60172 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #73819: <==negation-removal== 78044 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #78494: <==negation-removal== 90567 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #11412: origin
                    (Ba_survivorat_s_p8)

                    ; #12366: <==closure== 32027 (pos)
                    (Pc_survivorat_s_p8)

                    ; #13758: <==closure== 11412 (pos)
                    (Pa_survivorat_s_p8)

                    ; #18941: <==closure== 69917 (pos)
                    (Pb_survivorat_s_p8)

                    ; #32027: origin
                    (Bc_survivorat_s_p8)

                    ; #49513: origin
                    (Bd_survivorat_s_p8)

                    ; #69917: origin
                    (Bb_survivorat_s_p8)

                    ; #83595: <==closure== 49513 (pos)
                    (Pd_survivorat_s_p8)

                    ; #14658: <==negation-removal== 12366 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #24437: <==negation-removal== 18941 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #25815: <==negation-removal== 13758 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #32455: <==negation-removal== 32027 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36289: <==negation-removal== 83595 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #37100: <==negation-removal== 11412 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #73835: <==negation-removal== 69917 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #79164: <==negation-removal== 49513 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #11412: origin
                    (Ba_survivorat_s_p8)

                    ; #12366: <==closure== 32027 (pos)
                    (Pc_survivorat_s_p8)

                    ; #13758: <==closure== 11412 (pos)
                    (Pa_survivorat_s_p8)

                    ; #18941: <==closure== 69917 (pos)
                    (Pb_survivorat_s_p8)

                    ; #32027: origin
                    (Bc_survivorat_s_p8)

                    ; #49513: origin
                    (Bd_survivorat_s_p8)

                    ; #69917: origin
                    (Bb_survivorat_s_p8)

                    ; #83595: <==closure== 49513 (pos)
                    (Pd_survivorat_s_p8)

                    ; #14658: <==negation-removal== 12366 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #24437: <==negation-removal== 18941 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #25815: <==negation-removal== 13758 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #32455: <==negation-removal== 32027 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36289: <==negation-removal== 83595 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #37100: <==negation-removal== 11412 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #73835: <==negation-removal== 69917 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #79164: <==negation-removal== 49513 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #11412: origin
                    (Ba_survivorat_s_p8)

                    ; #12366: <==closure== 32027 (pos)
                    (Pc_survivorat_s_p8)

                    ; #13758: <==closure== 11412 (pos)
                    (Pa_survivorat_s_p8)

                    ; #18941: <==closure== 69917 (pos)
                    (Pb_survivorat_s_p8)

                    ; #32027: origin
                    (Bc_survivorat_s_p8)

                    ; #49513: origin
                    (Bd_survivorat_s_p8)

                    ; #69917: origin
                    (Bb_survivorat_s_p8)

                    ; #83595: <==closure== 49513 (pos)
                    (Pd_survivorat_s_p8)

                    ; #14658: <==negation-removal== 12366 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #24437: <==negation-removal== 18941 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #25815: <==negation-removal== 13758 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #32455: <==negation-removal== 32027 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36289: <==negation-removal== 83595 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #37100: <==negation-removal== 11412 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #73835: <==negation-removal== 69917 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #79164: <==negation-removal== 49513 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (at_d_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #11412: origin
                    (Ba_survivorat_s_p8)

                    ; #12366: <==closure== 32027 (pos)
                    (Pc_survivorat_s_p8)

                    ; #13758: <==closure== 11412 (pos)
                    (Pa_survivorat_s_p8)

                    ; #18941: <==closure== 69917 (pos)
                    (Pb_survivorat_s_p8)

                    ; #32027: origin
                    (Bc_survivorat_s_p8)

                    ; #49513: origin
                    (Bd_survivorat_s_p8)

                    ; #69917: origin
                    (Bb_survivorat_s_p8)

                    ; #83595: <==closure== 49513 (pos)
                    (Pd_survivorat_s_p8)

                    ; #14658: <==negation-removal== 12366 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #24437: <==negation-removal== 18941 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #25815: <==negation-removal== 13758 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #32455: <==negation-removal== 32027 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36289: <==negation-removal== 83595 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #37100: <==negation-removal== 11412 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #73835: <==negation-removal== 69917 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #79164: <==negation-removal== 49513 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #23243: <==closure== 91392 (pos)
                    (Pb_survivorat_s_p9)

                    ; #34390: <==closure== 48979 (pos)
                    (Pa_survivorat_s_p9)

                    ; #34650: <==closure== 84662 (pos)
                    (Pd_survivorat_s_p9)

                    ; #48979: origin
                    (Ba_survivorat_s_p9)

                    ; #55546: <==closure== 60236 (pos)
                    (Pc_survivorat_s_p9)

                    ; #60236: origin
                    (Bc_survivorat_s_p9)

                    ; #84662: origin
                    (Bd_survivorat_s_p9)

                    ; #91392: origin
                    (Bb_survivorat_s_p9)

                    ; #15619: <==negation-removal== 60236 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #29571: <==negation-removal== 48979 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #32791: <==negation-removal== 34650 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #50619: <==negation-removal== 55546 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56151: <==negation-removal== 23243 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62062: <==negation-removal== 84662 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #71562: <==negation-removal== 34390 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #80792: <==negation-removal== 91392 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #23243: <==closure== 91392 (pos)
                    (Pb_survivorat_s_p9)

                    ; #34390: <==closure== 48979 (pos)
                    (Pa_survivorat_s_p9)

                    ; #34650: <==closure== 84662 (pos)
                    (Pd_survivorat_s_p9)

                    ; #48979: origin
                    (Ba_survivorat_s_p9)

                    ; #55546: <==closure== 60236 (pos)
                    (Pc_survivorat_s_p9)

                    ; #60236: origin
                    (Bc_survivorat_s_p9)

                    ; #84662: origin
                    (Bd_survivorat_s_p9)

                    ; #91392: origin
                    (Bb_survivorat_s_p9)

                    ; #15619: <==negation-removal== 60236 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #29571: <==negation-removal== 48979 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #32791: <==negation-removal== 34650 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #50619: <==negation-removal== 55546 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56151: <==negation-removal== 23243 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62062: <==negation-removal== 84662 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #71562: <==negation-removal== 34390 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #80792: <==negation-removal== 91392 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #23243: <==closure== 91392 (pos)
                    (Pb_survivorat_s_p9)

                    ; #34390: <==closure== 48979 (pos)
                    (Pa_survivorat_s_p9)

                    ; #34650: <==closure== 84662 (pos)
                    (Pd_survivorat_s_p9)

                    ; #48979: origin
                    (Ba_survivorat_s_p9)

                    ; #55546: <==closure== 60236 (pos)
                    (Pc_survivorat_s_p9)

                    ; #60236: origin
                    (Bc_survivorat_s_p9)

                    ; #84662: origin
                    (Bd_survivorat_s_p9)

                    ; #91392: origin
                    (Bb_survivorat_s_p9)

                    ; #15619: <==negation-removal== 60236 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #29571: <==negation-removal== 48979 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #32791: <==negation-removal== 34650 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #50619: <==negation-removal== 55546 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56151: <==negation-removal== 23243 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62062: <==negation-removal== 84662 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #71562: <==negation-removal== 34390 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #80792: <==negation-removal== 91392 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #23243: <==closure== 91392 (pos)
                    (Pb_survivorat_s_p9)

                    ; #34390: <==closure== 48979 (pos)
                    (Pa_survivorat_s_p9)

                    ; #34650: <==closure== 84662 (pos)
                    (Pd_survivorat_s_p9)

                    ; #48979: origin
                    (Ba_survivorat_s_p9)

                    ; #55546: <==closure== 60236 (pos)
                    (Pc_survivorat_s_p9)

                    ; #60236: origin
                    (Bc_survivorat_s_p9)

                    ; #84662: origin
                    (Bd_survivorat_s_p9)

                    ; #91392: origin
                    (Bb_survivorat_s_p9)

                    ; #15619: <==negation-removal== 60236 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #29571: <==negation-removal== 48979 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #32791: <==negation-removal== 34650 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #50619: <==negation-removal== 55546 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #56151: <==negation-removal== 23243 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #62062: <==negation-removal== 84662 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #71562: <==negation-removal== 34390 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #80792: <==negation-removal== 91392 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #78190: origin
                    (at_a_p1)

                    ; #82367: origin
                    (not_at_a_p1)

                    ; #78190: <==negation-removal== 82367 (pos)
                    (not (at_a_p1))

                    ; #82367: <==negation-removal== 78190 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #28058: origin
                    (at_a_p2)

                    ; #82367: origin
                    (not_at_a_p1)

                    ; #23719: <==negation-removal== 28058 (pos)
                    (not (not_at_a_p2))

                    ; #78190: <==negation-removal== 82367 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #22525: origin
                    (at_a_p3)

                    ; #82367: origin
                    (not_at_a_p1)

                    ; #65418: <==negation-removal== 22525 (pos)
                    (not (not_at_a_p3))

                    ; #78190: <==negation-removal== 82367 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #38019: origin
                    (at_a_p4)

                    ; #82367: origin
                    (not_at_a_p1)

                    ; #50827: <==negation-removal== 38019 (pos)
                    (not (not_at_a_p4))

                    ; #78190: <==negation-removal== 82367 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #32092: origin
                    (at_a_p5)

                    ; #82367: origin
                    (not_at_a_p1)

                    ; #34435: <==negation-removal== 32092 (pos)
                    (not (not_at_a_p5))

                    ; #78190: <==negation-removal== 82367 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #37154: origin
                    (at_a_p6)

                    ; #82367: origin
                    (not_at_a_p1)

                    ; #78190: <==negation-removal== 82367 (pos)
                    (not (at_a_p1))

                    ; #89189: <==negation-removal== 37154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #53530: origin
                    (at_a_p7)

                    ; #82367: origin
                    (not_at_a_p1)

                    ; #42432: <==negation-removal== 53530 (pos)
                    (not (not_at_a_p7))

                    ; #78190: <==negation-removal== 82367 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #36022: origin
                    (at_a_p8)

                    ; #82367: origin
                    (not_at_a_p1)

                    ; #25899: <==negation-removal== 36022 (pos)
                    (not (not_at_a_p8))

                    ; #78190: <==negation-removal== 82367 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #11051: origin
                    (at_a_p9)

                    ; #82367: origin
                    (not_at_a_p1)

                    ; #10928: <==negation-removal== 11051 (pos)
                    (not (not_at_a_p9))

                    ; #78190: <==negation-removal== 82367 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #23719: origin
                    (not_at_a_p2)

                    ; #78190: origin
                    (at_a_p1)

                    ; #28058: <==negation-removal== 23719 (pos)
                    (not (at_a_p2))

                    ; #82367: <==negation-removal== 78190 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #23719: origin
                    (not_at_a_p2)

                    ; #28058: origin
                    (at_a_p2)

                    ; #23719: <==negation-removal== 28058 (pos)
                    (not (not_at_a_p2))

                    ; #28058: <==negation-removal== 23719 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #22525: origin
                    (at_a_p3)

                    ; #23719: origin
                    (not_at_a_p2)

                    ; #28058: <==negation-removal== 23719 (pos)
                    (not (at_a_p2))

                    ; #65418: <==negation-removal== 22525 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #23719: origin
                    (not_at_a_p2)

                    ; #38019: origin
                    (at_a_p4)

                    ; #28058: <==negation-removal== 23719 (pos)
                    (not (at_a_p2))

                    ; #50827: <==negation-removal== 38019 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #23719: origin
                    (not_at_a_p2)

                    ; #32092: origin
                    (at_a_p5)

                    ; #28058: <==negation-removal== 23719 (pos)
                    (not (at_a_p2))

                    ; #34435: <==negation-removal== 32092 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #23719: origin
                    (not_at_a_p2)

                    ; #37154: origin
                    (at_a_p6)

                    ; #28058: <==negation-removal== 23719 (pos)
                    (not (at_a_p2))

                    ; #89189: <==negation-removal== 37154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #23719: origin
                    (not_at_a_p2)

                    ; #53530: origin
                    (at_a_p7)

                    ; #28058: <==negation-removal== 23719 (pos)
                    (not (at_a_p2))

                    ; #42432: <==negation-removal== 53530 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #23719: origin
                    (not_at_a_p2)

                    ; #36022: origin
                    (at_a_p8)

                    ; #25899: <==negation-removal== 36022 (pos)
                    (not (not_at_a_p8))

                    ; #28058: <==negation-removal== 23719 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #11051: origin
                    (at_a_p9)

                    ; #23719: origin
                    (not_at_a_p2)

                    ; #10928: <==negation-removal== 11051 (pos)
                    (not (not_at_a_p9))

                    ; #28058: <==negation-removal== 23719 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #65418: origin
                    (not_at_a_p3)

                    ; #78190: origin
                    (at_a_p1)

                    ; #22525: <==negation-removal== 65418 (pos)
                    (not (at_a_p3))

                    ; #82367: <==negation-removal== 78190 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #28058: origin
                    (at_a_p2)

                    ; #65418: origin
                    (not_at_a_p3)

                    ; #22525: <==negation-removal== 65418 (pos)
                    (not (at_a_p3))

                    ; #23719: <==negation-removal== 28058 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #22525: origin
                    (at_a_p3)

                    ; #65418: origin
                    (not_at_a_p3)

                    ; #22525: <==negation-removal== 65418 (pos)
                    (not (at_a_p3))

                    ; #65418: <==negation-removal== 22525 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #38019: origin
                    (at_a_p4)

                    ; #65418: origin
                    (not_at_a_p3)

                    ; #22525: <==negation-removal== 65418 (pos)
                    (not (at_a_p3))

                    ; #50827: <==negation-removal== 38019 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #32092: origin
                    (at_a_p5)

                    ; #65418: origin
                    (not_at_a_p3)

                    ; #22525: <==negation-removal== 65418 (pos)
                    (not (at_a_p3))

                    ; #34435: <==negation-removal== 32092 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #37154: origin
                    (at_a_p6)

                    ; #65418: origin
                    (not_at_a_p3)

                    ; #22525: <==negation-removal== 65418 (pos)
                    (not (at_a_p3))

                    ; #89189: <==negation-removal== 37154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #53530: origin
                    (at_a_p7)

                    ; #65418: origin
                    (not_at_a_p3)

                    ; #22525: <==negation-removal== 65418 (pos)
                    (not (at_a_p3))

                    ; #42432: <==negation-removal== 53530 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #36022: origin
                    (at_a_p8)

                    ; #65418: origin
                    (not_at_a_p3)

                    ; #22525: <==negation-removal== 65418 (pos)
                    (not (at_a_p3))

                    ; #25899: <==negation-removal== 36022 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #11051: origin
                    (at_a_p9)

                    ; #65418: origin
                    (not_at_a_p3)

                    ; #10928: <==negation-removal== 11051 (pos)
                    (not (not_at_a_p9))

                    ; #22525: <==negation-removal== 65418 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #50827: origin
                    (not_at_a_p4)

                    ; #78190: origin
                    (at_a_p1)

                    ; #38019: <==negation-removal== 50827 (pos)
                    (not (at_a_p4))

                    ; #82367: <==negation-removal== 78190 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #28058: origin
                    (at_a_p2)

                    ; #50827: origin
                    (not_at_a_p4)

                    ; #23719: <==negation-removal== 28058 (pos)
                    (not (not_at_a_p2))

                    ; #38019: <==negation-removal== 50827 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #22525: origin
                    (at_a_p3)

                    ; #50827: origin
                    (not_at_a_p4)

                    ; #38019: <==negation-removal== 50827 (pos)
                    (not (at_a_p4))

                    ; #65418: <==negation-removal== 22525 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #38019: origin
                    (at_a_p4)

                    ; #50827: origin
                    (not_at_a_p4)

                    ; #38019: <==negation-removal== 50827 (pos)
                    (not (at_a_p4))

                    ; #50827: <==negation-removal== 38019 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #32092: origin
                    (at_a_p5)

                    ; #50827: origin
                    (not_at_a_p4)

                    ; #34435: <==negation-removal== 32092 (pos)
                    (not (not_at_a_p5))

                    ; #38019: <==negation-removal== 50827 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #37154: origin
                    (at_a_p6)

                    ; #50827: origin
                    (not_at_a_p4)

                    ; #38019: <==negation-removal== 50827 (pos)
                    (not (at_a_p4))

                    ; #89189: <==negation-removal== 37154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #50827: origin
                    (not_at_a_p4)

                    ; #53530: origin
                    (at_a_p7)

                    ; #38019: <==negation-removal== 50827 (pos)
                    (not (at_a_p4))

                    ; #42432: <==negation-removal== 53530 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #36022: origin
                    (at_a_p8)

                    ; #50827: origin
                    (not_at_a_p4)

                    ; #25899: <==negation-removal== 36022 (pos)
                    (not (not_at_a_p8))

                    ; #38019: <==negation-removal== 50827 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #11051: origin
                    (at_a_p9)

                    ; #50827: origin
                    (not_at_a_p4)

                    ; #10928: <==negation-removal== 11051 (pos)
                    (not (not_at_a_p9))

                    ; #38019: <==negation-removal== 50827 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #34435: origin
                    (not_at_a_p5)

                    ; #78190: origin
                    (at_a_p1)

                    ; #32092: <==negation-removal== 34435 (pos)
                    (not (at_a_p5))

                    ; #82367: <==negation-removal== 78190 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #28058: origin
                    (at_a_p2)

                    ; #34435: origin
                    (not_at_a_p5)

                    ; #23719: <==negation-removal== 28058 (pos)
                    (not (not_at_a_p2))

                    ; #32092: <==negation-removal== 34435 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #22525: origin
                    (at_a_p3)

                    ; #34435: origin
                    (not_at_a_p5)

                    ; #32092: <==negation-removal== 34435 (pos)
                    (not (at_a_p5))

                    ; #65418: <==negation-removal== 22525 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #34435: origin
                    (not_at_a_p5)

                    ; #38019: origin
                    (at_a_p4)

                    ; #32092: <==negation-removal== 34435 (pos)
                    (not (at_a_p5))

                    ; #50827: <==negation-removal== 38019 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #32092: origin
                    (at_a_p5)

                    ; #34435: origin
                    (not_at_a_p5)

                    ; #32092: <==negation-removal== 34435 (pos)
                    (not (at_a_p5))

                    ; #34435: <==negation-removal== 32092 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #34435: origin
                    (not_at_a_p5)

                    ; #37154: origin
                    (at_a_p6)

                    ; #32092: <==negation-removal== 34435 (pos)
                    (not (at_a_p5))

                    ; #89189: <==negation-removal== 37154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #34435: origin
                    (not_at_a_p5)

                    ; #53530: origin
                    (at_a_p7)

                    ; #32092: <==negation-removal== 34435 (pos)
                    (not (at_a_p5))

                    ; #42432: <==negation-removal== 53530 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #34435: origin
                    (not_at_a_p5)

                    ; #36022: origin
                    (at_a_p8)

                    ; #25899: <==negation-removal== 36022 (pos)
                    (not (not_at_a_p8))

                    ; #32092: <==negation-removal== 34435 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #11051: origin
                    (at_a_p9)

                    ; #34435: origin
                    (not_at_a_p5)

                    ; #10928: <==negation-removal== 11051 (pos)
                    (not (not_at_a_p9))

                    ; #32092: <==negation-removal== 34435 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #78190: origin
                    (at_a_p1)

                    ; #89189: origin
                    (not_at_a_p6)

                    ; #37154: <==negation-removal== 89189 (pos)
                    (not (at_a_p6))

                    ; #82367: <==negation-removal== 78190 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #28058: origin
                    (at_a_p2)

                    ; #89189: origin
                    (not_at_a_p6)

                    ; #23719: <==negation-removal== 28058 (pos)
                    (not (not_at_a_p2))

                    ; #37154: <==negation-removal== 89189 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #22525: origin
                    (at_a_p3)

                    ; #89189: origin
                    (not_at_a_p6)

                    ; #37154: <==negation-removal== 89189 (pos)
                    (not (at_a_p6))

                    ; #65418: <==negation-removal== 22525 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #38019: origin
                    (at_a_p4)

                    ; #89189: origin
                    (not_at_a_p6)

                    ; #37154: <==negation-removal== 89189 (pos)
                    (not (at_a_p6))

                    ; #50827: <==negation-removal== 38019 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #32092: origin
                    (at_a_p5)

                    ; #89189: origin
                    (not_at_a_p6)

                    ; #34435: <==negation-removal== 32092 (pos)
                    (not (not_at_a_p5))

                    ; #37154: <==negation-removal== 89189 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #37154: origin
                    (at_a_p6)

                    ; #89189: origin
                    (not_at_a_p6)

                    ; #37154: <==negation-removal== 89189 (pos)
                    (not (at_a_p6))

                    ; #89189: <==negation-removal== 37154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #53530: origin
                    (at_a_p7)

                    ; #89189: origin
                    (not_at_a_p6)

                    ; #37154: <==negation-removal== 89189 (pos)
                    (not (at_a_p6))

                    ; #42432: <==negation-removal== 53530 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #36022: origin
                    (at_a_p8)

                    ; #89189: origin
                    (not_at_a_p6)

                    ; #25899: <==negation-removal== 36022 (pos)
                    (not (not_at_a_p8))

                    ; #37154: <==negation-removal== 89189 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #11051: origin
                    (at_a_p9)

                    ; #89189: origin
                    (not_at_a_p6)

                    ; #10928: <==negation-removal== 11051 (pos)
                    (not (not_at_a_p9))

                    ; #37154: <==negation-removal== 89189 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #42432: origin
                    (not_at_a_p7)

                    ; #78190: origin
                    (at_a_p1)

                    ; #53530: <==negation-removal== 42432 (pos)
                    (not (at_a_p7))

                    ; #82367: <==negation-removal== 78190 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #28058: origin
                    (at_a_p2)

                    ; #42432: origin
                    (not_at_a_p7)

                    ; #23719: <==negation-removal== 28058 (pos)
                    (not (not_at_a_p2))

                    ; #53530: <==negation-removal== 42432 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #22525: origin
                    (at_a_p3)

                    ; #42432: origin
                    (not_at_a_p7)

                    ; #53530: <==negation-removal== 42432 (pos)
                    (not (at_a_p7))

                    ; #65418: <==negation-removal== 22525 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #38019: origin
                    (at_a_p4)

                    ; #42432: origin
                    (not_at_a_p7)

                    ; #50827: <==negation-removal== 38019 (pos)
                    (not (not_at_a_p4))

                    ; #53530: <==negation-removal== 42432 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #32092: origin
                    (at_a_p5)

                    ; #42432: origin
                    (not_at_a_p7)

                    ; #34435: <==negation-removal== 32092 (pos)
                    (not (not_at_a_p5))

                    ; #53530: <==negation-removal== 42432 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #37154: origin
                    (at_a_p6)

                    ; #42432: origin
                    (not_at_a_p7)

                    ; #53530: <==negation-removal== 42432 (pos)
                    (not (at_a_p7))

                    ; #89189: <==negation-removal== 37154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #42432: origin
                    (not_at_a_p7)

                    ; #53530: origin
                    (at_a_p7)

                    ; #42432: <==negation-removal== 53530 (pos)
                    (not (not_at_a_p7))

                    ; #53530: <==negation-removal== 42432 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #36022: origin
                    (at_a_p8)

                    ; #42432: origin
                    (not_at_a_p7)

                    ; #25899: <==negation-removal== 36022 (pos)
                    (not (not_at_a_p8))

                    ; #53530: <==negation-removal== 42432 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #11051: origin
                    (at_a_p9)

                    ; #42432: origin
                    (not_at_a_p7)

                    ; #10928: <==negation-removal== 11051 (pos)
                    (not (not_at_a_p9))

                    ; #53530: <==negation-removal== 42432 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #25899: origin
                    (not_at_a_p8)

                    ; #78190: origin
                    (at_a_p1)

                    ; #36022: <==negation-removal== 25899 (pos)
                    (not (at_a_p8))

                    ; #82367: <==negation-removal== 78190 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #25899: origin
                    (not_at_a_p8)

                    ; #28058: origin
                    (at_a_p2)

                    ; #23719: <==negation-removal== 28058 (pos)
                    (not (not_at_a_p2))

                    ; #36022: <==negation-removal== 25899 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #22525: origin
                    (at_a_p3)

                    ; #25899: origin
                    (not_at_a_p8)

                    ; #36022: <==negation-removal== 25899 (pos)
                    (not (at_a_p8))

                    ; #65418: <==negation-removal== 22525 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #25899: origin
                    (not_at_a_p8)

                    ; #38019: origin
                    (at_a_p4)

                    ; #36022: <==negation-removal== 25899 (pos)
                    (not (at_a_p8))

                    ; #50827: <==negation-removal== 38019 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #25899: origin
                    (not_at_a_p8)

                    ; #32092: origin
                    (at_a_p5)

                    ; #34435: <==negation-removal== 32092 (pos)
                    (not (not_at_a_p5))

                    ; #36022: <==negation-removal== 25899 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #25899: origin
                    (not_at_a_p8)

                    ; #37154: origin
                    (at_a_p6)

                    ; #36022: <==negation-removal== 25899 (pos)
                    (not (at_a_p8))

                    ; #89189: <==negation-removal== 37154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #25899: origin
                    (not_at_a_p8)

                    ; #53530: origin
                    (at_a_p7)

                    ; #36022: <==negation-removal== 25899 (pos)
                    (not (at_a_p8))

                    ; #42432: <==negation-removal== 53530 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #25899: origin
                    (not_at_a_p8)

                    ; #36022: origin
                    (at_a_p8)

                    ; #25899: <==negation-removal== 36022 (pos)
                    (not (not_at_a_p8))

                    ; #36022: <==negation-removal== 25899 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #11051: origin
                    (at_a_p9)

                    ; #25899: origin
                    (not_at_a_p8)

                    ; #10928: <==negation-removal== 11051 (pos)
                    (not (not_at_a_p9))

                    ; #36022: <==negation-removal== 25899 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #10928: origin
                    (not_at_a_p9)

                    ; #78190: origin
                    (at_a_p1)

                    ; #11051: <==negation-removal== 10928 (pos)
                    (not (at_a_p9))

                    ; #82367: <==negation-removal== 78190 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #10928: origin
                    (not_at_a_p9)

                    ; #28058: origin
                    (at_a_p2)

                    ; #11051: <==negation-removal== 10928 (pos)
                    (not (at_a_p9))

                    ; #23719: <==negation-removal== 28058 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #10928: origin
                    (not_at_a_p9)

                    ; #22525: origin
                    (at_a_p3)

                    ; #11051: <==negation-removal== 10928 (pos)
                    (not (at_a_p9))

                    ; #65418: <==negation-removal== 22525 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #10928: origin
                    (not_at_a_p9)

                    ; #38019: origin
                    (at_a_p4)

                    ; #11051: <==negation-removal== 10928 (pos)
                    (not (at_a_p9))

                    ; #50827: <==negation-removal== 38019 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #10928: origin
                    (not_at_a_p9)

                    ; #32092: origin
                    (at_a_p5)

                    ; #11051: <==negation-removal== 10928 (pos)
                    (not (at_a_p9))

                    ; #34435: <==negation-removal== 32092 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #10928: origin
                    (not_at_a_p9)

                    ; #37154: origin
                    (at_a_p6)

                    ; #11051: <==negation-removal== 10928 (pos)
                    (not (at_a_p9))

                    ; #89189: <==negation-removal== 37154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #10928: origin
                    (not_at_a_p9)

                    ; #53530: origin
                    (at_a_p7)

                    ; #11051: <==negation-removal== 10928 (pos)
                    (not (at_a_p9))

                    ; #42432: <==negation-removal== 53530 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #10928: origin
                    (not_at_a_p9)

                    ; #36022: origin
                    (at_a_p8)

                    ; #11051: <==negation-removal== 10928 (pos)
                    (not (at_a_p9))

                    ; #25899: <==negation-removal== 36022 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #10928: origin
                    (not_at_a_p9)

                    ; #11051: origin
                    (at_a_p9)

                    ; #10928: <==negation-removal== 11051 (pos)
                    (not (not_at_a_p9))

                    ; #11051: <==negation-removal== 10928 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #18419: origin
                    (at_b_p1)

                    ; #49932: origin
                    (not_at_b_p1)

                    ; #18419: <==negation-removal== 49932 (pos)
                    (not (at_b_p1))

                    ; #49932: <==negation-removal== 18419 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #23642: origin
                    (at_b_p2)

                    ; #49932: origin
                    (not_at_b_p1)

                    ; #18419: <==negation-removal== 49932 (pos)
                    (not (at_b_p1))

                    ; #81112: <==negation-removal== 23642 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #49932: origin
                    (not_at_b_p1)

                    ; #62510: origin
                    (at_b_p3)

                    ; #17096: <==negation-removal== 62510 (pos)
                    (not (not_at_b_p3))

                    ; #18419: <==negation-removal== 49932 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #49932: origin
                    (not_at_b_p1)

                    ; #71862: origin
                    (at_b_p4)

                    ; #18419: <==negation-removal== 49932 (pos)
                    (not (at_b_p1))

                    ; #69617: <==negation-removal== 71862 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #49932: origin
                    (not_at_b_p1)

                    ; #66334: origin
                    (at_b_p5)

                    ; #18419: <==negation-removal== 49932 (pos)
                    (not (at_b_p1))

                    ; #41231: <==negation-removal== 66334 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #49932: origin
                    (not_at_b_p1)

                    ; #80274: origin
                    (at_b_p6)

                    ; #18419: <==negation-removal== 49932 (pos)
                    (not (at_b_p1))

                    ; #35699: <==negation-removal== 80274 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #17399: origin
                    (at_b_p7)

                    ; #49932: origin
                    (not_at_b_p1)

                    ; #18419: <==negation-removal== 49932 (pos)
                    (not (at_b_p1))

                    ; #70049: <==negation-removal== 17399 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #11608: origin
                    (at_b_p8)

                    ; #49932: origin
                    (not_at_b_p1)

                    ; #18419: <==negation-removal== 49932 (pos)
                    (not (at_b_p1))

                    ; #18902: <==negation-removal== 11608 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #12622: origin
                    (at_b_p9)

                    ; #49932: origin
                    (not_at_b_p1)

                    ; #18419: <==negation-removal== 49932 (pos)
                    (not (at_b_p1))

                    ; #33023: <==negation-removal== 12622 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #18419: origin
                    (at_b_p1)

                    ; #81112: origin
                    (not_at_b_p2)

                    ; #23642: <==negation-removal== 81112 (pos)
                    (not (at_b_p2))

                    ; #49932: <==negation-removal== 18419 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #23642: origin
                    (at_b_p2)

                    ; #81112: origin
                    (not_at_b_p2)

                    ; #23642: <==negation-removal== 81112 (pos)
                    (not (at_b_p2))

                    ; #81112: <==negation-removal== 23642 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #62510: origin
                    (at_b_p3)

                    ; #81112: origin
                    (not_at_b_p2)

                    ; #17096: <==negation-removal== 62510 (pos)
                    (not (not_at_b_p3))

                    ; #23642: <==negation-removal== 81112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #71862: origin
                    (at_b_p4)

                    ; #81112: origin
                    (not_at_b_p2)

                    ; #23642: <==negation-removal== 81112 (pos)
                    (not (at_b_p2))

                    ; #69617: <==negation-removal== 71862 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #66334: origin
                    (at_b_p5)

                    ; #81112: origin
                    (not_at_b_p2)

                    ; #23642: <==negation-removal== 81112 (pos)
                    (not (at_b_p2))

                    ; #41231: <==negation-removal== 66334 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #80274: origin
                    (at_b_p6)

                    ; #81112: origin
                    (not_at_b_p2)

                    ; #23642: <==negation-removal== 81112 (pos)
                    (not (at_b_p2))

                    ; #35699: <==negation-removal== 80274 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #17399: origin
                    (at_b_p7)

                    ; #81112: origin
                    (not_at_b_p2)

                    ; #23642: <==negation-removal== 81112 (pos)
                    (not (at_b_p2))

                    ; #70049: <==negation-removal== 17399 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #11608: origin
                    (at_b_p8)

                    ; #81112: origin
                    (not_at_b_p2)

                    ; #18902: <==negation-removal== 11608 (pos)
                    (not (not_at_b_p8))

                    ; #23642: <==negation-removal== 81112 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #12622: origin
                    (at_b_p9)

                    ; #81112: origin
                    (not_at_b_p2)

                    ; #23642: <==negation-removal== 81112 (pos)
                    (not (at_b_p2))

                    ; #33023: <==negation-removal== 12622 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #17096: origin
                    (not_at_b_p3)

                    ; #18419: origin
                    (at_b_p1)

                    ; #49932: <==negation-removal== 18419 (pos)
                    (not (not_at_b_p1))

                    ; #62510: <==negation-removal== 17096 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #17096: origin
                    (not_at_b_p3)

                    ; #23642: origin
                    (at_b_p2)

                    ; #62510: <==negation-removal== 17096 (pos)
                    (not (at_b_p3))

                    ; #81112: <==negation-removal== 23642 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #17096: origin
                    (not_at_b_p3)

                    ; #62510: origin
                    (at_b_p3)

                    ; #17096: <==negation-removal== 62510 (pos)
                    (not (not_at_b_p3))

                    ; #62510: <==negation-removal== 17096 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #17096: origin
                    (not_at_b_p3)

                    ; #71862: origin
                    (at_b_p4)

                    ; #62510: <==negation-removal== 17096 (pos)
                    (not (at_b_p3))

                    ; #69617: <==negation-removal== 71862 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #17096: origin
                    (not_at_b_p3)

                    ; #66334: origin
                    (at_b_p5)

                    ; #41231: <==negation-removal== 66334 (pos)
                    (not (not_at_b_p5))

                    ; #62510: <==negation-removal== 17096 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #17096: origin
                    (not_at_b_p3)

                    ; #80274: origin
                    (at_b_p6)

                    ; #35699: <==negation-removal== 80274 (pos)
                    (not (not_at_b_p6))

                    ; #62510: <==negation-removal== 17096 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #17096: origin
                    (not_at_b_p3)

                    ; #17399: origin
                    (at_b_p7)

                    ; #62510: <==negation-removal== 17096 (pos)
                    (not (at_b_p3))

                    ; #70049: <==negation-removal== 17399 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #11608: origin
                    (at_b_p8)

                    ; #17096: origin
                    (not_at_b_p3)

                    ; #18902: <==negation-removal== 11608 (pos)
                    (not (not_at_b_p8))

                    ; #62510: <==negation-removal== 17096 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #12622: origin
                    (at_b_p9)

                    ; #17096: origin
                    (not_at_b_p3)

                    ; #33023: <==negation-removal== 12622 (pos)
                    (not (not_at_b_p9))

                    ; #62510: <==negation-removal== 17096 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #18419: origin
                    (at_b_p1)

                    ; #69617: origin
                    (not_at_b_p4)

                    ; #49932: <==negation-removal== 18419 (pos)
                    (not (not_at_b_p1))

                    ; #71862: <==negation-removal== 69617 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #23642: origin
                    (at_b_p2)

                    ; #69617: origin
                    (not_at_b_p4)

                    ; #71862: <==negation-removal== 69617 (pos)
                    (not (at_b_p4))

                    ; #81112: <==negation-removal== 23642 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #62510: origin
                    (at_b_p3)

                    ; #69617: origin
                    (not_at_b_p4)

                    ; #17096: <==negation-removal== 62510 (pos)
                    (not (not_at_b_p3))

                    ; #71862: <==negation-removal== 69617 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #69617: origin
                    (not_at_b_p4)

                    ; #71862: origin
                    (at_b_p4)

                    ; #69617: <==negation-removal== 71862 (pos)
                    (not (not_at_b_p4))

                    ; #71862: <==negation-removal== 69617 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #66334: origin
                    (at_b_p5)

                    ; #69617: origin
                    (not_at_b_p4)

                    ; #41231: <==negation-removal== 66334 (pos)
                    (not (not_at_b_p5))

                    ; #71862: <==negation-removal== 69617 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #69617: origin
                    (not_at_b_p4)

                    ; #80274: origin
                    (at_b_p6)

                    ; #35699: <==negation-removal== 80274 (pos)
                    (not (not_at_b_p6))

                    ; #71862: <==negation-removal== 69617 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #17399: origin
                    (at_b_p7)

                    ; #69617: origin
                    (not_at_b_p4)

                    ; #70049: <==negation-removal== 17399 (pos)
                    (not (not_at_b_p7))

                    ; #71862: <==negation-removal== 69617 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #11608: origin
                    (at_b_p8)

                    ; #69617: origin
                    (not_at_b_p4)

                    ; #18902: <==negation-removal== 11608 (pos)
                    (not (not_at_b_p8))

                    ; #71862: <==negation-removal== 69617 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #12622: origin
                    (at_b_p9)

                    ; #69617: origin
                    (not_at_b_p4)

                    ; #33023: <==negation-removal== 12622 (pos)
                    (not (not_at_b_p9))

                    ; #71862: <==negation-removal== 69617 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #18419: origin
                    (at_b_p1)

                    ; #41231: origin
                    (not_at_b_p5)

                    ; #49932: <==negation-removal== 18419 (pos)
                    (not (not_at_b_p1))

                    ; #66334: <==negation-removal== 41231 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #23642: origin
                    (at_b_p2)

                    ; #41231: origin
                    (not_at_b_p5)

                    ; #66334: <==negation-removal== 41231 (pos)
                    (not (at_b_p5))

                    ; #81112: <==negation-removal== 23642 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #41231: origin
                    (not_at_b_p5)

                    ; #62510: origin
                    (at_b_p3)

                    ; #17096: <==negation-removal== 62510 (pos)
                    (not (not_at_b_p3))

                    ; #66334: <==negation-removal== 41231 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #41231: origin
                    (not_at_b_p5)

                    ; #71862: origin
                    (at_b_p4)

                    ; #66334: <==negation-removal== 41231 (pos)
                    (not (at_b_p5))

                    ; #69617: <==negation-removal== 71862 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #41231: origin
                    (not_at_b_p5)

                    ; #66334: origin
                    (at_b_p5)

                    ; #41231: <==negation-removal== 66334 (pos)
                    (not (not_at_b_p5))

                    ; #66334: <==negation-removal== 41231 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #41231: origin
                    (not_at_b_p5)

                    ; #80274: origin
                    (at_b_p6)

                    ; #35699: <==negation-removal== 80274 (pos)
                    (not (not_at_b_p6))

                    ; #66334: <==negation-removal== 41231 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #17399: origin
                    (at_b_p7)

                    ; #41231: origin
                    (not_at_b_p5)

                    ; #66334: <==negation-removal== 41231 (pos)
                    (not (at_b_p5))

                    ; #70049: <==negation-removal== 17399 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #11608: origin
                    (at_b_p8)

                    ; #41231: origin
                    (not_at_b_p5)

                    ; #18902: <==negation-removal== 11608 (pos)
                    (not (not_at_b_p8))

                    ; #66334: <==negation-removal== 41231 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #12622: origin
                    (at_b_p9)

                    ; #41231: origin
                    (not_at_b_p5)

                    ; #33023: <==negation-removal== 12622 (pos)
                    (not (not_at_b_p9))

                    ; #66334: <==negation-removal== 41231 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #18419: origin
                    (at_b_p1)

                    ; #35699: origin
                    (not_at_b_p6)

                    ; #49932: <==negation-removal== 18419 (pos)
                    (not (not_at_b_p1))

                    ; #80274: <==negation-removal== 35699 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #23642: origin
                    (at_b_p2)

                    ; #35699: origin
                    (not_at_b_p6)

                    ; #80274: <==negation-removal== 35699 (pos)
                    (not (at_b_p6))

                    ; #81112: <==negation-removal== 23642 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #35699: origin
                    (not_at_b_p6)

                    ; #62510: origin
                    (at_b_p3)

                    ; #17096: <==negation-removal== 62510 (pos)
                    (not (not_at_b_p3))

                    ; #80274: <==negation-removal== 35699 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #35699: origin
                    (not_at_b_p6)

                    ; #71862: origin
                    (at_b_p4)

                    ; #69617: <==negation-removal== 71862 (pos)
                    (not (not_at_b_p4))

                    ; #80274: <==negation-removal== 35699 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #35699: origin
                    (not_at_b_p6)

                    ; #66334: origin
                    (at_b_p5)

                    ; #41231: <==negation-removal== 66334 (pos)
                    (not (not_at_b_p5))

                    ; #80274: <==negation-removal== 35699 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #35699: origin
                    (not_at_b_p6)

                    ; #80274: origin
                    (at_b_p6)

                    ; #35699: <==negation-removal== 80274 (pos)
                    (not (not_at_b_p6))

                    ; #80274: <==negation-removal== 35699 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #17399: origin
                    (at_b_p7)

                    ; #35699: origin
                    (not_at_b_p6)

                    ; #70049: <==negation-removal== 17399 (pos)
                    (not (not_at_b_p7))

                    ; #80274: <==negation-removal== 35699 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #11608: origin
                    (at_b_p8)

                    ; #35699: origin
                    (not_at_b_p6)

                    ; #18902: <==negation-removal== 11608 (pos)
                    (not (not_at_b_p8))

                    ; #80274: <==negation-removal== 35699 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #12622: origin
                    (at_b_p9)

                    ; #35699: origin
                    (not_at_b_p6)

                    ; #33023: <==negation-removal== 12622 (pos)
                    (not (not_at_b_p9))

                    ; #80274: <==negation-removal== 35699 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #18419: origin
                    (at_b_p1)

                    ; #70049: origin
                    (not_at_b_p7)

                    ; #17399: <==negation-removal== 70049 (pos)
                    (not (at_b_p7))

                    ; #49932: <==negation-removal== 18419 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #23642: origin
                    (at_b_p2)

                    ; #70049: origin
                    (not_at_b_p7)

                    ; #17399: <==negation-removal== 70049 (pos)
                    (not (at_b_p7))

                    ; #81112: <==negation-removal== 23642 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #62510: origin
                    (at_b_p3)

                    ; #70049: origin
                    (not_at_b_p7)

                    ; #17096: <==negation-removal== 62510 (pos)
                    (not (not_at_b_p3))

                    ; #17399: <==negation-removal== 70049 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #70049: origin
                    (not_at_b_p7)

                    ; #71862: origin
                    (at_b_p4)

                    ; #17399: <==negation-removal== 70049 (pos)
                    (not (at_b_p7))

                    ; #69617: <==negation-removal== 71862 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #66334: origin
                    (at_b_p5)

                    ; #70049: origin
                    (not_at_b_p7)

                    ; #17399: <==negation-removal== 70049 (pos)
                    (not (at_b_p7))

                    ; #41231: <==negation-removal== 66334 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #70049: origin
                    (not_at_b_p7)

                    ; #80274: origin
                    (at_b_p6)

                    ; #17399: <==negation-removal== 70049 (pos)
                    (not (at_b_p7))

                    ; #35699: <==negation-removal== 80274 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #17399: origin
                    (at_b_p7)

                    ; #70049: origin
                    (not_at_b_p7)

                    ; #17399: <==negation-removal== 70049 (pos)
                    (not (at_b_p7))

                    ; #70049: <==negation-removal== 17399 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #11608: origin
                    (at_b_p8)

                    ; #70049: origin
                    (not_at_b_p7)

                    ; #17399: <==negation-removal== 70049 (pos)
                    (not (at_b_p7))

                    ; #18902: <==negation-removal== 11608 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #12622: origin
                    (at_b_p9)

                    ; #70049: origin
                    (not_at_b_p7)

                    ; #17399: <==negation-removal== 70049 (pos)
                    (not (at_b_p7))

                    ; #33023: <==negation-removal== 12622 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #18419: origin
                    (at_b_p1)

                    ; #18902: origin
                    (not_at_b_p8)

                    ; #11608: <==negation-removal== 18902 (pos)
                    (not (at_b_p8))

                    ; #49932: <==negation-removal== 18419 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #18902: origin
                    (not_at_b_p8)

                    ; #23642: origin
                    (at_b_p2)

                    ; #11608: <==negation-removal== 18902 (pos)
                    (not (at_b_p8))

                    ; #81112: <==negation-removal== 23642 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #18902: origin
                    (not_at_b_p8)

                    ; #62510: origin
                    (at_b_p3)

                    ; #11608: <==negation-removal== 18902 (pos)
                    (not (at_b_p8))

                    ; #17096: <==negation-removal== 62510 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #18902: origin
                    (not_at_b_p8)

                    ; #71862: origin
                    (at_b_p4)

                    ; #11608: <==negation-removal== 18902 (pos)
                    (not (at_b_p8))

                    ; #69617: <==negation-removal== 71862 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #18902: origin
                    (not_at_b_p8)

                    ; #66334: origin
                    (at_b_p5)

                    ; #11608: <==negation-removal== 18902 (pos)
                    (not (at_b_p8))

                    ; #41231: <==negation-removal== 66334 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #18902: origin
                    (not_at_b_p8)

                    ; #80274: origin
                    (at_b_p6)

                    ; #11608: <==negation-removal== 18902 (pos)
                    (not (at_b_p8))

                    ; #35699: <==negation-removal== 80274 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #17399: origin
                    (at_b_p7)

                    ; #18902: origin
                    (not_at_b_p8)

                    ; #11608: <==negation-removal== 18902 (pos)
                    (not (at_b_p8))

                    ; #70049: <==negation-removal== 17399 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #11608: origin
                    (at_b_p8)

                    ; #18902: origin
                    (not_at_b_p8)

                    ; #11608: <==negation-removal== 18902 (pos)
                    (not (at_b_p8))

                    ; #18902: <==negation-removal== 11608 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #12622: origin
                    (at_b_p9)

                    ; #18902: origin
                    (not_at_b_p8)

                    ; #11608: <==negation-removal== 18902 (pos)
                    (not (at_b_p8))

                    ; #33023: <==negation-removal== 12622 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #18419: origin
                    (at_b_p1)

                    ; #33023: origin
                    (not_at_b_p9)

                    ; #12622: <==negation-removal== 33023 (pos)
                    (not (at_b_p9))

                    ; #49932: <==negation-removal== 18419 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #23642: origin
                    (at_b_p2)

                    ; #33023: origin
                    (not_at_b_p9)

                    ; #12622: <==negation-removal== 33023 (pos)
                    (not (at_b_p9))

                    ; #81112: <==negation-removal== 23642 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #33023: origin
                    (not_at_b_p9)

                    ; #62510: origin
                    (at_b_p3)

                    ; #12622: <==negation-removal== 33023 (pos)
                    (not (at_b_p9))

                    ; #17096: <==negation-removal== 62510 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #33023: origin
                    (not_at_b_p9)

                    ; #71862: origin
                    (at_b_p4)

                    ; #12622: <==negation-removal== 33023 (pos)
                    (not (at_b_p9))

                    ; #69617: <==negation-removal== 71862 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #33023: origin
                    (not_at_b_p9)

                    ; #66334: origin
                    (at_b_p5)

                    ; #12622: <==negation-removal== 33023 (pos)
                    (not (at_b_p9))

                    ; #41231: <==negation-removal== 66334 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #33023: origin
                    (not_at_b_p9)

                    ; #80274: origin
                    (at_b_p6)

                    ; #12622: <==negation-removal== 33023 (pos)
                    (not (at_b_p9))

                    ; #35699: <==negation-removal== 80274 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #17399: origin
                    (at_b_p7)

                    ; #33023: origin
                    (not_at_b_p9)

                    ; #12622: <==negation-removal== 33023 (pos)
                    (not (at_b_p9))

                    ; #70049: <==negation-removal== 17399 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #11608: origin
                    (at_b_p8)

                    ; #33023: origin
                    (not_at_b_p9)

                    ; #12622: <==negation-removal== 33023 (pos)
                    (not (at_b_p9))

                    ; #18902: <==negation-removal== 11608 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #12622: origin
                    (at_b_p9)

                    ; #33023: origin
                    (not_at_b_p9)

                    ; #12622: <==negation-removal== 33023 (pos)
                    (not (at_b_p9))

                    ; #33023: <==negation-removal== 12622 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #19848: origin
                    (not_at_c_p1)

                    ; #30967: origin
                    (at_c_p1)

                    ; #19848: <==negation-removal== 30967 (pos)
                    (not (not_at_c_p1))

                    ; #30967: <==negation-removal== 19848 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #19848: origin
                    (not_at_c_p1)

                    ; #25084: origin
                    (at_c_p2)

                    ; #30967: <==negation-removal== 19848 (pos)
                    (not (at_c_p1))

                    ; #85448: <==negation-removal== 25084 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #19848: origin
                    (not_at_c_p1)

                    ; #21088: origin
                    (at_c_p3)

                    ; #30967: <==negation-removal== 19848 (pos)
                    (not (at_c_p1))

                    ; #89822: <==negation-removal== 21088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #19848: origin
                    (not_at_c_p1)

                    ; #87096: origin
                    (at_c_p4)

                    ; #18535: <==negation-removal== 87096 (pos)
                    (not (not_at_c_p4))

                    ; #30967: <==negation-removal== 19848 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #19848: origin
                    (not_at_c_p1)

                    ; #68832: origin
                    (at_c_p5)

                    ; #22877: <==negation-removal== 68832 (pos)
                    (not (not_at_c_p5))

                    ; #30967: <==negation-removal== 19848 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #19848: origin
                    (not_at_c_p1)

                    ; #26063: origin
                    (at_c_p6)

                    ; #30967: <==negation-removal== 19848 (pos)
                    (not (at_c_p1))

                    ; #91699: <==negation-removal== 26063 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #19848: origin
                    (not_at_c_p1)

                    ; #25967: origin
                    (at_c_p7)

                    ; #30967: <==negation-removal== 19848 (pos)
                    (not (at_c_p1))

                    ; #48739: <==negation-removal== 25967 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #11819: origin
                    (at_c_p8)

                    ; #19848: origin
                    (not_at_c_p1)

                    ; #30967: <==negation-removal== 19848 (pos)
                    (not (at_c_p1))

                    ; #45098: <==negation-removal== 11819 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #19848: origin
                    (not_at_c_p1)

                    ; #20758: origin
                    (at_c_p9)

                    ; #19631: <==negation-removal== 20758 (pos)
                    (not (not_at_c_p9))

                    ; #30967: <==negation-removal== 19848 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #30967: origin
                    (at_c_p1)

                    ; #85448: origin
                    (not_at_c_p2)

                    ; #19848: <==negation-removal== 30967 (pos)
                    (not (not_at_c_p1))

                    ; #25084: <==negation-removal== 85448 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #25084: origin
                    (at_c_p2)

                    ; #85448: origin
                    (not_at_c_p2)

                    ; #25084: <==negation-removal== 85448 (pos)
                    (not (at_c_p2))

                    ; #85448: <==negation-removal== 25084 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #21088: origin
                    (at_c_p3)

                    ; #85448: origin
                    (not_at_c_p2)

                    ; #25084: <==negation-removal== 85448 (pos)
                    (not (at_c_p2))

                    ; #89822: <==negation-removal== 21088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #85448: origin
                    (not_at_c_p2)

                    ; #87096: origin
                    (at_c_p4)

                    ; #18535: <==negation-removal== 87096 (pos)
                    (not (not_at_c_p4))

                    ; #25084: <==negation-removal== 85448 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #68832: origin
                    (at_c_p5)

                    ; #85448: origin
                    (not_at_c_p2)

                    ; #22877: <==negation-removal== 68832 (pos)
                    (not (not_at_c_p5))

                    ; #25084: <==negation-removal== 85448 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #26063: origin
                    (at_c_p6)

                    ; #85448: origin
                    (not_at_c_p2)

                    ; #25084: <==negation-removal== 85448 (pos)
                    (not (at_c_p2))

                    ; #91699: <==negation-removal== 26063 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #25967: origin
                    (at_c_p7)

                    ; #85448: origin
                    (not_at_c_p2)

                    ; #25084: <==negation-removal== 85448 (pos)
                    (not (at_c_p2))

                    ; #48739: <==negation-removal== 25967 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #11819: origin
                    (at_c_p8)

                    ; #85448: origin
                    (not_at_c_p2)

                    ; #25084: <==negation-removal== 85448 (pos)
                    (not (at_c_p2))

                    ; #45098: <==negation-removal== 11819 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #20758: origin
                    (at_c_p9)

                    ; #85448: origin
                    (not_at_c_p2)

                    ; #19631: <==negation-removal== 20758 (pos)
                    (not (not_at_c_p9))

                    ; #25084: <==negation-removal== 85448 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #30967: origin
                    (at_c_p1)

                    ; #89822: origin
                    (not_at_c_p3)

                    ; #19848: <==negation-removal== 30967 (pos)
                    (not (not_at_c_p1))

                    ; #21088: <==negation-removal== 89822 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #25084: origin
                    (at_c_p2)

                    ; #89822: origin
                    (not_at_c_p3)

                    ; #21088: <==negation-removal== 89822 (pos)
                    (not (at_c_p3))

                    ; #85448: <==negation-removal== 25084 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #21088: origin
                    (at_c_p3)

                    ; #89822: origin
                    (not_at_c_p3)

                    ; #21088: <==negation-removal== 89822 (pos)
                    (not (at_c_p3))

                    ; #89822: <==negation-removal== 21088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #87096: origin
                    (at_c_p4)

                    ; #89822: origin
                    (not_at_c_p3)

                    ; #18535: <==negation-removal== 87096 (pos)
                    (not (not_at_c_p4))

                    ; #21088: <==negation-removal== 89822 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #68832: origin
                    (at_c_p5)

                    ; #89822: origin
                    (not_at_c_p3)

                    ; #21088: <==negation-removal== 89822 (pos)
                    (not (at_c_p3))

                    ; #22877: <==negation-removal== 68832 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #26063: origin
                    (at_c_p6)

                    ; #89822: origin
                    (not_at_c_p3)

                    ; #21088: <==negation-removal== 89822 (pos)
                    (not (at_c_p3))

                    ; #91699: <==negation-removal== 26063 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #25967: origin
                    (at_c_p7)

                    ; #89822: origin
                    (not_at_c_p3)

                    ; #21088: <==negation-removal== 89822 (pos)
                    (not (at_c_p3))

                    ; #48739: <==negation-removal== 25967 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #11819: origin
                    (at_c_p8)

                    ; #89822: origin
                    (not_at_c_p3)

                    ; #21088: <==negation-removal== 89822 (pos)
                    (not (at_c_p3))

                    ; #45098: <==negation-removal== 11819 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #20758: origin
                    (at_c_p9)

                    ; #89822: origin
                    (not_at_c_p3)

                    ; #19631: <==negation-removal== 20758 (pos)
                    (not (not_at_c_p9))

                    ; #21088: <==negation-removal== 89822 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #18535: origin
                    (not_at_c_p4)

                    ; #30967: origin
                    (at_c_p1)

                    ; #19848: <==negation-removal== 30967 (pos)
                    (not (not_at_c_p1))

                    ; #87096: <==negation-removal== 18535 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #18535: origin
                    (not_at_c_p4)

                    ; #25084: origin
                    (at_c_p2)

                    ; #85448: <==negation-removal== 25084 (pos)
                    (not (not_at_c_p2))

                    ; #87096: <==negation-removal== 18535 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #18535: origin
                    (not_at_c_p4)

                    ; #21088: origin
                    (at_c_p3)

                    ; #87096: <==negation-removal== 18535 (pos)
                    (not (at_c_p4))

                    ; #89822: <==negation-removal== 21088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #18535: origin
                    (not_at_c_p4)

                    ; #87096: origin
                    (at_c_p4)

                    ; #18535: <==negation-removal== 87096 (pos)
                    (not (not_at_c_p4))

                    ; #87096: <==negation-removal== 18535 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #18535: origin
                    (not_at_c_p4)

                    ; #68832: origin
                    (at_c_p5)

                    ; #22877: <==negation-removal== 68832 (pos)
                    (not (not_at_c_p5))

                    ; #87096: <==negation-removal== 18535 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #18535: origin
                    (not_at_c_p4)

                    ; #26063: origin
                    (at_c_p6)

                    ; #87096: <==negation-removal== 18535 (pos)
                    (not (at_c_p4))

                    ; #91699: <==negation-removal== 26063 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #18535: origin
                    (not_at_c_p4)

                    ; #25967: origin
                    (at_c_p7)

                    ; #48739: <==negation-removal== 25967 (pos)
                    (not (not_at_c_p7))

                    ; #87096: <==negation-removal== 18535 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #11819: origin
                    (at_c_p8)

                    ; #18535: origin
                    (not_at_c_p4)

                    ; #45098: <==negation-removal== 11819 (pos)
                    (not (not_at_c_p8))

                    ; #87096: <==negation-removal== 18535 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #18535: origin
                    (not_at_c_p4)

                    ; #20758: origin
                    (at_c_p9)

                    ; #19631: <==negation-removal== 20758 (pos)
                    (not (not_at_c_p9))

                    ; #87096: <==negation-removal== 18535 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #22877: origin
                    (not_at_c_p5)

                    ; #30967: origin
                    (at_c_p1)

                    ; #19848: <==negation-removal== 30967 (pos)
                    (not (not_at_c_p1))

                    ; #68832: <==negation-removal== 22877 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #22877: origin
                    (not_at_c_p5)

                    ; #25084: origin
                    (at_c_p2)

                    ; #68832: <==negation-removal== 22877 (pos)
                    (not (at_c_p5))

                    ; #85448: <==negation-removal== 25084 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #21088: origin
                    (at_c_p3)

                    ; #22877: origin
                    (not_at_c_p5)

                    ; #68832: <==negation-removal== 22877 (pos)
                    (not (at_c_p5))

                    ; #89822: <==negation-removal== 21088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #22877: origin
                    (not_at_c_p5)

                    ; #87096: origin
                    (at_c_p4)

                    ; #18535: <==negation-removal== 87096 (pos)
                    (not (not_at_c_p4))

                    ; #68832: <==negation-removal== 22877 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #22877: origin
                    (not_at_c_p5)

                    ; #68832: origin
                    (at_c_p5)

                    ; #22877: <==negation-removal== 68832 (pos)
                    (not (not_at_c_p5))

                    ; #68832: <==negation-removal== 22877 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #22877: origin
                    (not_at_c_p5)

                    ; #26063: origin
                    (at_c_p6)

                    ; #68832: <==negation-removal== 22877 (pos)
                    (not (at_c_p5))

                    ; #91699: <==negation-removal== 26063 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #22877: origin
                    (not_at_c_p5)

                    ; #25967: origin
                    (at_c_p7)

                    ; #48739: <==negation-removal== 25967 (pos)
                    (not (not_at_c_p7))

                    ; #68832: <==negation-removal== 22877 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #11819: origin
                    (at_c_p8)

                    ; #22877: origin
                    (not_at_c_p5)

                    ; #45098: <==negation-removal== 11819 (pos)
                    (not (not_at_c_p8))

                    ; #68832: <==negation-removal== 22877 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #20758: origin
                    (at_c_p9)

                    ; #22877: origin
                    (not_at_c_p5)

                    ; #19631: <==negation-removal== 20758 (pos)
                    (not (not_at_c_p9))

                    ; #68832: <==negation-removal== 22877 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #30967: origin
                    (at_c_p1)

                    ; #91699: origin
                    (not_at_c_p6)

                    ; #19848: <==negation-removal== 30967 (pos)
                    (not (not_at_c_p1))

                    ; #26063: <==negation-removal== 91699 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #25084: origin
                    (at_c_p2)

                    ; #91699: origin
                    (not_at_c_p6)

                    ; #26063: <==negation-removal== 91699 (pos)
                    (not (at_c_p6))

                    ; #85448: <==negation-removal== 25084 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #21088: origin
                    (at_c_p3)

                    ; #91699: origin
                    (not_at_c_p6)

                    ; #26063: <==negation-removal== 91699 (pos)
                    (not (at_c_p6))

                    ; #89822: <==negation-removal== 21088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #87096: origin
                    (at_c_p4)

                    ; #91699: origin
                    (not_at_c_p6)

                    ; #18535: <==negation-removal== 87096 (pos)
                    (not (not_at_c_p4))

                    ; #26063: <==negation-removal== 91699 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #68832: origin
                    (at_c_p5)

                    ; #91699: origin
                    (not_at_c_p6)

                    ; #22877: <==negation-removal== 68832 (pos)
                    (not (not_at_c_p5))

                    ; #26063: <==negation-removal== 91699 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #26063: origin
                    (at_c_p6)

                    ; #91699: origin
                    (not_at_c_p6)

                    ; #26063: <==negation-removal== 91699 (pos)
                    (not (at_c_p6))

                    ; #91699: <==negation-removal== 26063 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #25967: origin
                    (at_c_p7)

                    ; #91699: origin
                    (not_at_c_p6)

                    ; #26063: <==negation-removal== 91699 (pos)
                    (not (at_c_p6))

                    ; #48739: <==negation-removal== 25967 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #11819: origin
                    (at_c_p8)

                    ; #91699: origin
                    (not_at_c_p6)

                    ; #26063: <==negation-removal== 91699 (pos)
                    (not (at_c_p6))

                    ; #45098: <==negation-removal== 11819 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #20758: origin
                    (at_c_p9)

                    ; #91699: origin
                    (not_at_c_p6)

                    ; #19631: <==negation-removal== 20758 (pos)
                    (not (not_at_c_p9))

                    ; #26063: <==negation-removal== 91699 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #30967: origin
                    (at_c_p1)

                    ; #48739: origin
                    (not_at_c_p7)

                    ; #19848: <==negation-removal== 30967 (pos)
                    (not (not_at_c_p1))

                    ; #25967: <==negation-removal== 48739 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #25084: origin
                    (at_c_p2)

                    ; #48739: origin
                    (not_at_c_p7)

                    ; #25967: <==negation-removal== 48739 (pos)
                    (not (at_c_p7))

                    ; #85448: <==negation-removal== 25084 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #21088: origin
                    (at_c_p3)

                    ; #48739: origin
                    (not_at_c_p7)

                    ; #25967: <==negation-removal== 48739 (pos)
                    (not (at_c_p7))

                    ; #89822: <==negation-removal== 21088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #48739: origin
                    (not_at_c_p7)

                    ; #87096: origin
                    (at_c_p4)

                    ; #18535: <==negation-removal== 87096 (pos)
                    (not (not_at_c_p4))

                    ; #25967: <==negation-removal== 48739 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #48739: origin
                    (not_at_c_p7)

                    ; #68832: origin
                    (at_c_p5)

                    ; #22877: <==negation-removal== 68832 (pos)
                    (not (not_at_c_p5))

                    ; #25967: <==negation-removal== 48739 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #26063: origin
                    (at_c_p6)

                    ; #48739: origin
                    (not_at_c_p7)

                    ; #25967: <==negation-removal== 48739 (pos)
                    (not (at_c_p7))

                    ; #91699: <==negation-removal== 26063 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #25967: origin
                    (at_c_p7)

                    ; #48739: origin
                    (not_at_c_p7)

                    ; #25967: <==negation-removal== 48739 (pos)
                    (not (at_c_p7))

                    ; #48739: <==negation-removal== 25967 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #11819: origin
                    (at_c_p8)

                    ; #48739: origin
                    (not_at_c_p7)

                    ; #25967: <==negation-removal== 48739 (pos)
                    (not (at_c_p7))

                    ; #45098: <==negation-removal== 11819 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #20758: origin
                    (at_c_p9)

                    ; #48739: origin
                    (not_at_c_p7)

                    ; #19631: <==negation-removal== 20758 (pos)
                    (not (not_at_c_p9))

                    ; #25967: <==negation-removal== 48739 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #30967: origin
                    (at_c_p1)

                    ; #45098: origin
                    (not_at_c_p8)

                    ; #11819: <==negation-removal== 45098 (pos)
                    (not (at_c_p8))

                    ; #19848: <==negation-removal== 30967 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #25084: origin
                    (at_c_p2)

                    ; #45098: origin
                    (not_at_c_p8)

                    ; #11819: <==negation-removal== 45098 (pos)
                    (not (at_c_p8))

                    ; #85448: <==negation-removal== 25084 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #21088: origin
                    (at_c_p3)

                    ; #45098: origin
                    (not_at_c_p8)

                    ; #11819: <==negation-removal== 45098 (pos)
                    (not (at_c_p8))

                    ; #89822: <==negation-removal== 21088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #45098: origin
                    (not_at_c_p8)

                    ; #87096: origin
                    (at_c_p4)

                    ; #11819: <==negation-removal== 45098 (pos)
                    (not (at_c_p8))

                    ; #18535: <==negation-removal== 87096 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #45098: origin
                    (not_at_c_p8)

                    ; #68832: origin
                    (at_c_p5)

                    ; #11819: <==negation-removal== 45098 (pos)
                    (not (at_c_p8))

                    ; #22877: <==negation-removal== 68832 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #26063: origin
                    (at_c_p6)

                    ; #45098: origin
                    (not_at_c_p8)

                    ; #11819: <==negation-removal== 45098 (pos)
                    (not (at_c_p8))

                    ; #91699: <==negation-removal== 26063 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #25967: origin
                    (at_c_p7)

                    ; #45098: origin
                    (not_at_c_p8)

                    ; #11819: <==negation-removal== 45098 (pos)
                    (not (at_c_p8))

                    ; #48739: <==negation-removal== 25967 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #11819: origin
                    (at_c_p8)

                    ; #45098: origin
                    (not_at_c_p8)

                    ; #11819: <==negation-removal== 45098 (pos)
                    (not (at_c_p8))

                    ; #45098: <==negation-removal== 11819 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #20758: origin
                    (at_c_p9)

                    ; #45098: origin
                    (not_at_c_p8)

                    ; #11819: <==negation-removal== 45098 (pos)
                    (not (at_c_p8))

                    ; #19631: <==negation-removal== 20758 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #19631: origin
                    (not_at_c_p9)

                    ; #30967: origin
                    (at_c_p1)

                    ; #19848: <==negation-removal== 30967 (pos)
                    (not (not_at_c_p1))

                    ; #20758: <==negation-removal== 19631 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #19631: origin
                    (not_at_c_p9)

                    ; #25084: origin
                    (at_c_p2)

                    ; #20758: <==negation-removal== 19631 (pos)
                    (not (at_c_p9))

                    ; #85448: <==negation-removal== 25084 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #19631: origin
                    (not_at_c_p9)

                    ; #21088: origin
                    (at_c_p3)

                    ; #20758: <==negation-removal== 19631 (pos)
                    (not (at_c_p9))

                    ; #89822: <==negation-removal== 21088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #19631: origin
                    (not_at_c_p9)

                    ; #87096: origin
                    (at_c_p4)

                    ; #18535: <==negation-removal== 87096 (pos)
                    (not (not_at_c_p4))

                    ; #20758: <==negation-removal== 19631 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #19631: origin
                    (not_at_c_p9)

                    ; #68832: origin
                    (at_c_p5)

                    ; #20758: <==negation-removal== 19631 (pos)
                    (not (at_c_p9))

                    ; #22877: <==negation-removal== 68832 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #19631: origin
                    (not_at_c_p9)

                    ; #26063: origin
                    (at_c_p6)

                    ; #20758: <==negation-removal== 19631 (pos)
                    (not (at_c_p9))

                    ; #91699: <==negation-removal== 26063 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #19631: origin
                    (not_at_c_p9)

                    ; #25967: origin
                    (at_c_p7)

                    ; #20758: <==negation-removal== 19631 (pos)
                    (not (at_c_p9))

                    ; #48739: <==negation-removal== 25967 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #11819: origin
                    (at_c_p8)

                    ; #19631: origin
                    (not_at_c_p9)

                    ; #20758: <==negation-removal== 19631 (pos)
                    (not (at_c_p9))

                    ; #45098: <==negation-removal== 11819 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #19631: origin
                    (not_at_c_p9)

                    ; #20758: origin
                    (at_c_p9)

                    ; #19631: <==negation-removal== 20758 (pos)
                    (not (not_at_c_p9))

                    ; #20758: <==negation-removal== 19631 (pos)
                    (not (at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #26386: origin
                    (at_d_p1)

                    ; #30223: origin
                    (not_at_d_p1)

                    ; #26386: <==negation-removal== 30223 (pos)
                    (not (at_d_p1))

                    ; #30223: <==negation-removal== 26386 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #30223: origin
                    (not_at_d_p1)

                    ; #53180: origin
                    (at_d_p2)

                    ; #26386: <==negation-removal== 30223 (pos)
                    (not (at_d_p1))

                    ; #61578: <==negation-removal== 53180 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (at_d_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #30223: origin
                    (not_at_d_p1)

                    ; #91907: origin
                    (at_d_p3)

                    ; #26386: <==negation-removal== 30223 (pos)
                    (not (at_d_p1))

                    ; #37753: <==negation-removal== 91907 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #30223: origin
                    (not_at_d_p1)

                    ; #77973: origin
                    (at_d_p4)

                    ; #18434: <==negation-removal== 77973 (pos)
                    (not (not_at_d_p4))

                    ; #26386: <==negation-removal== 30223 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #30223: origin
                    (not_at_d_p1)

                    ; #44497: origin
                    (at_d_p5)

                    ; #26386: <==negation-removal== 30223 (pos)
                    (not (at_d_p1))

                    ; #65577: <==negation-removal== 44497 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #30223: origin
                    (not_at_d_p1)

                    ; #36629: origin
                    (at_d_p6)

                    ; #26386: <==negation-removal== 30223 (pos)
                    (not (at_d_p1))

                    ; #79747: <==negation-removal== 36629 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (at_d_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #30223: origin
                    (not_at_d_p1)

                    ; #80915: origin
                    (at_d_p7)

                    ; #19340: <==negation-removal== 80915 (pos)
                    (not (not_at_d_p7))

                    ; #26386: <==negation-removal== 30223 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #30223: origin
                    (not_at_d_p1)

                    ; #44478: origin
                    (at_d_p8)

                    ; #26386: <==negation-removal== 30223 (pos)
                    (not (at_d_p1))

                    ; #51813: <==negation-removal== 44478 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #16793: origin
                    (at_d_p9)

                    ; #30223: origin
                    (not_at_d_p1)

                    ; #26386: <==negation-removal== 30223 (pos)
                    (not (at_d_p1))

                    ; #85811: <==negation-removal== 16793 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #26386: origin
                    (at_d_p1)

                    ; #61578: origin
                    (not_at_d_p2)

                    ; #30223: <==negation-removal== 26386 (pos)
                    (not (not_at_d_p1))

                    ; #53180: <==negation-removal== 61578 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #53180: origin
                    (at_d_p2)

                    ; #61578: origin
                    (not_at_d_p2)

                    ; #53180: <==negation-removal== 61578 (pos)
                    (not (at_d_p2))

                    ; #61578: <==negation-removal== 53180 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #61578: origin
                    (not_at_d_p2)

                    ; #91907: origin
                    (at_d_p3)

                    ; #37753: <==negation-removal== 91907 (pos)
                    (not (not_at_d_p3))

                    ; #53180: <==negation-removal== 61578 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #61578: origin
                    (not_at_d_p2)

                    ; #77973: origin
                    (at_d_p4)

                    ; #18434: <==negation-removal== 77973 (pos)
                    (not (not_at_d_p4))

                    ; #53180: <==negation-removal== 61578 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #44497: origin
                    (at_d_p5)

                    ; #61578: origin
                    (not_at_d_p2)

                    ; #53180: <==negation-removal== 61578 (pos)
                    (not (at_d_p2))

                    ; #65577: <==negation-removal== 44497 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #36629: origin
                    (at_d_p6)

                    ; #61578: origin
                    (not_at_d_p2)

                    ; #53180: <==negation-removal== 61578 (pos)
                    (not (at_d_p2))

                    ; #79747: <==negation-removal== 36629 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #61578: origin
                    (not_at_d_p2)

                    ; #80915: origin
                    (at_d_p7)

                    ; #19340: <==negation-removal== 80915 (pos)
                    (not (not_at_d_p7))

                    ; #53180: <==negation-removal== 61578 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #44478: origin
                    (at_d_p8)

                    ; #61578: origin
                    (not_at_d_p2)

                    ; #51813: <==negation-removal== 44478 (pos)
                    (not (not_at_d_p8))

                    ; #53180: <==negation-removal== 61578 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #16793: origin
                    (at_d_p9)

                    ; #61578: origin
                    (not_at_d_p2)

                    ; #53180: <==negation-removal== 61578 (pos)
                    (not (at_d_p2))

                    ; #85811: <==negation-removal== 16793 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #26386: origin
                    (at_d_p1)

                    ; #37753: origin
                    (not_at_d_p3)

                    ; #30223: <==negation-removal== 26386 (pos)
                    (not (not_at_d_p1))

                    ; #91907: <==negation-removal== 37753 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #37753: origin
                    (not_at_d_p3)

                    ; #53180: origin
                    (at_d_p2)

                    ; #61578: <==negation-removal== 53180 (pos)
                    (not (not_at_d_p2))

                    ; #91907: <==negation-removal== 37753 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #37753: origin
                    (not_at_d_p3)

                    ; #91907: origin
                    (at_d_p3)

                    ; #37753: <==negation-removal== 91907 (pos)
                    (not (not_at_d_p3))

                    ; #91907: <==negation-removal== 37753 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #37753: origin
                    (not_at_d_p3)

                    ; #77973: origin
                    (at_d_p4)

                    ; #18434: <==negation-removal== 77973 (pos)
                    (not (not_at_d_p4))

                    ; #91907: <==negation-removal== 37753 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #37753: origin
                    (not_at_d_p3)

                    ; #44497: origin
                    (at_d_p5)

                    ; #65577: <==negation-removal== 44497 (pos)
                    (not (not_at_d_p5))

                    ; #91907: <==negation-removal== 37753 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #36629: origin
                    (at_d_p6)

                    ; #37753: origin
                    (not_at_d_p3)

                    ; #79747: <==negation-removal== 36629 (pos)
                    (not (not_at_d_p6))

                    ; #91907: <==negation-removal== 37753 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #37753: origin
                    (not_at_d_p3)

                    ; #80915: origin
                    (at_d_p7)

                    ; #19340: <==negation-removal== 80915 (pos)
                    (not (not_at_d_p7))

                    ; #91907: <==negation-removal== 37753 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #37753: origin
                    (not_at_d_p3)

                    ; #44478: origin
                    (at_d_p8)

                    ; #51813: <==negation-removal== 44478 (pos)
                    (not (not_at_d_p8))

                    ; #91907: <==negation-removal== 37753 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #16793: origin
                    (at_d_p9)

                    ; #37753: origin
                    (not_at_d_p3)

                    ; #85811: <==negation-removal== 16793 (pos)
                    (not (not_at_d_p9))

                    ; #91907: <==negation-removal== 37753 (pos)
                    (not (at_d_p3))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #18434: origin
                    (not_at_d_p4)

                    ; #26386: origin
                    (at_d_p1)

                    ; #30223: <==negation-removal== 26386 (pos)
                    (not (not_at_d_p1))

                    ; #77973: <==negation-removal== 18434 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_d_p4))
        :effect (and
                    ; #18434: origin
                    (not_at_d_p4)

                    ; #53180: origin
                    (at_d_p2)

                    ; #61578: <==negation-removal== 53180 (pos)
                    (not (not_at_d_p2))

                    ; #77973: <==negation-removal== 18434 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4))
        :effect (and
                    ; #18434: origin
                    (not_at_d_p4)

                    ; #91907: origin
                    (at_d_p3)

                    ; #37753: <==negation-removal== 91907 (pos)
                    (not (not_at_d_p3))

                    ; #77973: <==negation-removal== 18434 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #18434: origin
                    (not_at_d_p4)

                    ; #77973: origin
                    (at_d_p4)

                    ; #18434: <==negation-removal== 77973 (pos)
                    (not (not_at_d_p4))

                    ; #77973: <==negation-removal== 18434 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4))
        :effect (and
                    ; #18434: origin
                    (not_at_d_p4)

                    ; #44497: origin
                    (at_d_p5)

                    ; #65577: <==negation-removal== 44497 (pos)
                    (not (not_at_d_p5))

                    ; #77973: <==negation-removal== 18434 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #18434: origin
                    (not_at_d_p4)

                    ; #36629: origin
                    (at_d_p6)

                    ; #77973: <==negation-removal== 18434 (pos)
                    (not (at_d_p4))

                    ; #79747: <==negation-removal== 36629 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #18434: origin
                    (not_at_d_p4)

                    ; #80915: origin
                    (at_d_p7)

                    ; #19340: <==negation-removal== 80915 (pos)
                    (not (not_at_d_p7))

                    ; #77973: <==negation-removal== 18434 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #18434: origin
                    (not_at_d_p4)

                    ; #44478: origin
                    (at_d_p8)

                    ; #51813: <==negation-removal== 44478 (pos)
                    (not (not_at_d_p8))

                    ; #77973: <==negation-removal== 18434 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4))
        :effect (and
                    ; #16793: origin
                    (at_d_p9)

                    ; #18434: origin
                    (not_at_d_p4)

                    ; #77973: <==negation-removal== 18434 (pos)
                    (not (at_d_p4))

                    ; #85811: <==negation-removal== 16793 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #26386: origin
                    (at_d_p1)

                    ; #65577: origin
                    (not_at_d_p5)

                    ; #30223: <==negation-removal== 26386 (pos)
                    (not (not_at_d_p1))

                    ; #44497: <==negation-removal== 65577 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #53180: origin
                    (at_d_p2)

                    ; #65577: origin
                    (not_at_d_p5)

                    ; #44497: <==negation-removal== 65577 (pos)
                    (not (at_d_p5))

                    ; #61578: <==negation-removal== 53180 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #65577: origin
                    (not_at_d_p5)

                    ; #91907: origin
                    (at_d_p3)

                    ; #37753: <==negation-removal== 91907 (pos)
                    (not (not_at_d_p3))

                    ; #44497: <==negation-removal== 65577 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #65577: origin
                    (not_at_d_p5)

                    ; #77973: origin
                    (at_d_p4)

                    ; #18434: <==negation-removal== 77973 (pos)
                    (not (not_at_d_p4))

                    ; #44497: <==negation-removal== 65577 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #44497: origin
                    (at_d_p5)

                    ; #65577: origin
                    (not_at_d_p5)

                    ; #44497: <==negation-removal== 65577 (pos)
                    (not (at_d_p5))

                    ; #65577: <==negation-removal== 44497 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #36629: origin
                    (at_d_p6)

                    ; #65577: origin
                    (not_at_d_p5)

                    ; #44497: <==negation-removal== 65577 (pos)
                    (not (at_d_p5))

                    ; #79747: <==negation-removal== 36629 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #65577: origin
                    (not_at_d_p5)

                    ; #80915: origin
                    (at_d_p7)

                    ; #19340: <==negation-removal== 80915 (pos)
                    (not (not_at_d_p7))

                    ; #44497: <==negation-removal== 65577 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #44478: origin
                    (at_d_p8)

                    ; #65577: origin
                    (not_at_d_p5)

                    ; #44497: <==negation-removal== 65577 (pos)
                    (not (at_d_p5))

                    ; #51813: <==negation-removal== 44478 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #16793: origin
                    (at_d_p9)

                    ; #65577: origin
                    (not_at_d_p5)

                    ; #44497: <==negation-removal== 65577 (pos)
                    (not (at_d_p5))

                    ; #85811: <==negation-removal== 16793 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #26386: origin
                    (at_d_p1)

                    ; #79747: origin
                    (not_at_d_p6)

                    ; #30223: <==negation-removal== 26386 (pos)
                    (not (not_at_d_p1))

                    ; #36629: <==negation-removal== 79747 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #53180: origin
                    (at_d_p2)

                    ; #79747: origin
                    (not_at_d_p6)

                    ; #36629: <==negation-removal== 79747 (pos)
                    (not (at_d_p6))

                    ; #61578: <==negation-removal== 53180 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6))
        :effect (and
                    ; #79747: origin
                    (not_at_d_p6)

                    ; #91907: origin
                    (at_d_p3)

                    ; #36629: <==negation-removal== 79747 (pos)
                    (not (at_d_p6))

                    ; #37753: <==negation-removal== 91907 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #77973: origin
                    (at_d_p4)

                    ; #79747: origin
                    (not_at_d_p6)

                    ; #18434: <==negation-removal== 77973 (pos)
                    (not (not_at_d_p4))

                    ; #36629: <==negation-removal== 79747 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #44497: origin
                    (at_d_p5)

                    ; #79747: origin
                    (not_at_d_p6)

                    ; #36629: <==negation-removal== 79747 (pos)
                    (not (at_d_p6))

                    ; #65577: <==negation-removal== 44497 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #36629: origin
                    (at_d_p6)

                    ; #79747: origin
                    (not_at_d_p6)

                    ; #36629: <==negation-removal== 79747 (pos)
                    (not (at_d_p6))

                    ; #79747: <==negation-removal== 36629 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #79747: origin
                    (not_at_d_p6)

                    ; #80915: origin
                    (at_d_p7)

                    ; #19340: <==negation-removal== 80915 (pos)
                    (not (not_at_d_p7))

                    ; #36629: <==negation-removal== 79747 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (at_d_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #44478: origin
                    (at_d_p8)

                    ; #79747: origin
                    (not_at_d_p6)

                    ; #36629: <==negation-removal== 79747 (pos)
                    (not (at_d_p6))

                    ; #51813: <==negation-removal== 44478 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #16793: origin
                    (at_d_p9)

                    ; #79747: origin
                    (not_at_d_p6)

                    ; #36629: <==negation-removal== 79747 (pos)
                    (not (at_d_p6))

                    ; #85811: <==negation-removal== 16793 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #19340: origin
                    (not_at_d_p7)

                    ; #26386: origin
                    (at_d_p1)

                    ; #30223: <==negation-removal== 26386 (pos)
                    (not (not_at_d_p1))

                    ; #80915: <==negation-removal== 19340 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7))
        :effect (and
                    ; #19340: origin
                    (not_at_d_p7)

                    ; #53180: origin
                    (at_d_p2)

                    ; #61578: <==negation-removal== 53180 (pos)
                    (not (not_at_d_p2))

                    ; #80915: <==negation-removal== 19340 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #19340: origin
                    (not_at_d_p7)

                    ; #91907: origin
                    (at_d_p3)

                    ; #37753: <==negation-removal== 91907 (pos)
                    (not (not_at_d_p3))

                    ; #80915: <==negation-removal== 19340 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #19340: origin
                    (not_at_d_p7)

                    ; #77973: origin
                    (at_d_p4)

                    ; #18434: <==negation-removal== 77973 (pos)
                    (not (not_at_d_p4))

                    ; #80915: <==negation-removal== 19340 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #19340: origin
                    (not_at_d_p7)

                    ; #44497: origin
                    (at_d_p5)

                    ; #65577: <==negation-removal== 44497 (pos)
                    (not (not_at_d_p5))

                    ; #80915: <==negation-removal== 19340 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7))
        :effect (and
                    ; #19340: origin
                    (not_at_d_p7)

                    ; #36629: origin
                    (at_d_p6)

                    ; #79747: <==negation-removal== 36629 (pos)
                    (not (not_at_d_p6))

                    ; #80915: <==negation-removal== 19340 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #19340: origin
                    (not_at_d_p7)

                    ; #80915: origin
                    (at_d_p7)

                    ; #19340: <==negation-removal== 80915 (pos)
                    (not (not_at_d_p7))

                    ; #80915: <==negation-removal== 19340 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #19340: origin
                    (not_at_d_p7)

                    ; #44478: origin
                    (at_d_p8)

                    ; #51813: <==negation-removal== 44478 (pos)
                    (not (not_at_d_p8))

                    ; #80915: <==negation-removal== 19340 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #16793: origin
                    (at_d_p9)

                    ; #19340: origin
                    (not_at_d_p7)

                    ; #80915: <==negation-removal== 19340 (pos)
                    (not (at_d_p7))

                    ; #85811: <==negation-removal== 16793 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #26386: origin
                    (at_d_p1)

                    ; #51813: origin
                    (not_at_d_p8)

                    ; #30223: <==negation-removal== 26386 (pos)
                    (not (not_at_d_p1))

                    ; #44478: <==negation-removal== 51813 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8))
        :effect (and
                    ; #51813: origin
                    (not_at_d_p8)

                    ; #53180: origin
                    (at_d_p2)

                    ; #44478: <==negation-removal== 51813 (pos)
                    (not (at_d_p8))

                    ; #61578: <==negation-removal== 53180 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #51813: origin
                    (not_at_d_p8)

                    ; #91907: origin
                    (at_d_p3)

                    ; #37753: <==negation-removal== 91907 (pos)
                    (not (not_at_d_p3))

                    ; #44478: <==negation-removal== 51813 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #51813: origin
                    (not_at_d_p8)

                    ; #77973: origin
                    (at_d_p4)

                    ; #18434: <==negation-removal== 77973 (pos)
                    (not (not_at_d_p4))

                    ; #44478: <==negation-removal== 51813 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #44497: origin
                    (at_d_p5)

                    ; #51813: origin
                    (not_at_d_p8)

                    ; #44478: <==negation-removal== 51813 (pos)
                    (not (at_d_p8))

                    ; #65577: <==negation-removal== 44497 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #36629: origin
                    (at_d_p6)

                    ; #51813: origin
                    (not_at_d_p8)

                    ; #44478: <==negation-removal== 51813 (pos)
                    (not (at_d_p8))

                    ; #79747: <==negation-removal== 36629 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #51813: origin
                    (not_at_d_p8)

                    ; #80915: origin
                    (at_d_p7)

                    ; #19340: <==negation-removal== 80915 (pos)
                    (not (not_at_d_p7))

                    ; #44478: <==negation-removal== 51813 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8))
        :effect (and
                    ; #44478: origin
                    (at_d_p8)

                    ; #51813: origin
                    (not_at_d_p8)

                    ; #44478: <==negation-removal== 51813 (pos)
                    (not (at_d_p8))

                    ; #51813: <==negation-removal== 44478 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #16793: origin
                    (at_d_p9)

                    ; #51813: origin
                    (not_at_d_p8)

                    ; #44478: <==negation-removal== 51813 (pos)
                    (not (at_d_p8))

                    ; #85811: <==negation-removal== 16793 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #26386: origin
                    (at_d_p1)

                    ; #85811: origin
                    (not_at_d_p9)

                    ; #16793: <==negation-removal== 85811 (pos)
                    (not (at_d_p9))

                    ; #30223: <==negation-removal== 26386 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #53180: origin
                    (at_d_p2)

                    ; #85811: origin
                    (not_at_d_p9)

                    ; #16793: <==negation-removal== 85811 (pos)
                    (not (at_d_p9))

                    ; #61578: <==negation-removal== 53180 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #85811: origin
                    (not_at_d_p9)

                    ; #91907: origin
                    (at_d_p3)

                    ; #16793: <==negation-removal== 85811 (pos)
                    (not (at_d_p9))

                    ; #37753: <==negation-removal== 91907 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #77973: origin
                    (at_d_p4)

                    ; #85811: origin
                    (not_at_d_p9)

                    ; #16793: <==negation-removal== 85811 (pos)
                    (not (at_d_p9))

                    ; #18434: <==negation-removal== 77973 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #44497: origin
                    (at_d_p5)

                    ; #85811: origin
                    (not_at_d_p9)

                    ; #16793: <==negation-removal== 85811 (pos)
                    (not (at_d_p9))

                    ; #65577: <==negation-removal== 44497 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #36629: origin
                    (at_d_p6)

                    ; #85811: origin
                    (not_at_d_p9)

                    ; #16793: <==negation-removal== 85811 (pos)
                    (not (at_d_p9))

                    ; #79747: <==negation-removal== 36629 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #80915: origin
                    (at_d_p7)

                    ; #85811: origin
                    (not_at_d_p9)

                    ; #16793: <==negation-removal== 85811 (pos)
                    (not (at_d_p9))

                    ; #19340: <==negation-removal== 80915 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #44478: origin
                    (at_d_p8)

                    ; #85811: origin
                    (not_at_d_p9)

                    ; #16793: <==negation-removal== 85811 (pos)
                    (not (at_d_p9))

                    ; #51813: <==negation-removal== 44478 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #16793: origin
                    (at_d_p9)

                    ; #85811: origin
                    (not_at_d_p9)

                    ; #16793: <==negation-removal== 85811 (pos)
                    (not (at_d_p9))

                    ; #85811: <==negation-removal== 16793 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #20917: <==commonly_known== 26681 (pos)
                    (Bc_checked_p1)

                    ; #21394: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #21492: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #21591: <==closure== 21492 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #26681: origin
                    (checked_p1)

                    ; #43766: <==commonly_known== 77618 (neg)
                    (Pc_checked_p1)

                    ; #52294: <==commonly_known== 77618 (neg)
                    (Pa_checked_p1)

                    ; #58343: <==commonly_known== 26681 (pos)
                    (Bd_checked_p1)

                    ; #60391: <==commonly_known== 26681 (pos)
                    (Ba_checked_p1)

                    ; #71865: <==commonly_known== 77618 (neg)
                    (Pd_checked_p1)

                    ; #72032: <==commonly_known== 26681 (pos)
                    (Bb_checked_p1)

                    ; #73169: <==commonly_known== 77618 (neg)
                    (Pb_checked_p1)

                    ; #83442: <==closure== 21394 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #22035: <==negation-removal== 71865 (pos)
                    (not (Bd_not_checked_p1))

                    ; #34854: <==negation-removal== 72032 (pos)
                    (not (Pb_not_checked_p1))

                    ; #40248: <==negation-removal== 83442 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #45618: <==uncertain_firing== 21492 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #49143: <==negation-removal== 73169 (pos)
                    (not (Bb_not_checked_p1))

                    ; #52775: <==negation-removal== 58343 (pos)
                    (not (Pd_not_checked_p1))

                    ; #61290: <==uncertain_firing== 21394 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #61732: <==negation-removal== 20917 (pos)
                    (not (Pc_not_checked_p1))

                    ; #62451: <==negation-removal== 52294 (pos)
                    (not (Ba_not_checked_p1))

                    ; #63056: <==negation-removal== 21394 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #68235: <==negation-removal== 60391 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68732: <==negation-removal== 43766 (pos)
                    (not (Bc_not_checked_p1))

                    ; #72936: <==negation-removal== 21591 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #77618: <==negation-removal== 26681 (pos)
                    (not (not_checked_p1))

                    ; #77802: <==uncertain_firing== 21591 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #78461: <==negation-removal== 21492 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #87363: <==uncertain_firing== 83442 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12081: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #15395: <==commonly_known== 25780 (pos)
                    (Bc_checked_p2)

                    ; #19950: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #25780: origin
                    (checked_p2)

                    ; #29794: <==commonly_known== 51666 (neg)
                    (Pd_checked_p2)

                    ; #30366: <==commonly_known== 25780 (pos)
                    (Bd_checked_p2)

                    ; #42833: <==closure== 19950 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #43345: <==commonly_known== 51666 (neg)
                    (Pb_checked_p2)

                    ; #44716: <==closure== 12081 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #53605: <==commonly_known== 25780 (pos)
                    (Ba_checked_p2)

                    ; #65745: <==commonly_known== 25780 (pos)
                    (Bb_checked_p2)

                    ; #68454: <==commonly_known== 51666 (neg)
                    (Pa_checked_p2)

                    ; #78178: <==commonly_known== 51666 (neg)
                    (Pc_checked_p2)

                    ; #14816: <==uncertain_firing== 19950 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #25321: <==negation-removal== 42833 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27093: <==uncertain_firing== 12081 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #28088: <==negation-removal== 78178 (pos)
                    (not (Bc_not_checked_p2))

                    ; #33560: <==negation-removal== 19950 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #41942: <==negation-removal== 65745 (pos)
                    (not (Pb_not_checked_p2))

                    ; #43408: <==uncertain_firing== 42833 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #51666: <==negation-removal== 25780 (pos)
                    (not (not_checked_p2))

                    ; #53419: <==uncertain_firing== 44716 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #63559: <==negation-removal== 53605 (pos)
                    (not (Pa_not_checked_p2))

                    ; #69524: <==negation-removal== 43345 (pos)
                    (not (Bb_not_checked_p2))

                    ; #71888: <==negation-removal== 30366 (pos)
                    (not (Pd_not_checked_p2))

                    ; #80049: <==negation-removal== 12081 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #85855: <==negation-removal== 29794 (pos)
                    (not (Bd_not_checked_p2))

                    ; #86949: <==negation-removal== 15395 (pos)
                    (not (Pc_not_checked_p2))

                    ; #87626: <==negation-removal== 44716 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #88877: <==negation-removal== 68454 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13194: <==closure== 59049 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #14545: <==commonly_known== 71522 (neg)
                    (Pc_checked_p3)

                    ; #17404: <==commonly_known== 71153 (pos)
                    (Bb_checked_p3)

                    ; #18987: <==commonly_known== 71522 (neg)
                    (Pa_checked_p3)

                    ; #30663: <==commonly_known== 71153 (pos)
                    (Bc_checked_p3)

                    ; #40674: <==commonly_known== 71153 (pos)
                    (Ba_checked_p3)

                    ; #51496: <==closure== 92000 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #53398: <==commonly_known== 71522 (neg)
                    (Pb_checked_p3)

                    ; #59049: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #62313: <==commonly_known== 71522 (neg)
                    (Pd_checked_p3)

                    ; #71153: origin
                    (checked_p3)

                    ; #73187: <==commonly_known== 71153 (pos)
                    (Bd_checked_p3)

                    ; #92000: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #10765: <==negation-removal== 51496 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #21481: <==uncertain_firing== 92000 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #29496: <==negation-removal== 53398 (pos)
                    (not (Bb_not_checked_p3))

                    ; #31892: <==uncertain_firing== 59049 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37144: <==negation-removal== 92000 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #44634: <==uncertain_firing== 51496 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #44920: <==negation-removal== 18987 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45125: <==negation-removal== 62313 (pos)
                    (not (Bd_not_checked_p3))

                    ; #47991: <==negation-removal== 40674 (pos)
                    (not (Pa_not_checked_p3))

                    ; #49423: <==negation-removal== 14545 (pos)
                    (not (Bc_not_checked_p3))

                    ; #52956: <==negation-removal== 59049 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #62600: <==uncertain_firing== 13194 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #66527: <==negation-removal== 73187 (pos)
                    (not (Pd_not_checked_p3))

                    ; #71115: <==negation-removal== 17404 (pos)
                    (not (Pb_not_checked_p3))

                    ; #71522: <==negation-removal== 71153 (pos)
                    (not (not_checked_p3))

                    ; #74812: <==negation-removal== 30663 (pos)
                    (not (Pc_not_checked_p3))

                    ; #84338: <==negation-removal== 13194 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12677: <==commonly_known== 14637 (pos)
                    (Bb_checked_p4)

                    ; #14637: origin
                    (checked_p4)

                    ; #23397: <==commonly_known== 10123 (neg)
                    (Pa_checked_p4)

                    ; #33275: <==commonly_known== 10123 (neg)
                    (Pd_checked_p4)

                    ; #34783: <==closure== 59560 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #36352: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #37907: <==commonly_known== 14637 (pos)
                    (Bd_checked_p4)

                    ; #52898: <==commonly_known== 10123 (neg)
                    (Pc_checked_p4)

                    ; #52975: <==commonly_known== 14637 (pos)
                    (Ba_checked_p4)

                    ; #59560: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #76067: <==commonly_known== 10123 (neg)
                    (Pb_checked_p4)

                    ; #81138: <==closure== 36352 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #86440: <==commonly_known== 14637 (pos)
                    (Bc_checked_p4)

                    ; #10123: <==negation-removal== 14637 (pos)
                    (not (not_checked_p4))

                    ; #12541: <==uncertain_firing== 81138 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #18836: <==negation-removal== 34783 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #27802: <==uncertain_firing== 36352 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #29306: <==negation-removal== 86440 (pos)
                    (not (Pc_not_checked_p4))

                    ; #39818: <==negation-removal== 37907 (pos)
                    (not (Pd_not_checked_p4))

                    ; #40321: <==negation-removal== 81138 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #44220: <==negation-removal== 36352 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #48414: <==uncertain_firing== 34783 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #49606: <==negation-removal== 52898 (pos)
                    (not (Bc_not_checked_p4))

                    ; #57235: <==negation-removal== 12677 (pos)
                    (not (Pb_not_checked_p4))

                    ; #62498: <==negation-removal== 59560 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #64694: <==negation-removal== 33275 (pos)
                    (not (Bd_not_checked_p4))

                    ; #65345: <==uncertain_firing== 59560 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #66117: <==negation-removal== 23397 (pos)
                    (not (Ba_not_checked_p4))

                    ; #72552: <==negation-removal== 76067 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86469: <==negation-removal== 52975 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #24204: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #37781: <==commonly_known== 57097 (pos)
                    (Bb_checked_p5)

                    ; #37938: <==closure== 60071 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #48764: <==commonly_known== 69348 (neg)
                    (Pa_checked_p5)

                    ; #53690: <==commonly_known== 57097 (pos)
                    (Bd_checked_p5)

                    ; #56547: <==commonly_known== 57097 (pos)
                    (Bc_checked_p5)

                    ; #57097: origin
                    (checked_p5)

                    ; #60071: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #70522: <==commonly_known== 69348 (neg)
                    (Pd_checked_p5)

                    ; #74345: <==commonly_known== 69348 (neg)
                    (Pc_checked_p5)

                    ; #76279: <==commonly_known== 69348 (neg)
                    (Pb_checked_p5)

                    ; #78213: <==commonly_known== 57097 (pos)
                    (Ba_checked_p5)

                    ; #83816: <==closure== 24204 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #14116: <==negation-removal== 24204 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20675: <==negation-removal== 76279 (pos)
                    (not (Bb_not_checked_p5))

                    ; #22941: <==negation-removal== 53690 (pos)
                    (not (Pd_not_checked_p5))

                    ; #31927: <==negation-removal== 70522 (pos)
                    (not (Bd_not_checked_p5))

                    ; #33654: <==uncertain_firing== 83816 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #37826: <==negation-removal== 83816 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #43328: <==negation-removal== 56547 (pos)
                    (not (Pc_not_checked_p5))

                    ; #55337: <==uncertain_firing== 37938 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #55789: <==negation-removal== 48764 (pos)
                    (not (Ba_not_checked_p5))

                    ; #60020: <==negation-removal== 37781 (pos)
                    (not (Pb_not_checked_p5))

                    ; #69348: <==negation-removal== 57097 (pos)
                    (not (not_checked_p5))

                    ; #69832: <==uncertain_firing== 24204 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #71042: <==negation-removal== 74345 (pos)
                    (not (Bc_not_checked_p5))

                    ; #78004: <==uncertain_firing== 60071 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #82832: <==negation-removal== 37938 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #85122: <==negation-removal== 60071 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #91745: <==negation-removal== 78213 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11407: <==commonly_known== 91081 (pos)
                    (Bc_checked_p6)

                    ; #25297: <==commonly_known== 58914 (neg)
                    (Pb_checked_p6)

                    ; #32312: <==commonly_known== 91081 (pos)
                    (Bb_checked_p6)

                    ; #33780: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #41806: <==commonly_known== 58914 (neg)
                    (Pd_checked_p6)

                    ; #46122: <==closure== 49047 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #49047: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #55051: <==commonly_known== 91081 (pos)
                    (Bd_checked_p6)

                    ; #67765: <==commonly_known== 58914 (neg)
                    (Pc_checked_p6)

                    ; #69410: <==commonly_known== 91081 (pos)
                    (Ba_checked_p6)

                    ; #76126: <==commonly_known== 58914 (neg)
                    (Pa_checked_p6)

                    ; #91081: origin
                    (checked_p6)

                    ; #92173: <==closure== 33780 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #10971: <==negation-removal== 41806 (pos)
                    (not (Bd_not_checked_p6))

                    ; #11034: <==negation-removal== 67765 (pos)
                    (not (Bc_not_checked_p6))

                    ; #13992: <==negation-removal== 76126 (pos)
                    (not (Ba_not_checked_p6))

                    ; #20426: <==negation-removal== 25297 (pos)
                    (not (Bb_not_checked_p6))

                    ; #30419: <==negation-removal== 32312 (pos)
                    (not (Pb_not_checked_p6))

                    ; #30744: <==negation-removal== 46122 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #31838: <==negation-removal== 69410 (pos)
                    (not (Pa_not_checked_p6))

                    ; #33029: <==uncertain_firing== 33780 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #51007: <==uncertain_firing== 49047 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #58235: <==negation-removal== 11407 (pos)
                    (not (Pc_not_checked_p6))

                    ; #58914: <==negation-removal== 91081 (pos)
                    (not (not_checked_p6))

                    ; #60473: <==negation-removal== 49047 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #66912: <==negation-removal== 92173 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #69219: <==negation-removal== 33780 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #77906: <==uncertain_firing== 92173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85279: <==uncertain_firing== 46122 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #92690: <==negation-removal== 55051 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15598: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #19235: <==commonly_known== 57511 (neg)
                    (Pc_checked_p7)

                    ; #20868: <==commonly_known== 57511 (neg)
                    (Pb_checked_p7)

                    ; #29510: <==commonly_known== 54734 (pos)
                    (Bb_checked_p7)

                    ; #35278: <==commonly_known== 57511 (neg)
                    (Pa_checked_p7)

                    ; #35522: <==commonly_known== 54734 (pos)
                    (Bd_checked_p7)

                    ; #40242: <==commonly_known== 54734 (pos)
                    (Ba_checked_p7)

                    ; #50817: <==closure== 58006 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #54734: origin
                    (checked_p7)

                    ; #58006: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #69962: <==commonly_known== 54734 (pos)
                    (Bc_checked_p7)

                    ; #83672: <==closure== 15598 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #85204: <==commonly_known== 57511 (neg)
                    (Pd_checked_p7)

                    ; #14444: <==negation-removal== 35278 (pos)
                    (not (Ba_not_checked_p7))

                    ; #23638: <==negation-removal== 58006 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #24205: <==negation-removal== 15598 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #25416: <==uncertain_firing== 83672 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #25844: <==negation-removal== 40242 (pos)
                    (not (Pa_not_checked_p7))

                    ; #26428: <==uncertain_firing== 58006 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #33713: <==negation-removal== 35522 (pos)
                    (not (Pd_not_checked_p7))

                    ; #35438: <==negation-removal== 20868 (pos)
                    (not (Bb_not_checked_p7))

                    ; #41865: <==uncertain_firing== 50817 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #57511: <==negation-removal== 54734 (pos)
                    (not (not_checked_p7))

                    ; #66045: <==negation-removal== 19235 (pos)
                    (not (Bc_not_checked_p7))

                    ; #66910: <==uncertain_firing== 15598 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #74414: <==negation-removal== 85204 (pos)
                    (not (Bd_not_checked_p7))

                    ; #77082: <==negation-removal== 50817 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #80499: <==negation-removal== 29510 (pos)
                    (not (Pb_not_checked_p7))

                    ; #88004: <==negation-removal== 83672 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #88290: <==negation-removal== 69962 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10979: <==commonly_known== 69889 (pos)
                    (Ba_checked_p8)

                    ; #16409: <==closure== 86856 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #19105: <==commonly_known== 69889 (pos)
                    (Bb_checked_p8)

                    ; #20470: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #46598: <==commonly_known== 69889 (pos)
                    (Bd_checked_p8)

                    ; #63613: <==commonly_known== 28015 (neg)
                    (Pd_checked_p8)

                    ; #65354: <==commonly_known== 28015 (neg)
                    (Pa_checked_p8)

                    ; #65498: <==commonly_known== 28015 (neg)
                    (Pb_checked_p8)

                    ; #69889: origin
                    (checked_p8)

                    ; #77377: <==commonly_known== 28015 (neg)
                    (Pc_checked_p8)

                    ; #86856: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #90906: <==commonly_known== 69889 (pos)
                    (Bc_checked_p8)

                    ; #91783: <==closure== 20470 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #10361: <==negation-removal== 90906 (pos)
                    (not (Pc_not_checked_p8))

                    ; #16192: <==negation-removal== 65498 (pos)
                    (not (Bb_not_checked_p8))

                    ; #21596: <==negation-removal== 46598 (pos)
                    (not (Pd_not_checked_p8))

                    ; #26332: <==uncertain_firing== 20470 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #27914: <==negation-removal== 10979 (pos)
                    (not (Pa_not_checked_p8))

                    ; #28015: <==negation-removal== 69889 (pos)
                    (not (not_checked_p8))

                    ; #28536: <==uncertain_firing== 16409 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #28907: <==negation-removal== 19105 (pos)
                    (not (Pb_not_checked_p8))

                    ; #30917: <==uncertain_firing== 91783 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #33984: <==negation-removal== 91783 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #51891: <==negation-removal== 77377 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54443: <==negation-removal== 86856 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #55053: <==negation-removal== 65354 (pos)
                    (not (Ba_not_checked_p8))

                    ; #64230: <==negation-removal== 63613 (pos)
                    (not (Bd_not_checked_p8))

                    ; #64471: <==negation-removal== 16409 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #71231: <==negation-removal== 20470 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #91627: <==uncertain_firing== 86856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #29750: origin
                    (checked_p9)

                    ; #39204: <==commonly_known== 39065 (neg)
                    (Pc_checked_p9)

                    ; #46033: <==commonly_known== 29750 (pos)
                    (Bc_checked_p9)

                    ; #48713: <==commonly_known== 29750 (pos)
                    (Ba_checked_p9)

                    ; #51353: <==commonly_known== 39065 (neg)
                    (Pd_checked_p9)

                    ; #53240: <==commonly_known== 29750 (pos)
                    (Bb_checked_p9)

                    ; #58593: <==closure== 79039 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #60485: <==closure== 62956 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #62956: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #69753: <==commonly_known== 39065 (neg)
                    (Pa_checked_p9)

                    ; #69879: <==commonly_known== 39065 (neg)
                    (Pb_checked_p9)

                    ; #79039: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #82571: <==commonly_known== 29750 (pos)
                    (Bd_checked_p9)

                    ; #10036: <==negation-removal== 53240 (pos)
                    (not (Pb_not_checked_p9))

                    ; #12416: <==uncertain_firing== 60485 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #15603: <==negation-removal== 79039 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #23301: <==uncertain_firing== 62956 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #24068: <==uncertain_firing== 58593 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #32259: <==negation-removal== 69753 (pos)
                    (not (Ba_not_checked_p9))

                    ; #32781: <==negation-removal== 60485 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #35049: <==negation-removal== 48713 (pos)
                    (not (Pa_not_checked_p9))

                    ; #39065: <==negation-removal== 29750 (pos)
                    (not (not_checked_p9))

                    ; #42036: <==negation-removal== 39204 (pos)
                    (not (Bc_not_checked_p9))

                    ; #47163: <==negation-removal== 51353 (pos)
                    (not (Bd_not_checked_p9))

                    ; #52408: <==uncertain_firing== 79039 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #63871: <==negation-removal== 62956 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #65130: <==negation-removal== 58593 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #76150: <==negation-removal== 69879 (pos)
                    (not (Bb_not_checked_p9))

                    ; #79776: <==negation-removal== 46033 (pos)
                    (not (Pc_not_checked_p9))

                    ; #90759: <==negation-removal== 82571 (pos)
                    (not (Pd_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #18198: <==closure== 86374 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #20917: <==commonly_known== 26681 (pos)
                    (Bc_checked_p1)

                    ; #26681: origin
                    (checked_p1)

                    ; #31094: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #31196: <==closure== 31094 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #43766: <==commonly_known== 77618 (neg)
                    (Pc_checked_p1)

                    ; #52294: <==commonly_known== 77618 (neg)
                    (Pa_checked_p1)

                    ; #58343: <==commonly_known== 26681 (pos)
                    (Bd_checked_p1)

                    ; #60391: <==commonly_known== 26681 (pos)
                    (Ba_checked_p1)

                    ; #71865: <==commonly_known== 77618 (neg)
                    (Pd_checked_p1)

                    ; #72032: <==commonly_known== 26681 (pos)
                    (Bb_checked_p1)

                    ; #73169: <==commonly_known== 77618 (neg)
                    (Pb_checked_p1)

                    ; #86374: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #10996: <==uncertain_firing== 31196 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #15980: <==uncertain_firing== 86374 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #22035: <==negation-removal== 71865 (pos)
                    (not (Bd_not_checked_p1))

                    ; #33035: <==negation-removal== 18198 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #33374: <==uncertain_firing== 18198 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #34854: <==negation-removal== 72032 (pos)
                    (not (Pb_not_checked_p1))

                    ; #49143: <==negation-removal== 73169 (pos)
                    (not (Bb_not_checked_p1))

                    ; #52775: <==negation-removal== 58343 (pos)
                    (not (Pd_not_checked_p1))

                    ; #53163: <==negation-removal== 31094 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #58292: <==uncertain_firing== 31094 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #61732: <==negation-removal== 20917 (pos)
                    (not (Pc_not_checked_p1))

                    ; #62451: <==negation-removal== 52294 (pos)
                    (not (Ba_not_checked_p1))

                    ; #65399: <==negation-removal== 86374 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #68235: <==negation-removal== 60391 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68732: <==negation-removal== 43766 (pos)
                    (not (Bc_not_checked_p1))

                    ; #71160: <==negation-removal== 31196 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #77618: <==negation-removal== 26681 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15395: <==commonly_known== 25780 (pos)
                    (Bc_checked_p2)

                    ; #25780: origin
                    (checked_p2)

                    ; #29794: <==commonly_known== 51666 (neg)
                    (Pd_checked_p2)

                    ; #30366: <==commonly_known== 25780 (pos)
                    (Bd_checked_p2)

                    ; #31504: <==closure== 36548 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #35630: <==closure== 79504 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #36548: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #43345: <==commonly_known== 51666 (neg)
                    (Pb_checked_p2)

                    ; #53605: <==commonly_known== 25780 (pos)
                    (Ba_checked_p2)

                    ; #65745: <==commonly_known== 25780 (pos)
                    (Bb_checked_p2)

                    ; #68454: <==commonly_known== 51666 (neg)
                    (Pa_checked_p2)

                    ; #78178: <==commonly_known== 51666 (neg)
                    (Pc_checked_p2)

                    ; #79504: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #12289: <==uncertain_firing== 35630 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #18703: <==uncertain_firing== 31504 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #28088: <==negation-removal== 78178 (pos)
                    (not (Bc_not_checked_p2))

                    ; #34571: <==negation-removal== 79504 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #41942: <==negation-removal== 65745 (pos)
                    (not (Pb_not_checked_p2))

                    ; #48807: <==negation-removal== 31504 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #51666: <==negation-removal== 25780 (pos)
                    (not (not_checked_p2))

                    ; #51795: <==uncertain_firing== 79504 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #63559: <==negation-removal== 53605 (pos)
                    (not (Pa_not_checked_p2))

                    ; #68386: <==negation-removal== 36548 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69524: <==negation-removal== 43345 (pos)
                    (not (Bb_not_checked_p2))

                    ; #71888: <==negation-removal== 30366 (pos)
                    (not (Pd_not_checked_p2))

                    ; #74323: <==uncertain_firing== 36548 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #85855: <==negation-removal== 29794 (pos)
                    (not (Bd_not_checked_p2))

                    ; #86949: <==negation-removal== 15395 (pos)
                    (not (Pc_not_checked_p2))

                    ; #88877: <==negation-removal== 68454 (pos)
                    (not (Ba_not_checked_p2))

                    ; #92144: <==negation-removal== 35630 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14545: <==commonly_known== 71522 (neg)
                    (Pc_checked_p3)

                    ; #17404: <==commonly_known== 71153 (pos)
                    (Bb_checked_p3)

                    ; #18909: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #18987: <==commonly_known== 71522 (neg)
                    (Pa_checked_p3)

                    ; #30663: <==commonly_known== 71153 (pos)
                    (Bc_checked_p3)

                    ; #40674: <==commonly_known== 71153 (pos)
                    (Ba_checked_p3)

                    ; #42673: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #53398: <==commonly_known== 71522 (neg)
                    (Pb_checked_p3)

                    ; #58706: <==closure== 42673 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #59929: <==closure== 18909 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #62313: <==commonly_known== 71522 (neg)
                    (Pd_checked_p3)

                    ; #71153: origin
                    (checked_p3)

                    ; #73187: <==commonly_known== 71153 (pos)
                    (Bd_checked_p3)

                    ; #17366: <==uncertain_firing== 58706 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #27963: <==negation-removal== 42673 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #29496: <==negation-removal== 53398 (pos)
                    (not (Bb_not_checked_p3))

                    ; #37192: <==negation-removal== 59929 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #44920: <==negation-removal== 18987 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45125: <==negation-removal== 62313 (pos)
                    (not (Bd_not_checked_p3))

                    ; #47991: <==negation-removal== 40674 (pos)
                    (not (Pa_not_checked_p3))

                    ; #49423: <==negation-removal== 14545 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60882: <==negation-removal== 18909 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #66084: <==uncertain_firing== 18909 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #66527: <==negation-removal== 73187 (pos)
                    (not (Pd_not_checked_p3))

                    ; #70851: <==uncertain_firing== 42673 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #71115: <==negation-removal== 17404 (pos)
                    (not (Pb_not_checked_p3))

                    ; #71510: <==negation-removal== 58706 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #71522: <==negation-removal== 71153 (pos)
                    (not (not_checked_p3))

                    ; #74812: <==negation-removal== 30663 (pos)
                    (not (Pc_not_checked_p3))

                    ; #81082: <==uncertain_firing== 59929 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12677: <==commonly_known== 14637 (pos)
                    (Bb_checked_p4)

                    ; #13594: <==closure== 51620 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #14094: <==closure== 91712 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #14637: origin
                    (checked_p4)

                    ; #23397: <==commonly_known== 10123 (neg)
                    (Pa_checked_p4)

                    ; #33275: <==commonly_known== 10123 (neg)
                    (Pd_checked_p4)

                    ; #37907: <==commonly_known== 14637 (pos)
                    (Bd_checked_p4)

                    ; #51620: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #52898: <==commonly_known== 10123 (neg)
                    (Pc_checked_p4)

                    ; #52975: <==commonly_known== 14637 (pos)
                    (Ba_checked_p4)

                    ; #76067: <==commonly_known== 10123 (neg)
                    (Pb_checked_p4)

                    ; #86440: <==commonly_known== 14637 (pos)
                    (Bc_checked_p4)

                    ; #91712: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #10123: <==negation-removal== 14637 (pos)
                    (not (not_checked_p4))

                    ; #29306: <==negation-removal== 86440 (pos)
                    (not (Pc_not_checked_p4))

                    ; #30175: <==uncertain_firing== 51620 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #38581: <==uncertain_firing== 13594 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #39818: <==negation-removal== 37907 (pos)
                    (not (Pd_not_checked_p4))

                    ; #44999: <==uncertain_firing== 14094 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #46597: <==negation-removal== 91712 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #49606: <==negation-removal== 52898 (pos)
                    (not (Bc_not_checked_p4))

                    ; #56288: <==uncertain_firing== 91712 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #57235: <==negation-removal== 12677 (pos)
                    (not (Pb_not_checked_p4))

                    ; #64694: <==negation-removal== 33275 (pos)
                    (not (Bd_not_checked_p4))

                    ; #65496: <==negation-removal== 51620 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #66117: <==negation-removal== 23397 (pos)
                    (not (Ba_not_checked_p4))

                    ; #72552: <==negation-removal== 76067 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86230: <==negation-removal== 14094 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #86469: <==negation-removal== 52975 (pos)
                    (not (Pa_not_checked_p4))

                    ; #92161: <==negation-removal== 13594 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #16580: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #20649: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #37781: <==commonly_known== 57097 (pos)
                    (Bb_checked_p5)

                    ; #48764: <==commonly_known== 69348 (neg)
                    (Pa_checked_p5)

                    ; #50215: <==closure== 20649 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #53690: <==commonly_known== 57097 (pos)
                    (Bd_checked_p5)

                    ; #56547: <==commonly_known== 57097 (pos)
                    (Bc_checked_p5)

                    ; #57097: origin
                    (checked_p5)

                    ; #63537: <==closure== 16580 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #70522: <==commonly_known== 69348 (neg)
                    (Pd_checked_p5)

                    ; #74345: <==commonly_known== 69348 (neg)
                    (Pc_checked_p5)

                    ; #76279: <==commonly_known== 69348 (neg)
                    (Pb_checked_p5)

                    ; #78213: <==commonly_known== 57097 (pos)
                    (Ba_checked_p5)

                    ; #20675: <==negation-removal== 76279 (pos)
                    (not (Bb_not_checked_p5))

                    ; #22941: <==negation-removal== 53690 (pos)
                    (not (Pd_not_checked_p5))

                    ; #23690: <==negation-removal== 20649 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #31927: <==negation-removal== 70522 (pos)
                    (not (Bd_not_checked_p5))

                    ; #41126: <==uncertain_firing== 63537 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #43328: <==negation-removal== 56547 (pos)
                    (not (Pc_not_checked_p5))

                    ; #55789: <==negation-removal== 48764 (pos)
                    (not (Ba_not_checked_p5))

                    ; #59804: <==negation-removal== 50215 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #60020: <==negation-removal== 37781 (pos)
                    (not (Pb_not_checked_p5))

                    ; #66469: <==negation-removal== 63537 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #69348: <==negation-removal== 57097 (pos)
                    (not (not_checked_p5))

                    ; #71042: <==negation-removal== 74345 (pos)
                    (not (Bc_not_checked_p5))

                    ; #75305: <==uncertain_firing== 16580 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #77952: <==uncertain_firing== 50215 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #83571: <==negation-removal== 16580 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #88115: <==uncertain_firing== 20649 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #91745: <==negation-removal== 78213 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11407: <==commonly_known== 91081 (pos)
                    (Bc_checked_p6)

                    ; #25297: <==commonly_known== 58914 (neg)
                    (Pb_checked_p6)

                    ; #32312: <==commonly_known== 91081 (pos)
                    (Bb_checked_p6)

                    ; #40546: <==closure== 57995 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #41806: <==commonly_known== 58914 (neg)
                    (Pd_checked_p6)

                    ; #45992: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #55051: <==commonly_known== 91081 (pos)
                    (Bd_checked_p6)

                    ; #57995: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #67765: <==commonly_known== 58914 (neg)
                    (Pc_checked_p6)

                    ; #69410: <==commonly_known== 91081 (pos)
                    (Ba_checked_p6)

                    ; #70555: <==closure== 45992 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #76126: <==commonly_known== 58914 (neg)
                    (Pa_checked_p6)

                    ; #91081: origin
                    (checked_p6)

                    ; #10971: <==negation-removal== 41806 (pos)
                    (not (Bd_not_checked_p6))

                    ; #11034: <==negation-removal== 67765 (pos)
                    (not (Bc_not_checked_p6))

                    ; #13992: <==negation-removal== 76126 (pos)
                    (not (Ba_not_checked_p6))

                    ; #20426: <==negation-removal== 25297 (pos)
                    (not (Bb_not_checked_p6))

                    ; #22254: <==uncertain_firing== 45992 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #30419: <==negation-removal== 32312 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31838: <==negation-removal== 69410 (pos)
                    (not (Pa_not_checked_p6))

                    ; #31899: <==negation-removal== 45992 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #31959: <==uncertain_firing== 70555 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #39234: <==negation-removal== 57995 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #45455: <==uncertain_firing== 40546 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #52951: <==negation-removal== 70555 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58235: <==negation-removal== 11407 (pos)
                    (not (Pc_not_checked_p6))

                    ; #58914: <==negation-removal== 91081 (pos)
                    (not (not_checked_p6))

                    ; #76093: <==uncertain_firing== 57995 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #81298: <==negation-removal== 40546 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #92690: <==negation-removal== 55051 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19235: <==commonly_known== 57511 (neg)
                    (Pc_checked_p7)

                    ; #20868: <==commonly_known== 57511 (neg)
                    (Pb_checked_p7)

                    ; #24776: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #29510: <==commonly_known== 54734 (pos)
                    (Bb_checked_p7)

                    ; #35278: <==commonly_known== 57511 (neg)
                    (Pa_checked_p7)

                    ; #35522: <==commonly_known== 54734 (pos)
                    (Bd_checked_p7)

                    ; #40242: <==commonly_known== 54734 (pos)
                    (Ba_checked_p7)

                    ; #40516: <==closure== 71890 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #54734: origin
                    (checked_p7)

                    ; #68447: <==closure== 24776 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #69962: <==commonly_known== 54734 (pos)
                    (Bc_checked_p7)

                    ; #71890: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #85204: <==commonly_known== 57511 (neg)
                    (Pd_checked_p7)

                    ; #14444: <==negation-removal== 35278 (pos)
                    (not (Ba_not_checked_p7))

                    ; #25844: <==negation-removal== 40242 (pos)
                    (not (Pa_not_checked_p7))

                    ; #28370: <==uncertain_firing== 24776 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #33713: <==negation-removal== 35522 (pos)
                    (not (Pd_not_checked_p7))

                    ; #35438: <==negation-removal== 20868 (pos)
                    (not (Bb_not_checked_p7))

                    ; #36358: <==negation-removal== 68447 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #37150: <==negation-removal== 40516 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #56601: <==uncertain_firing== 40516 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #56728: <==uncertain_firing== 68447 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #57511: <==negation-removal== 54734 (pos)
                    (not (not_checked_p7))

                    ; #64706: <==negation-removal== 24776 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #66045: <==negation-removal== 19235 (pos)
                    (not (Bc_not_checked_p7))

                    ; #73349: <==uncertain_firing== 71890 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #74414: <==negation-removal== 85204 (pos)
                    (not (Bd_not_checked_p7))

                    ; #80499: <==negation-removal== 29510 (pos)
                    (not (Pb_not_checked_p7))

                    ; #88290: <==negation-removal== 69962 (pos)
                    (not (Pc_not_checked_p7))

                    ; #90495: <==negation-removal== 71890 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10979: <==commonly_known== 69889 (pos)
                    (Ba_checked_p8)

                    ; #13262: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #16794: <==closure== 20904 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #19105: <==commonly_known== 69889 (pos)
                    (Bb_checked_p8)

                    ; #20904: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #46598: <==commonly_known== 69889 (pos)
                    (Bd_checked_p8)

                    ; #63613: <==commonly_known== 28015 (neg)
                    (Pd_checked_p8)

                    ; #65354: <==commonly_known== 28015 (neg)
                    (Pa_checked_p8)

                    ; #65498: <==commonly_known== 28015 (neg)
                    (Pb_checked_p8)

                    ; #69889: origin
                    (checked_p8)

                    ; #71083: <==closure== 13262 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #77377: <==commonly_known== 28015 (neg)
                    (Pc_checked_p8)

                    ; #90906: <==commonly_known== 69889 (pos)
                    (Bc_checked_p8)

                    ; #10361: <==negation-removal== 90906 (pos)
                    (not (Pc_not_checked_p8))

                    ; #13369: <==negation-removal== 71083 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #16192: <==negation-removal== 65498 (pos)
                    (not (Bb_not_checked_p8))

                    ; #18079: <==uncertain_firing== 20904 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #19687: <==negation-removal== 13262 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #21596: <==negation-removal== 46598 (pos)
                    (not (Pd_not_checked_p8))

                    ; #27914: <==negation-removal== 10979 (pos)
                    (not (Pa_not_checked_p8))

                    ; #28015: <==negation-removal== 69889 (pos)
                    (not (not_checked_p8))

                    ; #28907: <==negation-removal== 19105 (pos)
                    (not (Pb_not_checked_p8))

                    ; #51891: <==negation-removal== 77377 (pos)
                    (not (Bc_not_checked_p8))

                    ; #52362: <==negation-removal== 20904 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #55053: <==negation-removal== 65354 (pos)
                    (not (Ba_not_checked_p8))

                    ; #61529: <==uncertain_firing== 16794 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #64230: <==negation-removal== 63613 (pos)
                    (not (Bd_not_checked_p8))

                    ; #73981: <==uncertain_firing== 71083 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #85031: <==negation-removal== 16794 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #89842: <==uncertain_firing== 13262 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #29750: origin
                    (checked_p9)

                    ; #34212: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #39204: <==commonly_known== 39065 (neg)
                    (Pc_checked_p9)

                    ; #46033: <==commonly_known== 29750 (pos)
                    (Bc_checked_p9)

                    ; #46289: <==closure== 69560 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #48713: <==commonly_known== 29750 (pos)
                    (Ba_checked_p9)

                    ; #51353: <==commonly_known== 39065 (neg)
                    (Pd_checked_p9)

                    ; #53240: <==commonly_known== 29750 (pos)
                    (Bb_checked_p9)

                    ; #69560: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #69753: <==commonly_known== 39065 (neg)
                    (Pa_checked_p9)

                    ; #69879: <==commonly_known== 39065 (neg)
                    (Pb_checked_p9)

                    ; #77531: <==closure== 34212 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #82571: <==commonly_known== 29750 (pos)
                    (Bd_checked_p9)

                    ; #10036: <==negation-removal== 53240 (pos)
                    (not (Pb_not_checked_p9))

                    ; #24948: <==uncertain_firing== 77531 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #29915: <==negation-removal== 69560 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #32259: <==negation-removal== 69753 (pos)
                    (not (Ba_not_checked_p9))

                    ; #32900: <==uncertain_firing== 34212 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #35049: <==negation-removal== 48713 (pos)
                    (not (Pa_not_checked_p9))

                    ; #39065: <==negation-removal== 29750 (pos)
                    (not (not_checked_p9))

                    ; #42036: <==negation-removal== 39204 (pos)
                    (not (Bc_not_checked_p9))

                    ; #47163: <==negation-removal== 51353 (pos)
                    (not (Bd_not_checked_p9))

                    ; #49318: <==uncertain_firing== 46289 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #62836: <==uncertain_firing== 69560 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #73557: <==negation-removal== 46289 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #76150: <==negation-removal== 69879 (pos)
                    (not (Bb_not_checked_p9))

                    ; #79776: <==negation-removal== 46033 (pos)
                    (not (Pc_not_checked_p9))

                    ; #87303: <==negation-removal== 77531 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #90483: <==negation-removal== 34212 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #90759: <==negation-removal== 82571 (pos)
                    (not (Pd_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #20917: <==commonly_known== 26681 (pos)
                    (Bc_checked_p1)

                    ; #26681: origin
                    (checked_p1)

                    ; #38168: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #43766: <==commonly_known== 77618 (neg)
                    (Pc_checked_p1)

                    ; #47198: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #52294: <==commonly_known== 77618 (neg)
                    (Pa_checked_p1)

                    ; #58343: <==commonly_known== 26681 (pos)
                    (Bd_checked_p1)

                    ; #60391: <==commonly_known== 26681 (pos)
                    (Ba_checked_p1)

                    ; #67189: <==closure== 38168 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #71865: <==commonly_known== 77618 (neg)
                    (Pd_checked_p1)

                    ; #72032: <==commonly_known== 26681 (pos)
                    (Bb_checked_p1)

                    ; #73169: <==commonly_known== 77618 (neg)
                    (Pb_checked_p1)

                    ; #78283: <==closure== 47198 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #22035: <==negation-removal== 71865 (pos)
                    (not (Bd_not_checked_p1))

                    ; #22627: <==negation-removal== 47198 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #29505: <==uncertain_firing== 67189 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #34854: <==negation-removal== 72032 (pos)
                    (not (Pb_not_checked_p1))

                    ; #40224: <==negation-removal== 38168 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #47841: <==uncertain_firing== 38168 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #49143: <==negation-removal== 73169 (pos)
                    (not (Bb_not_checked_p1))

                    ; #52775: <==negation-removal== 58343 (pos)
                    (not (Pd_not_checked_p1))

                    ; #56270: <==negation-removal== 78283 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57477: <==negation-removal== 67189 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #61140: <==uncertain_firing== 47198 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #61732: <==negation-removal== 20917 (pos)
                    (not (Pc_not_checked_p1))

                    ; #62451: <==negation-removal== 52294 (pos)
                    (not (Ba_not_checked_p1))

                    ; #68235: <==negation-removal== 60391 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68732: <==negation-removal== 43766 (pos)
                    (not (Bc_not_checked_p1))

                    ; #72574: <==uncertain_firing== 78283 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #77618: <==negation-removal== 26681 (pos)
                    (not (not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15395: <==commonly_known== 25780 (pos)
                    (Bc_checked_p2)

                    ; #25780: origin
                    (checked_p2)

                    ; #29794: <==commonly_known== 51666 (neg)
                    (Pd_checked_p2)

                    ; #30366: <==commonly_known== 25780 (pos)
                    (Bd_checked_p2)

                    ; #30378: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #43345: <==commonly_known== 51666 (neg)
                    (Pb_checked_p2)

                    ; #53605: <==commonly_known== 25780 (pos)
                    (Ba_checked_p2)

                    ; #58434: <==closure== 88783 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #65745: <==commonly_known== 25780 (pos)
                    (Bb_checked_p2)

                    ; #68446: <==closure== 30378 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #68454: <==commonly_known== 51666 (neg)
                    (Pa_checked_p2)

                    ; #78178: <==commonly_known== 51666 (neg)
                    (Pc_checked_p2)

                    ; #88783: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #11378: <==negation-removal== 68446 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #28088: <==negation-removal== 78178 (pos)
                    (not (Bc_not_checked_p2))

                    ; #38335: <==uncertain_firing== 68446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #41137: <==uncertain_firing== 58434 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #41942: <==negation-removal== 65745 (pos)
                    (not (Pb_not_checked_p2))

                    ; #45022: <==negation-removal== 88783 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #51460: <==uncertain_firing== 88783 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #51666: <==negation-removal== 25780 (pos)
                    (not (not_checked_p2))

                    ; #53257: <==uncertain_firing== 30378 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #63559: <==negation-removal== 53605 (pos)
                    (not (Pa_not_checked_p2))

                    ; #69524: <==negation-removal== 43345 (pos)
                    (not (Bb_not_checked_p2))

                    ; #70530: <==negation-removal== 30378 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #71888: <==negation-removal== 30366 (pos)
                    (not (Pd_not_checked_p2))

                    ; #85855: <==negation-removal== 29794 (pos)
                    (not (Bd_not_checked_p2))

                    ; #86949: <==negation-removal== 15395 (pos)
                    (not (Pc_not_checked_p2))

                    ; #88877: <==negation-removal== 68454 (pos)
                    (not (Ba_not_checked_p2))

                    ; #90888: <==negation-removal== 58434 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14545: <==commonly_known== 71522 (neg)
                    (Pc_checked_p3)

                    ; #17404: <==commonly_known== 71153 (pos)
                    (Bb_checked_p3)

                    ; #18987: <==commonly_known== 71522 (neg)
                    (Pa_checked_p3)

                    ; #30663: <==commonly_known== 71153 (pos)
                    (Bc_checked_p3)

                    ; #40674: <==commonly_known== 71153 (pos)
                    (Ba_checked_p3)

                    ; #46621: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #53398: <==commonly_known== 71522 (neg)
                    (Pb_checked_p3)

                    ; #58234: <==closure== 46621 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #62313: <==commonly_known== 71522 (neg)
                    (Pd_checked_p3)

                    ; #70282: <==closure== 90595 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #71153: origin
                    (checked_p3)

                    ; #73187: <==commonly_known== 71153 (pos)
                    (Bd_checked_p3)

                    ; #90595: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #14952: <==uncertain_firing== 58234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #23937: <==negation-removal== 58234 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #25975: <==negation-removal== 46621 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #29496: <==negation-removal== 53398 (pos)
                    (not (Bb_not_checked_p3))

                    ; #36116: <==negation-removal== 90595 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #44255: <==uncertain_firing== 90595 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #44920: <==negation-removal== 18987 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45125: <==negation-removal== 62313 (pos)
                    (not (Bd_not_checked_p3))

                    ; #46153: <==uncertain_firing== 70282 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #47991: <==negation-removal== 40674 (pos)
                    (not (Pa_not_checked_p3))

                    ; #49423: <==negation-removal== 14545 (pos)
                    (not (Bc_not_checked_p3))

                    ; #57766: <==uncertain_firing== 46621 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #66527: <==negation-removal== 73187 (pos)
                    (not (Pd_not_checked_p3))

                    ; #71115: <==negation-removal== 17404 (pos)
                    (not (Pb_not_checked_p3))

                    ; #71522: <==negation-removal== 71153 (pos)
                    (not (not_checked_p3))

                    ; #74812: <==negation-removal== 30663 (pos)
                    (not (Pc_not_checked_p3))

                    ; #89946: <==negation-removal== 70282 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12677: <==commonly_known== 14637 (pos)
                    (Bb_checked_p4)

                    ; #14637: origin
                    (checked_p4)

                    ; #14665: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #19021: <==closure== 78615 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #23397: <==commonly_known== 10123 (neg)
                    (Pa_checked_p4)

                    ; #33275: <==commonly_known== 10123 (neg)
                    (Pd_checked_p4)

                    ; #37907: <==commonly_known== 14637 (pos)
                    (Bd_checked_p4)

                    ; #45709: <==closure== 14665 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #52898: <==commonly_known== 10123 (neg)
                    (Pc_checked_p4)

                    ; #52975: <==commonly_known== 14637 (pos)
                    (Ba_checked_p4)

                    ; #76067: <==commonly_known== 10123 (neg)
                    (Pb_checked_p4)

                    ; #78615: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #86440: <==commonly_known== 14637 (pos)
                    (Bc_checked_p4)

                    ; #10123: <==negation-removal== 14637 (pos)
                    (not (not_checked_p4))

                    ; #15612: <==uncertain_firing== 14665 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #22443: <==uncertain_firing== 78615 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #29306: <==negation-removal== 86440 (pos)
                    (not (Pc_not_checked_p4))

                    ; #29562: <==negation-removal== 45709 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #31722: <==negation-removal== 14665 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #36810: <==uncertain_firing== 45709 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #39818: <==negation-removal== 37907 (pos)
                    (not (Pd_not_checked_p4))

                    ; #41461: <==negation-removal== 78615 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #49606: <==negation-removal== 52898 (pos)
                    (not (Bc_not_checked_p4))

                    ; #51207: <==negation-removal== 19021 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #56716: <==uncertain_firing== 19021 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #57235: <==negation-removal== 12677 (pos)
                    (not (Pb_not_checked_p4))

                    ; #64694: <==negation-removal== 33275 (pos)
                    (not (Bd_not_checked_p4))

                    ; #66117: <==negation-removal== 23397 (pos)
                    (not (Ba_not_checked_p4))

                    ; #72552: <==negation-removal== 76067 (pos)
                    (not (Bb_not_checked_p4))

                    ; #86469: <==negation-removal== 52975 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #26381: <==closure== 48675 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #26521: <==closure== 44850 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #37781: <==commonly_known== 57097 (pos)
                    (Bb_checked_p5)

                    ; #44850: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #48675: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #48764: <==commonly_known== 69348 (neg)
                    (Pa_checked_p5)

                    ; #53690: <==commonly_known== 57097 (pos)
                    (Bd_checked_p5)

                    ; #56547: <==commonly_known== 57097 (pos)
                    (Bc_checked_p5)

                    ; #57097: origin
                    (checked_p5)

                    ; #70522: <==commonly_known== 69348 (neg)
                    (Pd_checked_p5)

                    ; #74345: <==commonly_known== 69348 (neg)
                    (Pc_checked_p5)

                    ; #76279: <==commonly_known== 69348 (neg)
                    (Pb_checked_p5)

                    ; #78213: <==commonly_known== 57097 (pos)
                    (Ba_checked_p5)

                    ; #10348: <==negation-removal== 26381 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #20675: <==negation-removal== 76279 (pos)
                    (not (Bb_not_checked_p5))

                    ; #22706: <==uncertain_firing== 44850 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #22905: <==negation-removal== 48675 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #22941: <==negation-removal== 53690 (pos)
                    (not (Pd_not_checked_p5))

                    ; #31927: <==negation-removal== 70522 (pos)
                    (not (Bd_not_checked_p5))

                    ; #32800: <==uncertain_firing== 26381 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #40177: <==negation-removal== 26521 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #43328: <==negation-removal== 56547 (pos)
                    (not (Pc_not_checked_p5))

                    ; #55789: <==negation-removal== 48764 (pos)
                    (not (Ba_not_checked_p5))

                    ; #60020: <==negation-removal== 37781 (pos)
                    (not (Pb_not_checked_p5))

                    ; #69348: <==negation-removal== 57097 (pos)
                    (not (not_checked_p5))

                    ; #70319: <==uncertain_firing== 26521 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #71042: <==negation-removal== 74345 (pos)
                    (not (Bc_not_checked_p5))

                    ; #76989: <==uncertain_firing== 48675 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82663: <==negation-removal== 44850 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #91745: <==negation-removal== 78213 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11407: <==commonly_known== 91081 (pos)
                    (Bc_checked_p6)

                    ; #11540: <==closure== 66086 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #25297: <==commonly_known== 58914 (neg)
                    (Pb_checked_p6)

                    ; #32312: <==commonly_known== 91081 (pos)
                    (Bb_checked_p6)

                    ; #41806: <==commonly_known== 58914 (neg)
                    (Pd_checked_p6)

                    ; #55051: <==commonly_known== 91081 (pos)
                    (Bd_checked_p6)

                    ; #66086: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #67765: <==commonly_known== 58914 (neg)
                    (Pc_checked_p6)

                    ; #69410: <==commonly_known== 91081 (pos)
                    (Ba_checked_p6)

                    ; #76126: <==commonly_known== 58914 (neg)
                    (Pa_checked_p6)

                    ; #83047: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #87129: <==closure== 83047 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #91081: origin
                    (checked_p6)

                    ; #10971: <==negation-removal== 41806 (pos)
                    (not (Bd_not_checked_p6))

                    ; #11034: <==negation-removal== 67765 (pos)
                    (not (Bc_not_checked_p6))

                    ; #13992: <==negation-removal== 76126 (pos)
                    (not (Ba_not_checked_p6))

                    ; #20426: <==negation-removal== 25297 (pos)
                    (not (Bb_not_checked_p6))

                    ; #30419: <==negation-removal== 32312 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31838: <==negation-removal== 69410 (pos)
                    (not (Pa_not_checked_p6))

                    ; #35210: <==uncertain_firing== 11540 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #35220: <==negation-removal== 87129 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #37890: <==uncertain_firing== 66086 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #43299: <==negation-removal== 83047 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #52260: <==uncertain_firing== 83047 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #56062: <==uncertain_firing== 87129 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #58235: <==negation-removal== 11407 (pos)
                    (not (Pc_not_checked_p6))

                    ; #58914: <==negation-removal== 91081 (pos)
                    (not (not_checked_p6))

                    ; #74662: <==negation-removal== 11540 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #84419: <==negation-removal== 66086 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #92690: <==negation-removal== 55051 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19235: <==commonly_known== 57511 (neg)
                    (Pc_checked_p7)

                    ; #20868: <==commonly_known== 57511 (neg)
                    (Pb_checked_p7)

                    ; #22011: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #29510: <==commonly_known== 54734 (pos)
                    (Bb_checked_p7)

                    ; #35278: <==commonly_known== 57511 (neg)
                    (Pa_checked_p7)

                    ; #35522: <==commonly_known== 54734 (pos)
                    (Bd_checked_p7)

                    ; #39719: <==closure== 69493 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #40242: <==commonly_known== 54734 (pos)
                    (Ba_checked_p7)

                    ; #54734: origin
                    (checked_p7)

                    ; #69493: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #69962: <==commonly_known== 54734 (pos)
                    (Bc_checked_p7)

                    ; #85204: <==commonly_known== 57511 (neg)
                    (Pd_checked_p7)

                    ; #85989: <==closure== 22011 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #14444: <==negation-removal== 35278 (pos)
                    (not (Ba_not_checked_p7))

                    ; #17121: <==uncertain_firing== 39719 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #25844: <==negation-removal== 40242 (pos)
                    (not (Pa_not_checked_p7))

                    ; #33713: <==negation-removal== 35522 (pos)
                    (not (Pd_not_checked_p7))

                    ; #34775: <==uncertain_firing== 69493 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #35438: <==negation-removal== 20868 (pos)
                    (not (Bb_not_checked_p7))

                    ; #38704: <==uncertain_firing== 22011 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #40810: <==negation-removal== 39719 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #41978: <==negation-removal== 85989 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #57511: <==negation-removal== 54734 (pos)
                    (not (not_checked_p7))

                    ; #61507: <==uncertain_firing== 85989 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66045: <==negation-removal== 19235 (pos)
                    (not (Bc_not_checked_p7))

                    ; #71238: <==negation-removal== 22011 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #74414: <==negation-removal== 85204 (pos)
                    (not (Bd_not_checked_p7))

                    ; #80499: <==negation-removal== 29510 (pos)
                    (not (Pb_not_checked_p7))

                    ; #88290: <==negation-removal== 69962 (pos)
                    (not (Pc_not_checked_p7))

                    ; #99572: <==negation-removal== 69493 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10979: <==commonly_known== 69889 (pos)
                    (Ba_checked_p8)

                    ; #19105: <==commonly_known== 69889 (pos)
                    (Bb_checked_p8)

                    ; #39596: <==closure== 70035 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #46598: <==commonly_known== 69889 (pos)
                    (Bd_checked_p8)

                    ; #63613: <==commonly_known== 28015 (neg)
                    (Pd_checked_p8)

                    ; #64933: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #65354: <==commonly_known== 28015 (neg)
                    (Pa_checked_p8)

                    ; #65498: <==commonly_known== 28015 (neg)
                    (Pb_checked_p8)

                    ; #69889: origin
                    (checked_p8)

                    ; #70035: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #77377: <==commonly_known== 28015 (neg)
                    (Pc_checked_p8)

                    ; #80242: <==closure== 64933 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #90906: <==commonly_known== 69889 (pos)
                    (Bc_checked_p8)

                    ; #10361: <==negation-removal== 90906 (pos)
                    (not (Pc_not_checked_p8))

                    ; #16192: <==negation-removal== 65498 (pos)
                    (not (Bb_not_checked_p8))

                    ; #21596: <==negation-removal== 46598 (pos)
                    (not (Pd_not_checked_p8))

                    ; #27914: <==negation-removal== 10979 (pos)
                    (not (Pa_not_checked_p8))

                    ; #28015: <==negation-removal== 69889 (pos)
                    (not (not_checked_p8))

                    ; #28907: <==negation-removal== 19105 (pos)
                    (not (Pb_not_checked_p8))

                    ; #38939: <==negation-removal== 70035 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #45965: <==uncertain_firing== 70035 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #50871: <==uncertain_firing== 64933 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #51891: <==negation-removal== 77377 (pos)
                    (not (Bc_not_checked_p8))

                    ; #51974: <==negation-removal== 80242 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #53346: <==negation-removal== 39596 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #55053: <==negation-removal== 65354 (pos)
                    (not (Ba_not_checked_p8))

                    ; #61294: <==uncertain_firing== 39596 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #62771: <==uncertain_firing== 80242 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #64230: <==negation-removal== 63613 (pos)
                    (not (Bd_not_checked_p8))

                    ; #64910: <==negation-removal== 64933 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #22371: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #29750: origin
                    (checked_p9)

                    ; #35984: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #39204: <==commonly_known== 39065 (neg)
                    (Pc_checked_p9)

                    ; #46033: <==commonly_known== 29750 (pos)
                    (Bc_checked_p9)

                    ; #48713: <==commonly_known== 29750 (pos)
                    (Ba_checked_p9)

                    ; #51353: <==commonly_known== 39065 (neg)
                    (Pd_checked_p9)

                    ; #51989: <==closure== 35984 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #53240: <==commonly_known== 29750 (pos)
                    (Bb_checked_p9)

                    ; #63320: <==closure== 22371 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #69753: <==commonly_known== 39065 (neg)
                    (Pa_checked_p9)

                    ; #69879: <==commonly_known== 39065 (neg)
                    (Pb_checked_p9)

                    ; #82571: <==commonly_known== 29750 (pos)
                    (Bd_checked_p9)

                    ; #10036: <==negation-removal== 53240 (pos)
                    (not (Pb_not_checked_p9))

                    ; #16181: <==uncertain_firing== 63320 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #28565: <==negation-removal== 35984 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #32259: <==negation-removal== 69753 (pos)
                    (not (Ba_not_checked_p9))

                    ; #35049: <==negation-removal== 48713 (pos)
                    (not (Pa_not_checked_p9))

                    ; #39065: <==negation-removal== 29750 (pos)
                    (not (not_checked_p9))

                    ; #42036: <==negation-removal== 39204 (pos)
                    (not (Bc_not_checked_p9))

                    ; #43692: <==negation-removal== 63320 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #47163: <==negation-removal== 51353 (pos)
                    (not (Bd_not_checked_p9))

                    ; #55591: <==uncertain_firing== 35984 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #55887: <==negation-removal== 22371 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #76150: <==negation-removal== 69879 (pos)
                    (not (Bb_not_checked_p9))

                    ; #79776: <==negation-removal== 46033 (pos)
                    (not (Pc_not_checked_p9))

                    ; #81080: <==uncertain_firing== 22371 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #82490: <==uncertain_firing== 51989 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #90725: <==negation-removal== 51989 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #90759: <==negation-removal== 82571 (pos)
                    (not (Pd_not_checked_p9))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #20917: <==commonly_known== 26681 (pos)
                    (Bc_checked_p1)

                    ; #26681: origin
                    (checked_p1)

                    ; #43766: <==commonly_known== 77618 (neg)
                    (Pc_checked_p1)

                    ; #52294: <==commonly_known== 77618 (neg)
                    (Pa_checked_p1)

                    ; #58343: <==commonly_known== 26681 (pos)
                    (Bd_checked_p1)

                    ; #60391: <==commonly_known== 26681 (pos)
                    (Ba_checked_p1)

                    ; #61514: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #63297: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #71865: <==commonly_known== 77618 (neg)
                    (Pd_checked_p1)

                    ; #72032: <==commonly_known== 26681 (pos)
                    (Bb_checked_p1)

                    ; #73169: <==commonly_known== 77618 (neg)
                    (Pb_checked_p1)

                    ; #80836: <==closure== 63297 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #82900: <==closure== 61514 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #16530: <==uncertain_firing== 61514 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #18454: <==uncertain_firing== 63297 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #21333: <==uncertain_firing== 80836 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #22035: <==negation-removal== 71865 (pos)
                    (not (Bd_not_checked_p1))

                    ; #28527: <==negation-removal== 61514 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34854: <==negation-removal== 72032 (pos)
                    (not (Pb_not_checked_p1))

                    ; #45114: <==negation-removal== 63297 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #48691: <==negation-removal== 80836 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #49143: <==negation-removal== 73169 (pos)
                    (not (Bb_not_checked_p1))

                    ; #52775: <==negation-removal== 58343 (pos)
                    (not (Pd_not_checked_p1))

                    ; #53692: <==uncertain_firing== 82900 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #58602: <==negation-removal== 82900 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #61732: <==negation-removal== 20917 (pos)
                    (not (Pc_not_checked_p1))

                    ; #62451: <==negation-removal== 52294 (pos)
                    (not (Ba_not_checked_p1))

                    ; #68235: <==negation-removal== 60391 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68732: <==negation-removal== 43766 (pos)
                    (not (Bc_not_checked_p1))

                    ; #77618: <==negation-removal== 26681 (pos)
                    (not (not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15011: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #15395: <==commonly_known== 25780 (pos)
                    (Bc_checked_p2)

                    ; #25780: origin
                    (checked_p2)

                    ; #29794: <==commonly_known== 51666 (neg)
                    (Pd_checked_p2)

                    ; #30366: <==commonly_known== 25780 (pos)
                    (Bd_checked_p2)

                    ; #34514: <==closure== 42087 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #42087: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #43345: <==commonly_known== 51666 (neg)
                    (Pb_checked_p2)

                    ; #44176: <==closure== 15011 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #53605: <==commonly_known== 25780 (pos)
                    (Ba_checked_p2)

                    ; #65745: <==commonly_known== 25780 (pos)
                    (Bb_checked_p2)

                    ; #68454: <==commonly_known== 51666 (neg)
                    (Pa_checked_p2)

                    ; #78178: <==commonly_known== 51666 (neg)
                    (Pc_checked_p2)

                    ; #10461: <==negation-removal== 44176 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #16831: <==negation-removal== 15011 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #28088: <==negation-removal== 78178 (pos)
                    (not (Bc_not_checked_p2))

                    ; #35226: <==uncertain_firing== 15011 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #39844: <==uncertain_firing== 44176 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #41942: <==negation-removal== 65745 (pos)
                    (not (Pb_not_checked_p2))

                    ; #42018: <==uncertain_firing== 34514 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #51666: <==negation-removal== 25780 (pos)
                    (not (not_checked_p2))

                    ; #63559: <==negation-removal== 53605 (pos)
                    (not (Pa_not_checked_p2))

                    ; #69524: <==negation-removal== 43345 (pos)
                    (not (Bb_not_checked_p2))

                    ; #71888: <==negation-removal== 30366 (pos)
                    (not (Pd_not_checked_p2))

                    ; #76340: <==negation-removal== 34514 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #83448: <==uncertain_firing== 42087 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #85080: <==negation-removal== 42087 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #85855: <==negation-removal== 29794 (pos)
                    (not (Bd_not_checked_p2))

                    ; #86949: <==negation-removal== 15395 (pos)
                    (not (Pc_not_checked_p2))

                    ; #88877: <==negation-removal== 68454 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14545: <==commonly_known== 71522 (neg)
                    (Pc_checked_p3)

                    ; #17404: <==commonly_known== 71153 (pos)
                    (Bb_checked_p3)

                    ; #18987: <==commonly_known== 71522 (neg)
                    (Pa_checked_p3)

                    ; #25755: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #30663: <==commonly_known== 71153 (pos)
                    (Bc_checked_p3)

                    ; #31670: <==closure== 25755 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #40674: <==commonly_known== 71153 (pos)
                    (Ba_checked_p3)

                    ; #53398: <==commonly_known== 71522 (neg)
                    (Pb_checked_p3)

                    ; #62313: <==commonly_known== 71522 (neg)
                    (Pd_checked_p3)

                    ; #62680: <==closure== 89715 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #71153: origin
                    (checked_p3)

                    ; #73187: <==commonly_known== 71153 (pos)
                    (Bd_checked_p3)

                    ; #89715: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #15009: <==uncertain_firing== 25755 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #16299: <==uncertain_firing== 89715 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #27373: <==uncertain_firing== 62680 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #29496: <==negation-removal== 53398 (pos)
                    (not (Bb_not_checked_p3))

                    ; #31494: <==negation-removal== 25755 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #42453: <==negation-removal== 31670 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #44920: <==negation-removal== 18987 (pos)
                    (not (Ba_not_checked_p3))

                    ; #45125: <==negation-removal== 62313 (pos)
                    (not (Bd_not_checked_p3))

                    ; #47991: <==negation-removal== 40674 (pos)
                    (not (Pa_not_checked_p3))

                    ; #49423: <==negation-removal== 14545 (pos)
                    (not (Bc_not_checked_p3))

                    ; #62322: <==uncertain_firing== 31670 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #66527: <==negation-removal== 73187 (pos)
                    (not (Pd_not_checked_p3))

                    ; #71115: <==negation-removal== 17404 (pos)
                    (not (Pb_not_checked_p3))

                    ; #71522: <==negation-removal== 71153 (pos)
                    (not (not_checked_p3))

                    ; #74812: <==negation-removal== 30663 (pos)
                    (not (Pc_not_checked_p3))

                    ; #78711: <==negation-removal== 62680 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #87732: <==negation-removal== 89715 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12438: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #12677: <==commonly_known== 14637 (pos)
                    (Bb_checked_p4)

                    ; #14637: origin
                    (checked_p4)

                    ; #23397: <==commonly_known== 10123 (neg)
                    (Pa_checked_p4)

                    ; #33275: <==commonly_known== 10123 (neg)
                    (Pd_checked_p4)

                    ; #37907: <==commonly_known== 14637 (pos)
                    (Bd_checked_p4)

                    ; #38091: <==closure== 12438 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #51077: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #52898: <==commonly_known== 10123 (neg)
                    (Pc_checked_p4)

                    ; #52975: <==commonly_known== 14637 (pos)
                    (Ba_checked_p4)

                    ; #76067: <==commonly_known== 10123 (neg)
                    (Pb_checked_p4)

                    ; #77975: <==closure== 51077 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #86440: <==commonly_known== 14637 (pos)
                    (Bc_checked_p4)

                    ; #10123: <==negation-removal== 14637 (pos)
                    (not (not_checked_p4))

                    ; #11455: <==negation-removal== 51077 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #29306: <==negation-removal== 86440 (pos)
                    (not (Pc_not_checked_p4))

                    ; #32809: <==uncertain_firing== 38091 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #35368: <==uncertain_firing== 77975 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #38625: <==negation-removal== 38091 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #39818: <==negation-removal== 37907 (pos)
                    (not (Pd_not_checked_p4))

                    ; #47715: <==uncertain_firing== 12438 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #49606: <==negation-removal== 52898 (pos)
                    (not (Bc_not_checked_p4))

                    ; #57235: <==negation-removal== 12677 (pos)
                    (not (Pb_not_checked_p4))

                    ; #64694: <==negation-removal== 33275 (pos)
                    (not (Bd_not_checked_p4))

                    ; #66117: <==negation-removal== 23397 (pos)
                    (not (Ba_not_checked_p4))

                    ; #71885: <==negation-removal== 77975 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #72552: <==negation-removal== 76067 (pos)
                    (not (Bb_not_checked_p4))

                    ; #84251: <==uncertain_firing== 51077 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #86469: <==negation-removal== 52975 (pos)
                    (not (Pa_not_checked_p4))

                    ; #91502: <==negation-removal== 12438 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #30058: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #37781: <==commonly_known== 57097 (pos)
                    (Bb_checked_p5)

                    ; #45693: <==closure== 30058 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #47609: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #48764: <==commonly_known== 69348 (neg)
                    (Pa_checked_p5)

                    ; #53690: <==commonly_known== 57097 (pos)
                    (Bd_checked_p5)

                    ; #56547: <==commonly_known== 57097 (pos)
                    (Bc_checked_p5)

                    ; #57097: origin
                    (checked_p5)

                    ; #70522: <==commonly_known== 69348 (neg)
                    (Pd_checked_p5)

                    ; #74345: <==commonly_known== 69348 (neg)
                    (Pc_checked_p5)

                    ; #76279: <==commonly_known== 69348 (neg)
                    (Pb_checked_p5)

                    ; #76848: <==closure== 47609 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #78213: <==commonly_known== 57097 (pos)
                    (Ba_checked_p5)

                    ; #10999: <==uncertain_firing== 76848 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #20675: <==negation-removal== 76279 (pos)
                    (not (Bb_not_checked_p5))

                    ; #22941: <==negation-removal== 53690 (pos)
                    (not (Pd_not_checked_p5))

                    ; #25831: <==negation-removal== 47609 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #31927: <==negation-removal== 70522 (pos)
                    (not (Bd_not_checked_p5))

                    ; #34906: <==negation-removal== 76848 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #35687: <==negation-removal== 30058 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #42151: <==uncertain_firing== 47609 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #43328: <==negation-removal== 56547 (pos)
                    (not (Pc_not_checked_p5))

                    ; #52783: <==uncertain_firing== 30058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #55789: <==negation-removal== 48764 (pos)
                    (not (Ba_not_checked_p5))

                    ; #60020: <==negation-removal== 37781 (pos)
                    (not (Pb_not_checked_p5))

                    ; #60871: <==negation-removal== 45693 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #69348: <==negation-removal== 57097 (pos)
                    (not (not_checked_p5))

                    ; #71042: <==negation-removal== 74345 (pos)
                    (not (Bc_not_checked_p5))

                    ; #87496: <==uncertain_firing== 45693 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #91745: <==negation-removal== 78213 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11407: <==commonly_known== 91081 (pos)
                    (Bc_checked_p6)

                    ; #25297: <==commonly_known== 58914 (neg)
                    (Pb_checked_p6)

                    ; #28135: <==closure== 82346 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #32312: <==commonly_known== 91081 (pos)
                    (Bb_checked_p6)

                    ; #39299: <==closure== 85103 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #41806: <==commonly_known== 58914 (neg)
                    (Pd_checked_p6)

                    ; #55051: <==commonly_known== 91081 (pos)
                    (Bd_checked_p6)

                    ; #67765: <==commonly_known== 58914 (neg)
                    (Pc_checked_p6)

                    ; #69410: <==commonly_known== 91081 (pos)
                    (Ba_checked_p6)

                    ; #76126: <==commonly_known== 58914 (neg)
                    (Pa_checked_p6)

                    ; #82346: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #85103: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #91081: origin
                    (checked_p6)

                    ; #10971: <==negation-removal== 41806 (pos)
                    (not (Bd_not_checked_p6))

                    ; #11034: <==negation-removal== 67765 (pos)
                    (not (Bc_not_checked_p6))

                    ; #13992: <==negation-removal== 76126 (pos)
                    (not (Ba_not_checked_p6))

                    ; #17648: <==uncertain_firing== 39299 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #20426: <==negation-removal== 25297 (pos)
                    (not (Bb_not_checked_p6))

                    ; #22221: <==uncertain_firing== 85103 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #30419: <==negation-removal== 32312 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31838: <==negation-removal== 69410 (pos)
                    (not (Pa_not_checked_p6))

                    ; #35894: <==negation-removal== 28135 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #58235: <==negation-removal== 11407 (pos)
                    (not (Pc_not_checked_p6))

                    ; #58914: <==negation-removal== 91081 (pos)
                    (not (not_checked_p6))

                    ; #70033: <==uncertain_firing== 28135 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #74811: <==negation-removal== 85103 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #78915: <==negation-removal== 39299 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #79725: <==negation-removal== 82346 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #87512: <==uncertain_firing== 82346 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #92690: <==negation-removal== 55051 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19235: <==commonly_known== 57511 (neg)
                    (Pc_checked_p7)

                    ; #20868: <==commonly_known== 57511 (neg)
                    (Pb_checked_p7)

                    ; #24076: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #29510: <==commonly_known== 54734 (pos)
                    (Bb_checked_p7)

                    ; #35278: <==commonly_known== 57511 (neg)
                    (Pa_checked_p7)

                    ; #35522: <==commonly_known== 54734 (pos)
                    (Bd_checked_p7)

                    ; #40242: <==commonly_known== 54734 (pos)
                    (Ba_checked_p7)

                    ; #54734: origin
                    (checked_p7)

                    ; #55772: <==closure== 69022 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #56255: <==closure== 24076 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #69022: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #69962: <==commonly_known== 54734 (pos)
                    (Bc_checked_p7)

                    ; #85204: <==commonly_known== 57511 (neg)
                    (Pd_checked_p7)

                    ; #11158: <==uncertain_firing== 24076 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #14444: <==negation-removal== 35278 (pos)
                    (not (Ba_not_checked_p7))

                    ; #18006: <==negation-removal== 56255 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #21632: <==uncertain_firing== 55772 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #25844: <==negation-removal== 40242 (pos)
                    (not (Pa_not_checked_p7))

                    ; #29816: <==uncertain_firing== 56255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #33713: <==negation-removal== 35522 (pos)
                    (not (Pd_not_checked_p7))

                    ; #35438: <==negation-removal== 20868 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57511: <==negation-removal== 54734 (pos)
                    (not (not_checked_p7))

                    ; #65457: <==negation-removal== 24076 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #66045: <==negation-removal== 19235 (pos)
                    (not (Bc_not_checked_p7))

                    ; #68026: <==negation-removal== 69022 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #71805: <==uncertain_firing== 69022 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #74414: <==negation-removal== 85204 (pos)
                    (not (Bd_not_checked_p7))

                    ; #80499: <==negation-removal== 29510 (pos)
                    (not (Pb_not_checked_p7))

                    ; #84038: <==negation-removal== 55772 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #88290: <==negation-removal== 69962 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10979: <==commonly_known== 69889 (pos)
                    (Ba_checked_p8)

                    ; #16851: <==closure== 56665 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #19105: <==commonly_known== 69889 (pos)
                    (Bb_checked_p8)

                    ; #46598: <==commonly_known== 69889 (pos)
                    (Bd_checked_p8)

                    ; #56665: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #61959: <==closure== 81511 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #63613: <==commonly_known== 28015 (neg)
                    (Pd_checked_p8)

                    ; #65354: <==commonly_known== 28015 (neg)
                    (Pa_checked_p8)

                    ; #65498: <==commonly_known== 28015 (neg)
                    (Pb_checked_p8)

                    ; #69889: origin
                    (checked_p8)

                    ; #77377: <==commonly_known== 28015 (neg)
                    (Pc_checked_p8)

                    ; #81511: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #90906: <==commonly_known== 69889 (pos)
                    (Bc_checked_p8)

                    ; #10361: <==negation-removal== 90906 (pos)
                    (not (Pc_not_checked_p8))

                    ; #13953: <==uncertain_firing== 61959 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #16192: <==negation-removal== 65498 (pos)
                    (not (Bb_not_checked_p8))

                    ; #21596: <==negation-removal== 46598 (pos)
                    (not (Pd_not_checked_p8))

                    ; #23009: <==uncertain_firing== 16851 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #27908: <==uncertain_firing== 81511 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #27914: <==negation-removal== 10979 (pos)
                    (not (Pa_not_checked_p8))

                    ; #28015: <==negation-removal== 69889 (pos)
                    (not (not_checked_p8))

                    ; #28907: <==negation-removal== 19105 (pos)
                    (not (Pb_not_checked_p8))

                    ; #33300: <==negation-removal== 61959 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #45066: <==negation-removal== 81511 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #50349: <==negation-removal== 56665 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #51891: <==negation-removal== 77377 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55053: <==negation-removal== 65354 (pos)
                    (not (Ba_not_checked_p8))

                    ; #57482: <==uncertain_firing== 56665 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #64230: <==negation-removal== 63613 (pos)
                    (not (Bd_not_checked_p8))

                    ; #64614: <==negation-removal== 16851 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #25586: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #28215: <==closure== 25586 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #29750: origin
                    (checked_p9)

                    ; #33676: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #39204: <==commonly_known== 39065 (neg)
                    (Pc_checked_p9)

                    ; #46033: <==commonly_known== 29750 (pos)
                    (Bc_checked_p9)

                    ; #48713: <==commonly_known== 29750 (pos)
                    (Ba_checked_p9)

                    ; #51353: <==commonly_known== 39065 (neg)
                    (Pd_checked_p9)

                    ; #51866: <==closure== 33676 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #53240: <==commonly_known== 29750 (pos)
                    (Bb_checked_p9)

                    ; #69753: <==commonly_known== 39065 (neg)
                    (Pa_checked_p9)

                    ; #69879: <==commonly_known== 39065 (neg)
                    (Pb_checked_p9)

                    ; #82571: <==commonly_known== 29750 (pos)
                    (Bd_checked_p9)

                    ; #10036: <==negation-removal== 53240 (pos)
                    (not (Pb_not_checked_p9))

                    ; #23574: <==negation-removal== 28215 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #32259: <==negation-removal== 69753 (pos)
                    (not (Ba_not_checked_p9))

                    ; #35049: <==negation-removal== 48713 (pos)
                    (not (Pa_not_checked_p9))

                    ; #37683: <==negation-removal== 51866 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #39065: <==negation-removal== 29750 (pos)
                    (not (not_checked_p9))

                    ; #42036: <==negation-removal== 39204 (pos)
                    (not (Bc_not_checked_p9))

                    ; #47163: <==negation-removal== 51353 (pos)
                    (not (Bd_not_checked_p9))

                    ; #47286: <==uncertain_firing== 33676 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #61698: <==uncertain_firing== 25586 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #67433: <==uncertain_firing== 51866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69996: <==uncertain_firing== 28215 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #76150: <==negation-removal== 69879 (pos)
                    (not (Bb_not_checked_p9))

                    ; #76991: <==negation-removal== 25586 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #79776: <==negation-removal== 46033 (pos)
                    (not (Pc_not_checked_p9))

                    ; #86821: <==negation-removal== 33676 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #90759: <==negation-removal== 82571 (pos)
                    (not (Pd_not_checked_p9))))

)