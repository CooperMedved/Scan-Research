/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:55:38 2026
/////////////////////////////////////////////////////////////


module s641 ( CK, G1, G10, G100BF, G101BF, G103BF, G104BF, G105BF, G106BF, 
        G107, G11, G12, G13, G138, G14, G15, G16, G17, G18, G19, G2, G20, G21, 
        G22, G23, G24, G25, G26, G27, G28, G29, G3, G30, G31, G32, G33, G34, 
        G35, G36, G4, G5, G6, G8, G83, G84, G85, G86BF, G87BF, G88BF, G89BF, 
        G9, G90, G91, G92, G94, G95BF, G96BF, G97BF, G98BF, G99BF, scan_in, 
        scan_out, scan_enable );
  input CK, G1, G10, G11, G12, G13, G14, G15, G16, G17, G18, G19, G2, G20, G21,
         G22, G23, G24, G25, G26, G27, G28, G29, G3, G30, G31, G32, G33, G34,
         G35, G36, G4, G5, G6, G8, G9, scan_in, scan_enable;
  output G100BF, G101BF, G103BF, G104BF, G105BF, G106BF, G107, G138, G83, G84,
         G85, G86BF, G87BF, G88BF, G89BF, G90, G91, G92, G94, G95BF, G96BF,
         G97BF, G98BF, G99BF, scan_out;
  wire   G27, G29, G64, G66, G69, G70, G71, G72, G73, G74, G75, G76, G77, G79,
         G80, G306, G277, G276, G300, G275, G271, G272, G273, n50, n51, n55,
         G106BF, n62, n63, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116;
  assign G91 = G27;
  assign G94 = G29;
  assign G101BF = G106BF;

  SAEDRVT14_FSDPQ_V2LP_1 DFF_16_Q_reg ( .D(G276), .SI(G79), .SE(scan_enable), 
        .CK(CK), .Q(G80) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_7_Q_reg ( .D(n62), .SI(G70), .SE(scan_enable), 
        .CK(CK), .Q(G71) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_8_Q_reg ( .D(n63), .SI(G71), .SE(scan_enable), 
        .CK(CK), .Q(G72) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_9_Q_reg ( .D(n50), .SI(G72), .SE(scan_enable), 
        .CK(CK), .Q(G73) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_10_Q_reg ( .D(n51), .SI(G73), .SE(scan_enable), 
        .CK(CK), .Q(G74) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_13_Q_reg ( .D(G273), .SI(G76), .SE(scan_enable), 
        .CK(CK), .Q(G77) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_12_Q_reg ( .D(G272), .SI(G75), .SE(scan_enable), 
        .CK(CK), .Q(G76) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_2_Q_reg ( .D(G306), .SI(G64), .SE(scan_enable), 
        .CK(CK), .Q(G66) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_5_Q_reg ( .D(n55), .SI(G66), .SE(scan_enable), 
        .CK(CK), .Q(G69) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_6_Q_reg ( .D(G138), .SI(G69), .SE(scan_enable), 
        .CK(CK), .Q(G70) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_0_Q_reg ( .D(G300), .SI(scan_in), .SE(scan_enable), .CK(CK), .Q(G64) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_15_Q_reg ( .D(G275), .SI(G77), .SE(scan_enable), 
        .CK(CK), .Q(G79) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_11_Q_reg ( .D(G271), .SI(G74), .SE(scan_enable), 
        .CK(CK), .Q(G75) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_17_Q_reg ( .D(G277), .SI(G80), .SE(scan_enable), 
        .CK(CK), .Q(scan_out) );
  SAEDRVT14_TIE1_4 U86 ( .X(G106BF) );
  SAEDRVT14_ND2_CDC_0P5 U87 ( .A1(G73), .A2(n96), .X(n97) );
  SAEDRVT14_ND2_CDC_0P5 U88 ( .A1(G9), .A2(n98), .X(n100) );
  SAEDRVT14_OAI21_0P5 U89 ( .A1(n77), .A2(n100), .B(G24), .X(n69) );
  SAEDRVT14_ND2_CDC_0P5 U90 ( .A1(n76), .A2(n84), .X(n78) );
  SAEDRVT14_INV_0P5 U91 ( .A(n90), .X(n95) );
  SAEDRVT14_ND2_CDC_0P5 U92 ( .A1(n114), .A2(n113), .X(G138) );
  SAEDRVT14_OAI21_0P5 U93 ( .A1(n81), .A2(n91), .B(n115), .X(n50) );
  SAEDRVT14_INV_0P5 U94 ( .A(n87), .X(G300) );
  SAEDRVT14_ND2_CDC_0P5 U95 ( .A1(n116), .A2(n115), .X(n51) );
  SAEDRVT14_AOI21_0P75 U96 ( .A1(n110), .A2(G64), .B(n107), .X(n79) );
  SAEDRVT14_ND2_CDC_0P5 U97 ( .A1(G71), .A2(n94), .X(n99) );
  SAEDRVT14_NR2_1 U98 ( .A1(n95), .A2(n78), .X(n110) );
  SAEDRVT14_ND2_CDC_0P5 U99 ( .A1(n112), .A2(n111), .X(n63) );
  SAEDRVT14_OAI21_0P5 U100 ( .A1(n74), .A2(n92), .B(n111), .X(n62) );
  SAEDRVT14_ND2_CDC_0P5 U101 ( .A1(n114), .A2(n93), .X(n101) );
  SAEDRVT14_NR2_1 U102 ( .A1(n90), .A2(n78), .X(G276) );
  SAEDRVT14_INV_0P5 U103 ( .A(n84), .X(G306) );
  SAEDRVT14_OAI21_0P5 U104 ( .A1(n75), .A2(n82), .B(n113), .X(n55) );
  SAEDRVT14_NR2_1 U105 ( .A1(G2), .A2(n84), .X(G277) );
  SAEDRVT14_OR3_0P5 U106 ( .A1(G80), .A2(n107), .A3(n73), .X(G87BF) );
  SAEDRVT14_AOI21_0P75 U107 ( .A1(n108), .A2(G9), .B(n107), .X(n109) );
  SAEDRVT14_NR2_1 U108 ( .A1(n107), .A2(n69), .X(n71) );
  SAEDRVT14_NR2_1 U109 ( .A1(n98), .A2(n77), .X(n108) );
  SAEDRVT14_ND2_CDC_0P5 U110 ( .A1(G73), .A2(n106), .X(n91) );
  SAEDRVT14_ND2_CDC_0P5 U111 ( .A1(G71), .A2(n106), .X(n92) );
  SAEDRVT14_NR2_1 U112 ( .A1(G3), .A2(G11), .X(n107) );
  SAEDRVT14_INV_0P5 U113 ( .A(G13), .X(n105) );
  SAEDRVT14_ND2B_U_0P5 U114 ( .A(G3), .B(n105), .X(n77) );
  SAEDRVT14_INV_0P5 U115 ( .A(G10), .X(n98) );
  SAEDRVT14_INV_0P5 U116 ( .A(G2), .X(n76) );
  SAEDRVT14_ND2_CDC_0P5 U117 ( .A1(G66), .A2(n76), .X(n70) );
  SAEDRVT14_ND2_CDC_0P5 U118 ( .A1(n71), .A2(n70), .X(G88BF) );
  SAEDRVT14_INV_0P5 U119 ( .A(G88BF), .X(n75) );
  SAEDRVT14_INV_0P5 U120 ( .A(G4), .X(n106) );
  SAEDRVT14_ND2_CDC_0P5 U121 ( .A1(G69), .A2(n106), .X(n82) );
  SAEDRVT14_ND2_CDC_0P5 U122 ( .A1(n75), .A2(G70), .X(n113) );
  SAEDRVT14_INV_0P5 U123 ( .A(n108), .X(n72) );
  SAEDRVT14_OAI21_0P5 U124 ( .A1(G9), .A2(n72), .B(G23), .X(n73) );
  SAEDRVT14_INV_0P5 U125 ( .A(G87BF), .X(n74) );
  SAEDRVT14_ND2_CDC_0P5 U126 ( .A1(n74), .A2(G72), .X(n111) );
  SAEDRVT14_OAI21_0P5 U127 ( .A1(G3), .A2(n74), .B(G76), .X(n90) );
  SAEDRVT14_OAI21_0P5 U128 ( .A1(G3), .A2(n75), .B(G77), .X(n84) );
  SAEDRVT14_OA31_1 U129 ( .A1(G9), .A2(G10), .A3(n77), .B(G22), .X(n80) );
  SAEDRVT14_ND2_CDC_0P5 U130 ( .A1(n80), .A2(n79), .X(G86BF) );
  SAEDRVT14_INV_0P5 U131 ( .A(G86BF), .X(n81) );
  SAEDRVT14_ND2_CDC_0P5 U132 ( .A1(n81), .A2(G74), .X(n115) );
  SAEDRVT14_OAI21_0P5 U133 ( .A1(G3), .A2(n81), .B(G75), .X(n87) );
  SAEDRVT14_INV_0P5 U134 ( .A(n82), .X(n114) );
  SAEDRVT14_INV_0P5 U135 ( .A(n113), .X(n93) );
  SAEDRVT14_OAI31_0P5 U136 ( .A1(n95), .A2(G300), .A3(n101), .B(n84), .X(n83)
         );
  SAEDRVT14_AO21_U_0P5 U137 ( .A1(G6), .A2(n83), .B(G277), .X(G273) );
  SAEDRVT14_INV_0P5 U138 ( .A(n115), .X(n96) );
  SAEDRVT14_OR4_1 U139 ( .A1(G4), .A2(n95), .A3(G306), .A4(n97), .X(n85) );
  SAEDRVT14_AO21B_0P5 U140 ( .A1(n85), .A2(n87), .B(G8), .X(n86) );
  SAEDRVT14_OAI21_0P5 U141 ( .A1(G2), .A2(n87), .B(n86), .X(G271) );
  SAEDRVT14_INV_0P5 U142 ( .A(n111), .X(n94) );
  SAEDRVT14_NR4_0P75 U143 ( .A1(n99), .A2(G4), .A3(G306), .A4(G300), .X(n88)
         );
  SAEDRVT14_OAI21_0P5 U144 ( .A1(n95), .A2(n88), .B(G5), .X(n89) );
  SAEDRVT14_OAI21_0P5 U145 ( .A1(G2), .A2(n90), .B(n89), .X(G272) );
  SAEDRVT14_AN4_0P5 U146 ( .A1(G13), .A2(G11), .A3(G12), .A4(G28), .X(G92) );
  SAEDRVT14_INV_0P5 U147 ( .A(n91), .X(n116) );
  SAEDRVT14_ND2_CDC_0P5 U148 ( .A1(n116), .A2(G31), .X(G96BF) );
  SAEDRVT14_INV_0P5 U149 ( .A(n92), .X(n112) );
  SAEDRVT14_ND2_CDC_0P5 U150 ( .A1(n112), .A2(G33), .X(G98BF) );
  SAEDRVT14_ND2_CDC_0P5 U151 ( .A1(n114), .A2(G35), .X(G100BF) );
  SAEDRVT14_ND2_CDC_0P5 U152 ( .A1(n93), .A2(G34), .X(G99BF) );
  SAEDRVT14_ND2_CDC_0P5 U153 ( .A1(n94), .A2(G32), .X(G97BF) );
  SAEDRVT14_ND2_CDC_0P5 U154 ( .A1(G306), .A2(G16), .X(G105BF) );
  SAEDRVT14_ND2_CDC_0P5 U155 ( .A1(n95), .A2(G15), .X(G104BF) );
  SAEDRVT14_ND2_CDC_0P5 U156 ( .A1(n96), .A2(G30), .X(G95BF) );
  SAEDRVT14_ND2_CDC_0P5 U157 ( .A1(G300), .A2(G14), .X(G103BF) );
  SAEDRVT14_AO221_0P5 U158 ( .A1(G10), .A2(n99), .B1(n98), .B2(n97), .C(G4), 
        .X(n102) );
  SAEDRVT14_OAI22_0P5 U159 ( .A1(G9), .A2(n102), .B1(n101), .B2(n100), .X(n104) );
  SAEDRVT14_ND2_CDC_0P5 U160 ( .A1(G12), .A2(G26), .X(n103) );
  SAEDRVT14_AOI21_0P75 U161 ( .A1(n105), .A2(n104), .B(n103), .X(G90) );
  SAEDRVT14_AN3_0P5 U162 ( .A1(scan_out), .A2(G20), .A3(n106), .X(G84) );
  SAEDRVT14_AN3_0P5 U163 ( .A1(G79), .A2(G18), .A3(n106), .X(G107) );
  SAEDRVT14_AN3_0P5 U164 ( .A1(G80), .A2(G19), .A3(n106), .X(G83) );
  SAEDRVT14_ND2_CDC_0P5 U165 ( .A1(G25), .A2(n109), .X(G89BF) );
  SAEDRVT14_AN2_MM_0P5 U166 ( .A1(n110), .A2(G300), .X(G275) );
  SAEDRVT14_TIE0_V1_2 U85 ( .X(G85) );
endmodule

