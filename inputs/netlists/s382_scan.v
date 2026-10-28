/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:49:54 2026
/////////////////////////////////////////////////////////////


module s382 ( CK, CLR, FM, GRN1, GRN2, RED1, RED2, TEST, YLW1, YLW2, scan_in, 
        scan_out, scan_enable );
  input CK, CLR, FM, TEST, scan_in, scan_enable;
  output GRN1, GRN2, RED1, RED2, YLW1, YLW2, scan_out;
  wire   TESTL, TESTLVIINLATCHVCDAD, FML, FMLVIINLATCHVCDAD, TCOMB_YA2,
         OLATCHVUC_6, Y1C, OLATCHVUC_5, R2C, TCOMB_GA2, GRN1, TCOMB_GA1,
         OLATCH_FEL, C3_Q3, C3_Q3VD, C3_Q2, C3_Q2VD, C3_Q1, C3_Q1VD, C3_Q0,
         C3_Q0VD, UC_16, UC_16VD, UC_17, UC_17VD, UC_18, UC_18VD, UC_19,
         UC_19VD, UC_8, UC_8VD, UC_9, UC_9VD, UC_10, UC_10VD, UC_11, UC_11VD,
         n55, n56, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n120, n121, n122;
  assign scan_out = GRN1;

  SAEDRVT14_FSDPQ_V2LP_1 DFF_0_Q_reg ( .D(TESTLVIINLATCHVCDAD), .SI(scan_in), 
        .SE(scan_enable), .CK(CK), .Q(TESTL) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_1_Q_reg ( .D(FMLVIINLATCHVCDAD), .SI(TESTL), .SE(
        scan_enable), .CK(CK), .Q(FML) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_20_Q_reg ( .D(UC_11VD), .SI(UC_10), .SE(n122), 
        .CK(CK), .Q(UC_11) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_19_Q_reg ( .D(UC_10VD), .SI(UC_9), .SE(n121), 
        .CK(CK), .Q(UC_10) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_18_Q_reg ( .D(UC_9VD), .SI(UC_8), .SE(n122), .CK(
        CK), .Q(UC_9) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_17_Q_reg ( .D(UC_8VD), .SI(UC_19), .SE(n121), 
        .CK(CK), .Q(UC_8) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_16_Q_reg ( .D(UC_19VD), .SI(UC_18), .SE(n122), 
        .CK(CK), .Q(UC_19) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_15_Q_reg ( .D(UC_18VD), .SI(UC_17), .SE(n121), 
        .CK(CK), .Q(UC_18) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_14_Q_reg ( .D(UC_17VD), .SI(UC_16), .SE(n122), 
        .CK(CK), .Q(UC_17) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_13_Q_reg ( .D(UC_16VD), .SI(C3_Q0), .SE(n121), 
        .CK(CK), .Q(UC_16) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_12_Q_reg ( .D(C3_Q0VD), .SI(C3_Q1), .SE(n122), 
        .CK(CK), .Q(C3_Q0) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_11_Q_reg ( .D(C3_Q1VD), .SI(C3_Q2), .SE(n121), 
        .CK(CK), .Q(C3_Q1) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_10_Q_reg ( .D(C3_Q2VD), .SI(C3_Q3), .SE(n122), 
        .CK(CK), .Q(C3_Q2) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_9_Q_reg ( .D(C3_Q3VD), .SI(OLATCH_FEL), .SE(n121), 
        .CK(CK), .Q(C3_Q3) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_8_Q_reg ( .D(n55), .SI(GRN2), .SE(n122), .CK(CK), 
        .Q(OLATCH_FEL) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_7_Q_reg ( .D(TCOMB_GA1), .SI(UC_11), .SE(n121), 
        .CK(CK), .Q(GRN1) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_2_Q_reg ( .D(TCOMB_YA2), .SI(FML), .SE(
        scan_enable), .CK(CK), .Q(YLW2) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_5_Q_reg ( .D(n56), .SI(OLATCHVUC_5), .SE(
        scan_enable), .CK(CK), .Q(RED1) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_6_Q_reg ( .D(TCOMB_GA2), .SI(RED1), .SE(
        scan_enable), .CK(CK), .Q(GRN2) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_3_Q_reg ( .D(Y1C), .SI(YLW2), .SE(scan_enable), 
        .CK(CK), .Q(OLATCHVUC_6) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_4_Q_reg ( .D(R2C), .SI(OLATCHVUC_6), .SE(
        scan_enable), .CK(CK), .Q(OLATCHVUC_5) );
  SAEDRVT14_INV_0P5 U79 ( .A(CLR), .X(n61) );
  SAEDRVT14_OAI21_0P5 U80 ( .A1(n59), .A2(n60), .B(n61), .X(TCOMB_GA2) );
  SAEDRVT14_INV_0P5 U81 ( .A(n116), .X(n59) );
  SAEDRVT14_ND2_CDC_0P5 U82 ( .A1(n115), .A2(n108), .X(n60) );
  SAEDRVT14_INV_0P5 U83 ( .A(OLATCHVUC_5), .X(RED2) );
  SAEDRVT14_INV_0P5 U84 ( .A(OLATCHVUC_6), .X(YLW1) );
  SAEDRVT14_INV_0P5 U85 ( .A(C3_Q0), .X(n88) );
  SAEDRVT14_OA21_1 U86 ( .A1(n88), .A2(C3_Q1), .B(C3_Q3), .X(n63) );
  SAEDRVT14_NR2_1 U87 ( .A1(C3_Q2), .A2(OLATCH_FEL), .X(n115) );
  SAEDRVT14_INV_0P5 U88 ( .A(n115), .X(n62) );
  SAEDRVT14_OAI21_0P5 U89 ( .A1(n63), .A2(n62), .B(n61), .X(n56) );
  SAEDRVT14_OAI21_0P5 U90 ( .A1(TESTL), .A2(TEST), .B(n61), .X(n64) );
  SAEDRVT14_AOI21_0P75 U91 ( .A1(TESTL), .A2(TEST), .B(n64), .X(
        TESTLVIINLATCHVCDAD) );
  SAEDRVT14_OAI21_0P5 U92 ( .A1(FML), .A2(FM), .B(n61), .X(n65) );
  SAEDRVT14_AOI21_0P75 U93 ( .A1(FML), .A2(FM), .B(n65), .X(FMLVIINLATCHVCDAD)
         );
  SAEDRVT14_OA31_1 U94 ( .A1(UC_19), .A2(UC_17), .A3(UC_18), .B(UC_16), .X(n66) );
  SAEDRVT14_OR2_MM_0P5 U95 ( .A1(UC_10), .A2(UC_11), .X(n106) );
  SAEDRVT14_OAI21_0P5 U96 ( .A1(UC_9), .A2(n106), .B(UC_8), .X(n71) );
  SAEDRVT14_ND2B_U_0P5 U97 ( .A(TESTL), .B(n71), .X(n80) );
  SAEDRVT14_ND2_CDC_0P5 U98 ( .A1(n66), .A2(n80), .X(n78) );
  SAEDRVT14_ND2_CDC_0P5 U99 ( .A1(n61), .A2(n78), .X(n81) );
  SAEDRVT14_INV_0P5 U100 ( .A(UC_18), .X(n87) );
  SAEDRVT14_ND2_CDC_0P5 U101 ( .A1(UC_19), .A2(n80), .X(n86) );
  SAEDRVT14_NR2_1 U102 ( .A1(n87), .A2(n86), .X(n67) );
  SAEDRVT14_ND2_CDC_0P5 U103 ( .A1(UC_17), .A2(n67), .X(n69) );
  SAEDRVT14_OAI21_0P5 U104 ( .A1(UC_17), .A2(n67), .B(n69), .X(n68) );
  SAEDRVT14_NR2_1 U105 ( .A1(n81), .A2(n68), .X(UC_17VD) );
  SAEDRVT14_INV_0P5 U106 ( .A(UC_16), .X(n70) );
  SAEDRVT14_AOI21_0P75 U107 ( .A1(n70), .A2(n69), .B(n81), .X(UC_16VD) );
  SAEDRVT14_ND2_CDC_0P5 U108 ( .A1(n61), .A2(n71), .X(n104) );
  SAEDRVT14_ND2_CDC_0P5 U109 ( .A1(UC_10), .A2(UC_11), .X(n105) );
  SAEDRVT14_INV_0P5 U110 ( .A(n105), .X(n72) );
  SAEDRVT14_ND2_CDC_0P5 U111 ( .A1(UC_9), .A2(n72), .X(n74) );
  SAEDRVT14_OAI21_0P5 U112 ( .A1(UC_9), .A2(n72), .B(n74), .X(n73) );
  SAEDRVT14_NR2_1 U113 ( .A1(n104), .A2(n73), .X(UC_9VD) );
  SAEDRVT14_INV_0P5 U114 ( .A(UC_8), .X(n75) );
  SAEDRVT14_AOI21_0P75 U115 ( .A1(n75), .A2(n74), .B(n104), .X(UC_8VD) );
  SAEDRVT14_NR2_1 U116 ( .A1(C3_Q1), .A2(C3_Q0), .X(n98) );
  SAEDRVT14_INV_0P5 U117 ( .A(n98), .X(n112) );
  SAEDRVT14_OAI21_0P5 U118 ( .A1(C3_Q2), .A2(n112), .B(C3_Q3), .X(n76) );
  SAEDRVT14_OAI21_0P5 U119 ( .A1(n78), .A2(n76), .B(n61), .X(n102) );
  SAEDRVT14_ND2_CDC_0P5 U120 ( .A1(C3_Q1), .A2(C3_Q0), .X(n108) );
  SAEDRVT14_NR2_1 U121 ( .A1(n78), .A2(n108), .X(n96) );
  SAEDRVT14_ND2_CDC_0P5 U122 ( .A1(C3_Q2), .A2(n96), .X(n103) );
  SAEDRVT14_OAI21_0P5 U123 ( .A1(C3_Q2), .A2(n96), .B(n103), .X(n77) );
  SAEDRVT14_NR2_1 U124 ( .A1(n102), .A2(n77), .X(C3_Q2VD) );
  SAEDRVT14_NR2_1 U125 ( .A1(UC_11), .A2(n104), .X(UC_11VD) );
  SAEDRVT14_NR2_1 U126 ( .A1(n78), .A2(n88), .X(n94) );
  SAEDRVT14_AO21_U_0P5 U127 ( .A1(n78), .A2(n88), .B(n102), .X(n79) );
  SAEDRVT14_NR2_1 U128 ( .A1(n94), .A2(n79), .X(C3_Q0VD) );
  SAEDRVT14_NR2_1 U129 ( .A1(n80), .A2(UC_19), .X(n83) );
  SAEDRVT14_INV_0P5 U130 ( .A(n81), .X(n84) );
  SAEDRVT14_ND2_CDC_0P5 U131 ( .A1(n86), .A2(n84), .X(n82) );
  SAEDRVT14_NR2_1 U132 ( .A1(n83), .A2(n82), .X(UC_19VD) );
  SAEDRVT14_OAI21_0P5 U133 ( .A1(n87), .A2(n86), .B(n84), .X(n85) );
  SAEDRVT14_AOI21_0P75 U134 ( .A1(n87), .A2(n86), .B(n85), .X(UC_18VD) );
  SAEDRVT14_OR4_1 U135 ( .A1(n88), .A2(C3_Q3), .A3(C3_Q1), .A4(FML), .X(n110)
         );
  SAEDRVT14_INV_0P5 U136 ( .A(n110), .X(n90) );
  SAEDRVT14_ND2_CDC_0P5 U137 ( .A1(n61), .A2(OLATCH_FEL), .X(n89) );
  SAEDRVT14_AOI21_0P75 U138 ( .A1(C3_Q2), .A2(n90), .B(n89), .X(n97) );
  SAEDRVT14_AN3_0P5 U139 ( .A1(C3_Q2), .A2(FML), .A3(n61), .X(n99) );
  SAEDRVT14_INV_0P5 U140 ( .A(C3_Q3), .X(n113) );
  SAEDRVT14_NR2_1 U141 ( .A1(CLR), .A2(C3_Q2), .X(n101) );
  SAEDRVT14_OA221_U_0P5 U142 ( .A1(C3_Q3), .A2(n99), .B1(n113), .B2(n101), .C(
        n98), .X(n92) );
  SAEDRVT14_OAI21_0P5 U143 ( .A1(n97), .A2(n99), .B(UC_17), .X(n91) );
  SAEDRVT14_OAI21_0P5 U144 ( .A1(n97), .A2(n92), .B(n91), .X(Y1C) );
  SAEDRVT14_INV_0P5 U145 ( .A(n102), .X(n93) );
  SAEDRVT14_OAI21_0P5 U146 ( .A1(C3_Q1), .A2(n94), .B(n93), .X(n95) );
  SAEDRVT14_NR2_1 U147 ( .A1(n96), .A2(n95), .X(C3_Q1VD) );
  SAEDRVT14_AO21_U_0P5 U148 ( .A1(n99), .A2(n98), .B(n97), .X(n55) );
  SAEDRVT14_INV_0P5 U149 ( .A(OLATCH_FEL), .X(n100) );
  SAEDRVT14_AN4_0P5 U150 ( .A1(C3_Q0), .A2(C3_Q1), .A3(n101), .A4(n100), .X(
        TCOMB_YA2) );
  SAEDRVT14_AOI21_0P75 U151 ( .A1(n113), .A2(n103), .B(n102), .X(C3_Q3VD) );
  SAEDRVT14_INV_0P5 U152 ( .A(n104), .X(n107) );
  SAEDRVT14_AN3_0P5 U153 ( .A1(n107), .A2(n106), .A3(n105), .X(UC_10VD) );
  SAEDRVT14_OR3_0P5 U154 ( .A1(CLR), .A2(C3_Q0), .A3(n113), .X(n116) );
  SAEDRVT14_ND2_CDC_0P5 U155 ( .A1(C3_Q2), .A2(n61), .X(n109) );
  SAEDRVT14_AOI21_0P75 U156 ( .A1(OLATCH_FEL), .A2(n110), .B(n109), .X(n114)
         );
  SAEDRVT14_INV_0P5 U157 ( .A(FML), .X(n111) );
  SAEDRVT14_AO32_U_0P5 U158 ( .A1(n114), .A2(n113), .A3(n112), .B1(n114), .B2(
        n111), .X(TCOMB_GA1) );
  SAEDRVT14_OAI22_0P5 U159 ( .A1(C3_Q1), .A2(n116), .B1(CLR), .B2(n115), .X(
        n117) );
  SAEDRVT14_AO21B_0P5 U160 ( .A1(UC_17), .A2(n55), .B(n117), .X(R2C) );
  SAEDRVT14_INV_0P5 U78 ( .A(scan_enable), .X(n120) );
  SAEDRVT14_INV_0P5 U161 ( .A(n120), .X(n121) );
  SAEDRVT14_INV_0P5 U162 ( .A(n120), .X(n122) );
endmodule

