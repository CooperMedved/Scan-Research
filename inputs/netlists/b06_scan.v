/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:23:38 2026
/////////////////////////////////////////////////////////////


module b06 ( cc_mux, eql, uscite, clock, enable_count, ackout, reset, cont_eql, 
        scan_in, scan_out, scan_enable );
  output [2:1] cc_mux;
  output [2:1] uscite;
  input eql, clock, reset, cont_eql, scan_in, scan_enable;
  output enable_count, ackout, scan_out;
  wire   ackout, N39, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55;
  wire   [2:0] state;
  assign enable_count = ackout;

  SAEDRVT14_FSDPRBQ_V2LP_1 uscite_reg_2_ ( .D(N39), .SI(n24), .SE(n24), .CK(
        clock), .RD(n23), .Q(uscite[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 uscite_reg_1_ ( .D(n26), .SI(n24), .SE(n24), .CK(
        clock), .RD(n23), .Q(uscite[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cc_mux_reg_2_ ( .D(n29), .SI(n24), .SE(n24), .CK(
        clock), .RD(n23), .Q(cc_mux[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cc_mux_reg_1_ ( .D(n28), .SI(n24), .SE(n24), .CK(
        clock), .RD(n23), .Q(cc_mux[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 ackout_reg ( .D(n25), .SI(n24), .SE(n24), .CK(clock), .RD(n23), .Q(ackout) );
  SAEDRVT14_FSDPRBQ_V2LP_1 state_reg_1_ ( .D(n27), .SI(n24), .SE(n24), .CK(
        clock), .RD(n23), .Q(state[1]) );
  SAEDRVT14_INV_0P5 U36 ( .A(reset), .X(n23) );
  SAEDRVT14_INV_0P5 U37 ( .A(state[0]), .X(n37) );
  SAEDRVT14_INV_0P5 U38 ( .A(state[1]), .X(n42) );
  SAEDRVT14_NR2_1 U39 ( .A1(n37), .A2(n42), .X(n33) );
  SAEDRVT14_NR2_1 U40 ( .A1(state[0]), .A2(state[1]), .X(n52) );
  SAEDRVT14_NR2_1 U41 ( .A1(n33), .A2(n52), .X(n32) );
  SAEDRVT14_MUXI2_U_0P5 U42 ( .D0(state[2]), .D1(eql), .S(n32), .X(n31) );
  SAEDRVT14_NR2_1 U43 ( .A1(state[2]), .A2(n37), .X(n43) );
  SAEDRVT14_INV_0P5 U44 ( .A(n33), .X(n55) );
  SAEDRVT14_NR2_1 U45 ( .A1(n43), .A2(n55), .X(n35) );
  SAEDRVT14_INV_0P5 U46 ( .A(eql), .X(n46) );
  SAEDRVT14_ND2_CDC_0P5 U47 ( .A1(state[1]), .A2(n46), .X(n38) );
  SAEDRVT14_ND2B_U_0P5 U48 ( .A(n38), .B(n37), .X(n34) );
  SAEDRVT14_OAI22_0P5 U49 ( .A1(cont_eql), .A2(n35), .B1(state[2]), .B2(n34), 
        .X(n25) );
  SAEDRVT14_INV_0P5 U50 ( .A(state[2]), .X(n50) );
  SAEDRVT14_AOI21_0P75 U51 ( .A1(n42), .A2(eql), .B(n50), .X(n54) );
  SAEDRVT14_AN3_0P5 U52 ( .A1(n54), .A2(n37), .A3(n38), .X(N39) );
  SAEDRVT14_OR3_0P5 U53 ( .A1(state[2]), .A2(state[0]), .A3(n42), .X(n45) );
  SAEDRVT14_AOI21_0P75 U54 ( .A1(n43), .A2(eql), .B(N39), .X(n36) );
  SAEDRVT14_ND2_CDC_0P5 U55 ( .A1(n45), .A2(n36), .X(n27) );
  SAEDRVT14_NR2_1 U56 ( .A1(state[1]), .A2(n37), .X(n40) );
  SAEDRVT14_OAI22_0P5 U57 ( .A1(n38), .A2(state[0]), .B1(n40), .B2(state[2]), 
        .X(n39) );
  SAEDRVT14_AOI21_0P75 U58 ( .A1(n40), .A2(state[2]), .B(n39), .X(n41) );
  SAEDRVT14_OAI21_0P5 U59 ( .A1(state[1]), .A2(n46), .B(n41), .X(n28) );
  SAEDRVT14_ND2_CDC_0P5 U60 ( .A1(n43), .A2(n42), .X(n44) );
  SAEDRVT14_AOI21_0P75 U61 ( .A1(state[0]), .A2(state[1]), .B(n46), .X(n49) );
  SAEDRVT14_OAI21_0P5 U62 ( .A1(n52), .A2(n49), .B(state[2]), .X(n48) );
  SAEDRVT14_OAI21_0P5 U63 ( .A1(eql), .A2(n44), .B(n48), .X(n30) );
  SAEDRVT14_OA21_1 U64 ( .A1(n46), .A2(n45), .B(n44), .X(n47) );
  SAEDRVT14_ND2_CDC_0P5 U65 ( .A1(n48), .A2(n47), .X(n29) );
  SAEDRVT14_INV_0P5 U66 ( .A(n49), .X(n51) );
  SAEDRVT14_OAI21_0P5 U67 ( .A1(n52), .A2(n51), .B(n50), .X(n53) );
  SAEDRVT14_AO21B_0P5 U68 ( .A1(n55), .A2(n54), .B(n53), .X(n26) );
  SAEDRVT14_FSDPRBQ_V2LP_1 state_reg_0_ ( .D(n31), .SI(n24), .SE(n24), .CK(
        clock), .RD(n23), .Q(state[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 state_reg_2_ ( .D(n30), .SI(n24), .SE(n24), .CK(
        clock), .RD(n23), .Q(state[2]) );
  SAEDRVT14_TIE0_V1_2 U35 ( .X(n24) );
endmodule

