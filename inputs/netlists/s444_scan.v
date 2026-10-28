/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:53:35 2026
/////////////////////////////////////////////////////////////


module s444 ( CK, G0, G1, G107, G108, G118, G119, G167, G168, G2, scan_in, 
        scan_out, scan_enable );
  input CK, G0, G1, G2, scan_in, scan_enable;
  output G107, G108, G118, G119, G167, G168, scan_out;
  wire   G11, G37, G12, G41, G13, G45, G14, G49, G15, G58, G16, G62, G17, G66,
         G18, G70, G19, G80, G20, G84, G21, G88, G22, G92, G23, G101, G24,
         G109, G110, G28, G112, G29, G113, G168, G114, G31, G155, n61, n62,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n120, n121, n122;
  assign scan_out = G168;

  SAEDRVT14_FSDPQ_V2LP_1 DFF_3_Q_reg ( .D(G49), .SI(G13), .SE(scan_enable), 
        .CK(CK), .Q(G14) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_0_Q_reg ( .D(G37), .SI(scan_in), .SE(scan_enable), 
        .CK(CK), .Q(G11) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_1_Q_reg ( .D(G41), .SI(G11), .SE(scan_enable), 
        .CK(CK), .Q(G12) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_2_Q_reg ( .D(G45), .SI(G12), .SE(scan_enable), 
        .CK(CK), .Q(G13) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_12_Q_reg ( .D(G101), .SI(G22), .SE(n122), .CK(CK), 
        .Q(G23) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_20_Q_reg ( .D(G155), .SI(G29), .SE(n122), .CK(CK), 
        .Q(G31) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_4_Q_reg ( .D(G58), .SI(G14), .SE(scan_enable), 
        .CK(CK), .Q(G15) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_5_Q_reg ( .D(G62), .SI(G15), .SE(scan_enable), 
        .CK(CK), .Q(G16) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_6_Q_reg ( .D(G66), .SI(G16), .SE(n122), .CK(CK), 
        .Q(G17) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_7_Q_reg ( .D(G70), .SI(G17), .SE(n121), .CK(CK), 
        .Q(G18) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_11_Q_reg ( .D(G92), .SI(G21), .SE(n121), .CK(CK), 
        .Q(G22) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_8_Q_reg ( .D(G80), .SI(G18), .SE(n122), .CK(CK), 
        .Q(G19) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_9_Q_reg ( .D(G84), .SI(G19), .SE(n121), .CK(CK), 
        .Q(G20) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_10_Q_reg ( .D(G88), .SI(G20), .SE(n122), .CK(CK), 
        .Q(G21) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_13_Q_reg ( .D(n61), .SI(G23), .SE(n121), .CK(CK), 
        .Q(G24) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_14_Q_reg ( .D(G109), .SI(G24), .SE(n122), .CK(CK), 
        .Q(G107) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_19_Q_reg ( .D(G114), .SI(G31), .SE(n121), .CK(CK), 
        .Q(G168) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_16_Q_reg ( .D(n62), .SI(G108), .SE(scan_enable), 
        .CK(CK), .Q(G118) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_15_Q_reg ( .D(G110), .SI(G107), .SE(n121), .CK(CK), .Q(G108) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_17_Q_reg ( .D(G112), .SI(G118), .SE(n122), .CK(CK), .Q(G28) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_18_Q_reg ( .D(G113), .SI(G28), .SE(n121), .CK(CK), 
        .Q(G29) );
  SAEDRVT14_INV_0P5 U85 ( .A(G28), .X(G119) );
  SAEDRVT14_INV_0P5 U86 ( .A(G29), .X(G167) );
  SAEDRVT14_INV_0P5 U87 ( .A(G20), .X(n82) );
  SAEDRVT14_INV_0P5 U88 ( .A(G22), .X(n105) );
  SAEDRVT14_AOI21_0P75 U89 ( .A1(G19), .A2(n82), .B(n105), .X(n65) );
  SAEDRVT14_INV_0P5 U90 ( .A(G21), .X(n75) );
  SAEDRVT14_INV_0P5 U91 ( .A(G24), .X(n74) );
  SAEDRVT14_ND2_CDC_0P5 U92 ( .A1(n75), .A2(n74), .X(n69) );
  SAEDRVT14_INV_0P5 U93 ( .A(G0), .X(n77) );
  SAEDRVT14_OAI21_0P5 U94 ( .A1(n65), .A2(n69), .B(n77), .X(n62) );
  SAEDRVT14_OAI21_0P5 U95 ( .A1(G31), .A2(G1), .B(n77), .X(n66) );
  SAEDRVT14_AOI21_0P75 U96 ( .A1(G31), .A2(G1), .B(n66), .X(G155) );
  SAEDRVT14_OAI21_0P5 U97 ( .A1(G23), .A2(G2), .B(n77), .X(n67) );
  SAEDRVT14_AOI21_0P75 U98 ( .A1(G23), .A2(G2), .B(n67), .X(G101) );
  SAEDRVT14_OR2_MM_0P5 U99 ( .A1(G12), .A2(G11), .X(n101) );
  SAEDRVT14_OAI21_0P5 U100 ( .A1(G13), .A2(n101), .B(G14), .X(n70) );
  SAEDRVT14_ND2_CDC_0P5 U101 ( .A1(n70), .A2(n77), .X(n84) );
  SAEDRVT14_NR2_1 U102 ( .A1(G11), .A2(n84), .X(G37) );
  SAEDRVT14_INV_0P5 U103 ( .A(G19), .X(n78) );
  SAEDRVT14_NR2_1 U104 ( .A1(n82), .A2(n78), .X(n68) );
  SAEDRVT14_ND2_CDC_0P5 U105 ( .A1(n68), .A2(n77), .X(n98) );
  SAEDRVT14_NR2_1 U106 ( .A1(n98), .A2(n69), .X(G114) );
  SAEDRVT14_OA31_1 U107 ( .A1(G16), .A2(G17), .A3(G15), .B(G18), .X(n71) );
  SAEDRVT14_ND2B_U_0P5 U108 ( .A(G31), .B(n70), .X(n89) );
  SAEDRVT14_ND2_CDC_0P5 U109 ( .A1(n71), .A2(n89), .X(n93) );
  SAEDRVT14_ND2_CDC_0P5 U110 ( .A1(n82), .A2(n78), .X(n112) );
  SAEDRVT14_OAI21_0P5 U111 ( .A1(G21), .A2(n112), .B(G22), .X(n72) );
  SAEDRVT14_NR2_1 U112 ( .A1(n93), .A2(n72), .X(n73) );
  SAEDRVT14_ND2_CDC_0P5 U113 ( .A1(G22), .A2(n77), .X(n110) );
  SAEDRVT14_OR4_1 U114 ( .A1(n82), .A2(n78), .A3(n93), .A4(n75), .X(n95) );
  SAEDRVT14_INV_0P5 U115 ( .A(n73), .X(n96) );
  SAEDRVT14_ND2_CDC_0P5 U116 ( .A1(n77), .A2(n96), .X(n79) );
  SAEDRVT14_OAI22_0P5 U117 ( .A1(n73), .A2(n110), .B1(n95), .B2(n79), .X(G92)
         );
  SAEDRVT14_NR2_1 U118 ( .A1(n75), .A2(G0), .X(n92) );
  SAEDRVT14_ND2_CDC_0P5 U119 ( .A1(n92), .A2(G23), .X(n109) );
  SAEDRVT14_ND2_CDC_0P5 U120 ( .A1(G19), .A2(n82), .X(n81) );
  SAEDRVT14_OR3_0P5 U121 ( .A1(G22), .A2(G23), .A3(n81), .X(n103) );
  SAEDRVT14_NR2_1 U122 ( .A1(G0), .A2(n74), .X(n97) );
  SAEDRVT14_OAI21_0P5 U123 ( .A1(n75), .A2(n103), .B(n97), .X(n111) );
  SAEDRVT14_OAI21_0P5 U124 ( .A1(n112), .A2(n109), .B(n111), .X(n61) );
  SAEDRVT14_OAI21_0P5 U125 ( .A1(n110), .A2(n112), .B(n111), .X(n76) );
  SAEDRVT14_ND2_CDC_0P5 U126 ( .A1(G17), .A2(n61), .X(n115) );
  SAEDRVT14_OAI21_0P5 U127 ( .A1(n92), .A2(n76), .B(n115), .X(G112) );
  SAEDRVT14_OR2_MM_0P5 U128 ( .A1(n93), .A2(n79), .X(n80) );
  SAEDRVT14_ND2_CDC_0P5 U129 ( .A1(n93), .A2(n77), .X(n86) );
  SAEDRVT14_OAI22_0P5 U130 ( .A1(G19), .A2(n80), .B1(n78), .B2(n86), .X(G80)
         );
  SAEDRVT14_OA21_1 U131 ( .A1(n79), .A2(G19), .B(n86), .X(n83) );
  SAEDRVT14_OAI22_0P5 U132 ( .A1(n83), .A2(n82), .B1(n81), .B2(n80), .X(G84)
         );
  SAEDRVT14_ND2_CDC_0P5 U133 ( .A1(G12), .A2(G11), .X(n100) );
  SAEDRVT14_INV_0P5 U134 ( .A(n100), .X(n107) );
  SAEDRVT14_INV_0P5 U135 ( .A(n84), .X(n108) );
  SAEDRVT14_OAI21_0P5 U136 ( .A1(G13), .A2(n107), .B(n108), .X(n85) );
  SAEDRVT14_AOI21_0P75 U137 ( .A1(G13), .A2(n107), .B(n85), .X(G45) );
  SAEDRVT14_AN3_0P5 U138 ( .A1(G16), .A2(G15), .A3(n89), .X(n116) );
  SAEDRVT14_INV_0P5 U139 ( .A(n86), .X(n117) );
  SAEDRVT14_OAI21_0P5 U140 ( .A1(G17), .A2(n116), .B(n117), .X(n87) );
  SAEDRVT14_AOI21_0P75 U141 ( .A1(G17), .A2(n116), .B(n87), .X(G66) );
  SAEDRVT14_AN2_MM_0P5 U142 ( .A1(G15), .A2(n89), .X(n91) );
  SAEDRVT14_OAI21_0P5 U143 ( .A1(G16), .A2(n91), .B(n117), .X(n88) );
  SAEDRVT14_NR2_1 U144 ( .A1(n116), .A2(n88), .X(G62) );
  SAEDRVT14_OAI21_0P5 U145 ( .A1(n89), .A2(G15), .B(n117), .X(n90) );
  SAEDRVT14_NR2_1 U146 ( .A1(n91), .A2(n90), .X(G58) );
  SAEDRVT14_INV_0P5 U147 ( .A(n92), .X(n102) );
  SAEDRVT14_OAI21_0P5 U148 ( .A1(n98), .A2(n93), .B(n102), .X(n94) );
  SAEDRVT14_AN3_0P5 U149 ( .A1(n96), .A2(n95), .A3(n94), .X(G88) );
  SAEDRVT14_OA21B_1 U150 ( .A1(n110), .A2(G19), .B(n97), .X(n99) );
  SAEDRVT14_AN3_0P5 U151 ( .A1(n99), .A2(n98), .A3(n102), .X(G110) );
  SAEDRVT14_AN3_0P5 U152 ( .A1(n108), .A2(n101), .A3(n100), .X(G41) );
  SAEDRVT14_AOI21_0P75 U153 ( .A1(G24), .A2(n103), .B(n102), .X(n106) );
  SAEDRVT14_INV_0P5 U154 ( .A(G23), .X(n104) );
  SAEDRVT14_AO32_U_0P5 U155 ( .A1(n106), .A2(n105), .A3(n112), .B1(n106), .B2(
        n104), .X(G109) );
  SAEDRVT14_AO32_U_0P5 U156 ( .A1(n108), .A2(G13), .A3(n107), .B1(n108), .B2(
        G14), .X(G49) );
  SAEDRVT14_OA22_U_0P5 U157 ( .A1(G21), .A2(n110), .B1(G22), .B2(n109), .X(
        n113) );
  SAEDRVT14_OAI21_0P5 U158 ( .A1(n113), .A2(n112), .B(n111), .X(n114) );
  SAEDRVT14_ND2_CDC_0P5 U159 ( .A1(n115), .A2(n114), .X(G113) );
  SAEDRVT14_AO32_U_0P5 U160 ( .A1(n117), .A2(G17), .A3(n116), .B1(n117), .B2(
        G18), .X(G70) );
  SAEDRVT14_INV_0P5 U84 ( .A(scan_enable), .X(n120) );
  SAEDRVT14_INV_0P5 U161 ( .A(n120), .X(n121) );
  SAEDRVT14_INV_0P5 U162 ( .A(n120), .X(n122) );
endmodule

