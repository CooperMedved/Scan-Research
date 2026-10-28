/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:48:05 2026
/////////////////////////////////////////////////////////////


module s344 ( CK, A0, A1, A2, A3, B0, B1, B2, B3, CNTVCO2, CNTVCON2, P0, P1, 
        P2, P3, P4, P5, P6, P7, READY, START, scan_in, scan_out, scan_enable
 );
  input CK, A0, A1, A2, A3, B0, B1, B2, B3, START, scan_in, scan_enable;
  output CNTVCO2, CNTVCON2, P0, P1, P2, P3, P4, P5, P6, P7, READY, scan_out;
  wire   CT2, CNTVG3VD, CT1, CNTVG2VD, CT0, CNTVG1VD, ACVQN3, ACVQN2, ACVQN1,
         ACVQN0, MRVQN3, MRVG4VD, MRVQN2, MRVG3VD, MRVQN1, MRVG2VD, MRVQN0,
         MRVG1VD, AX3, AX2, AX1, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n80, n81, n82, n83,
         n84, n85, n86, n88, n89, n90, n91;

  SAEDRVT14_FSDP_V2LP_1 DFF_2_Q_reg ( .D(CNTVG1VD), .SI(CT1), .SE(scan_enable), 
        .CK(CK), .Q(CT0), .QN(n86) );
  SAEDRVT14_FSDP_V2LP_1 DFF_0_Q_reg ( .D(CNTVG3VD), .SI(scan_in), .SE(
        scan_enable), .CK(CK), .Q(CT2), .QN(n91) );
  SAEDRVT14_FSDP_V2LP_1 DFF_14_Q_reg ( .D(n84), .SI(n88), .SE(scan_enable), 
        .CK(CK), .Q(scan_out) );
  SAEDRVT14_FSDP_V2LP_1 DFF_13_Q_reg ( .D(n83), .SI(n89), .SE(scan_enable), 
        .CK(CK), .Q(AX1), .QN(n88) );
  SAEDRVT14_FSDP_V2LP_1 DFF_12_Q_reg ( .D(n82), .SI(n90), .SE(scan_enable), 
        .CK(CK), .Q(AX2), .QN(n89) );
  SAEDRVT14_FSDP_V2LP_1 DFF_11_Q_reg ( .D(n81), .SI(MRVQN0), .SE(scan_enable), 
        .CK(CK), .Q(AX3), .QN(n90) );
  SAEDRVT14_FSDP_V2LP_1 DFF_5_Q_reg ( .D(n80), .SI(ACVQN2), .SE(scan_enable), 
        .CK(CK), .Q(ACVQN1), .QN(P5) );
  SAEDRVT14_FSDP_V2LP_1 DFF_4_Q_reg ( .D(n78), .SI(ACVQN3), .SE(scan_enable), 
        .CK(CK), .Q(ACVQN2), .QN(P6) );
  SAEDRVT14_FSDP_V2LP_1 DFF_3_Q_reg ( .D(n77), .SI(CT0), .SE(scan_enable), 
        .CK(CK), .Q(ACVQN3), .QN(P7) );
  SAEDRVT14_FSDP_V2LP_1 DFF_10_Q_reg ( .D(MRVG1VD), .SI(MRVQN1), .SE(
        scan_enable), .CK(CK), .Q(MRVQN0), .QN(P0) );
  SAEDRVT14_FSDP_V2LP_1 DFF_9_Q_reg ( .D(MRVG2VD), .SI(MRVQN2), .SE(
        scan_enable), .CK(CK), .Q(MRVQN1), .QN(P1) );
  SAEDRVT14_FSDP_V2LP_1 DFF_8_Q_reg ( .D(MRVG3VD), .SI(MRVQN3), .SE(
        scan_enable), .CK(CK), .Q(MRVQN2), .QN(P2) );
  SAEDRVT14_FSDP_V2LP_1 DFF_7_Q_reg ( .D(MRVG4VD), .SI(ACVQN0), .SE(
        scan_enable), .CK(CK), .Q(MRVQN3), .QN(P3) );
  SAEDRVT14_FSDP_V2LP_1 DFF_6_Q_reg ( .D(n76), .SI(ACVQN1), .SE(scan_enable), 
        .CK(CK), .Q(ACVQN0), .QN(P4) );
  SAEDRVT14_FSDP_V2LP_1 DFF_1_Q_reg ( .D(CNTVG2VD), .SI(n91), .SE(scan_enable), 
        .CK(CK), .Q(CT1), .QN(n85) );
  SAEDRVT14_ND2_CDC_0P5 U53 ( .A1(CT2), .A2(n46), .X(CNTVCON2) );
  SAEDRVT14_AOI21_0P75 U54 ( .A1(n67), .A2(n69), .B(P7), .X(n71) );
  SAEDRVT14_NR2_1 U55 ( .A1(n51), .A2(P6), .X(n48) );
  SAEDRVT14_INV_0P5 U56 ( .A(n68), .X(n67) );
  SAEDRVT14_OAI22_0P5 U57 ( .A1(B2), .A2(n75), .B1(n68), .B2(P3), .X(n55) );
  SAEDRVT14_NR2_1 U58 ( .A1(START), .A2(n65), .X(CNTVG1VD) );
  SAEDRVT14_AOI21_0P75 U59 ( .A1(ACVQN0), .A2(n68), .B(START), .X(n63) );
  SAEDRVT14_AOI21_0P75 U60 ( .A1(ACVQN0), .A2(n58), .B(n61), .X(n59) );
  SAEDRVT14_OAI22_0P5 U61 ( .A1(B1), .A2(n75), .B1(n68), .B2(P2), .X(n57) );
  SAEDRVT14_OAI21_0P5 U62 ( .A1(CT2), .A2(n46), .B(CNTVCON2), .X(n47) );
  SAEDRVT14_OAI22_0P5 U63 ( .A1(B0), .A2(n75), .B1(n68), .B2(P1), .X(n56) );
  SAEDRVT14_NR2_1 U64 ( .A1(ACVQN0), .A2(n58), .X(n61) );
  SAEDRVT14_NR2_1 U65 ( .A1(READY), .A2(n86), .X(n65) );
  SAEDRVT14_AN3_0P5 U66 ( .A1(CT0), .A2(CT2), .A3(n85), .X(READY) );
  SAEDRVT14_ND2_CDC_0P5 U67 ( .A1(AX2), .A2(P0), .X(n53) );
  SAEDRVT14_ND2_CDC_0P5 U68 ( .A1(AX3), .A2(P0), .X(n72) );
  SAEDRVT14_ND2_CDC_0P5 U69 ( .A1(scan_out), .A2(P0), .X(n58) );
  SAEDRVT14_NR2_1 U70 ( .A1(n85), .A2(n86), .X(n46) );
  SAEDRVT14_NR2_1 U71 ( .A1(START), .A2(n47), .X(CNTVG3VD) );
  SAEDRVT14_OR3_0P5 U72 ( .A1(CT1), .A2(CT0), .A3(CT2), .X(n75) );
  SAEDRVT14_ND2B_U_0P5 U73 ( .A(READY), .B(n75), .X(n68) );
  SAEDRVT14_AN2_MM_0P5 U74 ( .A1(AX1), .A2(P0), .X(n62) );
  SAEDRVT14_INV_0P5 U75 ( .A(n51), .X(n50) );
  SAEDRVT14_OAI22_0P5 U76 ( .A1(n53), .A2(n48), .B1(ACVQN2), .B2(n50), .X(n69)
         );
  SAEDRVT14_EN3_U_0P5 U77 ( .A1(ACVQN3), .A2(n69), .A3(n72), .X(n49) );
  SAEDRVT14_AO221_0P5 U78 ( .A1(n67), .A2(n49), .B1(n68), .B2(ACVQN2), .C(
        START), .X(n78) );
  SAEDRVT14_OAI22_0P5 U79 ( .A1(ACVQN2), .A2(n51), .B1(P6), .B2(n50), .X(n52)
         );
  SAEDRVT14_EO2_V1_0P75 U80 ( .A1(n53), .A2(n52), .X(n54) );
  SAEDRVT14_AO221_0P5 U81 ( .A1(n67), .A2(n54), .B1(n68), .B2(ACVQN1), .C(
        START), .X(n80) );
  SAEDRVT14_AO21_U_0P5 U82 ( .A1(READY), .A2(MRVQN2), .B(n55), .X(MRVG3VD) );
  SAEDRVT14_AO21_U_0P5 U83 ( .A1(READY), .A2(MRVQN0), .B(n56), .X(MRVG1VD) );
  SAEDRVT14_AO21_U_0P5 U84 ( .A1(READY), .A2(MRVQN1), .B(n57), .X(MRVG2VD) );
  SAEDRVT14_OAI22_0P5 U85 ( .A1(n59), .A2(n68), .B1(B3), .B2(n75), .X(n60) );
  SAEDRVT14_AO21_U_0P5 U86 ( .A1(READY), .A2(MRVQN3), .B(n60), .X(MRVG4VD) );
  SAEDRVT14_ADDF_V1_0P5 U87 ( .A(P5), .B(n62), .CI(n61), .CO(n51), .S(n64) );
  SAEDRVT14_OAI21_0P5 U88 ( .A1(n64), .A2(n68), .B(n63), .X(n76) );
  SAEDRVT14_INV_0P5 U89 ( .A(START), .X(n73) );
  SAEDRVT14_OAI21_0P5 U90 ( .A1(n65), .A2(CT1), .B(n73), .X(n66) );
  SAEDRVT14_AOI21_0P75 U91 ( .A1(CT1), .A2(CT0), .B(n66), .X(CNTVG2VD) );
  SAEDRVT14_INV_0P5 U92 ( .A(CNTVCON2), .X(CNTVCO2) );
  SAEDRVT14_OAI21_0P5 U93 ( .A1(n69), .A2(n68), .B(P7), .X(n70) );
  SAEDRVT14_OAI21_0P5 U94 ( .A1(n72), .A2(n71), .B(n70), .X(n74) );
  SAEDRVT14_ND2_CDC_0P5 U95 ( .A1(n74), .A2(n73), .X(n77) );
  SAEDRVT14_MUX2_U_0P5 U96 ( .D0(A3), .D1(AX3), .S(n75), .X(n81) );
  SAEDRVT14_MUX2_U_0P5 U97 ( .D0(A2), .D1(AX2), .S(n75), .X(n82) );
  SAEDRVT14_MUX2_U_0P5 U98 ( .D0(A1), .D1(AX1), .S(n75), .X(n83) );
  SAEDRVT14_MUX2_U_0P5 U99 ( .D0(A0), .D1(scan_out), .S(n75), .X(n84) );
endmodule

