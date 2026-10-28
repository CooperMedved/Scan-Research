/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:52:34 2026
/////////////////////////////////////////////////////////////


module s400 ( CK, CLR, FM, GRN1, GRN2, RED1, RED2, TEST, YLW1, YLW2, scan_in, 
        scan_out, scan_enable );
  input CK, CLR, FM, TEST, scan_in, scan_enable;
  output GRN1, GRN2, RED1, RED2, YLW1, YLW2, scan_out;
  wire   TESTL, TESTLVIINLATCHVCDAD, FML, FMLVIINLATCHVCDAD, TCOMB_YA2,
         OLATCHVUC_6, Y1C, OLATCHVUC_5, R2C, TCOMB_GA2, GRN1, TCOMB_GA1,
         OLATCH_FEL, C3_Q3, C3_Q3VD, C3_Q2, C3_Q2VD, C3_Q1, C3_Q1VD, C3_Q0,
         C3_Q0VD, UC_16, UC_16VD, UC_17, UC_17VD, UC_18, UC_18VD, UC_19,
         UC_19VD, UC_8, UC_8VD, UC_9, UC_9VD, UC_10, UC_10VD, UC_11, UC_11VD,
         n51, n52, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n112, n113, n114;
  assign scan_out = GRN1;

  SAEDRVT14_FSDPQ_V2LP_1 DFF_0_Q_reg ( .D(TESTLVIINLATCHVCDAD), .SI(scan_in), 
        .SE(scan_enable), .CK(CK), .Q(TESTL) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_1_Q_reg ( .D(FMLVIINLATCHVCDAD), .SI(TESTL), .SE(
        scan_enable), .CK(CK), .Q(FML) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_20_Q_reg ( .D(UC_11VD), .SI(UC_10), .SE(n114), 
        .CK(CK), .Q(UC_11) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_16_Q_reg ( .D(UC_19VD), .SI(UC_18), .SE(n114), 
        .CK(CK), .Q(UC_19) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_12_Q_reg ( .D(C3_Q0VD), .SI(C3_Q1), .SE(n114), 
        .CK(CK), .Q(C3_Q0) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_11_Q_reg ( .D(C3_Q1VD), .SI(C3_Q2), .SE(n113), 
        .CK(CK), .Q(C3_Q1) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_10_Q_reg ( .D(C3_Q2VD), .SI(C3_Q3), .SE(n114), 
        .CK(CK), .Q(C3_Q2) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_9_Q_reg ( .D(C3_Q3VD), .SI(OLATCH_FEL), .SE(n113), 
        .CK(CK), .Q(C3_Q3) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_8_Q_reg ( .D(n51), .SI(GRN2), .SE(n114), .CK(CK), 
        .Q(OLATCH_FEL) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_7_Q_reg ( .D(TCOMB_GA1), .SI(UC_11), .SE(n113), 
        .CK(CK), .Q(GRN1) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_6_Q_reg ( .D(TCOMB_GA2), .SI(RED1), .SE(
        scan_enable), .CK(CK), .Q(GRN2) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_2_Q_reg ( .D(TCOMB_YA2), .SI(FML), .SE(
        scan_enable), .CK(CK), .Q(YLW2) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_5_Q_reg ( .D(n52), .SI(OLATCHVUC_5), .SE(
        scan_enable), .CK(CK), .Q(RED1) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_15_Q_reg ( .D(UC_18VD), .SI(UC_17), .SE(n113), 
        .CK(CK), .Q(UC_18) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_14_Q_reg ( .D(UC_17VD), .SI(UC_16), .SE(n114), 
        .CK(CK), .Q(UC_17) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_13_Q_reg ( .D(UC_16VD), .SI(C3_Q0), .SE(n113), 
        .CK(CK), .Q(UC_16) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_3_Q_reg ( .D(Y1C), .SI(YLW2), .SE(scan_enable), 
        .CK(CK), .Q(OLATCHVUC_6) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_4_Q_reg ( .D(R2C), .SI(OLATCHVUC_6), .SE(
        scan_enable), .CK(CK), .Q(OLATCHVUC_5) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_19_Q_reg ( .D(UC_10VD), .SI(UC_9), .SE(n113), 
        .CK(CK), .Q(UC_10) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_18_Q_reg ( .D(UC_9VD), .SI(UC_8), .SE(n114), .CK(
        CK), .Q(UC_9) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_17_Q_reg ( .D(UC_8VD), .SI(UC_19), .SE(n113), 
        .CK(CK), .Q(UC_8) );
  SAEDRVT14_INV_0P5 U75 ( .A(CLR), .X(n57) );
  SAEDRVT14_OAI21_0P5 U76 ( .A1(n55), .A2(n56), .B(n57), .X(TCOMB_GA2) );
  SAEDRVT14_INV_0P5 U77 ( .A(n103), .X(n55) );
  SAEDRVT14_ND2_CDC_0P5 U78 ( .A1(n106), .A2(n102), .X(n56) );
  SAEDRVT14_INV_0P5 U79 ( .A(OLATCHVUC_5), .X(RED2) );
  SAEDRVT14_INV_0P5 U80 ( .A(OLATCHVUC_6), .X(YLW1) );
  SAEDRVT14_NR2_1 U81 ( .A1(CLR), .A2(C3_Q2), .X(n87) );
  SAEDRVT14_INV_0P5 U82 ( .A(OLATCH_FEL), .X(n58) );
  SAEDRVT14_AN4_0P5 U83 ( .A1(C3_Q0), .A2(C3_Q1), .A3(n87), .A4(n58), .X(
        TCOMB_YA2) );
  SAEDRVT14_OAI21_0P5 U84 ( .A1(FML), .A2(FM), .B(n57), .X(n59) );
  SAEDRVT14_AOI21_0P75 U85 ( .A1(FML), .A2(FM), .B(n59), .X(FMLVIINLATCHVCDAD)
         );
  SAEDRVT14_OAI21_0P5 U86 ( .A1(TESTL), .A2(TEST), .B(n57), .X(n60) );
  SAEDRVT14_AOI21_0P75 U87 ( .A1(TESTL), .A2(TEST), .B(n60), .X(
        TESTLVIINLATCHVCDAD) );
  SAEDRVT14_OA31_1 U88 ( .A1(UC_17), .A2(UC_19), .A3(UC_18), .B(UC_16), .X(n61) );
  SAEDRVT14_OR2_MM_0P5 U89 ( .A1(UC_11), .A2(UC_10), .X(n100) );
  SAEDRVT14_OAI21_0P5 U90 ( .A1(UC_9), .A2(n100), .B(UC_8), .X(n63) );
  SAEDRVT14_ND2B_U_0P5 U91 ( .A(TESTL), .B(n63), .X(n82) );
  SAEDRVT14_ND2_CDC_0P5 U92 ( .A1(n61), .A2(n82), .X(n93) );
  SAEDRVT14_ND2_CDC_0P5 U93 ( .A1(n57), .A2(n93), .X(n85) );
  SAEDRVT14_AN3_0P5 U94 ( .A1(UC_19), .A2(UC_18), .A3(n82), .X(n80) );
  SAEDRVT14_ND2_CDC_0P5 U95 ( .A1(UC_17), .A2(n80), .X(n66) );
  SAEDRVT14_OAI21_0P5 U96 ( .A1(UC_17), .A2(n80), .B(n66), .X(n62) );
  SAEDRVT14_NR2_1 U97 ( .A1(n85), .A2(n62), .X(UC_17VD) );
  SAEDRVT14_ND2_CDC_0P5 U98 ( .A1(n57), .A2(n63), .X(n98) );
  SAEDRVT14_ND2_CDC_0P5 U99 ( .A1(UC_11), .A2(UC_10), .X(n99) );
  SAEDRVT14_INV_0P5 U100 ( .A(n99), .X(n64) );
  SAEDRVT14_ND2_CDC_0P5 U101 ( .A1(UC_9), .A2(n64), .X(n68) );
  SAEDRVT14_OAI21_0P5 U102 ( .A1(UC_9), .A2(n64), .B(n68), .X(n65) );
  SAEDRVT14_NR2_1 U103 ( .A1(n98), .A2(n65), .X(UC_9VD) );
  SAEDRVT14_INV_0P5 U104 ( .A(UC_16), .X(n67) );
  SAEDRVT14_AOI21_0P75 U105 ( .A1(n67), .A2(n66), .B(n85), .X(UC_16VD) );
  SAEDRVT14_INV_0P5 U106 ( .A(UC_8), .X(n69) );
  SAEDRVT14_AOI21_0P75 U107 ( .A1(n69), .A2(n68), .B(n98), .X(UC_8VD) );
  SAEDRVT14_NR2_1 U108 ( .A1(UC_11), .A2(n98), .X(UC_11VD) );
  SAEDRVT14_INV_0P5 U109 ( .A(C3_Q0), .X(n105) );
  SAEDRVT14_OR4_1 U110 ( .A1(C3_Q3), .A2(C3_Q1), .A3(FML), .A4(n105), .X(n72)
         );
  SAEDRVT14_NR2_1 U111 ( .A1(C3_Q1), .A2(C3_Q0), .X(n88) );
  SAEDRVT14_ND2_CDC_0P5 U112 ( .A1(C3_Q2), .A2(n57), .X(n70) );
  SAEDRVT14_AO221_0P5 U113 ( .A1(FML), .A2(C3_Q3), .B1(FML), .B2(n88), .C(n70), 
        .X(n71) );
  SAEDRVT14_AOI21_0P75 U114 ( .A1(OLATCH_FEL), .A2(n72), .B(n71), .X(TCOMB_GA1) );
  SAEDRVT14_INV_0P5 U115 ( .A(C3_Q2), .X(n73) );
  SAEDRVT14_OAI21_0P5 U116 ( .A1(n73), .A2(n72), .B(OLATCH_FEL), .X(n74) );
  SAEDRVT14_NR2_1 U117 ( .A1(CLR), .A2(n74), .X(n77) );
  SAEDRVT14_AN3_0P5 U118 ( .A1(C3_Q2), .A2(FML), .A3(n57), .X(n78) );
  SAEDRVT14_INV_0P5 U119 ( .A(C3_Q3), .X(n107) );
  SAEDRVT14_OA221_U_0P5 U120 ( .A1(C3_Q3), .A2(n78), .B1(n107), .B2(n87), .C(
        n88), .X(n76) );
  SAEDRVT14_OAI21_0P5 U121 ( .A1(n77), .A2(n78), .B(UC_17), .X(n75) );
  SAEDRVT14_OAI21_0P5 U122 ( .A1(n77), .A2(n76), .B(n75), .X(Y1C) );
  SAEDRVT14_AO21_U_0P5 U123 ( .A1(n78), .A2(n88), .B(n77), .X(n51) );
  SAEDRVT14_AN2_MM_0P5 U124 ( .A1(UC_19), .A2(n82), .X(n84) );
  SAEDRVT14_INV_0P5 U125 ( .A(n85), .X(n81) );
  SAEDRVT14_OAI21_0P5 U126 ( .A1(UC_18), .A2(n84), .B(n81), .X(n79) );
  SAEDRVT14_NR2_1 U127 ( .A1(n80), .A2(n79), .X(UC_18VD) );
  SAEDRVT14_OAI21_0P5 U128 ( .A1(n82), .A2(UC_19), .B(n81), .X(n83) );
  SAEDRVT14_NR2_1 U129 ( .A1(n84), .A2(n83), .X(UC_19VD) );
  SAEDRVT14_OAI21_0P5 U130 ( .A1(CLR), .A2(C3_Q3), .B(n85), .X(n86) );
  SAEDRVT14_AOI21_0P75 U131 ( .A1(n88), .A2(n87), .B(n86), .X(n91) );
  SAEDRVT14_ND2_CDC_0P5 U132 ( .A1(C3_Q1), .A2(C3_Q0), .X(n102) );
  SAEDRVT14_NR2_1 U133 ( .A1(n93), .A2(n102), .X(n97) );
  SAEDRVT14_ND2_CDC_0P5 U134 ( .A1(C3_Q2), .A2(n97), .X(n90) );
  SAEDRVT14_OAI21_0P5 U135 ( .A1(C3_Q2), .A2(n97), .B(n90), .X(n89) );
  SAEDRVT14_NR2_1 U136 ( .A1(n91), .A2(n89), .X(C3_Q2VD) );
  SAEDRVT14_AOI21_0P75 U137 ( .A1(n107), .A2(n90), .B(n91), .X(C3_Q3VD) );
  SAEDRVT14_INV_0P5 U138 ( .A(n91), .X(n94) );
  SAEDRVT14_OAI21_0P5 U139 ( .A1(n105), .A2(n93), .B(n94), .X(n92) );
  SAEDRVT14_AOI21_0P75 U140 ( .A1(n105), .A2(n93), .B(n92), .X(C3_Q0VD) );
  SAEDRVT14_NR2_1 U141 ( .A1(n93), .A2(n105), .X(n95) );
  SAEDRVT14_OAI21_0P5 U142 ( .A1(C3_Q1), .A2(n95), .B(n94), .X(n96) );
  SAEDRVT14_NR2_1 U143 ( .A1(n97), .A2(n96), .X(C3_Q1VD) );
  SAEDRVT14_INV_0P5 U144 ( .A(n98), .X(n101) );
  SAEDRVT14_AN3_0P5 U145 ( .A1(n101), .A2(n100), .A3(n99), .X(UC_10VD) );
  SAEDRVT14_OR3_0P5 U146 ( .A1(CLR), .A2(C3_Q0), .A3(n107), .X(n103) );
  SAEDRVT14_NR2_1 U147 ( .A1(C3_Q2), .A2(OLATCH_FEL), .X(n106) );
  SAEDRVT14_OAI22_0P5 U148 ( .A1(C3_Q1), .A2(n103), .B1(CLR), .B2(n106), .X(
        n104) );
  SAEDRVT14_AO21B_0P5 U149 ( .A1(UC_17), .A2(n51), .B(n104), .X(R2C) );
  SAEDRVT14_NR2_1 U150 ( .A1(C3_Q1), .A2(n105), .X(n108) );
  SAEDRVT14_OAI21_0P5 U151 ( .A1(n108), .A2(n107), .B(n106), .X(n109) );
  SAEDRVT14_ND2_CDC_0P5 U152 ( .A1(n57), .A2(n109), .X(n52) );
  SAEDRVT14_INV_0P5 U74 ( .A(scan_enable), .X(n112) );
  SAEDRVT14_INV_0P5 U153 ( .A(n112), .X(n113) );
  SAEDRVT14_INV_0P5 U154 ( .A(n112), .X(n114) );
endmodule

