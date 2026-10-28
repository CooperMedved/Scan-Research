/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:47:35 2026
/////////////////////////////////////////////////////////////


module s298 ( CK, G0, G1, G117, G118, G132, G133, G2, G66, G67, scan_in, 
        scan_out, scan_enable );
  input CK, G0, G1, G2, scan_in, scan_enable;
  output G117, G118, G132, G133, G66, G67, scan_out;
  wire   G10, G29, G11, G30, G12, G34, G13, G39, G14, G44, G15, G56, G86, G92,
         G98, G102, G107, G133, G113, G22, G119, G23, G125, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79;
  assign scan_out = G133;

  SAEDRVT14_FSDPQ_V2LP_1 DFF_0_Q_reg ( .D(G29), .SI(scan_in), .SE(scan_enable), 
        .CK(CK), .Q(G10) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_3_Q_reg ( .D(G39), .SI(G12), .SE(scan_enable), 
        .CK(CK), .Q(G13) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_1_Q_reg ( .D(G30), .SI(G10), .SE(scan_enable), 
        .CK(CK), .Q(G11) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_2_Q_reg ( .D(G34), .SI(G11), .SE(scan_enable), 
        .CK(CK), .Q(G12) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_12_Q_reg ( .D(G119), .SI(G132), .SE(scan_enable), 
        .CK(CK), .Q(G22) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_13_Q_reg ( .D(G125), .SI(G22), .SE(scan_enable), 
        .CK(CK), .Q(G23) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_5_Q_reg ( .D(G56), .SI(G14), .SE(scan_enable), 
        .CK(CK), .Q(G15) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_7_Q_reg ( .D(G92), .SI(G66), .SE(scan_enable), 
        .CK(CK), .Q(G67) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_8_Q_reg ( .D(G98), .SI(G67), .SE(scan_enable), 
        .CK(CK), .Q(G117) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_9_Q_reg ( .D(G102), .SI(G117), .SE(scan_enable), 
        .CK(CK), .Q(G118) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_10_Q_reg ( .D(G107), .SI(G118), .SE(scan_enable), 
        .CK(CK), .Q(G132) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_6_Q_reg ( .D(G86), .SI(G15), .SE(scan_enable), 
        .CK(CK), .Q(G66) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_11_Q_reg ( .D(G113), .SI(G23), .SE(scan_enable), 
        .CK(CK), .Q(G133) );
  SAEDRVT14_FSDPQ_V2LP_1 DFF_4_Q_reg ( .D(G44), .SI(G13), .SE(scan_enable), 
        .CK(CK), .Q(G14) );
  SAEDRVT14_OAI21_0P5 U55 ( .A1(n40), .A2(n41), .B(n51), .X(n73) );
  SAEDRVT14_INV_0P5 U56 ( .A(n76), .X(n40) );
  SAEDRVT14_ND2_CDC_0P5 U57 ( .A1(G14), .A2(n72), .X(n41) );
  SAEDRVT14_INV_0P5 U58 ( .A(G13), .X(n62) );
  SAEDRVT14_NR2_1 U59 ( .A1(G14), .A2(n62), .X(n77) );
  SAEDRVT14_NR2_1 U60 ( .A1(G12), .A2(G11), .X(n57) );
  SAEDRVT14_AN3_0P5 U61 ( .A1(G22), .A2(n77), .A3(n57), .X(n43) );
  SAEDRVT14_INV_0P5 U62 ( .A(n77), .X(n71) );
  SAEDRVT14_INV_0P5 U63 ( .A(G11), .X(n72) );
  SAEDRVT14_OR4_1 U64 ( .A1(G12), .A2(G22), .A3(n71), .A4(n72), .X(n42) );
  SAEDRVT14_OAI21_0P5 U65 ( .A1(G15), .A2(n43), .B(n42), .X(n51) );
  SAEDRVT14_OAI21_0P5 U66 ( .A1(G13), .A2(G12), .B(n51), .X(n76) );
  SAEDRVT14_ND2_CDC_0P5 U67 ( .A1(G132), .A2(G14), .X(n45) );
  SAEDRVT14_INV_0P5 U68 ( .A(n51), .X(n49) );
  SAEDRVT14_AN3_0P5 U69 ( .A1(G14), .A2(n57), .A3(n62), .X(n44) );
  SAEDRVT14_INV_0P5 U70 ( .A(G10), .X(n52) );
  SAEDRVT14_OAI22_0P5 U71 ( .A1(n49), .A2(n44), .B1(n51), .B2(n52), .X(n47) );
  SAEDRVT14_OAI21_0P5 U72 ( .A1(n76), .A2(n45), .B(n47), .X(G107) );
  SAEDRVT14_AOI21_0P75 U73 ( .A1(G12), .A2(G14), .B(G13), .X(n74) );
  SAEDRVT14_INV_0P5 U74 ( .A(n74), .X(n46) );
  SAEDRVT14_AOI21_0P75 U75 ( .A1(G118), .A2(n46), .B(n77), .X(n48) );
  SAEDRVT14_OAI21_0P5 U76 ( .A1(n49), .A2(n48), .B(n47), .X(G102) );
  SAEDRVT14_OAI21_0P5 U77 ( .A1(n74), .A2(G117), .B(n71), .X(n50) );
  SAEDRVT14_NR2_1 U78 ( .A1(n73), .A2(n50), .X(G98) );
  SAEDRVT14_NR2_1 U79 ( .A1(G0), .A2(n51), .X(G56) );
  SAEDRVT14_NR2_1 U80 ( .A1(G10), .A2(G0), .X(G29) );
  SAEDRVT14_NR2_1 U81 ( .A1(n72), .A2(n52), .X(n65) );
  SAEDRVT14_ND2_CDC_0P5 U82 ( .A1(G12), .A2(n65), .X(n66) );
  SAEDRVT14_AOI21_0P75 U83 ( .A1(n62), .A2(n66), .B(G0), .X(n53) );
  SAEDRVT14_OAI21_0P5 U84 ( .A1(n62), .A2(n66), .B(n53), .X(n54) );
  SAEDRVT14_AOI21_0P75 U85 ( .A1(n57), .A2(G10), .B(n54), .X(G39) );
  SAEDRVT14_INV_0P5 U86 ( .A(G0), .X(n67) );
  SAEDRVT14_OAI21_0P5 U87 ( .A1(G23), .A2(G1), .B(n67), .X(n55) );
  SAEDRVT14_AOI21_0P75 U88 ( .A1(G23), .A2(G1), .B(n55), .X(G125) );
  SAEDRVT14_OAI21_0P5 U89 ( .A1(G22), .A2(G2), .B(n67), .X(n56) );
  SAEDRVT14_AOI21_0P75 U90 ( .A1(G22), .A2(G2), .B(n56), .X(G119) );
  SAEDRVT14_ND2_CDC_0P5 U91 ( .A1(n57), .A2(G10), .X(n59) );
  SAEDRVT14_INV_0P5 U92 ( .A(G23), .X(n58) );
  SAEDRVT14_OAI21_0P5 U93 ( .A1(n62), .A2(n59), .B(n58), .X(n61) );
  SAEDRVT14_OAI21_0P5 U94 ( .A1(G14), .A2(n61), .B(n67), .X(n60) );
  SAEDRVT14_AOI21_0P75 U95 ( .A1(G14), .A2(n61), .B(n60), .X(G44) );
  SAEDRVT14_OA21_1 U96 ( .A1(n62), .A2(G12), .B(G10), .X(n63) );
  SAEDRVT14_OAI21_0P5 U97 ( .A1(G11), .A2(n63), .B(n67), .X(n64) );
  SAEDRVT14_NR2_1 U98 ( .A1(n65), .A2(n64), .X(G30) );
  SAEDRVT14_NR2_1 U99 ( .A1(n65), .A2(G12), .X(n69) );
  SAEDRVT14_ND2_CDC_0P5 U100 ( .A1(n67), .A2(n66), .X(n68) );
  SAEDRVT14_NR2_1 U101 ( .A1(n69), .A2(n68), .X(G34) );
  SAEDRVT14_ND2_CDC_0P5 U102 ( .A1(G66), .A2(G14), .X(n70) );
  SAEDRVT14_AOI21_0P75 U103 ( .A1(n71), .A2(n70), .B(n76), .X(G86) );
  SAEDRVT14_NR2_1 U104 ( .A1(G14), .A2(n72), .X(n78) );
  SAEDRVT14_AOI21_0P75 U105 ( .A1(G12), .A2(n78), .B(n73), .X(n75) );
  SAEDRVT14_AO32_U_0P5 U106 ( .A1(n75), .A2(G14), .A3(G67), .B1(n75), .B2(n74), 
        .X(G92) );
  SAEDRVT14_NR2_1 U107 ( .A1(n77), .A2(n76), .X(n79) );
  SAEDRVT14_AO32_U_0P5 U108 ( .A1(n79), .A2(G14), .A3(G133), .B1(n79), .B2(n78), .X(G113) );
endmodule

