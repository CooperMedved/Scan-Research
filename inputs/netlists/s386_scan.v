/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:52:04 2026
/////////////////////////////////////////////////////////////


module s386 ( CK, v0, v1, v13_D_10, v13_D_11, v13_D_12, v13_D_6, v13_D_7, 
        v13_D_8, v13_D_9, v2, v3, v4, v5, v6, scan_in, scan_out, scan_enable
 );
  input CK, v0, v1, v2, v3, v4, v5, v6, scan_in, scan_enable;
  output v13_D_10, v13_D_11, v13_D_12, v13_D_6, v13_D_7, v13_D_8, v13_D_9,
         scan_out;
  wire   v12, v11, v10, v9, v8, Lv13_D_5, Lv13_D_4, Lv13_D_3, Lv13_D_2,
         Lv13_D_1, Lv13_D_0, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n107,
         n108, n109, n110, n111, n113;

  SAEDRVT14_FSDP_V2LP_1 DFF_5_Q_reg ( .D(Lv13_D_0), .SI(v8), .SE(scan_enable), 
        .CK(CK), .Q(scan_out), .QN(n108) );
  SAEDRVT14_FSDP_V2LP_1 DFF_2_Q_reg ( .D(Lv13_D_3), .SI(n109), .SE(scan_enable), .CK(CK), .Q(v10), .QN(n110) );
  SAEDRVT14_FSDP_V2LP_1 DFF_0_Q_reg ( .D(Lv13_D_5), .SI(scan_in), .SE(
        scan_enable), .CK(CK), .Q(v12), .QN(n113) );
  SAEDRVT14_FSDP_V2LP_1 DFF_3_Q_reg ( .D(Lv13_D_2), .SI(v10), .SE(scan_enable), 
        .CK(CK), .Q(v9), .QN(n107) );
  SAEDRVT14_FSDP_V2LP_1 DFF_4_Q_reg ( .D(Lv13_D_1), .SI(v9), .SE(scan_enable), 
        .CK(CK), .Q(v8), .QN(n111) );
  SAEDRVT14_FSDP_V2LP_1 DFF_1_Q_reg ( .D(Lv13_D_4), .SI(n113), .SE(scan_enable), .CK(CK), .Q(v11), .QN(n109) );
  SAEDRVT14_ND2_CDC_0P5 U71 ( .A1(n107), .A2(n110), .X(n58) );
  SAEDRVT14_INV_0P5 U72 ( .A(v1), .X(n68) );
  SAEDRVT14_ND2_CDC_0P5 U73 ( .A1(v0), .A2(n68), .X(n60) );
  SAEDRVT14_NR2_1 U74 ( .A1(n58), .A2(n60), .X(n65) );
  SAEDRVT14_ND2B_U_0P5 U75 ( .A(v12), .B(n65), .X(n88) );
  SAEDRVT14_OR3_0P5 U76 ( .A1(v3), .A2(v4), .A3(n111), .X(n80) );
  SAEDRVT14_INV_0P5 U77 ( .A(n80), .X(n75) );
  SAEDRVT14_ND2_CDC_0P5 U78 ( .A1(v11), .A2(scan_out), .X(n79) );
  SAEDRVT14_OAI22_0P5 U79 ( .A1(v11), .A2(n75), .B1(n79), .B2(n111), .X(n57)
         );
  SAEDRVT14_NR2_1 U80 ( .A1(n88), .A2(n57), .X(Lv13_D_0) );
  SAEDRVT14_INV_0P5 U81 ( .A(v0), .X(n63) );
  SAEDRVT14_NR4_0P75 U82 ( .A1(v11), .A2(v12), .A3(v8), .A4(scan_out), .X(n104) );
  SAEDRVT14_ND2_CDC_0P5 U83 ( .A1(v1), .A2(n104), .X(n102) );
  SAEDRVT14_AN3_0P5 U84 ( .A1(v9), .A2(n104), .A3(n63), .X(n82) );
  SAEDRVT14_INV_0P5 U85 ( .A(v5), .X(n77) );
  SAEDRVT14_NR2_1 U86 ( .A1(v12), .A2(n58), .X(n72) );
  SAEDRVT14_NR2_1 U87 ( .A1(v8), .A2(scan_out), .X(n64) );
  SAEDRVT14_OAI21_0P5 U88 ( .A1(n68), .A2(v9), .B(v0), .X(n105) );
  SAEDRVT14_AN3_0P5 U89 ( .A1(n64), .A2(n110), .A3(n105), .X(n59) );
  SAEDRVT14_AOI21_0P75 U90 ( .A1(n72), .A2(n60), .B(n59), .X(n101) );
  SAEDRVT14_INV_0P5 U91 ( .A(n101), .X(n61) );
  SAEDRVT14_AOI21_0P75 U92 ( .A1(n82), .A2(n77), .B(n61), .X(n62) );
  SAEDRVT14_OAI21_0P5 U93 ( .A1(n63), .A2(n102), .B(n62), .X(Lv13_D_2) );
  SAEDRVT14_AN3_0P5 U94 ( .A1(v12), .A2(n65), .A3(n64), .X(n100) );
  SAEDRVT14_ND2_CDC_0P5 U95 ( .A1(v11), .A2(n100), .X(n86) );
  SAEDRVT14_INV_0P5 U96 ( .A(n88), .X(n92) );
  SAEDRVT14_ND2_CDC_0P5 U97 ( .A1(v2), .A2(n111), .X(n96) );
  SAEDRVT14_ND2_CDC_0P5 U98 ( .A1(n92), .A2(n109), .X(n97) );
  SAEDRVT14_AOI21_0P75 U99 ( .A1(n80), .A2(n96), .B(n97), .X(n66) );
  SAEDRVT14_AOI21_0P75 U100 ( .A1(n92), .A2(scan_out), .B(n66), .X(n67) );
  SAEDRVT14_OAI21_0P5 U101 ( .A1(v5), .A2(n86), .B(n67), .X(Lv13_D_4) );
  SAEDRVT14_NR2_1 U102 ( .A1(v3), .A2(n111), .X(n71) );
  SAEDRVT14_NR2_1 U103 ( .A1(v11), .A2(scan_out), .X(n69) );
  SAEDRVT14_AN4_0P5 U104 ( .A1(v4), .A2(n69), .A3(n72), .A4(n68), .X(n70) );
  SAEDRVT14_AN4_0P5 U105 ( .A1(v10), .A2(v0), .A3(n104), .A4(n107), .X(n83) );
  SAEDRVT14_AO21_U_0P5 U106 ( .A1(n71), .A2(n70), .B(n83), .X(v13_D_9) );
  SAEDRVT14_OAI22_0P5 U107 ( .A1(v11), .A2(n80), .B1(n79), .B2(n111), .X(n73)
         );
  SAEDRVT14_AOI21_0P75 U108 ( .A1(n73), .A2(n72), .B(n83), .X(n74) );
  SAEDRVT14_ND2_CDC_0P5 U109 ( .A1(n101), .A2(n74), .X(v13_D_11) );
  SAEDRVT14_OAI21_0P5 U110 ( .A1(n75), .A2(n108), .B(n96), .X(n76) );
  SAEDRVT14_AOI21_0P75 U111 ( .A1(v3), .A2(v2), .B(n76), .X(n78) );
  SAEDRVT14_OAI22_0P5 U112 ( .A1(n78), .A2(n97), .B1(n77), .B2(n86), .X(
        v13_D_6) );
  SAEDRVT14_INV_0P5 U113 ( .A(n79), .X(n91) );
  SAEDRVT14_ND2_CDC_0P5 U114 ( .A1(n91), .A2(n111), .X(n81) );
  SAEDRVT14_OAI22_0P5 U115 ( .A1(n88), .A2(n81), .B1(n97), .B2(n80), .X(
        v13_D_7) );
  SAEDRVT14_AN3_0P5 U116 ( .A1(v10), .A2(v5), .A3(n82), .X(v13_D_12) );
  SAEDRVT14_NR2_1 U118 ( .A1(n107), .A2(n102), .X(n84) );
  SAEDRVT14_AO32_U_0P5 U119 ( .A1(n84), .A2(v0), .A3(v5), .B1(n84), .B2(n110), 
        .X(v13_D_10) );
  SAEDRVT14_AN4_0P5 U120 ( .A1(v3), .A2(v2), .A3(n109), .A4(n108), .X(n85) );
  SAEDRVT14_OAI21_0P5 U121 ( .A1(n91), .A2(n85), .B(v8), .X(n87) );
  SAEDRVT14_OAI21_0P5 U122 ( .A1(n88), .A2(n87), .B(n86), .X(Lv13_D_5) );
  SAEDRVT14_INV_0P5 U123 ( .A(v4), .X(n98) );
  SAEDRVT14_AN3_0P5 U124 ( .A1(v4), .A2(scan_out), .A3(n109), .X(n94) );
  SAEDRVT14_AO21B_0P5 U125 ( .A1(n108), .A2(v2), .B(v3), .X(n89) );
  SAEDRVT14_OAI22_0P5 U126 ( .A1(v11), .A2(n89), .B1(n109), .B2(scan_out), .X(
        n90) );
  SAEDRVT14_AO32_U_0P5 U127 ( .A1(v5), .A2(n111), .A3(n91), .B1(v8), .B2(n90), 
        .X(n93) );
  SAEDRVT14_OAI21_0P5 U128 ( .A1(n94), .A2(n93), .B(n92), .X(n95) );
  SAEDRVT14_OA31_1 U129 ( .A1(n98), .A2(n97), .A3(n96), .B(n95), .X(n99) );
  SAEDRVT14_AO21B_0P5 U130 ( .A1(n100), .A2(n109), .B(n99), .X(Lv13_D_1) );
  SAEDRVT14_OA31_1 U131 ( .A1(v5), .A2(n110), .A3(n102), .B(n101), .X(n103) );
  SAEDRVT14_AO21B_0P5 U132 ( .A1(n105), .A2(n104), .B(n103), .X(Lv13_D_3) );
  SAEDRVT14_NR2B_U_0P5 U70 ( .A(n83), .B(v6), .X(v13_D_8) );
endmodule

