/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:21:36 2026
/////////////////////////////////////////////////////////////


module b02 ( reset, clock, linea, u, scan_in, scan_out, scan_enable );
  input reset, clock, linea, scan_in, scan_enable;
  output u, scan_out;
  wire   N36, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23;
  wire   [2:0] stato;

  SAEDRVT14_FSDPRBQ_V2LP_1 u_reg ( .D(N36), .SI(n11), .SE(n11), .CK(clock), 
        .RD(n10), .Q(u) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_1_ ( .D(n13), .SI(n11), .SE(n11), .CK(
        clock), .RD(n10), .Q(stato[1]) );
  SAEDRVT14_INV_0P5 U19 ( .A(reset), .X(n10) );
  SAEDRVT14_INV_0P5 U20 ( .A(stato[1]), .X(n23) );
  SAEDRVT14_INV_0P5 U21 ( .A(stato[0]), .X(n22) );
  SAEDRVT14_ND2_CDC_0P5 U22 ( .A1(n23), .A2(n22), .X(n15) );
  SAEDRVT14_INV_0P5 U23 ( .A(stato[2]), .X(n19) );
  SAEDRVT14_NR2_1 U24 ( .A1(n15), .A2(n19), .X(N36) );
  SAEDRVT14_INV_0P5 U25 ( .A(linea), .X(n16) );
  SAEDRVT14_ND2_CDC_0P5 U26 ( .A1(n22), .A2(n16), .X(n20) );
  SAEDRVT14_AO221_0P5 U27 ( .A1(stato[0]), .A2(stato[2]), .B1(stato[0]), .B2(
        n16), .C(stato[1]), .X(n17) );
  SAEDRVT14_OAI21_0P5 U28 ( .A1(stato[2]), .A2(n20), .B(n17), .X(n14) );
  SAEDRVT14_AO32_U_0P5 U29 ( .A1(n17), .A2(n22), .A3(n19), .B1(n17), .B2(n23), 
        .X(n13) );
  SAEDRVT14_AOI21_0P75 U30 ( .A1(stato[0]), .A2(stato[1]), .B(linea), .X(n18)
         );
  SAEDRVT14_AO32_U_0P5 U31 ( .A1(stato[1]), .A2(stato[2]), .A3(n20), .B1(n19), 
        .B2(n18), .X(n21) );
  SAEDRVT14_AOI21_0P75 U32 ( .A1(n23), .A2(n22), .B(n21), .X(n12) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_0_ ( .D(n14), .SI(n11), .SE(n11), .CK(
        clock), .RD(n10), .Q(stato[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_2_ ( .D(n12), .SI(n11), .SE(n11), .CK(
        clock), .RD(n10), .Q(stato[2]) );
  SAEDRVT14_TIE0_V1_2 U18 ( .X(n11) );
endmodule

