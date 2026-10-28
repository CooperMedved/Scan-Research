/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:21:06 2026
/////////////////////////////////////////////////////////////


module b01 ( line1, line2, reset, outp, overflw, clock, scan_in, scan_out, 
        scan_enable );
  input line1, line2, reset, clock, scan_in, scan_enable;
  output outp, overflw, scan_out;
  wire   N44, N45, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [2:0] stato;

  SAEDRVT14_FSDPRBQ_V2LP_1 overflw_reg ( .D(N45), .SI(n21), .SE(n21), .CK(
        clock), .RD(n20), .Q(overflw) );
  SAEDRVT14_FSDPRBQ_V2LP_1 outp_reg ( .D(N44), .SI(n21), .SE(n21), .CK(clock), 
        .RD(n20), .Q(outp) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_2_ ( .D(n24), .SI(n21), .SE(n21), .CK(
        clock), .RD(n20), .Q(stato[2]) );
  SAEDRVT14_INV_0P5 U30 ( .A(reset), .X(n20) );
  SAEDRVT14_NR2_1 U31 ( .A1(line2), .A2(line1), .X(n35) );
  SAEDRVT14_INV_0P5 U32 ( .A(stato[0]), .X(n34) );
  SAEDRVT14_ND2_CDC_0P5 U33 ( .A1(stato[1]), .A2(n34), .X(n36) );
  SAEDRVT14_ND2_CDC_0P5 U34 ( .A1(stato[2]), .A2(n36), .X(n31) );
  SAEDRVT14_ND2_CDC_0P5 U35 ( .A1(line2), .A2(line1), .X(n37) );
  SAEDRVT14_OAI21_0P5 U36 ( .A1(stato[1]), .A2(n34), .B(n36), .X(n26) );
  SAEDRVT14_OAI21_0P5 U37 ( .A1(stato[2]), .A2(n26), .B(n37), .X(n25) );
  SAEDRVT14_OAI21_0P5 U38 ( .A1(n37), .A2(n26), .B(n25), .X(n27) );
  SAEDRVT14_OAI21_0P5 U39 ( .A1(n35), .A2(n31), .B(n27), .X(n22) );
  SAEDRVT14_INV_0P5 U40 ( .A(n35), .X(n33) );
  SAEDRVT14_OAI21_0P5 U41 ( .A1(stato[0]), .A2(n33), .B(stato[2]), .X(n29) );
  SAEDRVT14_AN2_MM_0P5 U42 ( .A1(n37), .A2(n36), .X(n28) );
  SAEDRVT14_OAI22_0P5 U43 ( .A1(stato[1]), .A2(n29), .B1(stato[2]), .B2(n28), 
        .X(n24) );
  SAEDRVT14_INV_0P5 U44 ( .A(stato[1]), .X(n32) );
  SAEDRVT14_NR3_0P5 U45 ( .A1(n32), .A2(n34), .A3(stato[2]), .X(N45) );
  SAEDRVT14_ND2_CDC_0P5 U46 ( .A1(n33), .A2(n37), .X(n30) );
  SAEDRVT14_EO2_V1_0P75 U47 ( .A1(n31), .A2(n30), .X(N44) );
  SAEDRVT14_INV_0P5 U48 ( .A(n37), .X(n42) );
  SAEDRVT14_ND2_CDC_0P5 U49 ( .A1(stato[0]), .A2(n32), .X(n41) );
  SAEDRVT14_OAI22_0P5 U50 ( .A1(n35), .A2(n34), .B1(n33), .B2(stato[1]), .X(
        n39) );
  SAEDRVT14_AOI21_0P75 U51 ( .A1(n37), .A2(stato[2]), .B(n36), .X(n38) );
  SAEDRVT14_AOI21_0P75 U52 ( .A1(stato[2]), .A2(n39), .B(n38), .X(n40) );
  SAEDRVT14_OAI21_0P5 U53 ( .A1(n42), .A2(n41), .B(n40), .X(n23) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_0_ ( .D(n22), .SI(n21), .SE(n21), .CK(
        clock), .RD(n20), .Q(stato[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_1_ ( .D(n23), .SI(n21), .SE(n21), .CK(
        clock), .RD(n20), .Q(stato[1]) );
  SAEDRVT14_TIE0_V1_2 U29 ( .X(n21) );
endmodule

