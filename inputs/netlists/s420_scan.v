/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:53:04 2026
/////////////////////////////////////////////////////////////


module s420 ( CK, C_0, C_1, C_10, C_11, C_12, C_13, C_14, C_15, C_16, C_2, C_3, 
        C_4, C_5, C_6, C_7, C_8, C_9, P_0, Z, scan_in, scan_out, scan_enable
 );
  input CK, C_0, C_1, C_10, C_11, C_12, C_13, C_14, C_15, C_16, C_2, C_3, C_4,
         C_5, C_6, C_7, C_8, C_9, P_0, scan_in, scan_enable;
  output Z, scan_out;
  wire   X_4, X_3, I13, X_2, I14, X_1, I15, X_8, X_7, I111, X_6, I112, X_5,
         I113, X_12, X_11, I209, X_10, I210, X_9, I211, X_16, X_15, X_14, I308,
         I309, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103;

  SAEDRVT14_FSDPQ_V2LP_1 DFF_3_Q_reg ( .D(I15), .SI(X_2), .SE(scan_enable), 
        .CK(CK), .Q(X_1) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_2_Q_reg ( .D(I14), .SI(X_3), .SE(scan_enable), 
        .CK(CK), .Q(X_2) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_1_Q_reg ( .D(I13), .SI(X_4), .SE(scan_enable), 
        .CK(CK), .Q(X_3) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_0_Q_reg ( .D(n51), .SI(scan_in), .SE(scan_enable), 
        .CK(CK), .Q(X_4) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_7_Q_reg ( .D(I113), .SI(X_6), .SE(scan_enable), 
        .CK(CK), .Q(X_5) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_6_Q_reg ( .D(I112), .SI(X_7), .SE(scan_enable), 
        .CK(CK), .Q(X_6) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_5_Q_reg ( .D(I111), .SI(X_8), .SE(scan_enable), 
        .CK(CK), .Q(X_7) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_4_Q_reg ( .D(n52), .SI(X_1), .SE(scan_enable), 
        .CK(CK), .Q(X_8) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_11_Q_reg ( .D(I211), .SI(X_10), .SE(scan_enable), 
        .CK(CK), .Q(X_9) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_10_Q_reg ( .D(I210), .SI(X_11), .SE(scan_enable), 
        .CK(CK), .Q(X_10) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_9_Q_reg ( .D(I209), .SI(X_12), .SE(scan_enable), 
        .CK(CK), .Q(X_11) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_8_Q_reg ( .D(n53), .SI(X_5), .SE(scan_enable), 
        .CK(CK), .Q(X_12) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_15_Q_reg ( .D(I309), .SI(X_14), .SE(scan_enable), 
        .CK(CK), .Q(scan_out) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_14_Q_reg ( .D(I308), .SI(X_15), .SE(scan_enable), 
        .CK(CK), .Q(X_14) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_13_Q_reg ( .D(n55), .SI(X_16), .SE(scan_enable), 
        .CK(CK), .Q(X_15) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_12_Q_reg ( .D(n54), .SI(X_9), .SE(scan_enable), 
        .CK(CK), .Q(X_16) );
  SAEDRVT14_INV_0P5 U69 ( .A(X_3), .X(n56) );
  SAEDRVT14_AN2_MM_0P5 U70 ( .A1(P_0), .A2(X_1), .X(n102) );
  SAEDRVT14_ND2_CDC_0P5 U71 ( .A1(X_2), .A2(n102), .X(n101) );
  SAEDRVT14_NR2_1 U72 ( .A1(n56), .A2(n101), .X(n61) );
  SAEDRVT14_AOI21_0P75 U73 ( .A1(n56), .A2(n101), .B(n61), .X(I13) );
  SAEDRVT14_INV_0P5 U74 ( .A(X_5), .X(n57) );
  SAEDRVT14_ND2_CDC_0P5 U75 ( .A1(X_4), .A2(n61), .X(n60) );
  SAEDRVT14_NR2_1 U76 ( .A1(n57), .A2(n60), .X(n63) );
  SAEDRVT14_AOI21_0P75 U77 ( .A1(n57), .A2(n60), .B(n63), .X(I113) );
  SAEDRVT14_INV_0P5 U78 ( .A(X_7), .X(n87) );
  SAEDRVT14_ND2_CDC_0P5 U79 ( .A1(X_6), .A2(n63), .X(n62) );
  SAEDRVT14_NR2_1 U80 ( .A1(n87), .A2(n62), .X(n65) );
  SAEDRVT14_AOI21_0P75 U81 ( .A1(n87), .A2(n62), .B(n65), .X(I111) );
  SAEDRVT14_INV_0P5 U82 ( .A(X_9), .X(n86) );
  SAEDRVT14_ND2_CDC_0P5 U83 ( .A1(X_8), .A2(n65), .X(n64) );
  SAEDRVT14_NR2_1 U84 ( .A1(n86), .A2(n64), .X(n67) );
  SAEDRVT14_AOI21_0P75 U85 ( .A1(n86), .A2(n64), .B(n67), .X(I211) );
  SAEDRVT14_INV_0P5 U86 ( .A(X_11), .X(n58) );
  SAEDRVT14_ND2_CDC_0P5 U87 ( .A1(X_10), .A2(n67), .X(n66) );
  SAEDRVT14_NR2_1 U88 ( .A1(n58), .A2(n66), .X(n69) );
  SAEDRVT14_AOI21_0P75 U89 ( .A1(n58), .A2(n66), .B(n69), .X(I209) );
  SAEDRVT14_INV_0P5 U90 ( .A(scan_out), .X(n59) );
  SAEDRVT14_ND2_CDC_0P5 U91 ( .A1(X_12), .A2(n69), .X(n68) );
  SAEDRVT14_NR2_1 U92 ( .A1(n59), .A2(n68), .X(n71) );
  SAEDRVT14_AOI21_0P75 U93 ( .A1(n59), .A2(n68), .B(n71), .X(I309) );
  SAEDRVT14_INV_0P5 U94 ( .A(X_15), .X(n73) );
  SAEDRVT14_ND2_CDC_0P5 U95 ( .A1(X_14), .A2(n71), .X(n70) );
  SAEDRVT14_NR2_1 U96 ( .A1(n73), .A2(n70), .X(n103) );
  SAEDRVT14_AOI21_0P75 U97 ( .A1(n73), .A2(n70), .B(n103), .X(n55) );
  SAEDRVT14_OA21_1 U98 ( .A1(X_4), .A2(n61), .B(n60), .X(n51) );
  SAEDRVT14_OA21_1 U99 ( .A1(X_6), .A2(n63), .B(n62), .X(I112) );
  SAEDRVT14_OA21_1 U100 ( .A1(X_8), .A2(n65), .B(n64), .X(n52) );
  SAEDRVT14_OA21_1 U101 ( .A1(X_10), .A2(n67), .B(n66), .X(I210) );
  SAEDRVT14_OA21_1 U102 ( .A1(X_12), .A2(n69), .B(n68), .X(n53) );
  SAEDRVT14_OA21_1 U103 ( .A1(X_14), .A2(n71), .B(n70), .X(I308) );
  SAEDRVT14_OA21B_1 U104 ( .A1(P_0), .A2(X_1), .B(n102), .X(I15) );
  SAEDRVT14_INV_0P5 U105 ( .A(C_2), .X(n72) );
  SAEDRVT14_AOI21_0P75 U106 ( .A1(n72), .A2(X_2), .B(X_1), .X(n99) );
  SAEDRVT14_AO32_U_0P5 U107 ( .A1(X_16), .A2(n73), .A3(C_16), .B1(X_15), .B2(
        C_15), .X(n75) );
  SAEDRVT14_INV_0P5 U108 ( .A(X_14), .X(n74) );
  SAEDRVT14_OAI22_0P5 U109 ( .A1(X_14), .A2(n75), .B1(n74), .B2(C_14), .X(n77)
         );
  SAEDRVT14_ND2_CDC_0P5 U110 ( .A1(scan_out), .A2(C_13), .X(n76) );
  SAEDRVT14_OAI21_0P5 U111 ( .A1(n77), .A2(scan_out), .B(n76), .X(n79) );
  SAEDRVT14_INV_0P5 U112 ( .A(X_12), .X(n78) );
  SAEDRVT14_OAI22_0P5 U113 ( .A1(X_12), .A2(n79), .B1(n78), .B2(C_12), .X(n81)
         );
  SAEDRVT14_ND2_CDC_0P5 U114 ( .A1(X_11), .A2(C_11), .X(n80) );
  SAEDRVT14_OAI21_0P5 U115 ( .A1(n81), .A2(X_11), .B(n80), .X(n83) );
  SAEDRVT14_INV_0P5 U116 ( .A(X_10), .X(n82) );
  SAEDRVT14_OAI22_0P5 U117 ( .A1(X_10), .A2(n83), .B1(n82), .B2(C_10), .X(n84)
         );
  SAEDRVT14_AOI21_0P75 U118 ( .A1(n84), .A2(n86), .B(X_8), .X(n85) );
  SAEDRVT14_OAI21_0P5 U119 ( .A1(C_9), .A2(n86), .B(n85), .X(n91) );
  SAEDRVT14_AO32_U_0P5 U120 ( .A1(X_8), .A2(n87), .A3(C_8), .B1(X_7), .B2(C_7), 
        .X(n89) );
  SAEDRVT14_INV_0P5 U121 ( .A(X_6), .X(n88) );
  SAEDRVT14_OAI22_0P5 U122 ( .A1(X_6), .A2(n89), .B1(n88), .B2(C_6), .X(n90)
         );
  SAEDRVT14_OA31_1 U123 ( .A1(X_6), .A2(X_7), .A3(n91), .B(n90), .X(n93) );
  SAEDRVT14_ND2_CDC_0P5 U124 ( .A1(X_5), .A2(C_5), .X(n92) );
  SAEDRVT14_OAI21_0P5 U125 ( .A1(n93), .A2(X_5), .B(n92), .X(n95) );
  SAEDRVT14_INV_0P5 U126 ( .A(X_4), .X(n94) );
  SAEDRVT14_OAI22_0P5 U127 ( .A1(X_4), .A2(n95), .B1(n94), .B2(C_4), .X(n97)
         );
  SAEDRVT14_AOI21_0P75 U128 ( .A1(C_3), .A2(X_3), .B(X_2), .X(n96) );
  SAEDRVT14_OAI21_0P5 U129 ( .A1(X_3), .A2(n97), .B(n96), .X(n98) );
  SAEDRVT14_AO21_U_0P5 U130 ( .A1(n99), .A2(n98), .B(C_0), .X(n100) );
  SAEDRVT14_AO32_U_0P5 U131 ( .A1(P_0), .A2(X_1), .A3(C_1), .B1(P_0), .B2(n100), .X(Z) );
  SAEDRVT14_OA21_1 U132 ( .A1(X_2), .A2(n102), .B(n101), .X(I14) );
  SAEDRVT14_EO2_V1_0P75 U133 ( .A1(X_16), .A2(n103), .X(n54) );
endmodule

