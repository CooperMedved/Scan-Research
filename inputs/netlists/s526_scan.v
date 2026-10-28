/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:54:35 2026
/////////////////////////////////////////////////////////////


module s526 ( CK, G0, G1, G147, G148, G198, G199, G2, G213, G214, scan_in, 
        scan_out, scan_enable );
  input CK, G0, G1, G2, scan_in, scan_enable;
  output G147, G148, G198, G199, G213, G214, scan_out;
  wire   G10, G60, G11, G61, G12, G13, G14, G79, G15, G84, G16, G89, G17, G96,
         G18, G101, G19, G106, G20, G115, G21, G22, G137, G167, G173, G179,
         G183, G188, G214, G29, G200, G30, G206, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n126, n127, n128;
  assign scan_out = G214;

  SAEDRVT14_FSDPQ_V2LP_1 DFF_0_Q_reg ( .D(G60), .SI(scan_in), .SE(scan_enable), 
        .CK(CK), .Q(G10) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_5_Q_reg ( .D(G84), .SI(G14), .SE(scan_enable), 
        .CK(CK), .Q(G15) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_1_Q_reg ( .D(G61), .SI(G10), .SE(scan_enable), 
        .CK(CK), .Q(G11) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_4_Q_reg ( .D(G79), .SI(G13), .SE(scan_enable), 
        .CK(CK), .Q(G14) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_19_Q_reg ( .D(G200), .SI(G213), .SE(n127), .CK(CK), .Q(G29) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_20_Q_reg ( .D(G206), .SI(G29), .SE(n128), .CK(CK), 
        .Q(G30) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_6_Q_reg ( .D(G89), .SI(G15), .SE(n128), .CK(CK), 
        .Q(G16) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_9_Q_reg ( .D(G106), .SI(G18), .SE(n127), .CK(CK), 
        .Q(G19) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_7_Q_reg ( .D(G96), .SI(G16), .SE(n127), .CK(CK), 
        .Q(G17) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_8_Q_reg ( .D(G101), .SI(G17), .SE(n128), .CK(CK), 
        .Q(G18) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_10_Q_reg ( .D(G115), .SI(G19), .SE(n128), .CK(CK), 
        .Q(G20) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_11_Q_reg ( .D(n63), .SI(G20), .SE(n127), .CK(CK), 
        .Q(G21) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_2_Q_reg ( .D(n65), .SI(G11), .SE(scan_enable), 
        .CK(CK), .Q(G12) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_12_Q_reg ( .D(G137), .SI(G21), .SE(n128), .CK(CK), 
        .Q(G22) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_14_Q_reg ( .D(G173), .SI(G147), .SE(n128), .CK(CK), .Q(G148) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_15_Q_reg ( .D(G179), .SI(G148), .SE(scan_enable), 
        .CK(CK), .Q(G198) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_16_Q_reg ( .D(G183), .SI(G198), .SE(n127), .CK(CK), .Q(G199) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_17_Q_reg ( .D(G188), .SI(G199), .SE(n128), .CK(CK), .Q(G213) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_13_Q_reg ( .D(G167), .SI(G22), .SE(n127), .CK(CK), 
        .Q(G147) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_3_Q_reg ( .D(n64), .SI(G12), .SE(scan_enable), 
        .CK(CK), .Q(G13) );
  SAEDRVT14_FSDPSYNRBQ_V2LP_1 DFF_18_Q_reg ( .RD(n123), .D(n122), .SI(G30), 
        .SE(n127), .CK(CK), .Q(G214) );
  SAEDRVT14_INV_0P5 U85 ( .A(G12), .X(n113) );
  SAEDRVT14_NR2_1 U86 ( .A1(G13), .A2(n113), .X(n116) );
  SAEDRVT14_AOI21_0P75 U87 ( .A1(G21), .A2(G13), .B(G12), .X(n111) );
  SAEDRVT14_INV_0P5 U88 ( .A(G13), .X(n114) );
  SAEDRVT14_NR2_1 U89 ( .A1(G12), .A2(G21), .X(n117) );
  SAEDRVT14_INV_0P5 U90 ( .A(n117), .X(n71) );
  SAEDRVT14_INV_0P5 U91 ( .A(G21), .X(n110) );
  SAEDRVT14_INV_0P5 U92 ( .A(G20), .X(n109) );
  SAEDRVT14_AN4_0P5 U93 ( .A1(n116), .A2(G29), .A3(n110), .A4(n109), .X(n68)
         );
  SAEDRVT14_AN2_MM_0P5 U94 ( .A1(n110), .A2(n116), .X(n66) );
  SAEDRVT14_ND2_CDC_0P5 U95 ( .A1(G20), .A2(n66), .X(n67) );
  SAEDRVT14_OAI22_0P5 U96 ( .A1(G22), .A2(n68), .B1(G29), .B2(n67), .X(n74) );
  SAEDRVT14_OA31_1 U97 ( .A1(G20), .A2(n114), .A3(n71), .B(n74), .X(n108) );
  SAEDRVT14_OAI21_0P5 U98 ( .A1(n111), .A2(G198), .B(n108), .X(n69) );
  SAEDRVT14_NR2_1 U99 ( .A1(n116), .A2(n69), .X(G179) );
  SAEDRVT14_INV_0P5 U100 ( .A(n74), .X(n70) );
  SAEDRVT14_NR2_1 U101 ( .A1(n117), .A2(n70), .X(n123) );
  SAEDRVT14_AOI21_0P75 U102 ( .A1(n117), .A2(G20), .B(n70), .X(n95) );
  SAEDRVT14_ND2_CDC_0P5 U103 ( .A1(G13), .A2(n95), .X(n72) );
  SAEDRVT14_INV_0P5 U104 ( .A(n72), .X(n73) );
  SAEDRVT14_OAI22_0P5 U105 ( .A1(G18), .A2(n74), .B1(n72), .B2(n71), .X(n97)
         );
  SAEDRVT14_AO21_U_0P5 U106 ( .A1(n73), .A2(G213), .B(n97), .X(G188) );
  SAEDRVT14_NR2_1 U107 ( .A1(G0), .A2(n74), .X(G137) );
  SAEDRVT14_OR2_MM_0P5 U108 ( .A1(G14), .A2(G11), .X(n105) );
  SAEDRVT14_ND2_CDC_0P5 U109 ( .A1(G15), .A2(G10), .X(n76) );
  SAEDRVT14_INV_0P5 U110 ( .A(G30), .X(n75) );
  SAEDRVT14_OAI21_0P5 U111 ( .A1(n105), .A2(n76), .B(n75), .X(n77) );
  SAEDRVT14_ND2_CDC_0P5 U112 ( .A1(G16), .A2(n77), .X(n99) );
  SAEDRVT14_OAI21_0P5 U113 ( .A1(n77), .A2(G16), .B(n99), .X(n78) );
  SAEDRVT14_NR2_1 U114 ( .A1(G0), .A2(n78), .X(G89) );
  SAEDRVT14_INV_0P5 U115 ( .A(G18), .X(n84) );
  SAEDRVT14_INV_0P5 U116 ( .A(n99), .X(n88) );
  SAEDRVT14_ND3_0P5 U117 ( .A1(n84), .A2(n88), .A3(G19), .X(n101) );
  SAEDRVT14_NR2_1 U118 ( .A1(G17), .A2(n101), .X(n79) );
  SAEDRVT14_ND2_CDC_0P5 U119 ( .A1(n79), .A2(G20), .X(n118) );
  SAEDRVT14_OAI21_0P5 U120 ( .A1(n79), .A2(G20), .B(n118), .X(n80) );
  SAEDRVT14_NR2_1 U121 ( .A1(G0), .A2(n80), .X(G115) );
  SAEDRVT14_AN2_MM_0P5 U122 ( .A1(G11), .A2(G10), .X(n94) );
  SAEDRVT14_ND2_CDC_0P5 U123 ( .A1(G14), .A2(n94), .X(n103) );
  SAEDRVT14_OAI21_0P5 U124 ( .A1(G14), .A2(n94), .B(n103), .X(n81) );
  SAEDRVT14_NR2_1 U125 ( .A1(G0), .A2(n81), .X(G79) );
  SAEDRVT14_NR2_1 U126 ( .A1(G0), .A2(G10), .X(G60) );
  SAEDRVT14_AOI21_0P75 U127 ( .A1(G13), .A2(n113), .B(n118), .X(n82) );
  SAEDRVT14_INV_0P5 U128 ( .A(G0), .X(n106) );
  SAEDRVT14_OA221_U_0P5 U129 ( .A1(G21), .A2(n82), .B1(n110), .B2(n118), .C(
        n106), .X(n63) );
  SAEDRVT14_INV_0P5 U130 ( .A(G17), .X(n100) );
  SAEDRVT14_NR2_1 U131 ( .A1(n100), .A2(n99), .X(n98) );
  SAEDRVT14_OAI21_0P5 U132 ( .A1(G18), .A2(n98), .B(n106), .X(n83) );
  SAEDRVT14_AOI21_0P75 U133 ( .A1(G18), .A2(n98), .B(n83), .X(G101) );
  SAEDRVT14_AO32_U_0P5 U134 ( .A1(G17), .A2(G18), .A3(G19), .B1(n100), .B2(n84), .X(n87) );
  SAEDRVT14_AN2_MM_0P5 U135 ( .A1(G18), .A2(n98), .X(n85) );
  SAEDRVT14_OAI21_0P5 U136 ( .A1(G19), .A2(n85), .B(n106), .X(n86) );
  SAEDRVT14_AOI21_0P75 U137 ( .A1(n88), .A2(n87), .B(n86), .X(G106) );
  SAEDRVT14_NR2_1 U138 ( .A1(n110), .A2(n118), .X(n115) );
  SAEDRVT14_OAI21_0P5 U139 ( .A1(G12), .A2(n115), .B(n106), .X(n89) );
  SAEDRVT14_AOI21_0P75 U140 ( .A1(G12), .A2(n115), .B(n89), .X(n65) );
  SAEDRVT14_OAI21_0P5 U141 ( .A1(G29), .A2(G2), .B(n106), .X(n90) );
  SAEDRVT14_AOI21_0P75 U142 ( .A1(G29), .A2(G2), .B(n90), .X(G200) );
  SAEDRVT14_OAI21_0P5 U143 ( .A1(G30), .A2(G1), .B(n106), .X(n91) );
  SAEDRVT14_AOI21_0P75 U144 ( .A1(G30), .A2(G1), .B(n91), .X(G206) );
  SAEDRVT14_INV_0P5 U145 ( .A(G15), .X(n104) );
  SAEDRVT14_OA21_1 U146 ( .A1(G14), .A2(n104), .B(G10), .X(n92) );
  SAEDRVT14_OAI21_0P5 U147 ( .A1(G11), .A2(n92), .B(n106), .X(n93) );
  SAEDRVT14_NR2_1 U148 ( .A1(n94), .A2(n93), .X(G61) );
  SAEDRVT14_AO32_U_0P5 U149 ( .A1(n95), .A2(G13), .A3(G199), .B1(n95), .B2(
        n116), .X(n96) );
  SAEDRVT14_OR2_MM_0P5 U150 ( .A1(n97), .A2(n96), .X(G183) );
  SAEDRVT14_AOI21_0P75 U151 ( .A1(n100), .A2(n99), .B(n98), .X(n102) );
  SAEDRVT14_AN3_0P5 U152 ( .A1(n102), .A2(n106), .A3(n101), .X(G96) );
  SAEDRVT14_MUXI2_U_0P5 U153 ( .D0(G15), .D1(n104), .S(n103), .X(n107) );
  SAEDRVT14_AO32_U_0P5 U154 ( .A1(n107), .A2(n106), .A3(n105), .B1(n107), .B2(
        G60), .X(G84) );
  SAEDRVT14_AO32_U_0P5 U155 ( .A1(n123), .A2(G13), .A3(G147), .B1(n123), .B2(
        n116), .X(G167) );
  SAEDRVT14_OA31_1 U156 ( .A1(G13), .A2(n110), .A3(n109), .B(n108), .X(n112)
         );
  SAEDRVT14_AO32_U_0P5 U157 ( .A1(n112), .A2(G13), .A3(G148), .B1(n112), .B2(
        n111), .X(G173) );
  SAEDRVT14_AO32_U_0P5 U158 ( .A1(G20), .A2(n114), .A3(n113), .B1(G13), .B2(
        G214), .X(n122) );
  SAEDRVT14_ND2_CDC_0P5 U159 ( .A1(n116), .A2(n115), .X(n121) );
  SAEDRVT14_AOI21_0P75 U160 ( .A1(G21), .A2(G12), .B(n117), .X(n119) );
  SAEDRVT14_OAI21_0P5 U161 ( .A1(n119), .A2(n118), .B(G13), .X(n120) );
  SAEDRVT14_AOI21_0P75 U162 ( .A1(n121), .A2(n120), .B(G0), .X(n64) );
  SAEDRVT14_INV_0P5 U84 ( .A(scan_enable), .X(n126) );
  SAEDRVT14_INV_0P5 U163 ( .A(n126), .X(n127) );
  SAEDRVT14_INV_0P5 U164 ( .A(n126), .X(n128) );
endmodule

