/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:24:39 2026
/////////////////////////////////////////////////////////////


module b08 ( CLOCK, RESET, START, I, O, scan_in, scan_out, scan_enable );
  input [7:0] I;
  output [3:0] O;
  input CLOCK, RESET, START, scan_in, scan_enable;
  output scan_out;
  wire   n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134;
  wire   [1:0] STATO;
  wire   [2:0] MAR;
  wire   [7:0] IN_R;
  wire   [3:0] OUT_R;

  SAEDRVT14_FSDPRBQ_V2LP_1 O_reg_3_ ( .D(n64), .SI(n55), .SE(n55), .CK(CLOCK), 
        .RD(n54), .Q(O[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 O_reg_2_ ( .D(n66), .SI(n55), .SE(n55), .CK(CLOCK), 
        .RD(n77), .Q(O[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 O_reg_1_ ( .D(n68), .SI(n55), .SE(n55), .CK(CLOCK), 
        .RD(n78), .Q(O[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 O_reg_0_ ( .D(n70), .SI(n55), .SE(n55), .CK(CLOCK), 
        .RD(n54), .Q(O[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 MAR_reg_0_ ( .D(n76), .SI(n55), .SE(n55), .CK(CLOCK), .RD(n78), .Q(MAR[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 IN_R_reg_1_ ( .D(n57), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n77), .Q(IN_R[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 IN_R_reg_0_ ( .D(n56), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n54), .Q(IN_R[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 IN_R_reg_2_ ( .D(n58), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n78), .Q(IN_R[2]) );
  SAEDRVT14_INV_0P5 U80 ( .A(RESET), .X(n77) );
  SAEDRVT14_INV_0P5 U81 ( .A(RESET), .X(n78) );
  SAEDRVT14_INV_0P5 U82 ( .A(RESET), .X(n54) );
  SAEDRVT14_ND2_CDC_0P5 U83 ( .A1(n106), .A2(n114), .X(n80) );
  SAEDRVT14_ND2_CDC_0P5 U84 ( .A1(n79), .A2(n80), .X(n92) );
  SAEDRVT14_ND2_CDC_0P5 U85 ( .A1(IN_R[7]), .A2(IN_R[4]), .X(n79) );
  SAEDRVT14_INV_0P5 U86 ( .A(STATO[0]), .X(n103) );
  SAEDRVT14_NR2_1 U87 ( .A1(STATO[1]), .A2(n103), .X(n134) );
  SAEDRVT14_INV_0P5 U88 ( .A(MAR[2]), .X(n112) );
  SAEDRVT14_INV_0P5 U89 ( .A(MAR[1]), .X(n115) );
  SAEDRVT14_INV_0P5 U90 ( .A(STATO[1]), .X(n132) );
  SAEDRVT14_NR2_1 U91 ( .A1(n132), .A2(n103), .X(n82) );
  SAEDRVT14_ND2_CDC_0P5 U92 ( .A1(MAR[0]), .A2(n82), .X(n84) );
  SAEDRVT14_OAI22_0P5 U93 ( .A1(n134), .A2(n112), .B1(n115), .B2(n84), .X(n75)
         );
  SAEDRVT14_INV_0P5 U94 ( .A(n82), .X(n128) );
  SAEDRVT14_INV_0P5 U95 ( .A(MAR[0]), .X(n114) );
  SAEDRVT14_NR2_1 U96 ( .A1(n115), .A2(n112), .X(n108) );
  SAEDRVT14_ND2_CDC_0P5 U97 ( .A1(MAR[0]), .A2(n108), .X(n127) );
  SAEDRVT14_AOI21_0P75 U98 ( .A1(STATO[0]), .A2(n127), .B(n134), .X(n126) );
  SAEDRVT14_INV_0P5 U99 ( .A(n126), .X(n81) );
  SAEDRVT14_OAI22_0P5 U100 ( .A1(MAR[0]), .A2(n128), .B1(n114), .B2(n81), .X(
        n76) );
  SAEDRVT14_AOI21_0P75 U101 ( .A1(n82), .A2(n114), .B(n126), .X(n83) );
  SAEDRVT14_OAI22_0P5 U102 ( .A1(MAR[1]), .A2(n84), .B1(n115), .B2(n83), .X(
        n72) );
  SAEDRVT14_INV_0P5 U103 ( .A(OUT_R[1]), .X(n129) );
  SAEDRVT14_NR2_1 U104 ( .A1(MAR[0]), .A2(IN_R[3]), .X(n89) );
  SAEDRVT14_ND2_CDC_0P5 U105 ( .A1(IN_R[7]), .A2(IN_R[1]), .X(n85) );
  SAEDRVT14_OAI21_0P5 U106 ( .A1(IN_R[5]), .A2(n85), .B(n108), .X(n87) );
  SAEDRVT14_AOI21_0P75 U107 ( .A1(n115), .A2(n112), .B(n114), .X(n96) );
  SAEDRVT14_INV_0P5 U108 ( .A(n108), .X(n118) );
  SAEDRVT14_ND2_CDC_0P5 U109 ( .A1(n96), .A2(n118), .X(n86) );
  SAEDRVT14_OAI22_0P5 U110 ( .A1(MAR[0]), .A2(n87), .B1(IN_R[2]), .B2(n86), 
        .X(n88) );
  SAEDRVT14_AOI21_0P75 U111 ( .A1(n89), .A2(MAR[2]), .B(n88), .X(n105) );
  SAEDRVT14_INV_0P5 U112 ( .A(n96), .X(n94) );
  SAEDRVT14_AO21_U_0P5 U113 ( .A1(IN_R[1]), .A2(n94), .B(IN_R[6]), .X(n90) );
  SAEDRVT14_OAI21_0P5 U114 ( .A1(n108), .A2(n94), .B(n90), .X(n106) );
  SAEDRVT14_OAI21_0P5 U115 ( .A1(n108), .A2(n114), .B(IN_R[4]), .X(n91) );
  SAEDRVT14_OAI21_0P5 U116 ( .A1(MAR[2]), .A2(n92), .B(n91), .X(n93) );
  SAEDRVT14_AOI21_0P75 U117 ( .A1(IN_R[0]), .A2(n114), .B(n93), .X(n102) );
  SAEDRVT14_ND2_CDC_0P5 U118 ( .A1(IN_R[2]), .A2(n94), .X(n109) );
  SAEDRVT14_OAI21_0P5 U119 ( .A1(MAR[0]), .A2(IN_R[6]), .B(IN_R[5]), .X(n95)
         );
  SAEDRVT14_NR2_1 U120 ( .A1(IN_R[7]), .A2(n95), .X(n97) );
  SAEDRVT14_OAI22_0P5 U121 ( .A1(MAR[2]), .A2(n97), .B1(n96), .B2(IN_R[3]), 
        .X(n100) );
  SAEDRVT14_OA21_1 U122 ( .A1(n114), .A2(IN_R[6]), .B(IN_R[0]), .X(n98) );
  SAEDRVT14_OAI22_0P5 U123 ( .A1(IN_R[0]), .A2(n114), .B1(n112), .B2(n98), .X(
        n99) );
  SAEDRVT14_NR2_1 U124 ( .A1(n100), .A2(n99), .X(n101) );
  SAEDRVT14_AO32_U_0P5 U125 ( .A1(MAR[1]), .A2(n102), .A3(n109), .B1(n115), 
        .B2(n101), .X(n104) );
  SAEDRVT14_AN4_0P5 U126 ( .A1(STATO[1]), .A2(n105), .A3(n104), .A4(n103), .X(
        n111) );
  SAEDRVT14_INV_0P5 U127 ( .A(n106), .X(n107) );
  SAEDRVT14_AOI21_0P75 U128 ( .A1(n108), .A2(IN_R[7]), .B(n107), .X(n110) );
  SAEDRVT14_AO32_U_0P5 U129 ( .A1(n111), .A2(n110), .A3(n109), .B1(n111), .B2(
        n114), .X(n117) );
  SAEDRVT14_OAI21_0P5 U130 ( .A1(n112), .A2(n114), .B(n117), .X(n113) );
  SAEDRVT14_OAI21_0P5 U131 ( .A1(n134), .A2(n129), .B(n113), .X(n69) );
  SAEDRVT14_INV_0P5 U132 ( .A(OUT_R[0]), .X(n116) );
  SAEDRVT14_ND2_CDC_0P5 U133 ( .A1(n117), .A2(n114), .X(n120) );
  SAEDRVT14_OAI22_0P5 U134 ( .A1(n134), .A2(n116), .B1(n115), .B2(n120), .X(
        n71) );
  SAEDRVT14_INV_0P5 U135 ( .A(n134), .X(n122) );
  SAEDRVT14_INV_0P5 U136 ( .A(n117), .X(n125) );
  SAEDRVT14_OAI21_0P5 U137 ( .A1(MAR[1]), .A2(MAR[2]), .B(n118), .X(n124) );
  SAEDRVT14_OAI22_0P5 U138 ( .A1(n125), .A2(n127), .B1(n120), .B2(n124), .X(
        n119) );
  SAEDRVT14_AO21_U_0P5 U139 ( .A1(OUT_R[2]), .A2(n122), .B(n119), .X(n67) );
  SAEDRVT14_INV_0P5 U140 ( .A(n120), .X(n121) );
  SAEDRVT14_AOI21_0P75 U141 ( .A1(OUT_R[3]), .A2(n122), .B(n121), .X(n123) );
  SAEDRVT14_OAI21_0P5 U142 ( .A1(n125), .A2(n124), .B(n123), .X(n65) );
  SAEDRVT14_INV_0P5 U143 ( .A(START), .X(n131) );
  SAEDRVT14_OA31_1 U144 ( .A1(n132), .A2(n127), .A3(n131), .B(STATO[0]), .X(
        n130) );
  SAEDRVT14_OAI21_0P5 U145 ( .A1(n130), .A2(n132), .B(n126), .X(n73) );
  SAEDRVT14_OR3_0P5 U146 ( .A1(START), .A2(n128), .A3(n127), .X(n133) );
  SAEDRVT14_AO2BB2_V1_0P5 U147 ( .A1(n133), .A2(n129), .B1(n133), .B2(O[1]), 
        .X(n68) );
  SAEDRVT14_AOI21_0P75 U148 ( .A1(n132), .A2(n131), .B(n130), .X(n74) );
  SAEDRVT14_MUX2_U_0P5 U149 ( .D0(OUT_R[0]), .D1(O[0]), .S(n133), .X(n70) );
  SAEDRVT14_MUX2_U_0P5 U150 ( .D0(OUT_R[2]), .D1(O[2]), .S(n133), .X(n66) );
  SAEDRVT14_MUX2_U_0P5 U151 ( .D0(OUT_R[3]), .D1(O[3]), .S(n133), .X(n64) );
  SAEDRVT14_MUX2_U_0P5 U152 ( .D0(IN_R[7]), .D1(I[7]), .S(n134), .X(n63) );
  SAEDRVT14_MUX2_U_0P5 U153 ( .D0(IN_R[6]), .D1(I[6]), .S(n134), .X(n62) );
  SAEDRVT14_MUX2_U_0P5 U154 ( .D0(IN_R[5]), .D1(I[5]), .S(n134), .X(n61) );
  SAEDRVT14_MUX2_U_0P5 U155 ( .D0(IN_R[4]), .D1(I[4]), .S(n134), .X(n60) );
  SAEDRVT14_MUX2_U_0P5 U156 ( .D0(IN_R[3]), .D1(I[3]), .S(n134), .X(n59) );
  SAEDRVT14_MUX2_U_0P5 U157 ( .D0(IN_R[2]), .D1(I[2]), .S(n134), .X(n58) );
  SAEDRVT14_MUX2_U_0P5 U158 ( .D0(IN_R[1]), .D1(I[1]), .S(n134), .X(n57) );
  SAEDRVT14_MUX2_U_0P5 U159 ( .D0(IN_R[0]), .D1(I[0]), .S(n134), .X(n56) );
  SAEDRVT14_FSDPRBQ_V2LP_1 MAR_reg_2_ ( .D(n75), .SI(n55), .SE(n55), .CK(CLOCK), .RD(n78), .Q(MAR[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 MAR_reg_1_ ( .D(n72), .SI(n55), .SE(n55), .CK(CLOCK), .RD(n77), .Q(MAR[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 OUT_R_reg_1_ ( .D(n69), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n77), .Q(OUT_R[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 OUT_R_reg_0_ ( .D(n71), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n78), .Q(OUT_R[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 OUT_R_reg_2_ ( .D(n67), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n54), .Q(OUT_R[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 OUT_R_reg_3_ ( .D(n65), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n78), .Q(OUT_R[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 IN_R_reg_7_ ( .D(n63), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n54), .Q(IN_R[7]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 IN_R_reg_6_ ( .D(n62), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n77), .Q(IN_R[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 IN_R_reg_5_ ( .D(n61), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n78), .Q(IN_R[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 IN_R_reg_4_ ( .D(n60), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n54), .Q(IN_R[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 IN_R_reg_3_ ( .D(n59), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n77), .Q(IN_R[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 STATO_reg_0_ ( .D(n74), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n54), .Q(STATO[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 STATO_reg_1_ ( .D(n73), .SI(n55), .SE(n55), .CK(
        CLOCK), .RD(n77), .Q(STATO[1]) );
  SAEDRVT14_TIE0_V1_2 U79 ( .X(n55) );
endmodule

